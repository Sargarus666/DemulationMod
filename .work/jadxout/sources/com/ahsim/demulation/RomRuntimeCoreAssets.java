package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetManifest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeCoreAssets {
    private final File installRoot;

    public RomRuntimeCoreAssets(File installRoot) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("Active ROM core asset generation is unavailable");
        }
        this.installRoot = installRoot.getCanonicalFile();
    }

    public File installRoot() {
        return this.installRoot;
    }

    public boolean provides(String relativePath) {
        return findByPath(relativePath) != null;
    }

    public byte[] read(String relativePath) throws IOException {
        RomAssetManifest.Entry entry = findByPath(relativePath);
        if (entry == null) {
            throw new IOException("ROM core asset is not declared: " + relativePath);
        }
        File file = safeChild(this.installRoot, entry.relativePath);
        if (!file.isFile() || file.length() != entry.length) {
            throw new IOException("Installed ROM core asset is missing or has wrong size: " + entry.name);
        }
        byte[] data = readExactly(file, entry.length);
        String actual = sha256(data);
        if (!entry.sha256.equalsIgnoreCase(actual)) {
            throw new IOException("Installed ROM core asset fingerprint mismatch: " + entry.name);
        }
        return data;
    }

    private static RomAssetManifest.Entry findByPath(String relativePath) {
        if (relativePath == null) {
            return null;
        }
        for (RomAssetManifest.Entry entry : RomAssetManifest.coreEntries()) {
            if (entry.relativePath.equals(relativePath)) {
                return entry;
            }
        }
        return null;
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File child = new File(root, relativePath).getCanonicalFile();
        String rootPath = root.getCanonicalPath();
        String childPath = child.getCanonicalPath();
        if (!childPath.equals(rootPath) && !childPath.startsWith(rootPath + File.separator)) {
            throw new IOException("ROM core asset path escapes active generation");
        }
        return child;
    }

    private static byte[] readExactly(File file, int expectedLength) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            ByteArrayOutputStream output = new ByteArrayOutputStream(expectedLength);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int count = input.read(buffer);
                    if (count >= 0) {
                        if (count != 0) {
                            total += count;
                            if (total > expectedLength) {
                                throw new IOException("Installed ROM core asset grew while being read: " + file.getName());
                            }
                            output.write(buffer, 0, count);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Installed ROM core asset changed while being read: " + file.getName());
                        }
                        byte[] byteArray = output.toByteArray();
                        output.close();
                        input.close();
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                input.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 is unavailable", e);
        }
    }
}
