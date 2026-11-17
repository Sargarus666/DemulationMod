package com.ahsim.demulation;

import android.content.ContentResolver;
import android.content.Context;
import com.ahsim.demulation.GenesisRomIdentity;
import com.ahsim.demulation.RomSelectionStore;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class RomIdentifier {
    private RomIdentifier() {
    }

    public static GenesisRomIdentity.Result identify(Context context, RomSelectionStore.Selection selection) throws IOException {
        if (selection == null || selection.uri == null) {
            throw new IOException("No ROM is selected");
        }
        ContentResolver resolver = context.getContentResolver();
        try {
            InputStream input = resolver.openInputStream(selection.uri);
            try {
                if (input == null) {
                    throw new IOException("Selected ROM cannot be opened");
                }
                GenesisRomIdentity.Result identify = GenesisRomIdentity.identify(input);
                if (input != null) {
                    input.close();
                }
                return identify;
            } finally {
            }
        } catch (SecurityException e) {
            throw new IOException("Read access to the selected ROM was revoked", e);
        }
    }
}
