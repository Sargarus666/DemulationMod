.class public final Lcom/ahsim/demulation/RazorTerrainPreviewSource;
.super Ljava/lang/Object;
.source "RazorTerrainPreviewSource.java"


# instance fields
.field public final audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

.field private final authenticatedRom:[B

.field private final authenticatedUnitBank:[B

.field public final emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

.field public final nativeCallReferences:Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;

.field public final nativeDispatcherTrace:Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Ljava/lang/String;Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;[B[B)V
    .locals 1
    .param p1, "a"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "evidence"    # Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    .param p4, "references"    # Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    .param p5, "dispatcher"    # Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
    .param p6, "unitBank"    # [B
    .param p7, "rom"    # [B

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    iput-object p3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    iput-object p4, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->nativeCallReferences:Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;

    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->nativeDispatcherTrace:Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;

    .line 34
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedUnitBank:[B

    .line 35
    iput-object p7, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedRom:[B

    .line 36
    return-void
.end method

.method private static digest([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 68
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v1, "out":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 70
    .local v4, "b":B
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    nop

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    .end local v0    # "bytes":[B
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inspectRawRom([B)Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .locals 10
    .param p0, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    if-eqz p0, :cond_2

    array-length v0, p0

    const v1, 0x400200

    if-gt v0, v1, :cond_2

    .line 40
    invoke-static {p0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v0

    iget-object v8, v0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 41
    .local v8, "rom":[B
    invoke-static {v8}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->digest([B)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "hash":Ljava/lang/String;
    nop

    .line 43
    invoke-static {v8, v3}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v0

    .line 44
    .local v0, "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    invoke-static {v8, v3, v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->inspect([BLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    move-result-object v2

    .line 45
    .local v2, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    nop

    .line 48
    invoke-static {v8, v3}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    move-result-object v4

    .line 49
    .local v4, "evidence":Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    nop

    .line 50
    invoke-static {v8, v4}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->inspect([BLcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;)Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;

    move-result-object v5

    .line 51
    .local v5, "references":Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .line 55
    invoke-static {v8, v4, v5}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->inspect([BLcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;)Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;

    move-result-object v6

    .line 56
    .local v6, "dispatcher":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget v1, v4, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    const v1, 0x1b2242

    goto :goto_0

    :cond_0
    const v1, 0x8cd8e

    :goto_0
    move v9, v1

    .line 62
    .local v9, "unitOffset":I
    add-int/lit16 v1, v9, 0x156c

    invoke-static {v8, v9, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 63
    .local v7, "unitBank":[B
    new-instance v1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Ljava/lang/String;Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;[B[B)V

    return-object v1

    .line 46
    .end local v4    # "evidence":Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    .end local v5    # "references":Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    .end local v6    # "dispatcher":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
    .end local v7    # "unitBank":[B
    .end local v9    # "unitOffset":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Razor preview source did not stay in offline-only mode"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v2    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v8    # "rom":[B
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor preview requires one of the two verified mission ROMs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public authenticatedBuildEmcCopy715()[B
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->emcEvidence:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    iget v0, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x1b1cba

    goto :goto_0

    :cond_0
    const v0, 0x8c806

    .line 25
    .local v0, "off":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedRom:[B

    add-int/lit16 v2, v0, 0x42e

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1
.end method

.method authenticatedRomCopy536()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedRom:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public authenticatedUnitEmcCopy()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedUnitBank:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
