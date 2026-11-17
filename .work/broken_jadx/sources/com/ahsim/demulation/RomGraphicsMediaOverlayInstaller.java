package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import com.ahsim.demulation.DuneHackGraphicsLayoutAdapter;
import com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider;
import com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider;
import com.ahsim.demulation.RomAssetInstallState;
import com.ahsim.demulation.RomGraphicsMediaOverlayInstaller;
import com.ahsim.demulation.RomGraphicsMediaOverlayStore;
import com.ahsim.demulation.RomGraphicsVisualComparator;
import com.ahsim.demulation.RomLayoutCapabilityAnalyzer;
import com.ahsim.demulation.RomSelectionStore;
import com.ahsim.demulation.RomSourceAccessPolicy;
import com.ahsim.demulation.RomWorldTacticalSpriteAssetManifest;
import com.ahsim.demulation.RomWorldTerrainRadarAssetManifest;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class RomGraphicsMediaOverlayInstaller {

    public enum GroupState {
        OVERLAY,
        OVERLAY_PARTIAL,
        BASE_FALLBACK_IDENTICAL,
        BASE_FALLBACK_UNSUPPORTED_LAYOUT,
        BASE_FALLBACK_STRUCTURAL_MISMATCH,
        BASE_FALLBACK_POLICY
    }

    public interface ProgressListener {
        void onProgress(String str, int i, int i2, String str2);
    }

    public static final class Outcome {
        public final String adapterSummary;
        public final int candidateEntries;
        public final List<RomGraphicsVisualComparator.Result> comparisonDetails;
        public final int identicalEntries;
        public final List<String> identicalPaths;
        public final RomLayoutCapabilityAnalyzer.LayoutFamily layoutFamily;
        public final int overlayEntries;
        public final List<String> overlayPaths;
        public final String profileId;
        public final String profileLabel;
        public final RomGraphicsMediaOverlayStore.Snapshot snapshot;
        public final String sourceSha256;
        public final RomLayoutCapabilityAnalyzer.CapabilityState tacticalCapability;
        public final String tacticalEvidence;
        public final GroupState tacticalSprites;
        public final RomLayoutCapabilityAnalyzer.CapabilityState terrainCapability;
        public final String terrainEvidence;
        public final GroupState terrainRadar;
        public final RomGraphicsVisualComparator.TerrainSceneResult terrainScene;
        public final List<String> visuallyIdenticalPaths;

        Outcome(String sourceSha256, String profileId, String profileLabel, RomLayoutCapabilityAnalyzer.LayoutFamily layoutFamily, RomLayoutCapabilityAnalyzer.CapabilityState terrainCapability, String terrainEvidence, RomLayoutCapabilityAnalyzer.CapabilityState tacticalCapability, String tacticalEvidence, GroupState terrainRadar, GroupState tacticalSprites, int candidateEntries, int identicalEntries, int overlayEntries, List<String> overlayPaths, List<String> identicalPaths, List<String> visuallyIdenticalPaths, List<RomGraphicsVisualComparator.Result> comparisonDetails, RomGraphicsVisualComparator.TerrainSceneResult terrainScene, String adapterSummary, RomGraphicsMediaOverlayStore.Snapshot snapshot) {
            this.sourceSha256 = sourceSha256;
            this.profileId = profileId;
            this.profileLabel = profileLabel == null ? "" : profileLabel;
            this.layoutFamily = layoutFamily;
            this.terrainCapability = terrainCapability;
            this.terrainEvidence = terrainEvidence == null ? "" : terrainEvidence;
            this.tacticalCapability = tacticalCapability;
            this.tacticalEvidence = tacticalEvidence == null ? "" : tacticalEvidence;
            this.terrainRadar = terrainRadar;
            this.tacticalSprites = tacticalSprites;
            this.candidateEntries = candidateEntries;
            this.identicalEntries = identicalEntries;
            this.overlayEntries = overlayEntries;
            this.overlayPaths = Collections.unmodifiableList(new ArrayList(overlayPaths));
            this.identicalPaths = Collections.unmodifiableList(new ArrayList(identicalPaths));
            this.visuallyIdenticalPaths = Collections.unmodifiableList(new ArrayList(visuallyIdenticalPaths));
            this.comparisonDetails = Collections.unmodifiableList(new ArrayList(comparisonDetails));
            this.terrainScene = terrainScene;
            this.adapterSummary = adapterSummary != null ? adapterSummary : "";
            this.snapshot = snapshot;
        }

        public boolean hasAnyOverlay() {
            return this.overlayEntries > 0;
        }

        public boolean allCompatibleGraphicsIdentical() {
            return this.overlayEntries == 0 && this.candidateEntries > 0 && this.identicalEntries == this.candidateEntries && this.terrainRadar == GroupState.BASE_FALLBACK_IDENTICAL && this.tacticalSprites == GroupState.BASE_FALLBACK_IDENTICAL;
        }
    }

    private RomGraphicsMediaOverlayInstaller() {
    }

    public static Outcome install(Context context, RomSelectionStore.OverlaySelection selection, ProgressListener listener) throws IOException {
        if (context == null) {
            throw new IOException("Context is unavailable");
        }
        if (selection == null || selection.role != RomSelectionStore.SourceRole.MEDIA_MOD) {
            throw new IOException("MEDIA_MOD selection is required");
        }
        if (!RomSourceAccessPolicy.allows(selection.role, RomSourceAccessPolicy.Capability.MEDIA_GRAPHICS_NEUTRAL)) {
            throw new IOException("MEDIA_MOD graphics are denied by source policy");
        }
        ContentResolver resolver = context.getContentResolver();
        try {
            InputStream input = resolver.openInputStream(selection.uri);
            try {
                byte[] raw = readAll(input, selection.size);
                if (input != null) {
                    input.close();
                }
                return installFromBytes(context, selection, raw, listener);
            } finally {
            }
        } catch (SecurityException e) {
            throw new IOException("Persistent permission for the MEDIA_MOD ROM is unavailable", e);
        }
    }

    /*  JADX ERROR: Types fix failed
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:56)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:183)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:242)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:221)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:91)
        */
    /* JADX WARN: Failed to apply debug info
    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "changeArg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:439)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:232)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:212)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:183)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:112)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:83)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnoreUnknown(TypeUpdate.java:74)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x076e: MOVE (r15 I:??[OBJECT, ARRAY]) = 
      (r22 I:??[OBJECT, ARRAY] A[D('entries' java.util.LinkedHashMap<java.lang.String, com.ahsim.demulation.RomGraphicsMediaOverlayStore$Entry>)])
    , block:B:370:0x076c */
    /* JADX WARN: Not initialized variable reg: 31, insn: 0x0770: MOVE (r16 I:??[OBJECT, ARRAY]) = (r31 I:??[OBJECT, ARRAY] A[D('paths' java.util.ArrayList<java.lang.String>)]), block:B:370:0x076c */
    /* JADX WARN: Not initialized variable reg: 39, insn: 0x0772: MOVE (r14 I:??[OBJECT, ARRAY]) = (r39 I:??[OBJECT, ARRAY] A[D('stage' java.io.File)]), block:B:370:0x076c */
    static com.ahsim.demulation.RomGraphicsMediaOverlayInstaller.Outcome installFromBytes(android.content.Context r40, com.ahsim.demulation.RomSelectionStore.OverlaySelection r41, byte[] r42, com.ahsim.demulation.RomGraphicsMediaOverlayInstaller.ProgressListener r43) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ahsim.demulation.RomGraphicsMediaOverlayInstaller.installFromBytes(android.content.Context, com.ahsim.demulation.RomSelectionStore$OverlaySelection, byte[], com.ahsim.demulation.RomGraphicsMediaOverlayInstaller$ProgressListener):com.ahsim.demulation.RomGraphicsMediaOverlayInstaller$Outcome");
    }

    static /* synthetic */ void lambda$installFromBytes$0(ProgressListener listener, String group, int done, int total, String asset) {
        if (listener != null) {
            listener.onProgress(group, done, total, asset);
        }
    }

    private static GroupState extractTerrainRadar(RomLayoutCapabilityAnalyzer.Result analysis, byte[] rom, File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths, final ProgressListener listener) throws IOException {
        RomLayoutCapabilityAnalyzer.ContentGroup group = RomLayoutCapabilityAnalyzer.ContentGroup.WORLD_TERRAIN_RADAR;
        if (!analysis.roleMayUseGroup(RomSelectionStore.SourceRole.MEDIA_MOD, group)) {
            return GroupState.BASE_FALLBACK_POLICY;
        }
        RomLayoutCapabilityAnalyzer.Capability cap = analysis.capability(group);
        if (cap.state == RomLayoutCapabilityAnalyzer.CapabilityState.UNAVAILABLE) {
            return GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT;
        }
        File groupRoot = new File(stage, "group-terrain-radar");
        try {
            GenesisRomWorldTerrainRadarAssetProvider.Result result = GenesisRomWorldTerrainRadarAssetProvider.extractOverlayCandidate(new ByteArrayInputStream(rom), rom.length, groupRoot, new GenesisRomWorldTerrainRadarAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda0
                @Override // com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.ProgressListener
                public final void onProgress(int i, int i2, String str) {
                    RomGraphicsMediaOverlayInstaller.lambda$extractTerrainRadar$1(RomGraphicsMediaOverlayInstaller.ProgressListener.this, i, i2, str);
                }
            });
            if (!result.allVerified()) {
                try {
                    GenesisRomWorldTerrainRadarAssetProvider.deleteRecursively(groupRoot);
                    return GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH;
                } catch (IOException | RuntimeException e) {
                    e = e;
                }
            } else {
                try {
                    importGroup(groupRoot, stage, RomWorldTerrainRadarAssetManifest.entries(), RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR, entries, paths);
                    GenesisRomWorldTerrainRadarAssetProvider.deleteRecursively(groupRoot);
                    return GroupState.OVERLAY;
                } catch (IOException e2) {
                    e = e2;
                } catch (RuntimeException e3) {
                    e = e3;
                }
            }
        } catch (IOException | RuntimeException e4) {
            e = e4;
        }
        try {
            GenesisRomWorldTerrainRadarAssetProvider.deleteRecursively(groupRoot);
        } catch (IOException e5) {
        }
        if (isRebuild(analysis.layoutFamily)) {
            return GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT;
        }
        return GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH;
    }

    static /* synthetic */ void lambda$extractTerrainRadar$1(ProgressListener listener, int done, int total, String asset) {
        if (listener != null) {
            listener.onProgress(RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR, done, total, asset);
        }
    }

    private static GroupState extractTactical(RomLayoutCapabilityAnalyzer.Result analysis, byte[] rom, File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths, final ProgressListener listener) throws IOException {
        RomLayoutCapabilityAnalyzer.ContentGroup group = RomLayoutCapabilityAnalyzer.ContentGroup.TACTICAL_SPRITES;
        if (!analysis.roleMayUseGroup(RomSelectionStore.SourceRole.MEDIA_MOD, group)) {
            return GroupState.BASE_FALLBACK_POLICY;
        }
        RomLayoutCapabilityAnalyzer.Capability cap = analysis.capability(group);
        if (cap.state == RomLayoutCapabilityAnalyzer.CapabilityState.UNAVAILABLE) {
            return GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT;
        }
        File groupRoot = new File(stage, "group-tactical");
        try {
            GenesisRomWorldTacticalSpriteAssetProvider.Result result = GenesisRomWorldTacticalSpriteAssetProvider.extractOverlayCandidate(new ByteArrayInputStream(rom), rom.length, groupRoot, new GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda2
                @Override // com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener
                public final void onProgress(int i, int i2, String str) {
                    RomGraphicsMediaOverlayInstaller.lambda$extractTactical$2(RomGraphicsMediaOverlayInstaller.ProgressListener.this, i, i2, str);
                }
            });
            if (!result.allVerified()) {
                GenesisRomWorldTacticalSpriteAssetProvider.deleteRecursively(groupRoot);
                return GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH;
            }
            importTacticalGroup(groupRoot, stage, entries, paths);
            GenesisRomWorldTacticalSpriteAssetProvider.deleteRecursively(groupRoot);
            return GroupState.OVERLAY;
        } catch (IOException | RuntimeException e) {
            try {
                GenesisRomWorldTacticalSpriteAssetProvider.deleteRecursively(groupRoot);
            } catch (IOException e2) {
            }
            if (isRebuild(analysis.layoutFamily)) {
                return GroupState.BASE_FALLBACK_UNSUPPORTED_LAYOUT;
            }
            return GroupState.BASE_FALLBACK_STRUCTURAL_MISMATCH;
        }
    }

    static /* synthetic */ void lambda$extractTactical$2(ProgressListener listener, int done, int total, String asset) {
        if (listener != null) {
            listener.onProgress(RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES, done, total, asset);
        }
    }

    private static void importGroup(File groupRoot, File stage, List<RomWorldTerrainRadarAssetManifest.Entry> manifest, String group, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        for (RomWorldTerrainRadarAssetManifest.Entry item : manifest) {
            copyIntoOverlay(groupRoot, stage, item.relativePath, item.length, group, entries, paths);
        }
    }

    private static void importTacticalGroup(File groupRoot, File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        for (RomWorldTacticalSpriteAssetManifest.Entry item : RomWorldTacticalSpriteAssetManifest.legacyEntries()) {
            copyIntoOverlay(groupRoot, stage, item.relativePath, item.length, RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES, entries, paths);
        }
    }

    private static void copyIntoOverlay(File groupRoot, File stage, String relativePath, int expectedLength, String group, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        File source = safeChild(groupRoot, relativePath);
        if (!source.isFile() || source.length() != expectedLength) {
            throw new IOException("Overlay group asset has unexpected length: " + relativePath);
        }
        File target = safeChild(stage, relativePath);
        File parent = target.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create overlay asset directory");
        }
        copyFile(source, target, expectedLength);
        RomGraphicsMediaOverlayStore.Entry entry = RomGraphicsMediaOverlayStore.entryForFile(stage, relativePath, group);
        entries.put(relativePath, entry);
        paths.add(relativePath);
    }

    private static byte[] readBaseTacticalAsset(Context context, String relativePath) throws IOException {
        RomAssetInstallState.RuntimeBundle bundle = RomAssetInstallState.activeRuntimeBundle(context);
        RomRuntimeWorldAssets baseOnly = new RomRuntimeWorldAssets(bundle.installRoot, null);
        return baseOnly.read(relativePath);
    }

    private static int importAdaptedTerrain(File groupRoot, File stage, DuneHackGraphicsLayoutAdapter.Result adapted, String group, List<RomWorldTerrainRadarAssetManifest.Entry> manifest, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        boolean descriptorOverlay = adapted.has("terrain/metatile_descriptors.bin");
        boolean sharedCoreReady = adapted.has("terrain/patterns.bin") && descriptorOverlay;
        int imported = 0;
        for (RomWorldTerrainRadarAssetManifest.Entry item : manifest) {
            boolean corePath = "terrain/patterns.bin".equals(item.relativePath) || "terrain/metatile_descriptors.bin".equals(item.relativePath);
            if (!corePath || !descriptorOverlay || sharedCoreReady) {
                if (adapted.has(item.relativePath)) {
                    copyIntoOverlayFlexible(groupRoot, stage, item.relativePath, group, entries, paths);
                    imported++;
                }
            }
        }
        return imported;
    }

    private static int importAdaptedTactical(File groupRoot, File stage, DuneHackGraphicsLayoutAdapter.Result adapted, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        boolean coreReady = adapted.has("tactical/static_patterns_922_2047.bin") && adapted.has("tactical/visual_catalog.bin") && adapted.has("tactical/dynamic_patterns.bin");
        int imported = 0;
        for (RomWorldTacticalSpriteAssetManifest.Entry item : RomWorldTacticalSpriteAssetManifest.legacyEntries()) {
            boolean corePath = "tactical/static_patterns_922_2047.bin".equals(item.relativePath) || "tactical/visual_catalog.bin".equals(item.relativePath) || "tactical/dynamic_patterns.bin".equals(item.relativePath);
            if (!corePath || coreReady) {
                if (adapted.has(item.relativePath)) {
                    copyIntoOverlayFlexible(groupRoot, stage, item.relativePath, RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES, entries, paths);
                    imported++;
                }
            }
        }
        return imported;
    }

    private static void copyIntoOverlayFlexible(File groupRoot, File stage, String relativePath, String group, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        File source = safeChild(groupRoot, relativePath);
        if (!source.isFile() || source.length() <= 0 || source.length() > 4194304) {
            throw new IOException("Adapted overlay asset has invalid length: " + relativePath);
        }
        File target = safeChild(stage, relativePath);
        File parent = target.getParentFile();
        if (parent != null && !parent.mkdirs() && !parent.isDirectory()) {
            throw new IOException("Could not create adapted overlay asset directory");
        }
        copyFile(source, target, (int) source.length());
        RomGraphicsMediaOverlayStore.Entry entry = RomGraphicsMediaOverlayStore.entryForFile(stage, relativePath, group);
        entries.put(relativePath, entry);
        paths.add(relativePath);
    }

    private static final class BaseComparison {
        final ArrayList<RomGraphicsVisualComparator.Result> details;
        final ArrayList<String> identicalPaths;
        int tacticalCandidates;
        int tacticalIdentical;
        int terrainCandidates;
        int terrainIdentical;
        RomGraphicsVisualComparator.TerrainSceneResult terrainScene;
        final ArrayList<String> visuallyIdenticalPaths;

        private BaseComparison() {
            this.identicalPaths = new ArrayList<>();
            this.visuallyIdenticalPaths = new ArrayList<>();
            this.details = new ArrayList<>();
        }

        int candidateTotal() {
            return this.terrainCandidates + this.tacticalCandidates;
        }

        int identicalTotal() {
            return this.terrainIdentical + this.tacticalIdentical;
        }
    }

    private static BaseComparison removeBaseIdenticalEntries(Context context, File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, List<String> paths) throws IOException {
        BaseComparison result = new BaseComparison();
        if (entries.isEmpty()) {
            return result;
        }
        RomAssetInstallState.RuntimeBundle bundle = RomAssetInstallState.activeRuntimeBundle(context);
        RomRuntimeWorldAssets baseOnly = new RomRuntimeWorldAssets(bundle.installRoot, null, bundle.sourceProfile);
        Iterator<RomGraphicsMediaOverlayStore.Entry> it = entries.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR.equals(it.next().group)) {
                try {
                    result.terrainScene = compareStagedTerrainScene(baseOnly, stage, entries);
                    break;
                } catch (IllegalArgumentException e) {
                }
            }
        }
        ArrayList<String> identicalPaths = new ArrayList<>();
        Iterator it2 = new ArrayList(entries.values()).iterator();
        while (it2.hasNext()) {
            RomGraphicsMediaOverlayStore.Entry entry = (RomGraphicsMediaOverlayStore.Entry) it2.next();
            boolean terrain = RomGraphicsMediaOverlayStore.GROUP_TERRAIN_RADAR.equals(entry.group);
            boolean tactical = RomGraphicsMediaOverlayStore.GROUP_TACTICAL_SPRITES.equals(entry.group);
            if (terrain) {
                result.terrainCandidates++;
            } else if (tactical) {
                result.tacticalCandidates++;
            }
            byte[] base = baseOnly.read(entry.relativePath);
            File staged = safeChild(stage, entry.relativePath);
            byte[] candidate = readStagedFile(staged, entry.length);
            RomGraphicsVisualComparator.Result detail = RomGraphicsVisualComparator.compare(entry.relativePath, base, candidate);
            result.details.add(detail);
            if (detail.visualEqual) {
                if (terrain) {
                    result.terrainIdentical++;
                } else {
                    result.tacticalIdentical++;
                }
                identicalPaths.add(entry.relativePath);
                ArrayList<String> identicalPaths2 = identicalPaths;
                result.identicalPaths.add(entry.relativePath);
                if (detail.decodedEquivalentOnly()) {
                    result.visuallyIdenticalPaths.add(entry.relativePath);
                }
                identicalPaths = identicalPaths2;
            }
        }
        Iterator<String> it3 = identicalPaths.iterator();
        while (it3.hasNext()) {
            String relativePath = it3.next();
            entries.remove(relativePath);
            paths.remove(relativePath);
            File duplicate = safeChild(stage, relativePath);
            if (duplicate.exists() && !duplicate.delete()) {
                throw new IOException("Could not remove BASE-identical staged graphics: " + relativePath);
            }
        }
        return result;
    }

    private static GroupState stateAfterBaseComparison(GroupState state, int candidates, int identical) {
        if (candidates <= 0 || identical <= 0) {
            return state;
        }
        int changed = candidates - identical;
        if (state == GroupState.OVERLAY && changed == 0) {
            return GroupState.BASE_FALLBACK_IDENTICAL;
        }
        if (changed > 0 && (state == GroupState.OVERLAY || state == GroupState.OVERLAY_PARTIAL)) {
            return GroupState.OVERLAY_PARTIAL;
        }
        return state;
    }

    private static RomGraphicsVisualComparator.TerrainSceneResult compareStagedTerrainScene(RomRuntimeWorldAssets base, File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries) throws IOException {
        byte[] bp = base.read("terrain/patterns.bin");
        byte[] bm = base.read("terrain/metatile_descriptors.bin");
        byte[] bc = base.read("terrain/palette.bin");
        byte[] mp = readStagedOrBase(stage, entries, "terrain/patterns.bin", bp);
        byte[] mm = readStagedOrBase(stage, entries, "terrain/metatile_descriptors.bin", bm);
        byte[] mc = readStagedOrBase(stage, entries, "terrain/palette.bin", bc);
        return RomGraphicsVisualComparator.compareTerrainScenes(bp, bm, bc, mp, mm, mc);
    }

    private static byte[] readStagedOrBase(File stage, Map<String, RomGraphicsMediaOverlayStore.Entry> entries, String relativePath, byte[] base) throws IOException {
        RomGraphicsMediaOverlayStore.Entry item = entries.get(relativePath);
        return item == null ? base : readStagedFile(safeChild(stage, relativePath), item.length);
    }

    private static byte[] readStagedFile(File file, int expectedLength) throws IOException {
        if (!file.isFile() || expectedLength < 0 || expectedLength > 4194304 || file.length() != expectedLength) {
            throw new IOException("Graphics staged payload changed during comparison");
        }
        byte[] data = new byte[expectedLength];
        FileInputStream in = new FileInputStream(file);
        int pos = 0;
        while (pos < data.length) {
            try {
                int n = in.read(data, pos, data.length - pos);
                if (n <= 0) {
                    throw new IOException("Truncated graphics payload during comparison");
                }
                pos += n;
            } catch (Throwable th) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (in.read() != -1) {
            throw new IOException("Graphics payload grew during comparison");
        }
        in.close();
        return data;
    }

    private static boolean fileEqualsBytes(File file, byte[] expected) throws IOException {
        if (file == null || expected == null || !file.isFile() || file.length() != expected.length) {
            return false;
        }
        byte[] buffer = new byte[8192];
        int offset = 0;
        FileInputStream input = new FileInputStream(file);
        while (offset < expected.length) {
            try {
                int read = input.read(buffer, 0, Math.min(buffer.length, expected.length - offset));
                if (read >= 0) {
                    for (int i = 0; i < read; i++) {
                        if (buffer[i] != expected[offset + i]) {
                            input.close();
                            return false;
                        }
                    }
                    offset += read;
                } else {
                    input.close();
                    return false;
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
        boolean z = input.read() < 0;
        input.close();
        return z;
    }

    private static boolean isRebuild(RomLayoutCapabilityAnalyzer.LayoutFamily family) {
        return family == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R79 || family == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R80B || family == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R81B || family == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_R81C || family == RomLayoutCapabilityAnalyzer.LayoutFamily.DUNEHACK_UNKNOWN;
    }

    private static byte[] readAll(InputStream input, long knownSize) throws IOException {
        if (input == null) {
            throw new IOException("ROM stream is unavailable");
        }
        int initial = (knownSize <= 0 || knownSize > 16777216) ? 1048576 : (int) knownSize;
        ByteArrayOutputStream out = new ByteArrayOutputStream(Math.max(DuneHackR82ScenarioRecordDecoder.MAX_RECORDS, initial));
        byte[] buffer = new byte[32768];
        int total = 0;
        while (true) {
            int n = input.read(buffer);
            if (n < 0) {
                if (knownSize <= 0 || knownSize == total) {
                    return out.toByteArray();
                }
                throw new IOException("ROM size changed while reading");
            }
            if (n != 0) {
                total += n;
                if (total > 16777216) {
                    throw new IOException("ROM is unexpectedly large");
                }
                out.write(buffer, 0, n);
            }
        }
    }

    private static File safeChild(File root, String relativePath) throws IOException {
        File cr = root.getCanonicalFile();
        File child = new File(cr, relativePath).getCanonicalFile();
        String rp = cr.getPath();
        String cp = child.getPath();
        if (!cp.equals(rp) && !cp.startsWith(rp + File.separator)) {
            throw new IOException("Overlay path escaped staging root");
        }
        return child;
    }

    private static void copyFile(File source, File target, int expectedLength) throws IOException {
        InputStream in = new FileInputStream(source);
        try {
            FileOutputStream out = new FileOutputStream(target);
            try {
                byte[] buffer = new byte[8192];
                int total = 0;
                while (true) {
                    int n = in.read(buffer);
                    if (n >= 0) {
                        if (n != 0) {
                            total += n;
                            if (total > expectedLength) {
                                throw new IOException("Overlay asset grew during copy");
                            }
                            out.write(buffer, 0, n);
                        }
                    } else {
                        if (total != expectedLength) {
                            throw new IOException("Overlay asset changed during copy");
                        }
                        out.getFD().sync();
                        out.close();
                        in.close();
                        return;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                in.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
