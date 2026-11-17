package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import com.ahsim.demulation.RomRuntimeSourceVerifier;
import com.ahsim.demulation.RomSelectionStore;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RomRuntimeSourceBridge {
    private RomRuntimeSourceBridge() {
    }

    public static final class Source {
        public final String displayName;
        public final byte[] rom;
        public final String sha256;

        Source(byte[] rom, String displayName, String sha256) {
            this.rom = rom;
            this.displayName = displayName;
            this.sha256 = sha256;
        }
    }

    public static Source open(Context context) throws IOException {
        if (context == null) {
            throw new IOException("Context is unavailable");
        }
        String expectedSha256 = RomAssetInstallState.activeBundleSourceSha256(context);
        RomSelectionStore.Selection selection = RomSelectionStore.load(context);
        if (selection == null) {
            throw new IOException("Selected user ROM is unavailable; choose the ROM again in Launcher");
        }
        ContentResolver resolver = context.getContentResolver();
        try {
            InputStream input = resolver.openInputStream(selection.uri);
            try {
                RomRuntimeSourceVerifier.Result verified = RomRuntimeSourceVerifier.readAndVerify(input, selection.size, expectedSha256);
                Source source = new Source(verified.bytes, selection.displayName, verified.sha256);
                if (input != null) {
                    input.close();
                }
                return source;
            } finally {
            }
        } catch (SecurityException e) {
            throw new IOException("Persistent permission for the selected ROM is unavailable", e);
        }
    }
}
