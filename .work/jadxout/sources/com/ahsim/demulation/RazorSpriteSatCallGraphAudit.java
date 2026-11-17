package com.ahsim.demulation;

import com.ahsim.demulation.RazorSpriteCfgRelocation;
import com.ahsim.demulation.RazorSpriteOrientationDispatchAudit;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class RazorSpriteSatCallGraphAudit {
    public static final int GRAPH_NODE_COUNT = 10;
    public static final int VDP_CONTROL_PORT = 12582916;
    public static final int VDP_DATA_PORT = 12582912;
    private static final int[] VDP_SETUP_OFFSET = {0, 27892, 28176};
    private static final int[] COORD_MATH_OFFSET = {0, 59538, 59854};
    private static final byte[] VDP_SETUP = {69, -7, 0, -64, 0, 4, 71, -7, 0, -64, 0, 0, 52, -68, -113, 2};
    private static final byte[] COORD_INPUT = {72, -25, 24, 0, 34, 69, 34, 47, 0, 12, 54, 47, 0, 16, 56, 1, 2, 68, -1, -1, 42, 1, 66, 69};

    public static final class Edge {
        public final String gfxSha256;
        public final int group;
        public final int height;
        public final int pointerSlot;
        public final int pose;
        public final int relocatedCfg;
        public final int vramTile;
        public final int width;

        private Edge(RazorSpriteCfgRelocation.Frame cfg) throws IOException {
            this.width = 16;
            this.height = 16;
            this.group = cfg.group;
            this.pose = cfg.pose;
            this.pointerSlot = cfg.romPointerSlot;
            this.relocatedCfg = cfg.romCfgAddress;
            this.vramTile = cfg.vramTile;
            this.gfxSha256 = RazorSpriteSatCallGraphAudit.sha256(cfg.pixelsCopy());
        }
    }

    public static final class Result {
        public final boolean coordinateMathIsNotSpriteDispatch;
        public final int coordinateRoutineOffset;
        private final Edge[] edges;
        public final int edition;
        public final boolean facingToSpritePoseLinked;
        public final boolean flipFlagsLinked;
        public final boolean gameplayRenderReady;
        public final boolean objectTypeToCfgLinked;
        public final boolean vdpSatProducerLinked;
        public final int vdpSetupOffset;
        public final boolean verifiedCfgToOriginalRomGfx;
        public final boolean verifiedVdpControlDataPortSetup;

        private Result(int version, Edge[] graph) {
            this.verifiedVdpControlDataPortSetup = true;
            this.verifiedCfgToOriginalRomGfx = true;
            this.coordinateMathIsNotSpriteDispatch = true;
            this.objectTypeToCfgLinked = false;
            this.facingToSpritePoseLinked = false;
            this.vdpSatProducerLinked = false;
            this.flipFlagsLinked = false;
            this.gameplayRenderReady = false;
            this.edition = version;
            this.vdpSetupOffset = RazorSpriteSatCallGraphAudit.VDP_SETUP_OFFSET[version];
            this.coordinateRoutineOffset = RazorSpriteSatCallGraphAudit.COORD_MATH_OFFSET[version];
            this.edges = graph;
        }

        public Edge[] verifiedEdgesCopy() {
            return (Edge[]) this.edges.clone();
        }

        public Edge runtimeCfgForObject(int unitType, int rawHeading) throws IOException {
            throw new IOException("Razor object->CFG SAT dispatch is not traced");
        }

        public int runtimeSatAttribute(int unitType, int rawHeading) throws IOException {
            throw new IOException("Razor frame/flip/palette/SAT linkage is not traced");
        }
    }

    private RazorSpriteSatCallGraphAudit() {
    }

    public static Result inspect(byte[] rom, String expectedSha) throws IOException {
        RazorSpriteOrientationDispatchAudit.Result direction = RazorSpriteOrientationDispatchAudit.inspect(rom, expectedSha);
        RazorSpriteCfgRelocation.Result cfg = RazorSpriteCfgRelocation.inspect(rom, expectedSha);
        int version = direction.variant;
        if (version == cfg.variant && version >= 1 && version <= 2) {
            requireSequence(rom, VDP_SETUP_OFFSET[version], VDP_SETUP, "VDP control/data setup");
            requireSequence(rom, COORD_MATH_OFFSET[version], COORD_INPUT, "coordinate heading routine");
            Edge[] edges = new Edge[10];
            int index = 0;
            int group = 0;
            loop0: while (true) {
                if (group < 2) {
                    int pose = 0;
                    while (pose < 5) {
                        RazorSpriteCfgRelocation.Frame frame = cfg.frame(group, pose);
                        if (frame.romPointerSlot != (group * 64) + RazorSpriteCfgRelocation.PTR_TABLE_BASE + (pose * 8) || frame.vramTile != (pose * 4) + RazorSpriteCfgRelocation.TILE_BASE || frame.frameWidth != 16 || frame.frameHeight != 16) {
                            break loop0;
                        }
                        edges[index] = new Edge(frame);
                        pose++;
                        index++;
                    }
                    group++;
                } else {
                    if (index != 10) {
                        throw new IOException("Incomplete verified CFG graph");
                    }
                    for (int pose2 = 0; pose2 < 5; pose2++) {
                        if (!edges[pose2].gfxSha256.equals(edges[pose2 + 5].gfxSha256)) {
                            throw new IOException("Razor paired sprite pointer blocks diverged");
                        }
                    }
                    return new Result(version, edges);
                }
            }
            throw new IOException("CFG-to-ROM-graphic provenance changed");
        }
        throw new IOException("Razor sprite-bank edition mismatch");
    }

    private static void requireSequence(byte[] rom, int offset, byte[] bytes, String name) throws IOException {
        if (rom == null || offset < 0 || offset > rom.length - bytes.length) {
            throw new IOException("Out-of-range " + name);
        }
        for (int i = 0; i < bytes.length; i++) {
            if (rom[offset + i] != bytes[i]) {
                throw new IOException("Razor " + name + " mismatch at 0x" + Integer.toHexString(offset + i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String sha256(byte[] bytes) throws IOException {
        try {
            byte[] sum = MessageDigest.getInstance("SHA-256").digest(bytes);
            char[] alphabet = "0123456789abcdef".toCharArray();
            char[] out = new char[sum.length * 2];
            for (int i = 0; i < sum.length; i++) {
                int b = sum[i] & 255;
                out[i * 2] = alphabet[b >>> 4];
                out[(i * 2) + 1] = alphabet[b & 15];
            }
            return new String(out);
        } catch (NoSuchAlgorithmException e) {
            throw new IOException(e);
        }
    }
}
