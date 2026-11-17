package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import com.ahsim.demulation.GenesisRomAssetProviderCore;
import com.ahsim.demulation.GenesisRomAudioAssetProvider;
import com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider;
import com.ahsim.demulation.GenesisRomFrontendAssetProvider;
import com.ahsim.demulation.GenesisRomFrontendDirectAssetProvider;
import com.ahsim.demulation.GenesisRomGameplayDataAssetProvider;
import com.ahsim.demulation.GenesisRomIdentity;
import com.ahsim.demulation.GenesisRomMentatAssetProvider;
import com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider;
import com.ahsim.demulation.GenesisRomMissionTransitionAssetProvider;
import com.ahsim.demulation.GenesisRomNativeDataAssetProvider;
import com.ahsim.demulation.GenesisRomOriginalContentAssetProvider;
import com.ahsim.demulation.GenesisRomTutorialAssetProvider;
import com.ahsim.demulation.GenesisRomWorldDataAssetProvider;
import com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider;
import com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider;
import com.ahsim.demulation.RomAssetAtomicInstaller;
import com.ahsim.demulation.RomAssetBundleAtomicInstaller;
import com.ahsim.demulation.RomAssetProvider;
import com.ahsim.demulation.RomSelectionStore;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

/* loaded from: classes2.dex */
public final class RomAssetProvider {
    public static final String CORE_RECEIPT = "core_bootstrap.properties";

    public interface BundleProgressListener {
        void onProgress(int i, int i2, String str, String str2);
    }

    public interface InstallListener {
        void onInstalling();
    }

    public static final class BundleInstallOutcome {
        public final RomAssetBundleAtomicInstaller.InstallResult install;
        public final List<String> mismatches;
        public final long payloadBytes;
        public final int totalEntries;
        public final int verifiedEntries;

        private BundleInstallOutcome(int verifiedEntries, int totalEntries, long payloadBytes, List<String> mismatches, RomAssetBundleAtomicInstaller.InstallResult install) {
            this.verifiedEntries = verifiedEntries;
            this.totalEntries = totalEntries;
            this.payloadBytes = payloadBytes;
            this.mismatches = Collections.unmodifiableList(new ArrayList(mismatches));
            this.install = install;
        }

        public boolean ready() {
            return this.install != null && this.mismatches.isEmpty() && this.verifiedEntries == this.totalEntries;
        }
    }

    public static final class InstallOutcome {
        public final GenesisRomAssetProviderCore.Result extraction;
        public final RomAssetAtomicInstaller.InstallResult install;

        private InstallOutcome(GenesisRomAssetProviderCore.Result extraction, RomAssetAtomicInstaller.InstallResult install) {
            this.extraction = extraction;
            this.install = install;
        }

        public boolean ready() {
            return (this.extraction == null || !this.extraction.allVerified() || this.install == null) ? false : true;
        }
    }

    private RomAssetProvider() {
    }

