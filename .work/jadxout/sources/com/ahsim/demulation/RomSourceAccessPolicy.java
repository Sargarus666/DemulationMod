package com.ahsim.demulation;

import com.ahsim.demulation.RomSelectionStore;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class RomSourceAccessPolicy {

    public enum Capability {
        BASE_READY_BUNDLE,
        MEDIA_GRAPHICS_NEUTRAL,
        MEDIA_AUDIO,
        LOCALIZATION_TEXT,
        LOCALIZATION_GLYPHS,
        SCENARIO_WORLD_DATA,
        GAMEPLAY_PARAMETERS,
        NATIVE_PURE_DATA,
        EXECUTABLE_ROM_CODE
    }

    private RomSourceAccessPolicy() {
    }

    public static boolean allows(RomSelectionStore.SourceRole role, Capability capability) {
        if (role == null || capability == null || capability == Capability.EXECUTABLE_ROM_CODE) {
            return false;
        }
        switch (role) {
            case MEDIA_MOD:
                if (capability == Capability.MEDIA_GRAPHICS_NEUTRAL || capability == Capability.MEDIA_AUDIO) {
                    break;
                }
                break;
            case AUDIO_MOD:
                if (capability == Capability.MEDIA_AUDIO) {
                    break;
                }
                break;
            case TRANSLATION:
                if (capability == Capability.LOCALIZATION_TEXT || capability == Capability.LOCALIZATION_GLYPHS) {
                    break;
                }
                break;
        }
        return false;
    }

    public static void requireAllowed(RomSelectionStore.SourceRole role, Capability capability) throws IOException {
        if (!allows(role, capability)) {
            throw new IOException("ROM source role " + String.valueOf(role) + " is not allowed to provide " + String.valueOf(capability));
        }
    }

    public static boolean canAffectMechanics(RomSelectionStore.SourceRole role) {
        return allows(role, Capability.SCENARIO_WORLD_DATA) || allows(role, Capability.GAMEPLAY_PARAMETERS) || allows(role, Capability.NATIVE_PURE_DATA);
    }

    public static List<Capability> allowedCapabilities(RomSelectionStore.SourceRole role) {
        ArrayList<Capability> out = new ArrayList<>();
        for (Capability capability : Capability.values()) {
            if (allows(role, capability)) {
                out.add(capability);
            }
        }
        return Collections.unmodifiableList(out);
    }
}
