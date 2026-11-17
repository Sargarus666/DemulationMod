package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import com.ahsim.demulation.RazorEmcTickDependencyAudit;
import com.ahsim.demulation.RazorNativeFunctionAbiAudit;
import com.ahsim.demulation.RazorNativeFunctionDispatcherAudit;
import com.ahsim.demulation.RazorTerrainVisualSource;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorTerrainPreviewSource {
    public final RazorTerrainVisualSource.Audit audit;
    private final byte[] authenticatedRom;
    private final byte[] authenticatedUnitBank;
    public final RazorEmcTickDependencyAudit.Evidence emcEvidence;
    public final RazorNativeFunctionAbiAudit.Result nativeCallReferences;
    public final RazorNativeFunctionDispatcherAudit.Result nativeDispatcherTrace;
    public final String sha256;

    public byte[] authenticatedUnitEmcCopy() {
        return (byte[]) this.authenticatedUnitBank.clone();
    }

    public byte[] authenticatedBuildEmcCopy715() {
        int off = this.emcEvidence.romVariant == 1 ? 1776826 : 575494;
        return Arrays.copyOfRange(this.authenticatedRom, off, off + 1070);
    }

    byte[] authenticatedRomCopy536() {
        return (byte[]) this.authenticatedRom.clone();
    }

    private RazorTerrainPreviewSource(RazorTerrainVisualSource.Audit a, String hash, RazorEmcTickDependencyAudit.Evidence evidence, RazorNativeFunctionAbiAudit.Result references, RazorNativeFunctionDispatcherAudit.Result dispatcher, byte[] unitBank, byte[] rom) {
        this.audit = a;
        this.sha256 = hash;
        this.emcEvidence = evidence;
        this.nativeCallReferences = references;
        this.nativeDispatcherTrace = dispatcher;
        this.authenticatedUnitBank = (byte[]) unitBank.clone();
        this.authenticatedRom = rom;
    }

    public static RazorTerrainPreviewSource inspectRawRom(byte[] raw) throws IOException {
        if (raw == null || raw.length > 4194816) {
            throw new IOException("Razor preview requires one of the two verified mission ROMs");
        }
        byte[] rom = RomImageNormalizer.normalize(raw).bytes;
        String hash = digest(rom);
        DuneHackR82cRazorMissionBundle.Result bundle = DuneHackR82cRazorMissionBundle.inspect(rom, hash);
        RazorTerrainVisualSource.Audit audit = RazorTerrainVisualSource.inspect(rom, hash, bundle);
        Objects.requireNonNull(audit);
        Objects.requireNonNull(audit);
        if (!hash.equals(audit.romSourceSha256())) {
            throw new IOException("Razor preview source did not stay in offline-only mode");
        }
        RazorEmcTickDependencyAudit.Evidence evidence = RazorEmcTickDependencyAudit.inspect(rom, hash);
        RazorNativeFunctionAbiAudit.Result references = RazorNativeFunctionAbiAudit.inspect(rom, evidence);
        Objects.requireNonNull(references);
        Objects.requireNonNull(references);
        Objects.requireNonNull(references);
        RazorNativeFunctionDispatcherAudit.Result dispatcher = RazorNativeFunctionDispatcherAudit.inspect(rom, evidence, references);
        Objects.requireNonNull(dispatcher);
        Objects.requireNonNull(dispatcher);
        Objects.requireNonNull(dispatcher);
        int unitOffset = evidence.romVariant == 1 ? 1778242 : 576910;
        byte[] unitBank = Arrays.copyOfRange(rom, unitOffset, unitOffset + 5484);
        return new RazorTerrainPreviewSource(audit, hash, evidence, references, dispatcher, unitBank, rom);
    }

    private static String digest(byte[] data) throws IOException {
        try {
            byte[] bytes = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder out = new StringBuilder(64);
            for (byte b : bytes) {
                out.append(Character.forDigit((b >>> 4) & 15, 16));
                out.append(Character.forDigit(b & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }
}
