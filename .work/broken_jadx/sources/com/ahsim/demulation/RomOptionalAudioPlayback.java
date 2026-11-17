package com.ahsim.demulation;

import java.io.File;
import java.io.IOException;

/* loaded from: classes2.dex */
final class RomOptionalAudioPlayback {
    static final String SETTINGS_FILE = "dune_audio_overlay_622";
    static final String STATUS_ACTIVE = "MOD_ACTIVE";
    static final String STATUS_BASE_BAD_PACK = "BASE_REJECTED_PACK";
    static final String STATUS_BASE_NOT_PREPARED = "BASE_NOT_PREPARED_OR_IDENTICAL";
    static final String STATUS_BASE_NO_SELECTION = "BASE_NO_SELECTION";
    static final String STATUS_BASE_WRONG_SOURCE = "BASE_SOURCE_CHANGED";

    static final class Result {
        final String detail;
        final GenesisAudioSource source;
        final String status;

        Result(GenesisAudioSource source, String status, String detail) {
            this.source = source;
            this.status = status;
            this.detail = detail;
        }

        boolean isModded() {
            return RomOptionalAudioPlayback.STATUS_ACTIVE.equals(this.status);
        }
    }

    private RomOptionalAudioPlayback() {
    }

    static Result choose(GenesisAudioSource base, File root, String readySha, String chosenSha, String storedBaseSha, String storedChosenSha) {
        if (base == null || !base.isCompact()) {
            throw new IllegalArgumentException("A verified compact BASE audio source is required");
        }
        if (chosenSha == null || chosenSha.isEmpty()) {
            return new Result(base, STATUS_BASE_NO_SELECTION, "no selected audio overlay");
        }
        if (!validSha(readySha) || !validSha(chosenSha) || !readySha.equalsIgnoreCase(storedBaseSha) || !chosenSha.equalsIgnoreCase(storedChosenSha)) {
            return new Result(base, STATUS_BASE_WRONG_SOURCE, "BASE or audio ROM fingerprint changed");
        }
        File candidate = root == null ? null : new File(root, "candidate.aud");
        if (candidate == null || !candidate.isFile()) {
            return new Result(base, STATUS_BASE_NOT_PREPARED, "candidate absent or identical to BASE");
        }
        try {
            byte[] compactPack = RomAudioOverlayPreparation.readCandidate(root, readySha, chosenSha);
            GenesisAudioSource chosen = GenesisAudioSource.fromPack(compactPack);
            GenesisGemsSfxData gameplay = new GenesisGemsSfxData(chosen);
            GenesisGemsSfxData title = GenesisGemsSfxData.createTitleBank(chosen);
            if (gameplay.sequenceCount() != 84 || title.sequenceCount() != 13) {
                throw new IOException("GEMS sequence table mismatch");
            }
            if (title.plan(0) == null || gameplay.plan(8) == null || gameplay.plan(69) == null) {
                throw new IOException("Required GEMS sequences unavailable");
            }
            if (!chosen.contains(436350, 1) || !chosen.contains(853695, 12) || !chosen.contains(819552, 12)) {
                throw new IOException("Required audio command/sample tables missing");
            }
            return new Result(chosen, STATUS_ACTIVE, "checked staged GEMS pack, bytes=" + compactPack.length);
        } catch (IOException | RuntimeException invalid) {
            return new Result(base, STATUS_BASE_BAD_PACK, invalid.getClass().getSimpleName() + ": " + invalid.getMessage());
        }
    }

    private static boolean validSha(String sha) {
        return sha != null && sha.matches("[0-9a-fA-F]{64}");
    }
}
