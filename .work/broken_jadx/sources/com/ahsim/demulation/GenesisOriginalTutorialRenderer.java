package com.ahsim.demulation;

import android.graphics.Bitmap;
import android.graphics.Color;
import com.ahsim.demulation.RomRuntimeOriginalContentAssets;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes2.dex */
final class GenesisOriginalTutorialRenderer {
    private static final int CURSOR_DESCRIPTOR_TABLE = 78362;
    private static final int CURSOR_PATTERN_TABLE = 79990;
    static final int HEIGHT = 224;
    static final int MUSIC_SEQUENCE = 5;
    private static final int PATTERN_BYTES = 32;
    private static final int PLANE_BYTES = 3584;
    private static final int PLANE_COLUMNS = 64;
    private static final int SCENE_TABLE = 268002;
    private static final int TEXT_CHAR_MAP = 273104;
    private static final int TEXT_DESCRIPTOR = 273232;
    private static final int TEXT_FONT = 273666;
    private static final int[] TUTORIAL_SCRIPT = {269128, 269186, 269264, 270294, 271308, 272694};
    private static final int VISIBLE_COLUMNS = 40;
    static final int WIDTH = 320;
    private boolean aborted;
    private boolean complete;
    private int cursorMotionDy;
    private int cursorMotionTicks;
    private byte[] cursorPatterns;
    private int cursorType;
    private int cursorX;
    private int cursorY;
    private boolean dirty;
    private final Bitmap frame;
    private int loopCount;
    private int loopPc;
    private final RomRuntimeFrontendAssets mediaAssets;
    private final int[] palette;
    private boolean paletteFadeActive;
    private boolean paletteFadeReachedBlack;
    private int paletteFadeTicks;
    private final int[] paletteWords;

    /* renamed from: pc */
    private int f14pc;
    private int pendingHead;
    private final int[] pendingSequences;
    private int pendingTail;
    private final int[] pixels;
    private int planeResult;
    private final byte[][] providerCursorLayouts;
    private final boolean[][] providerSceneFlags;
    private final byte[] providerTextFont;
    private final byte[] providerTextLayout;
    private final byte[] rom;
    private Scene scene;
    private int scriptIndex;
    private final RomRuntimeOriginalContentAssets.TutorialExactContent tutorialContent;
    private byte[] tutorialText;
    private int waitTicks;

    private static final class Scene {
        byte[] patterns;
        byte[] plane0;
        byte[] plane1;
        byte[] stream0;
        int stream0Offset;
        byte[] stream1;
        int stream1Offset;

        private Scene() {
            this.plane0 = new byte[GenesisOriginalTutorialRenderer.PLANE_BYTES];
            this.plane1 = new byte[GenesisOriginalTutorialRenderer.PLANE_BYTES];
        }
    }

    GenesisOriginalTutorialRenderer(byte[] rom) {
        this.frame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.pixels = new int[71680];
        this.palette = new int[64];
        this.paletteWords = new int[64];
        this.pendingSequences = new int[16];
        this.cursorType = -1;
        if (rom == null || rom.length < 273280) {
            throw new IllegalArgumentException("Original tutorial ROM is missing/truncated");
        }
        this.rom = rom;
        this.mediaAssets = null;
        this.tutorialContent = null;
        this.providerSceneFlags = null;
        this.providerCursorLayouts = null;
        this.providerTextLayout = null;
        this.providerTextFont = null;
        verifyRomAnchors();
        initializeState();
    }

    GenesisOriginalTutorialRenderer(RomRuntimeFrontendAssets assets, RomRuntimeOriginalContentAssets contentAssets) {
        this.frame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.pixels = new int[71680];
        this.palette = new int[64];
        this.paletteWords = new int[64];
        this.pendingSequences = new int[16];
        this.cursorType = -1;
        if (assets == null) {
            throw new IllegalArgumentException("Tutorial media provider is unavailable");
        }
        if (contentAssets == null) {
            throw new IllegalArgumentException("Tutorial content provider is unavailable");
        }
        this.rom = null;
        this.mediaAssets = assets;
        this.tutorialContent = readTutorialContent(contentAssets);
        this.providerSceneFlags = parseProviderSceneIndex(readMedia("tutorial/scenes/index.bin"));
        this.providerCursorLayouts = parseProviderCursorLayouts(readMedia("tutorial/cursor/layouts.bin"));
        this.providerTextLayout = readMedia("tutorial/text/layout.bin");
        this.providerTextFont = readMedia("tutorial/text/font.bin");
        initializeState();
    }

