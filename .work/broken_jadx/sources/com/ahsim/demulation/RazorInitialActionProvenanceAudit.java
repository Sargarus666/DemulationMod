package com.ahsim.demulation;

import com.ahsim.demulation.RazorUnitCreateCallGraphAudit;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorInitialActionProvenanceAudit {
    private static final int[] CREATE = {117038, 117282};
    private static final int[] SET_ACTION = {106172, 106412};
    private static final int[] SCRIPT_INIT = {53134, 53450};
    private static final int[] SCRIPT_LOAD = {53234, 53550};
    private static final int[] QUEUE_JSR = {41686, 41988};
    private static final int[] QUEUE_WRITER = {41744, 42046};

    public static final class Evidence {
        public final int actionFieldOffsetInSetAction;
        public final boolean completeFactoryProvenance;
        public final boolean completeReinforcementProvenance;
        public final int conditionalActionCall;
        public final int constructor;
        public final boolean constructorInitializesVmContext;
        public final boolean gameTicksAuthorized;
        public final int initialUnit03;
        public final int initialUnit54;
        public final int queueDirectWriter;
        public final int queueFieldOffset;
        public final boolean queueWriterCallsSetAction;
        public final int scriptLoadCall;
        public final int setAction;
        public final boolean setActionLoadsScriptOnReachedPath;
        public final boolean unconditionalExecutableEntryOnCreate;
        public final int variant;

        private Evidence(int v) {
            this.initialUnit03 = 255;
            this.initialUnit54 = 3;
            this.actionFieldOffsetInSetAction = 84;
            this.queueFieldOffset = 3;
            this.constructorInitializesVmContext = true;
            this.unconditionalExecutableEntryOnCreate = false;
            this.setActionLoadsScriptOnReachedPath = true;
            this.queueWriterCallsSetAction = false;
            this.completeFactoryProvenance = false;
            this.completeReinforcementProvenance = false;
            this.gameTicksAuthorized = false;
            this.variant = v + 1;
            this.constructor = RazorInitialActionProvenanceAudit.CREATE[v];
            this.conditionalActionCall = RazorInitialActionProvenanceAudit.CREATE[v] + 530;
            this.setAction = RazorInitialActionProvenanceAudit.SET_ACTION[v];
            this.scriptLoadCall = RazorInitialActionProvenanceAudit.SET_ACTION[v] + 218;
            this.queueDirectWriter = RazorInitialActionProvenanceAudit.QUEUE_WRITER[v];
        }
    }

    private RazorInitialActionProvenanceAudit() {
    }

    private static int word(byte[] b, int p) throws IOException {
        if (p < 0 || p + 1 >= b.length) {
            throw new IOException("Razor address outside ROM");
        }
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    private static int longWord(byte[] b, int p) throws IOException {
        return (word(b, p) << 16) | word(b, p + 2);
    }

    private static void require(boolean value, String label) throws IOException {
        if (!value) {
            throw new IOException("Razor initial action provenance mismatch: " + label);
        }
    }

    private static boolean jsrAbs(byte[] b, int at, int destination) throws IOException {
        return word(b, at) == 20153 && longWord(b, at + 2) == destination;
    }

    private static boolean jsrPc(byte[] b, int at, int destination) throws IOException {
        return word(b, at) == 20154 && (at + 2) + ((short) word(b, at + 2)) == destination;
    }

    public static Evidence inspect(byte[] rom, String sha256) throws IOException {
        RazorUnitCreateCallGraphAudit.Evidence previous = RazorUnitCreateCallGraphAudit.inspect(rom, sha256);
        int v = previous.variant - 1;
        require(v == 0 || v == 1, "variant");
        int base = CREATE[v];
        int action = SET_ACTION[v];
        int queue = QUEUE_WRITER[v];
        require(previous.unitCreateRomAddress == base, "authenticated constructor");
        require(word(rom, base + RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET) == 5500 && word(rom, base + 194) == 255 && word(rom, base + 196) == 3, "constructor writes sentinel to Unit+03");
        require(word(rom, base + 204) == 5500 && word(rom, base + 206) == 3 && word(rom, base + 208) == 84, "constructor initializes Unit+54 separately");
        require(jsrAbs(rom, base + 230, SCRIPT_INIT[v]), "constructor Script_Init");
        require(word(rom, base + 494) == 19013 && word(rom, base + 496) == 26438, "conditional action branch");
        int bypass = base + 498 + 70;
        require(bypass > base + 530 && bypass < base + 592, "branch bypasses SetAction call");
        require(jsrPc(rom, base + 530, action), "conditional Unit_SetAction call");
        require(word(rom, action) == 18663 && word(rom, action + 2) == 4144, "verified action function entry");
        require(word(rom, action + 166) == 5443 && word(rom, action + 168) == 84, "SetAction writes Unit+54");
        require(word(rom, action + 170) == 5500 && word(rom, action + 172) == 255 && word(rom, action + 174) == 85, "SetAction resets Unit+55");
        require(jsrAbs(rom, action + 194, SCRIPT_INIT[v]), "SetAction reinitializes VM");
        require(jsrAbs(rom, action + 218, SCRIPT_LOAD[v]), "SetAction calls Script_Load");
        require(word(rom, action + 210) == 18560 && word(rom, action + 212) == 16128 && word(rom, action + 214) == 18538 && word(rom, action + 216) == 22, "original type and VM context passed to Script_Load");
        require(jsrAbs(rom, QUEUE_JSR[v], base), "queue creates original UNIT");
        require(word(rom, QUEUE_JSR[v] + 10) == 9800, "queue copies creation result A0 into A3");
        require(word(rom, queue) == 5952 && word(rom, queue + 2) == 3, "queue writes D0 to Unit+03 via A3");
        require(queue > QUEUE_JSR[v] && queue - QUEUE_JSR[v] == 58, "queue write occurs after creation result");
        return new Evidence(v);
    }
}
