package com.ahsim.demulation;

import com.ahsim.demulation.RomAssetBundleManifest;
import com.ahsim.demulation.RomGraphicsMediaOverlayStore;
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
public final class RomRuntimeWorldAssets {
    private final File installRoot;
    private final RomGraphicsMediaOverlayStore.Snapshot overlay;
    private final String sourceProfile;

    public RomRuntimeWorldAssets(File installRoot) throws IOException {
        this(installRoot, null, null);
    }

    public RomRuntimeWorldAssets(File installRoot, RomGraphicsMediaOverlayStore.Snapshot overlay) throws IOException {
        this(installRoot, overlay, null);
    }

    public RomRuntimeWorldAssets(File installRoot, RomGraphicsMediaOverlayStore.Snapshot overlay, String sourceProfile) throws IOException {
        if (installRoot == null || !installRoot.isDirectory()) {
            throw new IOException("Active ROM world-media generation is unavailable");
        }
        this.installRoot = installRoot.getCanonicalFile();
        this.overlay = overlay;
        this.sourceProfile = sourceProfile == null ? "" : sourceProfile;
    }

    public File installRoot() {
        return this.installRoot;
    }

    public boolean provides(String relativePath) {
        RomAssetBundleManifest.Entry entry = RomAssetBundleManifest.find(relativePath);
        return entry != null && isWorldGroup(entry.sourceGroup);
    }

    public boolean usesOverlay(String relativePath) {
        return (!provides(relativePath) || this.overlay == null || isBaseOnly(relativePath) || this.overlay.find(relativePath) == null) ? false : true;
    }

    public byte[] read(String relativePath) throws IOException {
        RomAssetBundleManifest.Entry baseEntry = RomAssetBundleManifest.find(relativePath);
        if (baseEntry == null || !isWorldGroup(baseEntry.sourceGroup)) {
            throw new IOException("ROM world-media asset is not declared: " + relativePath);
        }
        if (this.overlay != null && !isBaseOnly(baseEntry.relativePath)) {
            RomGraphicsMediaOverlayStore.Entry overlayEntry = this.overlay.find(baseEntry.relativePath);
            byte[] overlayData = tryReadOverlay(baseEntry, overlayEntry);
            if (overlayData != null) {
                return overlayData;
            }
        }
        RomOfficialRegionAssetVariants.Expected expected = RomOfficialRegionAssetVariants.expectedForInstall(this.installRoot, this.sourceProfile, baseEntry.relativePath, baseEntry.length, baseEntry.sha256);
        File file = safeChild(this.installRoot, baseEntry.relativePath, "ROM world-media path escapes active generation");
        if (!file.isFile() || file.length() != expected.length) {
            throw new IOException("Installed ROM world-media asset is missing or has wrong size: " + baseEntry.relativePath);
        }
        byte[] data = readExactly(file, expected.length, "Installed ROM world-media asset");
        String actual = sha256(data);
        if (!expected.sha256.equalsIgnoreCase(actual)) {
            throw new IOException("Installed ROM world-media asset fingerprint mismatch: " + baseEntry.relativePath);
        }
        return data;
    }

    private byte[] tryReadOverlay(RomAssetBundleManifest.Entry baseEntry, RomGraphicsMediaOverlayStore.Entry overlayEntry) {
        if (overlayEntry == null || !matchesDeclaredGroup(baseEntry.sourceGroup, overlayEntry.group)) {
            return null;
        }
        try {
            File overlayFile = safeChild(this.overlay.installRoot, overlayEntry.relativePath, "ROM graphics overlay path escapes active generation");
            if (overlayFile.isFile() && overlayFile.length() == overlayEntry.length) {
                byte[] data = readExactly(overlayFile, overlayEntry.length, "ROM graphics overlay asset");
                if (!overlayEntry.sha256.equalsIgnoreCase(sha256(data))) {
                    return null;
                }
                return data;
            }
            return null;
        } catch (IOException | RuntimeException e) {
            return null;
        }
    }

    private static boolean isBaseOnly(String relativePath) {
        return RomWorldTacticalSpriteAssetManifest.CLASSIC_PURCHASE_ICONS.equals(relativePath);
    }

    private static boolean matchesDeclaredGroup(String baseGroup, String overlayGroup) {
        if ("world_terrain_radar_v1".equals(baseGroup)) {
            return RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR.equals(overlayGroup);
        }
        if ("world_tactical_sprites_v1".equals(baseGroup)) {
            return RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES.equals(overlayGroup);
        }
        return false;
    }

    private static boolean isWorldGroup(String group) {
        return "world_terrain_radar_v1".equals(group) || "world_tactical_sprites_v1".equals(group);
    }

    private static File safeChild(File root, String relativePath, String error) throws IOException {
        File canonicalRoot = root.getCanonicalFile();
        File child = new File(canonicalRoot, relativePath).getCanonicalFile();
        String rootPath = canonicalRoot.getPath();
        String childPath = child.getPath();
        if (!childPath.equals(rootPath) && !childPath.startsWith(rootPath + File.separator)) {
            throw new IOException(error);
        }
        return child;
    }

    private static byte[] readExactly(File file, int expectedLength, String label) throws IOException {
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
                                throw new IOException(label + " grew while being read: " + file.getName());
                            }
                            output.write(buffer, 0, count);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException(label + " changed while being read: " + file.getName());
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