    public static GenesisRomAssetProviderCore.Result extractCore(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomAssetProviderCore.ProgressListener listener) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.coreStaging(context);
        try {
            InputStream input = openProviderInput(resolver, selection, identity);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomAssetProviderCore.Result result = GenesisRomAssetProviderCore.extractCore(input, selection.size, staging, listener);
                if (result.allVerified()) {
                    writeReceipt(staging, identity, result);
                }
                if (input != null) {
                    input.close();
                }
                return result;
            } finally {
            }
        } catch (IOException e) {
            clearCoreStaging(context);
            throw e;
        } catch (SecurityException e2) {
            clearCoreStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InstallOutcome installCore(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result result, GenesisRomAssetProviderCore.ProgressListener progressListener, InstallListener installListener) throws IOException {
        RomAssetAtomicInstaller.recover(RomAssetInstallState.root(context));
        GenesisRomAssetProviderCore.Result extractCore = extractCore(context, selection, result, progressListener);
        RomAssetAtomicInstaller.InstallResult installResult = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        if (!extractCore.allVerified()) {
            return new InstallOutcome(extractCore, installResult);
        }
        if (installListener != null) {
            installListener.onInstalling();
        }
        try {
            return new InstallOutcome(extractCore, RomAssetAtomicInstaller.installCore(RomAssetInstallState.root(context), RomAssetInstallState.coreStaging(context), result.sha256, result.profileId));
        } catch (IOException e) {
            clearCoreStaging(context);
            throw e;
        } catch (RuntimeException e2) {
            clearCoreStaging(context);
            throw e2;
        }
    }

    public static GenesisRomFrontendAssetProvider.Result extractFrontendGeneric(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomFrontendAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.frontendStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomFrontendAssetProvider.Result extract = GenesisRomFrontendAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearFrontendStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearFrontendStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomFrontendDirectAssetProvider.Result extractFrontendDirect(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomFrontendDirectAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.frontendDirectStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomFrontendDirectAssetProvider.Result extract = GenesisRomFrontendDirectAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearFrontendDirectStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearFrontendDirectStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomMentatAssetProvider.Result extractMentat(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomMentatAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.mentatStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomMentatAssetProvider.Result extract = GenesisRomMentatAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearMentatStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearMentatStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomMissionResultGraphicsAssetProvider.Result extractMissionResultGraphics(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomMissionResultGraphicsAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.missionResultGraphicsStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomMissionResultGraphicsAssetProvider.Result extract = GenesisRomMissionResultGraphicsAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearMissionResultGraphicsStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearMissionResultGraphicsStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomWorldTerrainRadarAssetProvider.Result extractWorldTerrainRadarGraphics(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomWorldTerrainRadarAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.worldTerrainRadarStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomWorldTerrainRadarAssetProvider.Result extract = GenesisRomWorldTerrainRadarAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearWorldTerrainRadarStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearWorldTerrainRadarStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomWorldTacticalSpriteAssetProvider.Result extractWorldTacticalSpriteGraphics(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.worldTacticalSpriteStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomWorldTacticalSpriteAssetProvider.Result extract = GenesisRomWorldTacticalSpriteAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearWorldTacticalSpriteStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearWorldTacticalSpriteStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomEndingGraphicsAssetProvider.Result extractEndingGraphics(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomEndingGraphicsAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.endingGraphicsStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomEndingGraphicsAssetProvider.Result extract = GenesisRomEndingGraphicsAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearEndingGraphicsStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearEndingGraphicsStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomTutorialAssetProvider.Result extractTutorial(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomTutorialAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.tutorialStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomTutorialAssetProvider.Result extract = GenesisRomTutorialAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearTutorialStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearTutorialStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomMissionTransitionAssetProvider.Result extractMissionCampaignTransition(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomMissionTransitionAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.missionTransitionStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomMissionTransitionAssetProvider.Result extract = GenesisRomMissionTransitionAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearMissionTransitionStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearMissionTransitionStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomAudioAssetProvider.Result extractOriginalAudio(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomAudioAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.audioStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomAudioAssetProvider.Result extract = GenesisRomAudioAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearAudioStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearAudioStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomOriginalContentAssetProvider.Result extractOriginalContent(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomOriginalContentAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.originalContentStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomOriginalContentAssetProvider.Result extract = GenesisRomOriginalContentAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearOriginalContentStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearOriginalContentStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomOriginalContentAssetProvider.Result extractTutorialOriginalContent(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomOriginalContentAssetProvider.ProgressListener listener) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.originalContentStaging(context);
        try {
            InputStream input = openProviderInput(resolver, selection, identity);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomOriginalContentAssetProvider.Result extractTutorialContent = GenesisRomOriginalContentAssetProvider.extractTutorialContent(input, selection.size, staging, listener);
                if (input != null) {
                    input.close();
                }
                return extractTutorialContent;
            } catch (Throwable th) {
                if (input != null) {
                    try {
                        input.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            clearOriginalContentStaging(context);
            throw e;
        } catch (SecurityException e2) {
            clearOriginalContentStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e2);
        }
    }

    public static GenesisRomOriginalContentAssetProvider.Result extractResultEndingOriginalContent(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomOriginalContentAssetProvider.ProgressListener listener) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.originalContentStaging(context);
        try {
            InputStream input = openProviderInput(resolver, selection, identity);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomOriginalContentAssetProvider.Result extractResultEndingContent = GenesisRomOriginalContentAssetProvider.extractResultEndingContent(input, selection.size, staging, listener);
                if (input != null) {
                    input.close();
                }
                return extractResultEndingContent;
            } catch (Throwable th) {
                if (input != null) {
                    try {
                        input.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            clearOriginalContentStaging(context);
            throw e;
        } catch (SecurityException e2) {
            clearOriginalContentStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e2);
        }
    }

    public static GenesisRomWorldDataAssetProvider.Result extractWorldData(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomWorldDataAssetProvider.ProgressListener listener) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.worldDataStaging(context);
        try {
            InputStream input = openProviderInput(resolver, selection, identity);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomWorldDataAssetProvider.Result extract = GenesisRomWorldDataAssetProvider.extract(input, selection.size, staging, listener);
                if (input != null) {
                    input.close();
                }
                return extract;
            } catch (Throwable th) {
                if (input != null) {
                    try {
                        input.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            clearWorldDataStaging(context);
            throw e;
        } catch (SecurityException e2) {
            clearWorldDataStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e2);
        }
    }

    public static GenesisRomGameplayDataAssetProvider.Result extractGameplayData(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomGameplayDataAssetProvider.ProgressListener listener) throws IOException {
        SecurityException e;
        IOException e2;
        InputStream input;
        Throwable th;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.gameplayDataStaging(context);
        try {
            input = openProviderInput(resolver, selection, identity);
        } catch (IOException e3) {
            e2 = e3;
        } catch (SecurityException e4) {
            e = e4;
        }
        try {
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                try {
                    GenesisRomGameplayDataAssetProvider.Result extract = GenesisRomGameplayDataAssetProvider.extract(input, selection.size, staging, listener, identity.profileId);
                    if (input != null) {
                        input.close();
                    }
                    return extract;
                } catch (Throwable th2) {
                    th = th2;
                    if (input == null) {
                        throw th;
                    }
                    try {
                        input.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e5) {
            e2 = e5;
            clearGameplayDataStaging(context);
            throw e2;
        } catch (SecurityException e6) {
            e = e6;
            clearGameplayDataStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }

    public static GenesisRomNativeDataAssetProvider.Result extractNativeData(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, GenesisRomNativeDataAssetProvider.ProgressListener listener) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || identity.assetCompatibility == GenesisRomIdentity.Compatibility.INCOMPATIBLE) {
            throw new IOException("Selected file is not an asset-compatible ROM candidate");
        }
        ContentResolver resolver = context.getContentResolver();
        File staging = RomAssetInstallState.nativeDataStaging(context);
        try {
            InputStream input = openProviderInput(resolver, selection, identity);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomNativeDataAssetProvider.Result extract = GenesisRomNativeDataAssetProvider.extract(input, selection.size, staging, listener);
                if (input != null) {
                    input.close();
                }
                return extract;
            } catch (Throwable th) {
                if (input != null) {
                    try {
                        input.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            clearNativeDataStaging(context);
            throw e;
        } catch (SecurityException e2) {
            clearNativeDataStaging(context);
            throw new IOException("Read access to the selected ROM was revoked", e2);
        }
    }

    public static BundleInstallOutcome installAssetBundle(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity, final BundleProgressListener progressListener, InstallListener installListener) throws IOException {
        int verified;
        RomAssetBundleAtomicInstaller.InstallResult bundle;
        RomAssetBundleAtomicInstaller.InstallResult bundle2;
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        if (identity == null || !identity.basePreparationSupported) {
            throw new IOException("Selected ROM profile is not enabled for BASE preparation");
        }
        RomAssetAtomicInstaller.Validation previous = RomAssetAtomicInstaller.recover(RomAssetInstallState.root(context));
        final int total = RomAssetBundleManifest.entries().size();
        long bundlePayloadBytes = RomAssetBundleManifest.payloadBytesForProfile(identity.profileId);
        ArrayList<String> mismatches = new ArrayList<>();
        RomAssetManifest.coreEntries().size();
        if (!previous.valid) {
            verified = 0;
        } else if (previous.formatVersion != 14 && previous.formatVersion != 15 && previous.formatVersion != 16 && previous.formatVersion != 17) {
            verified = 0;
        } else if (!"runtime_frontend_bundle_v1".equals(previous.groupId) || identity.sha256 == null) {
            verified = 0;
        } else {
            if (identity.sha256.equalsIgnoreCase(previous.sourceSha256) && previous.installRoot != null) {
                GenesisRomWorldTacticalSpriteAssetProvider.Result tactical = extractWorldTacticalSpriteGraphics(context, selection, identity, new GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda0
                    @Override // com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener
                    public final void onProgress(int i, int i2, String str) {
                        RomAssetProvider.lambda$installAssetBundle$0(RomAssetProvider.BundleProgressListener.this, total, i, i2, str);
                    }
                });
                mismatches.addAll(tactical.mismatches);
                if (!tactical.allVerified()) {
                    clearWorldTacticalSpriteStaging(context);
                    return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
                }
                if (installListener != null) {
                    installListener.onInstalling();
                }
                try {
                    bundle2 = RomAssetBundleAtomicInstaller.installRegionAwareV17(RomAssetInstallState.root(context), null, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, tactical.stagedRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, previous.installRoot, identity.sha256, identity.profileId);
                } catch (IOException e) {
                    e = e;
                } catch (RuntimeException e2) {
                    e = e2;
                }
                try {
                    return new BundleInstallOutcome(total, total, bundlePayloadBytes, mismatches, bundle2);
                } catch (IOException e3) {
                    e = e3;
                    clearAllStaging(context);
                    throw e;
                } catch (RuntimeException e4) {
                    e = e4;
                    clearAllStaging(context);
                    throw e;
                }
            }
            verified = 0;
        }
        GenesisRomNativeDataAssetProvider.Result nativeData = extractNativeData(context, selection, identity, null);
        mismatches.addAll(nativeData.mismatches);
        if (!nativeData.allVerified()) {
            clearNativeDataStaging(context);
            return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
        }
        GenesisRomGameplayDataAssetProvider.Result gameplayData = extractGameplayData(context, selection, identity, null);
        mismatches.addAll(gameplayData.mismatches);
        if (!gameplayData.allVerified()) {
            clearGameplayDataStaging(context);
            return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
        }
        GenesisRomWorldDataAssetProvider.Result worldData = extractWorldData(context, selection, identity, null);
        mismatches.addAll(worldData.mismatches);
        if (!worldData.allVerified()) {
            clearWorldDataStaging(context);
            return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
        }
        GenesisRomOriginalContentAssetProvider.Result content = extractOriginalContent(context, selection, identity, null);
        mismatches.addAll(content.mismatches);
        if (!content.allVerified()) {
            clearOriginalContentStaging(context);
            return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
        }
        GenesisRomAudioAssetProvider.Result audio = extractOriginalAudio(context, selection, identity, null);
        mismatches.addAll(audio.mismatches);
        if (!audio.allVerified()) {
            clearAudioStaging(context);
            return new BundleInstallOutcome(0, total, bundlePayloadBytes, mismatches, null);
        }
        GenesisRomFrontendAssetProvider.Result generic = extractFrontendGeneric(context, selection, identity, new GenesisRomFrontendAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda1
            @Override // com.ahsim.demulation.GenesisRomFrontendAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$14(RomAssetProvider.BundleProgressListener.this, total, i, i2, str);
            }
        });
        int verified2 = verified + generic.verifiedEntries;
        mismatches.addAll(generic.mismatches);
        if (!generic.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified2, total, bundlePayloadBytes, mismatches, null);
        }
        final int directBase = RomFrontendAssetManifest.entries().size() + 0;
        GenesisRomFrontendDirectAssetProvider.Result direct = extractFrontendDirect(context, selection, identity, new GenesisRomFrontendDirectAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda2
            @Override // com.ahsim.demulation.GenesisRomFrontendDirectAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$15(RomAssetProvider.BundleProgressListener.this, directBase, total, i, i2, str);
            }
        });
        int verified3 = verified2 + direct.verifiedEntries;
        mismatches.addAll(direct.mismatches);
        if (!direct.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified3, total, bundlePayloadBytes, mismatches, null);
        }
        final int mentatBase = directBase + RomFrontendDirectAssetManifest.entries().size();
        GenesisRomMentatAssetProvider.Result mentat = extractMentat(context, selection, identity, new GenesisRomMentatAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda3
            @Override // com.ahsim.demulation.GenesisRomMentatAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$16(RomAssetProvider.BundleProgressListener.this, mentatBase, total, i, i2, str);
            }
        });
        int verified4 = verified3 + mentat.verifiedEntries;
        mismatches.addAll(mentat.mismatches);
        if (!mentat.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified4, total, bundlePayloadBytes, mismatches, null);
        }
        final int missionBase = mentatBase + RomMentatAssetManifest.entries().size();
        GenesisRomMissionTransitionAssetProvider.Result mission = extractMissionCampaignTransition(context, selection, identity, new GenesisRomMissionTransitionAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda4
            @Override // com.ahsim.demulation.GenesisRomMissionTransitionAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$17(RomAssetProvider.BundleProgressListener.this, missionBase, total, i, i2, str);
            }
        });
        int verified5 = verified4 + mission.verifiedEntries;
        mismatches.addAll(mission.mismatches);
        if (!mission.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified5, total, bundlePayloadBytes, mismatches, null);
        }
        final int tutorialBase = missionBase + RomMissionTransitionAssetManifest.entries().size();
        GenesisRomTutorialAssetProvider.Result tutorial = extractTutorial(context, selection, identity, new GenesisRomTutorialAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda5
            @Override // com.ahsim.demulation.GenesisRomTutorialAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$18(RomAssetProvider.BundleProgressListener.this, tutorialBase, total, i, i2, str);
            }
        });
        int verified6 = verified5 + tutorial.verifiedEntries;
        mismatches.addAll(tutorial.mismatches);
        if (!tutorial.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified6, total, bundlePayloadBytes, mismatches, null);
        }
        final int resultBase = tutorialBase + RomTutorialAssetManifest.entries().size();
        GenesisRomMissionResultGraphicsAssetProvider.Result result = extractMissionResultGraphics(context, selection, identity, new GenesisRomMissionResultGraphicsAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda6
            @Override // com.ahsim.demulation.GenesisRomMissionResultGraphicsAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$19(RomAssetProvider.BundleProgressListener.this, resultBase, total, i, i2, str);
            }
        });
        int verified7 = verified6 + result.verifiedEntries;
        mismatches.addAll(result.mismatches);
        if (!result.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified7, total, bundlePayloadBytes, mismatches, null);
        }
        final int endingBase = resultBase + RomMissionResultGraphicsAssetManifest.entries().size();
        GenesisRomEndingGraphicsAssetProvider.Result ending = extractEndingGraphics(context, selection, identity, new GenesisRomEndingGraphicsAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda7
            @Override // com.ahsim.demulation.GenesisRomEndingGraphicsAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$20(RomAssetProvider.BundleProgressListener.this, endingBase, total, i, i2, str);
            }
        });
        int verified8 = verified7 + ending.verifiedEntries;
        mismatches.addAll(ending.mismatches);
        if (!ending.allVerified()) {
            clearAllStaging(context);
            return new BundleInstallOutcome(verified8, total, bundlePayloadBytes, mismatches, null);
        }
        final int worldTerrainBase = endingBase + RomEndingGraphicsAssetManifest.entries().size();
        GenesisRomWorldTerrainRadarAssetProvider.Result worldTerrain = extractWorldTerrainRadarGraphics(context, selection, identity, new GenesisRomWorldTerrainRadarAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda8
            @Override // com.ahsim.demulation.GenesisRomWorldTerrainRadarAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$21(RomAssetProvider.BundleProgressListener.this, worldTerrainBase, total, i, i2, str);
            }
        });
        int verified9 = verified8 + worldTerrain.verifiedEntries;
        mismatches.addAll(worldTerrain.mismatches);
        if (!worldTerrain.allVerified()) {
            clearWorldTerrainRadarStaging(context);
            return new BundleInstallOutcome(verified9, total, bundlePayloadBytes, mismatches, null);
        }
        final int worldTacticalBase = worldTerrainBase + RomWorldTerrainRadarAssetManifest.entries().size();
        GenesisRomWorldTacticalSpriteAssetProvider.Result worldTactical = extractWorldTacticalSpriteGraphics(context, selection, identity, new GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener() { // from class: com.ahsim.demulation.RomAssetProvider$$ExternalSyntheticLambda9
            @Override // com.ahsim.demulation.GenesisRomWorldTacticalSpriteAssetProvider.ProgressListener
            public final void onProgress(int i, int i2, String str) {
                RomAssetProvider.lambda$installAssetBundle$22(RomAssetProvider.BundleProgressListener.this, worldTacticalBase, total, i, i2, str);
            }
        });
        int verified10 = verified9 + worldTactical.verifiedEntries;
        mismatches.addAll(worldTactical.mismatches);
        if (!worldTactical.allVerified()) {
            clearWorldTacticalSpriteStaging(context);
            return new BundleInstallOutcome(verified10, total, bundlePayloadBytes, mismatches, null);
        }
        if (installListener != null) {
            installListener.onInstalling();
        }
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            try {
                                                try {
                                                    bundle = RomAssetBundleAtomicInstaller.installRegionAwareV17(RomAssetInstallState.root(context), null, generic.stagedRoot, direct.stagedRoot, mentat.stagedRoot, mission.stagedRoot, tutorial.stagedRoot, result.stagedRoot, ending.stagedRoot, worldTerrain.stagedRoot, worldTactical.stagedRoot, audio.stagedRoot, content.stagedRoot, worldData.stagedRoot, gameplayData.stagedRoot, nativeData.stagedRoot, identity.sha256, identity.profileId);
                                                } catch (IOException e5) {
                                                    e = e5;
                                                } catch (RuntimeException e6) {
                                                    e = e6;
                                                }
                                            } catch (IOException e7) {
                                                e = e7;
                                            } catch (RuntimeException e8) {
                                                e = e8;
                                            }
                                        } catch (IOException e9) {
                                            e = e9;
                                        } catch (RuntimeException e10) {
                                            e = e10;
                                        }
                                        try {
                                            return new BundleInstallOutcome(total, total, bundlePayloadBytes, mismatches, bundle);
                                        } catch (IOException e11) {
                                            e = e11;
                                            clearAllStaging(context);
                                            throw e;
                                        } catch (RuntimeException e12) {
                                            e = e12;
                                            clearAllStaging(context);
                                            throw e;
                                        }
                                    } catch (IOException e13) {
                                        e = e13;
                                    } catch (RuntimeException e14) {
                                        e = e14;
                                    }
                                } catch (IOException e15) {
                                    e = e15;
                                } catch (RuntimeException e16) {
                                    e = e16;
                                }
                            } catch (IOException e17) {
                                e = e17;
                            } catch (RuntimeException e18) {
                                e = e18;
                            }
                        } catch (IOException e19) {
                            e = e19;
                        } catch (RuntimeException e20) {
                            e = e20;
                        }
                    } catch (IOException e21) {
                        e = e21;
                    } catch (RuntimeException e22) {
                        e = e22;
                    }
                } catch (IOException e23) {
                    e = e23;
                } catch (RuntimeException e24) {
                    e = e24;
                }
            } catch (IOException e25) {
                e = e25;
            } catch (RuntimeException e26) {
                e = e26;
            }
        } catch (IOException e27) {
            e = e27;
        } catch (RuntimeException e28) {
            e = e28;
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$0(BundleProgressListener progressListener, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(Math.max(0, total - count) + completed, total, "world_tactical_sprites_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$1(BundleProgressListener progressListener, int legacyCoreEntries, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress((RomAssetBundleManifest.mediaEntries().size() - legacyCoreEntries) + completed, total, "world_terrain_radar_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$2(BundleProgressListener progressListener, int tacticalBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(tacticalBase + completed, total, "world_tactical_sprites_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$3(BundleProgressListener progressListener, int legacyCoreEntries, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress((RomAssetBundleManifest.missionCampaignEntries().size() - legacyCoreEntries) + completed, total, "tutorial_original_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$4(BundleProgressListener progressListener, int resultBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(resultBase + completed, total, "mission_result_graphics_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$5(BundleProgressListener progressListener, int endingBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(endingBase + completed, total, "ending_graphics_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$6(BundleProgressListener progressListener, int worldTerrainBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTerrainBase + completed, total, "world_terrain_radar_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$7(BundleProgressListener progressListener, int worldTacticalBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTacticalBase + completed, total, "world_tactical_sprites_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$8(BundleProgressListener progressListener, int legacyCoreEntries, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress((RomAssetBundleManifest.legacyEntries().size() - legacyCoreEntries) + completed, total, "mission_campaign_transition_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$9(BundleProgressListener progressListener, int tutorialBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(tutorialBase + completed, total, "tutorial_original_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$10(BundleProgressListener progressListener, int resultBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(resultBase + completed, total, "mission_result_graphics_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$11(BundleProgressListener progressListener, int endingBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(endingBase + completed, total, "ending_graphics_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$12(BundleProgressListener progressListener, int worldTerrainBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTerrainBase + completed, total, "world_terrain_radar_v1", asset);
        }
    }

    private static /* synthetic */ void lambda$installAssetBundle$13(BundleProgressListener progressListener, int worldTacticalBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTacticalBase + completed, total, "world_tactical_sprites_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$14(BundleProgressListener progressListener, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(completed + 0, total, "frontend_generic_graphics_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$15(BundleProgressListener progressListener, int directBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(directBase + completed, total, "frontend_direct_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$16(BundleProgressListener progressListener, int mentatBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(mentatBase + completed, total, "frontend_mentat_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$17(BundleProgressListener progressListener, int missionBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(missionBase + completed, total, "mission_campaign_transition_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$18(BundleProgressListener progressListener, int tutorialBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(tutorialBase + completed, total, "tutorial_original_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$19(BundleProgressListener progressListener, int resultBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(resultBase + completed, total, "mission_result_graphics_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$20(BundleProgressListener progressListener, int endingBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(endingBase + completed, total, "ending_graphics_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$21(BundleProgressListener progressListener, int worldTerrainBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTerrainBase + completed, total, "world_terrain_radar_v1", asset);
        }
    }

    static /* synthetic */ void lambda$installAssetBundle$22(BundleProgressListener progressListener, int worldTacticalBase, int total, int completed, int count, String asset) {
        if (progressListener != null) {
            progressListener.onProgress(worldTacticalBase + completed, total, "world_tactical_sprites_v1", asset);
        }
    }

    public static void clearNativeDataStaging(Context context) {
        try {
            GenesisRomNativeDataAssetProvider.deleteRecursively(RomAssetInstallState.nativeDataStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearGameplayDataStaging(Context context) {
        try {
            GenesisRomGameplayDataAssetProvider.deleteRecursively(RomAssetInstallState.gameplayDataStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearWorldDataStaging(Context context) {
        try {
            GenesisRomWorldDataAssetProvider.deleteRecursively(RomAssetInstallState.worldDataStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearOriginalContentStaging(Context context) {
        try {
            GenesisRomOriginalContentAssetProvider.deleteRecursively(RomAssetInstallState.originalContentStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearAudioStaging(Context context) {
        try {
            GenesisRomAudioAssetProvider.deleteRecursively(RomAssetInstallState.audioStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearAllStaging(Context context) {
        try {
            GenesisRomAssetProviderCore.deleteRecursively(RomAssetInstallState.stagingRoot(context));
        } catch (IOException e) {
        }
    }

    public static void clearWorldTacticalSpriteStaging(Context context) {
        try {
            GenesisRomWorldTacticalSpriteAssetProvider.deleteRecursively(RomAssetInstallState.worldTacticalSpriteStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearWorldTerrainRadarStaging(Context context) {
        try {
            GenesisRomWorldTerrainRadarAssetProvider.deleteRecursively(RomAssetInstallState.worldTerrainRadarStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearEndingGraphicsStaging(Context context) {
        try {
            GenesisRomEndingGraphicsAssetProvider.deleteRecursively(RomAssetInstallState.endingGraphicsStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearMissionResultGraphicsStaging(Context context) {
        try {
            GenesisRomMissionResultGraphicsAssetProvider.deleteRecursively(RomAssetInstallState.missionResultGraphicsStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearTutorialStaging(Context context) {
        try {
            GenesisRomTutorialAssetProvider.deleteRecursively(RomAssetInstallState.tutorialStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearMissionTransitionStaging(Context context) {
        try {
            GenesisRomMissionTransitionAssetProvider.deleteRecursively(RomAssetInstallState.missionTransitionStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearMentatStaging(Context context) {
        try {
            GenesisRomMentatAssetProvider.deleteRecursively(RomAssetInstallState.mentatStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearFrontendDirectStaging(Context context) {
        try {
            GenesisRomFrontendDirectAssetProvider.deleteRecursively(RomAssetInstallState.frontendDirectStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearFrontendStaging(Context context) {
        try {
            GenesisRomFrontendAssetProvider.deleteRecursively(RomAssetInstallState.frontendStaging(context));
        } catch (IOException e) {
        }
    }

    public static void clearCoreStaging(Context context) {
        try {
            GenesisRomAssetProviderCore.deleteRecursively(RomAssetInstallState.coreStaging(context));
        } catch (IOException e) {
        }
    }

    private static void writeReceipt(File staging, GenesisRomIdentity.Result identity, GenesisRomAssetProviderCore.Result result) throws IOException {
        Properties properties = new Properties();
        properties.setProperty("stage", "04.233B");
        properties.setProperty("group", "runtime_bootstrap_core_v1");
        properties.setProperty("source.sha256", identity.sha256 == null ? "" : identity.sha256);
        properties.setProperty("source.profile", identity.profileId != null ? identity.profileId : "");
        properties.setProperty("entries.verified", Integer.toString(result.verifiedEntries));
        properties.setProperty("entries.total", Integer.toString(result.totalEntries));
        properties.setProperty("payload.bytes", Long.toString(result.payloadBytes));
        properties.setProperty("complete", Boolean.toString(result.allVerified()));
        File receipt = new File(staging, CORE_RECEIPT);
        FileOutputStream output = new FileOutputStream(receipt);
        try {
            properties.store(output, "Demulation Stage 04.233B core ROM asset staging receipt");
            output.getFD().sync();
            output.close();
        } catch (Throwable th) {
            try {
                output.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static InputStream openProviderInput(ContentResolver resolver, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity) throws IOException {
        InputStream raw = resolver.openInputStream(selection.uri);
        if (raw == null) {
            throw new IOException("Selected ROM cannot be opened");
        }
        return OfficialEuropeRomLayoutAdapter.openCanonical(raw, selection.size, identity);
    }
}
