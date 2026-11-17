package com.ahsim.demulation;

import android.content.Context;
import com.ahsim.demulation.GenesisRomRussianVoiceAssetProvider;
import com.ahsim.demulation.RomRussianVoicePackStore;
import com.ahsim.demulation.RomSelectionStore;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RomRussianVoicePackInstaller {
    private RomRussianVoicePackInstaller() {
    }

    public static RomRussianVoicePackStore.Snapshot install(Context context, RomSelectionStore.OverlaySelection selection) throws IOException {
        if (context == null || selection == null || selection.role != RomSelectionStore.SourceRole.TRANSLATION) {
            throw new IOException("Verified TRANSLATION source is required for Russian voice extraction");
        }
        if (!"translation_ru_shedevr_lipetsk_usa".equals(selection.profileId) || !"4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a".equalsIgnoreCase(selection.sha256)) {
            throw new IOException("Translation source must be audited before Russian voice extraction");
        }
        File staging = RomRussianVoicePackStore.freshStagingRoot(context);
        InputStream input = context.getContentResolver().openInputStream(selection.uri);
        try {
            if (input == null) {
                throw new IOException("Translation ROM stream is unavailable");
            }
            GenesisRomRussianVoiceAssetProvider.Result result = GenesisRomRussianVoiceAssetProvider.extract(input, selection.size, staging);
            if (input != null) {
                input.close();
            }
            return RomRussianVoicePackStore.commit(context, result);
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
