package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetBundleManifest;
import com.ahsim.demulation.RomOfficialRegionAssetVariants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class RomRuntimeFrontendAssets {
    private final File installRoot;
    private final RomRuntimeRussianLocalizationAssets localization;
    private final String sourceProfile;

    public RomRuntimeFrontendAssets(File installRoot) throws IOException {
        this(installRoot, null, null);
    }

    public RomRuntimeFrontendAssets(File installRoot, String sourceProfile) throws IOException {
        this(installRoot, null, sourceProfile);
    }

    public RomRuntimeFrontendAssets(File installRoot, RomRuntimeRussianLocalizationAssets localization) throws IOException {
        this(installRoot, localization, null);
    }

    public RomRuntimeFrontendAssets(File installRoot, RomRuntimeRussianLocalizationAssets localization, String sourceProfile) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("Active ROM frontend asset generation is unavailable");
        }
        this.installRoot = installRoot.getCanonicalFile();
        this.localization = localization;
        this.sourceProfile = sourceProfile == null ? "" : sourceProfile;
    }

    public File installRoot() {
        return this.installRoot;
    }

    public boolean provides(String relativePath) {
        if (this.localization != null && this.localization.provides(relativePath)) {
            return true;
        }
        RomAssetBundleManifest.Entry entry = RomAssetBundleManifest.find(relativePath);
        return entry != null && isFrontendGroup(entry.sourceGroup);
    }

    public boolean russianLocalizationActive() {
        return this.localization != null;
    }

    public byte[] read(String relativePath) throws IOException {
        if (this.localization != null && this.localization.provides(relativePath)) {
            return this.localization.read(relativePath);
        }
        RomAssetBundleManifest.Entry entry = RomAssetBundleManifest.find(relativePath);
        if (entry == null || !isFrontendGroup(entry.sourceGroup)) {
            throw new IOException("ROM frontend asset is not declared: " + relativePath);
        }
        RomOfficialRegionAssetVariants.Expected expected = RomOfficialRegionAssetVariants.expectedForInstall(this.installRoot, this.sourceProfile, entry.relativePath, entry.length, entry.sha256);
        File file = safeChild(this.installRoot, entry.relativePath);
        if (!file.isFile() || file.length() != expected.length) {
            throw new IOException("Installed ROM frontend asset is missing or has wrong size: " + entry.relativePath);
        }
        byte[] data = readExactly(file, expected.length);
        String actual = sha256(data);
        if (!expected.sha256.equalsIgnoreCase(actual)) {
            throw new IOException("Installed ROM frontend asset fingerprint mismatch: " + entry.relativePath);
        }
        return data;
    }

    private static boolean isFrontendGroup(String group) {
        return "frontend_generic_graphics_v1".equals(group) || "frontend_direct_v1".equals(group) || "frontend_mentat_v1".equals(group) || "mission_campaign_transition_v1".equals(group) || "tutorial_original_v1".equals(group) || "mission_result_graphics_v1".equals(group) || "ending_graphics_v1".equals(group);
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File child = new File(root, relativePath).getCanonicalFile();
        String rootPath = root.getCanonicalPath();
        String childPath = child.getCanonicalPath();
        if (!childPath.equals(rootPath) && !childPath.startsWith(rootPath + File.separator)) {
            throw new IOException("ROM frontend asset path escapes active generation");
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
                                throw new IOException("Installed ROM frontend asset grew while being read: " + file.getName());
                            }
                            output.write(buffer, 0, count);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Installed ROM frontend asset changed while being read: " + file.getName());
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