    GenesisOriginalTutorialRenderer(RomRuntimeFrontendAssets assets, byte[] legacyRom) {
        this.frame = Bitmap.createBitmap(320, 224, Bitmap.Config.ARGB_8888);
        this.pixels = new int[71680];
        this.palette = new int[64];
        this.paletteWords = new int[64];
        this.pendingSequences = new int[16];
        this.cursorType = -1;
        if (assets == null) {
            throw new IllegalArgumentException("Tutorial media provider is unavailable");
        }
        if (legacyRom == null || legacyRom.length < 273280) {
            throw new IllegalArgumentException("Original tutorial ROM is missing/truncated");
        }
        this.rom = legacyRom;
        this.mediaAssets = assets;
        this.tutorialContent = null;
        this.providerSceneFlags = parseProviderSceneIndex(readMedia("tutorial/scenes/index.bin"));
        this.providerCursorLayouts = parseProviderCursorLayouts(readMedia("tutorial/cursor/layouts.bin"));
        this.providerTextLayout = readMedia("tutorial/text/layout.bin");
        this.providerTextFont = readMedia("tutorial/text/font.bin");
        verifyRomAnchors();
        initializeState();
    }

    private static RomRuntimeOriginalContentAssets.TutorialExactContent readTutorialContent(RomRuntimeOriginalContentAssets contentAssets) {
        try {
            return contentAssets.tutorialExactContent();
        } catch (IOException e) {
            throw new IllegalArgumentException("Tutorial exact content is unavailable", e);
        }
    }

    private void initializeState() {
        Arrays.fill(this.palette, -16777216);
        Arrays.fill(this.paletteWords, 0);
        this.complete = true;
        this.dirty = true;
    }

    void resetIntro() {
        this.scriptIndex = 0;
        this.f14pc = GenesisRecoveredTutorialControlData.scriptStart(0);
        this.waitTicks = 0;
        this.loopCount = 0;
        this.loopPc = 0;
        this.planeResult = 0;
        this.cursorY = 0;
        this.cursorX = 0;
        this.cursorType = -1;
        this.cursorMotionTicks = 0;
        this.cursorMotionDy = 0;
        this.paletteFadeActive = false;
        this.paletteFadeReachedBlack = false;
        this.paletteFadeTicks = 0;
        this.cursorPatterns = loadCursorPatterns();
        this.tutorialText = null;
        this.pendingTail = 0;
        this.pendingHead = 0;
        this.complete = false;
        this.aborted = false;
        this.scene = null;
        Arrays.fill(this.palette, -16777216);
        Arrays.fill(this.paletteWords, 0);
        this.dirty = true;
        executeUntilWait();
    }

    boolean tick(boolean confirmPressed) {
        return tick(confirmPressed, false);
    }

    boolean tick(boolean confirmPressed, boolean abortPressed) {
        if (this.complete) {
            return false;
        }
        if (this.paletteFadeActive) {
            this.paletteFadeTicks--;
            if (this.paletteFadeTicks > 0) {
                return true;
            }
            if (this.paletteFadeReachedBlack) {
                this.paletteFadeActive = false;
                this.paletteFadeReachedBlack = false;
            } else {
                this.paletteFadeReachedBlack = fadePaletteOneGenesisStep();
                this.paletteFadeTicks = 5;
                return true;
            }
        }
        if (this.cursorMotionTicks > 0) {
            this.cursorY += this.cursorMotionDy;
            this.cursorMotionTicks--;
            this.dirty = true;
            if (this.cursorMotionTicks > 0) {
                return true;
            }
        }
        if (this.waitTicks > 0) {
            if (abortPressed) {
                this.aborted = true;
                this.complete = true;
                this.waitTicks = 0;
                return false;
            }
            if (confirmPressed) {
                this.waitTicks = 0;
            } else {
                this.waitTicks--;
            }
            if (this.waitTicks > 0) {
                return true;
            }
        }
        executeUntilWait();
        return !this.complete;
    }

    boolean isComplete() {
        return this.complete;
    }

    boolean wasAborted() {
        return this.aborted;
    }

    int pollSequence() {
        if (this.pendingHead == this.pendingTail) {
            return -1;
        }
        int v = this.pendingSequences[this.pendingHead];
        this.pendingHead = (this.pendingHead + 1) % this.pendingSequences.length;
        return v;
    }

    Bitmap frame() {
        if (this.dirty) {
            renderFrame();
            this.dirty = false;
        }
        return this.frame;
    }

