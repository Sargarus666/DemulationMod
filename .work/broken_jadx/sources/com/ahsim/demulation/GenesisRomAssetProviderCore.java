package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetManifest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class GenesisRomAssetProviderCore {
    private static final int BUFFER_SIZE = 8192;

    public interface ProgressListener {
        void onProgress(long j, long j2, int i, int i2, String str);
    }

    public static final class Result {
        public final List<String> mismatches;
        public final long payloadBytes;
        public final File stagedRoot;
        public final int totalEntries;
        public final int verifiedEntries;

        private Result(int totalEntries, int verifiedEntries, long payloadBytes, List<String> mismatches, File stagedRoot) {
            this.totalEntries = totalEntries;
            this.verifiedEntries = verifiedEntries;
            this.payloadBytes = payloadBytes;
            this.mismatches = Collections.unmodifiableList(new ArrayList(mismatches));
            this.stagedRoot = stagedRoot;
        }

        public boolean allVerified() {
            return this.totalEntries > 0 && this.verifiedEntries == this.totalEntries && this.mismatches.isEmpty();
        }
    }

    private GenesisRomAssetProviderCore() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01df, code lost:
    
        if (r0.renameTo(r4) == false) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01e1, code lost:
    
        r24 = r24 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0230, code lost:
    
        if (r34 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0232, code lost:
    
        r34.onProgress(r14, r16, r9 + 1, r10.size(), r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0200, code lost:
    
        throw new java.io.IOException("Could not publish staged asset " + r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d8, code lost:
    
        throw new java.io.IOException("Could not replace staged asset " + r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0207, code lost:
    
        if (r0.delete() != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x020d, code lost:
    
        if (r0.exists() != false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x022a, code lost:
    
        throw new java.io.IOException("Could not discard mismatched asset " + r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x022b, code lost:
    
        r7.add(r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0258, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x024f, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0261, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0262, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0097, code lost:
    
        throw new java.io.IOException("Could not create asset directory for " + r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02bd, code lost:
    
        r2 = new com.ahsim.demulation.GenesisRomAssetProviderCore.Result(r10.size(), r4, r16, r7, r33, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x02c4, code lost:
    
        if (r2.allVerified() != false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02c6, code lost:
    
        deleteRecursively(r33);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02c9, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02cc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x02ca, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x02d2, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x02ce, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02db, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x02d6, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0154, code lost:
    
        r29 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017a, code lost:
    
        throw new java.io.IOException("ROM ended while reading " + r0.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x017b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x017c, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018d, code lost:
    
        r27 = r4;
        r29 = r5;
        r4 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0193, code lost:
    
        r29.getFD().sync();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x019a, code lost:
    
        r29.close();
        r0 = hex(r27.digest());
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ab, code lost:
    
        if (r0.sha256.equalsIgnoreCase(r0) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b1, code lost:
    
        if (r4.exists() == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b7, code lost:
    
        if (r4.delete() == false) goto L189;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x018d A[EDGE_INSN: B:88:0x018d->B:89:0x018d BREAK  A[LOOP:1: B:38:0x0103->B:52:0x0103], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ahsim.demulation.GenesisRomAssetProviderCore.Result extractCore(java.io.InputStream r30, long r31, java.io.File r33, com.ahsim.demulation.GenesisRomAssetProviderCore.ProgressListener r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisRomAssetProviderCore.extractCore(java.io.InputStream, long, java.io.File, com.ahsim.demulation.GenesisRomAssetProviderCore$ProgressListener):com.ahsim.demulation.GenesisRomAssetProviderCore$Result");
    }

    private static void validateManifest(List<RomAssetManifest.Entry> entries, long knownRomSize) throws IOException {
        if (entries == null || entries.isEmpty()) {
            throw new IOException("ROM asset manifest is empty");
        }
        long previousEnd = 0;
        for (RomAssetManifest.Entry entry : entries) {
            if (entry.offset < previousEnd) {
                throw new IOException("ROM asset manifest overlaps or is unsorted");
            }
            if (entry.length <= 0) {
                throw new IOException("Invalid asset length for " + entry.name);
            }
            if (knownRomSize >= 0 && entry.endOffset() > knownRomSize) {
                throw new IOException("ROM is too small for asset " + entry.name);
            }
            previousEnd = entry.endOffset();
        }
    }

    private static void discardFully(InputStream input, long bytes, byte[] buffer) throws IOException {
        long remaining = bytes;
        while (remaining > 0) {
            int wanted = (int) Math.min(buffer.length, remaining);
            int count = input.read(buffer, 0, wanted);
            if (count < 0) {
                throw new IOException("ROM ended before the next asset offset");
            }
            if (count != 0) {
                remaining -= count;
            }
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File file = new File(root, relativePath);
        String rootPath = root.getCanonicalPath();
        String filePath = file.getCanonicalPath();
        if (!filePath.startsWith(rootPath + File.separator)) {
            throw new IOException("Unsafe asset output path: " + relativePath);
        }
        return file;
    }

    public static void deleteRecursively(File file) throws IOException {
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
            throw new IOException("Could not delete " + file.getAbsolutePath());
        }
    }

    private static MessageDigest digest(String name) throws IOException {
        try {
            return MessageDigest.getInstance(name);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException("Digest unavailable: " + name, e);
        }
    }

    private static String hex(byte[] bytes) {
        char[] alphabet = "0123456789abcdef".toCharArray();
        char[] chars = new char[bytes.length * 2];
        for (int i = 0; i < bytes.length; i++) {
            int value = bytes[i] & 255;
            chars[i * 2] = alphabet[value >>> 4];
            chars[(i * 2) + 1] = alphabet[value & 15];
        }
        return new String(chars);
    }
}
