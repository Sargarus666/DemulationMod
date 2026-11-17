package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class GenesisRomRussianVoiceAssetProvider {
    private static final int MAX_ROM_BYTES = 16777216;
    private static final int PACK_VERSION = 1;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private static final byte[] MAGIC = {68, 69, 77, 65, 85, 68, 48, 49};
    private static final int[][] SEGMENTS = {new int[]{436350, 436666}, new int[]{819552, 1043776}};

    public static final class Result {
        public final long payloadBytes;
        public final String sourceSha256;
        public final File stagedRoot;

        Result(File stagedRoot, String sourceSha256, long payloadBytes) {
            this.stagedRoot = stagedRoot;
            this.sourceSha256 = sourceSha256;
            this.payloadBytes = payloadBytes;
        }
    }

    private GenesisRomRussianVoiceAssetProvider() {
    }

    public static Result extract(InputStream input, long knownSize, File stagingRoot) throws IOException {
        if (input == null) {
            throw new IOException("Translation ROM stream is unavailable");
        }
        if (stagingRoot == null) {
            throw new IOException("Russian voice staging is unavailable");
        }
        if (knownSize > 16777216) {
            throw new IOException("Translation ROM is unexpectedly large");
        }
        byte[] rom = readAll(input, knownSize);
        if (rom.length != ROM_IMAGE_BYTES) {
            throw new IOException("Audited Russian translation must be exactly 1 MiB");
        }
        String sourceSha = sha256(rom);
        if (!"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(sourceSha)) {
            throw new IOException("Russian voice source ROM fingerprint mismatch");
        }
        byte[] pack = buildPack(rom);
        if (pack.length != 224576 || !RomRussianVoiceAssetManifest.SOURCE_PACK_SHA256.equalsIgnoreCase(sha256(pack))) {
            throw new IOException("Russian voice source pack fingerprint mismatch");
        }
        deleteRecursively(stagingRoot);
        if (!stagingRoot.mkdirs() && !stagingRoot.isDirectory()) {
            throw new IOException("Could not create Russian voice staging");
        }
        File out = safeChild(stagingRoot, RomRussianVoiceAssetManifest.SOURCE_PACK);
        File parent = out.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create Russian voice staging directory");
        }
        FileOutputStream stream = new FileOutputStream(out);
        try {
            stream.write(pack);
            stream.getFD().sync();
            stream.close();
            return new Result(stagingRoot, sourceSha, pack.length);
        } catch (Throwable th) {
            try {
                stream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static byte[] buildPack(byte[] rom) throws IOException {
        if (rom == null || rom.length != ROM_IMAGE_BYTES) {
            throw new IOException("Translation ROM is truncated");
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream(RomRussianVoiceAssetManifest.SOURCE_PACK_BYTES);
        out.write(MAGIC);
        writeBe32(out, 1);
        writeBe32(out, ROM_IMAGE_BYTES);
        writeBe32(out, SEGMENTS.length);
        for (int[] segment : SEGMENTS) {
            writeBe32(out, segment[0]);
            writeBe32(out, segment[1] - segment[0]);
        }
        for (int[] segment2 : SEGMENTS) {
            out.write(rom, segment2[0], segment2[1] - segment2[0]);
        }
        return out.toByteArray();
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        int initial = (knownSize <= 0 || knownSize > 16777216) ? ROM_IMAGE_BYTES : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(initial);
        byte[] buffer = new byte[8192];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n >= 0) {
                if (n != 0) {
                    total += n;
                    if (total > 16777216) {
                        throw new IOException("Translation ROM is unexpectedly large");
                    }
                    out.write(buffer, 0, n);
                }
            } else {
                return out.toByteArray();
            }
        }
    }

    private static void writeBe32(ByteArrayOutputStream out, int value) {
        out.write((value >>> 24) & 255);
        out.write((value >>> 16) & 255);
        out.write((value >>> 8) & 255);
        out.write(value & 255);
    }

    static void deleteRecursively(File file) throws IOException {
        File[] children;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (children = file.listFiles()) != null) {
            for (File child : children) {
                deleteRecursively(child);
            }
        }
        if (!file.delete() && file.exists()) {
            throw new IOException("Could not delete " + file);
        }
    }

    static String sha256(byte[] data) throws IOException {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(data);
            StringBuilder out = new StringBuilder(hash.length * 2);
            for (byte b : hash) {
                out.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("SHA-256 unavailable", e);
        }
    }

    private static File safeChild(File root, String relative) throws IOException {
        File base = root.getCanonicalFile();
        File child = new File(base, relative).getCanonicalFile();
        if (!child.getPath().startsWith(base.getPath() + File.separator)) {
            throw new IOException("Russian voice path escapes staging root");
        }
        return child;
    }
}