    private void executeUntilWait() {
        int guard = 0;
        while (!this.complete && this.waitTicks == 0 && this.cursorMotionTicks == 0 && !this.paletteFadeActive) {
            guard++;
            if (guard > 10000) {
                throw new IllegalStateException("Original tutorial script guard");
            }
            int op = be16(this.f14pc);
            this.f14pc += 2;
            if (op == 0) {
                this.scriptIndex++;
                if (this.scriptIndex >= TUTORIAL_SCRIPT.length) {
                    this.complete = true;
                    return;
                }
                this.f14pc = GenesisRecoveredTutorialControlData.scriptStart(this.scriptIndex);
            } else {
                switch (op) {
                    case 2:
                        this.waitTicks = be16(this.f14pc);
                        this.f14pc += 2;
                        if (this.waitTicks <= 0) {
                            this.waitTicks = 1;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                    case 5:
                    case 7:
                    case 9:
                    case 11:
                    case 13:
                    case RomAssetBundleManifest.CLASSIC_PURCHASE_FORMAT_VERSION /* 15 */:
                    case RomAssetBundleManifest.CLASSIC_DETAIL_FORMAT_VERSION /* 17 */:
                    case 19:
                    case 21:
                    case 23:
                    case 25:
                    case 27:
                    case 29:
                    case 31:
                    case 33:
                    case 35:
                    case 37:
                    case 39:
                    case 41:
                    case 43:
                    case 45:
                    case 47:
                    case 49:
                    case GenesisCampaignTransitionRenderer.AFTER_DROP_HOLD_TICKS /* 51 */:
                    default:
                        throw new IllegalStateException(String.format("Original tutorial opcode %04X not in Stage 04.209 tutorial core", Integer.valueOf(op)));
                    case 4:
                        int plane = this.f14pc;
                        int sceneId = be16(plane);
                        this.f14pc += 2;
                        loadScene(sceneId);
                        break;
                    case 6:
                        int plane2 = be16(this.f14pc);
                        this.f14pc += 2;
                        this.planeResult = advancePlane(plane2);
                        break;
                    case 8:
                        int value = this.f14pc;
                        this.loopPc = value;
                        break;
                    case 10:
                        int value2 = be16(this.f14pc);
                        this.f14pc += 2;
                        if ((this.planeResult & 65535) != value2) {
                            this.f14pc = this.loopPc;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.f14pc = be32(this.f14pc);
                        break;
                    case 14:
                        startPaletteFadeToBlack();
                        break;
                    case 16:
                        int palettePtr = be32(this.f14pc);
                        this.f14pc += 4;
                        loadPalette(palettePtr);
                        break;
                    case RomAssetBundleManifest.FORMAT_VERSION /* 18 */:
                        this.loopCount = be16(this.f14pc);
                        this.f14pc += 2;
                        this.loopPc = this.f14pc;
                        break;
                    case RazorCampaignMapSnapshot559.HEADER /* 20 */:
                        int count = this.loopCount;
                        this.loopCount = count - 1;
                        if (this.loopCount != 0) {
                            this.f14pc = this.loopPc;
                            break;
                        } else {
                            break;
                        }
                    case DuneHackR82cRazorCombatAudit.DAMAGE_ANIMATIONS /* 22 */:
                        int sequence = this.f14pc;
                        int plane3 = be16(sequence);
                        int count2 = be16(this.f14pc + 2);
                        this.f14pc += 4;
                        this.planeResult = 0;
                        for (int i = 0; i < count2; i++) {
                            this.planeResult = advancePlane(plane3);
                        }
                        break;
                    case 24:
                        int sequence2 = be16(this.f14pc);
                        this.f14pc += 2;
                        queueSequence(sequence2);
                        break;
                    case 26:
                        resetPlaneOffset(0);
                        resetPlaneOffset(1);
                        break;
                    case 28:
                        resetPlaneOffset(0);
                        break;
                    case 30:
                        resetPlaneOffset(1);
                        break;
                    case 32:
                        this.cursorPatterns = loadCursorPatterns();
                        this.cursorType = -1;
                        this.dirty = true;
                        break;
                    case 34:
                        int y = signed16(be16(this.f14pc));
                        int x = signed16(be16(this.f14pc + 2));
                        int type = be16(this.f14pc + 4);
                        this.f14pc += 6;
                        setCursor(x, y, type);
                        break;
                    case 36:
                        this.cursorType = -1;
                        this.dirty = true;
                        break;
                    case 38:
                        int y2 = signed16(be16(this.f14pc));
                        int x2 = signed16(be16(this.f14pc + 2));
                        this.f14pc += 4;
                        this.cursorX = x2;
                        this.cursorY = y2;
                        this.dirty = true;
                        break;
                    case 40:
                        this.cursorMotionTicks = 32;
                        this.cursorMotionDy = -3;
                        break;
                    case 42:
                        this.cursorMotionTicks = 32;
                        this.cursorMotionDy = 3;
                        break;
                    case 44:
                        int patternPtr = be32(this.f14pc);
                        this.f14pc += 4;
                        uploadDynamicPalette(patternPtr);
                        break;
                    case 46:
                        this.waitTicks = 1;
                        break;
                    case RazorCompactMapPlacement.END_EXCLUSIVE /* 48 */:
                        loadInlineText();
                        break;
                    case 50:
                        this.tutorialText = null;
                        this.dirty = true;
                        break;
                    case 52:
                        clearVisiblePlaneB();
                        this.waitTicks = 1;
                        break;
                }
            }
        }
    }

    private void queueSequence(int sequence) {
        int next = (this.pendingTail + 1) % this.pendingSequences.length;
        if (next == this.pendingHead) {
            return;
        }
        this.pendingSequences[this.pendingTail] = sequence;
        this.pendingTail = next;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.ahsim.demulation.GenesisOriginalTutorialRenderer-IA] */
    private void loadScene(int i) {
        if (i < 0 || i > 11) {
            throw new IllegalArgumentException("Tutorial scene " + i);
        }
        if (this.scene == null) {
            this.scene = new Scene();
        }
        if (this.mediaAssets != null) {
            boolean[] zArr = this.providerSceneFlags[i];
            if (zArr[0]) {
                this.scene.patterns = readMedia(scenePath(i, "_patterns.bin"));
            } else if (this.scene.patterns == null) {
                this.scene.patterns = new byte[0];
            }
            this.scene.stream0 = zArr[1] ? readMedia(scenePath(i, "_plane0.delta")) : null;
            this.scene.stream1 = zArr[2] ? readMedia(scenePath(i, "_plane1.delta")) : null;
        } else {
            int i2 = (i * 12) + SCENE_TABLE;
            int be32 = be32(i2);
            int be322 = be32(i2 + 4);
            int be323 = be32(i2 + 8);
            if (be32 != 0) {
                this.scene.patterns = loadPatternTable(be32);
            } else if (this.scene.patterns == null) {
                this.scene.patterns = new byte[0];
            }
            this.scene.stream0 = be322 == 0 ? null : decompressExact(be322, 65536);
            this.scene.stream1 = be323 != 0 ? decompressExact(be323, 65536) : 0;
        }
        this.scene.stream0Offset = 0;
        this.scene.stream1Offset = 0;
        this.dirty = true;
    }

    private int advancePlane(int plane) {
        int used;
        if (this.scene == null) {
            return 0;
        }
        if (plane == 0) {
            if (this.scene.stream0 == null) {
                return 0;
            }
            used = applyPlaneDelta(this.scene.stream0, this.scene.stream0Offset, this.scene.plane0);
            if (used >= 0) {
                this.scene.stream0Offset += used;
            }
        } else if (plane == 1) {
            if (this.scene.stream1 == null) {
                return 0;
            }
            used = applyPlaneDelta(this.scene.stream1, this.scene.stream1Offset, this.scene.plane1);
            if (used >= 0) {
                this.scene.stream1Offset += used;
            }
        } else {
            throw new IllegalArgumentException("Tutorial plane " + plane);
        }
        this.dirty = true;
        return used < 0 ? -1 : 0;
    }

    private void resetPlaneOffset(int plane) {
        if (this.scene == null) {
            return;
        }
        if (plane == 0) {
            this.scene.stream0Offset = 0;
        } else {
            if (plane == 1) {
                this.scene.stream1Offset = 0;
                return;
            }
            throw new IllegalArgumentException("Tutorial plane " + plane);
        }
    }

    private void setCursor(int x, int y, int type) {
        if (type < 0 || type > 5) {
            throw new IllegalArgumentException("Tutorial cursor type " + type);
        }
        this.cursorX = x;
        this.cursorY = y;
        this.cursorType = type;
        this.dirty = true;
    }

    private void uploadDynamicPalette(int palettePtr) {
        byte[] dynamic;
        if (this.mediaAssets != null) {
            if (palettePtr != 270166) {
                throw new IllegalArgumentException("Unexpected tutorial dynamic-palette source");
            }
            dynamic = readMedia("tutorial/dynamic/dynamic00_patterns.bin");
        } else {
            checkRange(palettePtr, 128);
            dynamic = Arrays.copyOfRange(this.rom, palettePtr, palettePtr + 128);
        }
        if (dynamic.length != 128) {
            throw new IllegalArgumentException("Tutorial dynamic palette size mismatch");
        }
        for (int i = 0; i < 64; i++) {
            int word = u16(dynamic, i * 2);
            if ((word & (-3823)) != 0) {
                throw new IllegalArgumentException("Tutorial dynamic palette word mismatch");
            }
            this.paletteWords[i] = word;
            this.palette[i] = genesisColor(word);
        }
        this.dirty = true;
    }

    private void loadInlineText() {
        int i;
        if (this.tutorialContent != null) {
            int messageIndex = GenesisRecoveredTutorialControlData.messageIndexAt(this.f14pc);
            if (messageIndex < 0) {
                throw new IllegalArgumentException("Tutorial message PC mismatch");
            }
            byte[] message = this.tutorialContent.message(messageIndex);
            if (this.tutorialContent.characterMapSize() == 128 && message.length != GenesisRecoveredTutorialControlData.messageLength(messageIndex)) {
                throw new IllegalArgumentException("Tutorial message length mismatch");
            }
            this.tutorialText = message;
            this.f14pc = GenesisRecoveredTutorialControlData.nextPcAfterMessage(this.f14pc);
        } else {
            int messageIndex2 = this.f14pc;
            do {
                i = this.f14pc;
                this.f14pc = i + 1;
            } while (controlByte(i) != 0);
            this.tutorialText = Arrays.copyOfRange(this.rom, messageIndex2, this.f14pc - 1);
            this.f14pc = (this.f14pc + 1) & (-2);
        }
        this.dirty = true;
    }

    private int applyPlaneDelta(byte[] src, int sourceOffset, byte[] dst) {
        int p;
        if (sourceOffset < 0 || sourceOffset + 2 > src.length) {
            throw new IllegalArgumentException("Tutorial plane stream overrun");
        }
        int encodedBytes = u16(src, sourceOffset);
        if (encodedBytes == 65535) {
            return -1;
        }
        int control = sourceOffset + 2;
        int remain = encodedBytes;
        int visibleColumn = 0;
        int out = 0;
        while (remain > 0) {
            if (control >= src.length) {
                throw new IllegalArgumentException("Tutorial plane command overrun");
            }
            int p2 = control + 1;
            int control2 = src[control] & 255;
            int remain2 = remain - 1;
            if (control2 == 128) {
                if (p2 >= src.length) {
                    throw new IllegalArgumentException("Tutorial plane skip overrun");
                }
                int p3 = p2 + 1;
                int skip = src[p2] & 255;
                remain = remain2 - 1;
                out += skip * 2;
                visibleColumn += skip;
                if (visibleColumn >= 40) {
                    int rows = visibleColumn / 40;
                    out += rows * 24 * 2;
                    visibleColumn %= 40;
                }
                checkPlaneOutput(out, 0);
                p = p3;
            } else if (control2 > 128) {
                int count = control2 & 127;
                remain = remain2 - (count * 2);
                for (int i = 0; i < count; i++) {
                    if (p2 + 2 > src.length) {
                        throw new IllegalArgumentException("Tutorial literal overrun");
                    }
                    checkPlaneOutput(out, 2);
                    int out2 = out + 1;
                    int p4 = p2 + 1;
                    dst[out] = src[p2];
                    out = out2 + 1;
                    p2 = p4 + 1;
                    dst[out2] = src[p4];
                    visibleColumn++;
                    if (visibleColumn >= 40) {
                        out += 48;
                        visibleColumn = 0;
                    }
                }
                p = p2;
            } else {
                if (p2 + 2 > src.length) {
                    throw new IllegalArgumentException("Tutorial repeat overrun");
                }
                int p5 = p2 + 1;
                int hi = src[p2] & 255;
                p = p5 + 1;
                int lo = src[p5] & 255;
                remain = remain2 - 2;
                for (int i2 = 0; i2 < control2; i2++) {
                    checkPlaneOutput(out, 2);
                    int out3 = out + 1;
                    dst[out] = (byte) hi;
                    out = out3 + 1;
                    dst[out3] = (byte) lo;
                    visibleColumn++;
                    if (visibleColumn >= 40) {
                        out += 48;
                        visibleColumn = 0;
                    }
                }
            }
            if (remain < 0) {
                throw new IllegalArgumentException("Tutorial plane encoded-size mismatch");
            }
            control = p;
        }
        return encodedBytes + 2;
    }

    private void checkPlaneOutput(int offset, int bytes) {
        if (offset < 0 || offset > 3584 - bytes) {
            throw new IllegalArgumentException("Tutorial plane output overrun: " + offset);
        }
    }

    private void clearVisiblePlaneB() {
        if (this.scene == null) {
            return;
        }
        for (int row = 0; row < 28; row++) {
            int start = row * 64 * 2;
            Arrays.fill(this.scene.plane1, start, start + 80, (byte) 0);
        }
        this.dirty = true;
    }

    private void startPaletteFadeToBlack() {
        this.paletteFadeActive = true;
        this.paletteFadeReachedBlack = false;
        this.paletteFadeTicks = 1;
    }

    private boolean fadePaletteOneGenesisStep() {
        boolean black = true;
        for (int i = 0; i < this.paletteWords.length; i++) {
            int word = this.paletteWords[i];
            int r = word & 14;
            int g = word & 224;
            int b = word & PLANE_BYTES;
            if (r != 0) {
                r -= 2;
            }
            if (g != 0) {
                g -= 32;
            }
            if (b != 0) {
                b -= 512;
            }
            int faded = (word & (-3823)) | r | g | b;
            this.paletteWords[i] = faded;
            this.palette[i] = genesisColor(faded);
            if ((faded & 3822) != 0) {
                black = false;
            }
        }
        this.dirty = true;
        return black;
    }

    private void loadPalette(int offset) {
        if (this.mediaAssets != null) {
            int sceneId = paletteSceneForOffset(offset);
            byte[] data = readMedia(String.format(Locale.US, "tutorial/palettes/scene%02d.bin", Integer.valueOf(sceneId)));
            for (int i = 0; i < 64; i++) {
                int word = u16(data, i * 2);
                this.paletteWords[i] = word;
                this.palette[i] = genesisColor(word);
            }
        } else {
            checkRange(offset, 128);
            for (int i2 = 0; i2 < 64; i2++) {
                int word2 = be16((i2 * 2) + offset);
                this.paletteWords[i2] = word2;
                this.palette[i2] = genesisColor(word2);
            }
        }
        this.dirty = true;
    }

    private void renderFrame() {
        int backdrop = this.palette[0];
        Arrays.fill(this.pixels, backdrop);
        if (this.scene != null) {
            drawPlane(this.scene.plane1, 0);
            drawPlane(this.scene.plane0, 0);
            drawTutorialText();
            drawPlane(this.scene.plane1, 1);
            drawPlane(this.scene.plane0, 1);
            drawTutorialCursor();
        }
        this.frame.setPixels(this.pixels, 0, 320, 0, 0, 320, 224);
    }

    private void drawPlane(byte[] plane, int priority) {
        int tx;
        int px;
        if (this.scene != null && this.scene.patterns != null) {
            int ty = 0;
            while (ty < 28) {
                int tx2 = 0;
                while (tx2 < 40) {
                    int mo = ((ty * 64) + tx2) * 2;
                    int attr = u16(plane, mo);
                    if (((attr >>> 15) & 1) == priority) {
                        int pattern = attr & 2047;
                        int po = pattern * 32;
                        if (po >= 0 && po + 32 <= this.scene.patterns.length) {
                            boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
                            boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
                            int paletteLine = (attr >>> 13) & 3;
                            int py = 0;
                            while (py < 8) {
                                int sy = vFlip ? 7 - py : py;
                                int row = (sy * 4) + po;
                                int dy = (ty * 8) + py;
                                int ty2 = ty;
                                int ty3 = 0;
                                while (true) {
                                    tx = tx2;
                                    if (ty3 < 8) {
                                        int sx = hFlip ? 7 - ty3 : ty3;
                                        int packed = this.scene.patterns[row + (sx >>> 1)] & 255;
                                        int ci = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                                        if (ci == 0) {
                                            px = ty3;
                                        } else {
                                            px = ty3;
                                            this.pixels[(dy * 320) + (tx * 8) + px] = this.palette[(paletteLine * 16) + ci];
                                        }
                                        ty3 = px + 1;
                                        tx2 = tx;
                                    }
                                }
                                py++;
                                tx2 = tx;
                                ty = ty2;
                            }
                        }
                    }
                    tx2++;
                    ty = ty;
                }
                ty++;
            }
        }
    }

    private void drawTutorialCursor() {
        if (this.cursorType < 0 || this.cursorPatterns == null || this.cursorPatterns.length == 0) {
            return;
        }
        if (this.mediaAssets == null) {
            drawSpriteDescriptor(romDescriptor(be32((this.cursorType * 8) + CURSOR_DESCRIPTOR_TABLE + 4)), this.cursorX, this.cursorY, true);
        } else {
            drawSpriteDescriptor(this.providerCursorLayouts[this.cursorType], this.cursorX, this.cursorY, true);
        }
    }

    private void drawTutorialText() {
        if (this.tutorialText == null) {
            return;
        }
        if (this.mediaAssets == null) {
            drawSpriteDescriptor(romDescriptor(TEXT_DESCRIPTOR), 28, 32, false);
        } else {
            drawSpriteDescriptor(this.providerTextLayout, 28, 32, false);
        }
    }

    private void drawSpriteDescriptor(byte[] descriptor, int baseX, int baseY, boolean cursor) {
        if (descriptor == null || descriptor.length < 2) {
            return;
        }
        int pieces = u16(descriptor, 0) + 1;
        int p = 2;
        if (descriptor.length < (pieces * 12) + 2) {
            throw new IllegalArgumentException("Tutorial sprite descriptor truncated");
        }
        int i = 0;
        while (i < pieces) {
            int yOff = signed16(u16(descriptor, p + 4));
            int sizeWord = u16(descriptor, p + 6);
            int attr = u16(descriptor, p + 8);
            int xOff = signed16(u16(descriptor, p + 10));
            int size = (sizeWord >>> 8) & 15;
            int tilesWide = ((size >>> 2) & 3) + 1;
            int tilesHigh = (size & 3) + 1;
            int firstPattern = attr & 2047;
            boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
            boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
            int tx = 0;
            while (tx < tilesWide) {
                int ty = 0;
                while (ty < tilesHigh) {
                    int srcTx = hFlip ? (tilesWide - 1) - tx : tx;
                    int srcTy = vFlip ? (tilesHigh - 1) - ty : ty;
                    int pattern = firstPattern + (srcTx * tilesHigh) + srcTy;
                    int firstPattern2 = baseX + xOff + (tx * 8);
                    int tx2 = baseY + yOff + (ty * 8);
                    int pattern2 = tilesWide;
                    drawSpriteTile(pattern, attr, firstPattern2, tx2, cursor);
                    ty++;
                    tilesWide = pattern2;
                    tilesHigh = tilesHigh;
                    firstPattern = firstPattern;
                    tx = tx;
                }
                tx++;
            }
            i++;
            p += 12;
        }
    }

    private void drawSpriteTile(int pattern, int attr, int x0, int y0, boolean cursor) {
        byte[] tile;
        int tileOffset = 0;
        if (cursor) {
            int local = pattern - 715;
            if (local < 0) {
                return;
            }
            tileOffset = local * 32;
            if (this.cursorPatterns == null || tileOffset + 32 > this.cursorPatterns.length) {
                return;
            } else {
                tile = this.cursorPatterns;
            }
        } else {
            tile = resolveTextPattern(pattern);
            if (tile == null) {
                return;
            }
        }
        boolean hFlip = (attr & GenesisObjectArt.VRAM_PATTERN_COUNT) != 0;
        boolean vFlip = (attr & DuneHackR82ScenarioRecordDecoder.MAX_RECORDS) != 0;
        int paletteLine = (attr >>> 13) & 3;
        int py = 0;
        while (true) {
            if (py < 8) {
                int sy = vFlip ? 7 - py : py;
                int row = (sy * 4) + tileOffset;
                int dy = y0 + py;
                if (dy >= 0 && dy < 224) {
                    int px = 0;
                    for (int i = 8; px < i; i = 8) {
                        int sx = hFlip ? 7 - px : px;
                        int dx = x0 + px;
                        if (dx >= 0 && dx < 320) {
                            int packed = tile[(sx >>> 1) + row] & 255;
                            int ci = (sx & 1) == 0 ? packed >>> 4 : packed & 15;
                            if (ci != 0) {
                                this.pixels[(dy * 320) + dx] = this.palette[(paletteLine * 16) + ci];
                            }
                        }
                        px++;
                    }
                }
                py++;
            } else {
                return;
            }
        }
    }

    private byte[] resolveTextPattern(int pattern) {
        int glyph;
        int fontOffset;
        if (pattern == 1648) {
            fontOffset = 288;
        } else if (pattern == 1649) {
            fontOffset = 352;
        } else if (pattern < 1650 || pattern > 1653) {
            if ((pattern >= 1654 && pattern <= 1685) || (pattern >= 1686 && pattern <= 1717)) {
                int line = pattern >= 1686 ? 1 : 0;
                int fontOffset2 = line != 0 ? 1686 : 1654;
                int column = pattern - fontOffset2;
                int ch = textCharacterAt(line, column);
                if (ch < 0) {
                    byte[] blank = new byte[32];
                    Arrays.fill(blank, (byte) -1);
                    return blank;
                }
                if (this.tutorialContent != null) {
                    glyph = this.tutorialContent.characterMapValue(ch & 255);
                } else {
                    glyph = controlByte((ch & 255) + TEXT_CHAR_MAP);
                }
                fontOffset = glyph * 32;
            } else {
                return null;
            }
        } else {
            fontOffset = 320;
        }
        if (this.mediaAssets != null) {
            if (fontOffset < 0 || fontOffset > this.providerTextFont.length - 32) {
                throw new IllegalArgumentException("Tutorial provider font range");
            }
            return Arrays.copyOfRange(this.providerTextFont, fontOffset, fontOffset + 32);
        }
        checkRange(fontOffset + TEXT_FONT, 32);
        return Arrays.copyOfRange(this.rom, fontOffset + TEXT_FONT, TEXT_FONT + fontOffset + 32);
    }

    private int textCharacterAt(int wantedLine, int wantedColumn) {
        if (this.tutorialText == null) {
            return -1;
        }
        int line = 0;
        int column = 0;
        for (byte b : this.tutorialText) {
            int c = b & 255;
            if (c == 10) {
                line++;
                column = 0;
            } else {
                if (line == wantedLine && column == wantedColumn) {
                    return c;
                }
                if (line == wantedLine && column > wantedColumn) {
                    return -1;
                }
                column++;
            }
        }
        return -1;
    }

    private byte[] loadCursorPatterns() {
        return this.mediaAssets != null ? readMedia("tutorial/cursor/patterns.bin") : loadPatternTable(CURSOR_PATTERN_TABLE);
    }

    private byte[] readMedia(String relativePath) {
        try {
            return this.mediaAssets.read(relativePath);
        } catch (IOException e) {
            throw new IllegalArgumentException("Tutorial media asset unavailable: " + relativePath, e);
        }
    }

    private static String scenePath(int sceneId, String suffix) {
        return String.format(Locale.US, "tutorial/scenes/scene%02d%s", Integer.valueOf(sceneId), suffix);
    }

    private static int paletteSceneForOffset(int offset) {
        switch (offset) {
            case 198652:
                return 0;
            case 209332:
                return 1;
            case 224754:
                return 3;
            case 233846:
                return 4;
            case 248200:
                return 6;
            case 259310:
                return 9;
            case 267006:
                return 11;
            default:
                throw new IllegalArgumentException("Unexpected tutorial palette source");
        }
    }

    private byte[] romDescriptor(int offset) {
        int pieces = be16(offset) + 1;
        int length = (pieces * 12) + 2;
        checkRange(offset, length);
        return Arrays.copyOfRange(this.rom, offset, offset + length);
    }

    private static boolean[][] parseProviderSceneIndex(byte[] data) {
        if (data.length != 56 || data[0] != 68 || data[1] != 84 || data[2] != 83 || data[3] != 67 || u16(data, 4) != 1 || u16(data, 6) != 12) {
            throw new IllegalArgumentException("Tutorial provider scene index mismatch");
        }
        boolean[][] flags = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 12, 3);
        int p = 8;
        int i = 0;
        while (i < 12) {
            int scene = data[p] & 255;
            if (scene != i) {
                throw new IllegalArgumentException("Tutorial provider scene order mismatch");
            }
            flags[i][0] = data[p + 1] != 0;
            flags[i][1] = data[p + 2] != 0;
            flags[i][2] = data[p + 3] != 0;
            i++;
            p += 4;
        }
        return flags;
    }

    private static byte[][] parseProviderCursorLayouts(byte[] data) {
        if (data.length < 8 || data[0] != 68 || data[1] != 67 || data[2] != 85 || data[3] != 82 || u16(data, 4) != 1 || u16(data, 6) != 6) {
            throw new IllegalArgumentException("Tutorial provider cursor layout header mismatch");
        }
        byte[][] out = new byte[6][];
        int p = 8;
        for (int i = 0; i < out.length; i++) {
            if (p + 2 > data.length) {
                throw new IllegalArgumentException("Tutorial cursor layout truncated");
            }
            int n = u16(data, p);
            int p2 = p + 2;
            if (n < 2 || p2 > data.length - n) {
                throw new IllegalArgumentException("Tutorial cursor layout range");
            }
            out[i] = Arrays.copyOfRange(data, p2, p2 + n);
            p = p2 + n;
        }
        if (p != data.length) {
            throw new IllegalArgumentException("Tutorial cursor layout trailing bytes");
        }
        return out;
    }

    private static int signed16(int v) {
        return (short) (65535 & v);
    }

    private byte[] loadPatternTable(int tableOffset) {
        int p = tableOffset;
        int bytes = 0;
        int guard = 0;
        while (true) {
            guard++;
            if (guard > 256) {
                throw new IllegalArgumentException("Tutorial pattern table guard");
            }
            int flags = be16(p);
            if (flags != 0) {
                bytes += (flags & 32767) * 32;
                p += 6;
            } else {
                byte[] out = new byte[bytes];
                byte[] scratch = new byte[65536];
                int p2 = tableOffset;
                int dst = 0;
                while (true) {
                    int flags2 = be16(p2);
                    if (flags2 != 0) {
                        int pointer = be32(p2 + 2);
                        p2 += 6;
                        int n = (flags2 & 32767) * 32;
                        if ((32768 & flags2) != 0) {
                            int produced = decompressInto(pointer, scratch);
                            if (produced <= 0) {
                                throw new IllegalArgumentException("Tutorial pattern decode empty");
                            }
                            System.arraycopy(scratch, 0, out, dst, n);
                        } else {
                            checkRange(pointer, n);
                            System.arraycopy(this.rom, pointer, out, dst, n);
                        }
                        dst += n;
                    } else {
                        return out;
                    }
                }
            }
        }
    }

    private byte[] decompressExact(int source, int maxOutput) {
        byte[] scratch = new byte[maxOutput];
        int n = decompressInto(source, scratch);
        return Arrays.copyOf(scratch, n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0128, code lost:
    
        throw new java.lang.IllegalArgumentException("Tutorial long-copy range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00aa, code lost:
    
        throw new java.lang.IllegalArgumentException("Tutorial absolute-copy range");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int decompressInto(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.GenesisOriginalTutorialRenderer.decompressInto(int, byte[]):int");
    }

    private static int genesisColor(int word) {
        int r3 = (word >>> 1) & 7;
        int g3 = (word >>> 5) & 7;
        int b3 = (word >>> 9) & 7;
        return Color.rgb(Math.round((r3 * 255.0f) / 7.0f), Math.round((g3 * 255.0f) / 7.0f), Math.round((b3 * 255.0f) / 7.0f));
    }

    private void verifyRomAnchors() {
        if (be32(SCENE_TABLE) != 198780 || be32(268006) != 205938 || be32(268010) != 208478) {
            throw new IllegalArgumentException("Original tutorial scene table changed");
        }
        if (be16(269128) != 4 || be16(269186) != 4 || be32(269142) != 198652 || be32(269200) != 209332 || be16(269264) != 4 || be16(269298) != 34 || be32(269660) != 270166 || be16(270294) != 4 || be16(270296) != 6 || be16(271132) != 4 || be16(271134) != 7 || be16(271308) != 4 || be16(271310) != 9 || be16(272140) != 4 || be16(272142) != 10 || be16(272694) != 4 || be16(272696) != 11 || be16(272698) != 52 || be32(272706) != 267006) {
            throw new IllegalArgumentException("Original tutorial scripts changed");
        }
    }

    private int controlByte(int off) {
        if (this.rom != null) {
            checkRange(off, 1);
            return this.rom[off] & 255;
        }
        int recovered = GenesisRecoveredTutorialControlData.byteAt(off);
        if (recovered >= 0) {
            return recovered;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Tutorial recovered-control range %06X", Integer.valueOf(off)));
    }

    private int be16(int off) {
        return (controlByte(off) << 8) | controlByte(off + 1);
    }

    private int be32(int off) {
        return (controlByte(off) << 24) | (controlByte(off + 1) << 16) | (controlByte(off + 2) << 8) | controlByte(off + 3);
    }

    private static int u16(byte[] data, int off) {
        if (off < 0 || off + 2 > data.length) {
            throw new IllegalArgumentException("Tutorial u16 range");
        }
        return ((data[off] & 255) << 8) | (data[off + 1] & 255);
    }

    private void checkRange(int off, int n) {
        if (this.rom == null || off < 0 || n < 0 || off > this.rom.length - n) {
            throw new IllegalArgumentException("Tutorial legacy ROM range");
        }
    }

    private static void ensureOutput(byte[] out, int off, int n) {
        if (off < 0 || n < 0 || off > out.length - n) {
            throw new IllegalArgumentException("Tutorial output overrun");
        }
    }
}
