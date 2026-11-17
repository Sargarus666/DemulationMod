package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.GenesisRomIdentity;
import com.ahsim.demulation.GenesisRomRussianLocalizationAssetProvider;
import com.ahsim.demulation.RomRussianLocalizationPackStore;
import com.ahsim.demulation.RomSelectionStore;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RomRussianLocalizationPackInstaller {

    public static final class Outcome {
        public final int glyphBitmapAssets;
        public final RomRussianLocalizationPackStore.Snapshot snapshot;
        public final int textAssets;

        Outcome(RomRussianLocalizationPackStore.Snapshot snapshot, int textAssets, int glyphBitmapAssets) {
            this.snapshot = snapshot;
            this.textAssets = textAssets;
            this.glyphBitmapAssets = glyphBitmapAssets;
        }
    }

    private RomRussianLocalizationPackInstaller() {
    }

    public static Outcome install(Context context, RomSelectionStore.Selection selection, GenesisRomIdentity.Result identity) throws IOException {
        if (context == null || selection == null || selection.uri == null || identity == null) {
            throw new IOException("Verified Russian BASE source is required");
        }
        if (!"translation_ru_shedevr_lipetsk_usa".equals(identity.profileId) || !"translation_ru_shedevr_lipetsk_usa".equals(identity.profileId) || !"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(identity.sha256)) {
            throw new IOException("BASE source is not the audited Russian translation profile");
        }
        File staging = RomRussianLocalizationPackStore.freshStagingRoot(context);
        InputStream input = context.getContentResolver().openInputStream(selection.uri);
        try {
            if (input == null) {
                throw new IOException("Russian BASE ROM stream is unavailable");
            }
            GenesisRomRussianLocalizationAssetProvider.Result result = GenesisRomRussianLocalizationAssetProvider.extract(input, selection.size, staging);
            if (input != null) {
                input.close();
            }
            RomRussianLocalizationPackStore.Snapshot snapshot = RomRussianLocalizationPackStore.commit(context, result);
            return new Outcome(snapshot, result.textCount, result.glyphBitmapCount);
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
    }

    public static Outcome install(Context context, RomSelectionStore.OverlaySelection selection) throws IOException {
        if (context == null || selection == null || selection.role != RomSelectionStore.SourceRole.TRANSLATION) {
            throw new IOException("Verified TRANSLATION source is required");
        }
        if (!"translation_ru_shedevr_lipetsk_usa".equals(selection.profileId) || !"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(selection.sha256)) {
            throw new IOException("Translation source must be audited before localization extraction");
        }
        File staging = RomRussianLocalizationPackStore.freshStagingRoot(context);
        InputStream input = context.getContentResolver().openInputStream(selection.uri);
        try {
            if (input == null) {
                throw new IOException("Translation ROM stream is unavailable");
            }
            GenesisRomRussianLocalizationAssetProvider.Result result = GenesisRomRussianLocalizationAssetProvider.extract(input, selection.size, staging);
            if (input != null) {
                input.close();
            }
            RomRussianLocalizationPackStore.Snapshot snapshot = RomRussianLocalizationPackStore.commit(context, result);
            return new Outcome(snapshot, result.textCount, result.glyphBitmapCount);
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
    }
}
