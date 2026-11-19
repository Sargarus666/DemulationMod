.class public final Lcom/ahsim/demulation/RomAssetAtomicInstaller;
.super Ljava/lang/Object;
.source "RomAssetAtomicInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;,
        Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;
    }
.end annotation


# static fields
.field public static final FORMAT_VERSION:I = 0x1

.field private static final GENERATION_PREFIX:Ljava/lang/String; = "runtime_bootstrap_core_v1-"

.field public static final INSTALLS_DIR:Ljava/lang/String; = "installs"

.field public static final INSTALL_MANIFEST:Ljava/lang/String; = "manifest.properties"

.field public static final READY_MARKER:Ljava/lang/String; = "READY"

.field public static final READY_NEW:Ljava/lang/String; = "READY.new"

.field public static final READY_PREVIOUS:Ljava/lang/String; = "READY.prev"

.field public static final STAGING_DIR:Ljava/lang/String; = "_staging"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 299
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe install manifest property"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p0, "root"    # Ljava/io/File;
    .param p1, "keepGeneration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/io/File;

    const-string v1, "installs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v0, "installs":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 358
    .local v1, "children":[Ljava/io/File;
    if-nez v1, :cond_0

    return-void

    .line 359
    :cond_0
    const-string v2, "runtime_frontend_bundle_v1-"

    .line 360
    .local v2, "bundlePrefix":Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v1, v5

    .line 361
    .local v6, "child":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "runtime_bootstrap_core_v1-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 362
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 363
    .local v7, "managed":Z
    :goto_2
    if-eqz v7, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 364
    :cond_3
    invoke-static {v6}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 360
    .end local v6    # "child":Ljava/io/File;
    .end local v7    # "managed":Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :cond_5
    return-void
.end method

.method static cleanupStaging(Ljava/io/File;)V
    .locals 2
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/io/File;

    const-string v1, "_staging"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .local v0, "staging":Ljava/io/File;
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 353
    return-void
.end method

.method public static clearAll(Ljava/io/File;)V
    .locals 0
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 177
    return-void
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 477
    :cond_0
    return-void
.end method

.method private static digest()Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static generationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sourceSha256"    # Ljava/lang/String;
    .param p1, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "source":Ljava/lang/String;
    :goto_0
    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    if-nez p1, :cond_1

    const-string v1, "unknown"

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 372
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->sha256Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runtime_bootstrap_core_v1-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 465
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 466
    .local v0, "alphabet":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 467
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 468
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 469
    .local v3, "value":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 470
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 467
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static installCore(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;
    .locals 17
    .param p0, "root"    # Ljava/io/File;
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "sourceSha256"    # Ljava/lang/String;
    .param p3, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v0, :cond_9

    .line 82
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not create ROM asset root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->verifyPayloadTree(Ljava/io/File;)V

    .line 90
    invoke-static/range {p2 .. p3}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->generationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "generation":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "installs"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v4, "installs":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not create ROM asset install directory"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_3
    :goto_1
    invoke-static {v4, v7}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeDirectChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 97
    .local v8, "finalRoot":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "manifest.properties"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v5, "stagedManifest":Ljava/io/File;
    invoke-static {v5, v7, v2, v3}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->writeInstallManifest(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v5}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "manifestSha256":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 102
    invoke-static {v8, v7, v13}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v9

    .line 103
    .local v9, "existing":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v10, v9, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v10, :cond_4

    .line 104
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    goto :goto_2

    .line 106
    :cond_4
    invoke-static {v8}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 107
    invoke-static {v1, v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->publishGeneration(Ljava/io/File;Ljava/io/File;)V

    .line 109
    .end local v9    # "existing":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :goto_2
    goto :goto_3

    .line 110
    :cond_5
    invoke-static {v1, v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->publishGeneration(Ljava/io/File;Ljava/io/File;)V

    .line 113
    :goto_3
    invoke-static {v8, v7, v13}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v15

    .line 114
    .local v15, "generationValidation":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v9, v15, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v9, :cond_7

    .line 119
    invoke-static {v0, v7, v13, v2, v3}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->publishReady(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v9

    .line 121
    .local v9, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v10, v9, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v10, :cond_6

    .line 126
    new-instance v10, Ljava/io/File;

    const-string v11, "READY.prev"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 127
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupStaging(Ljava/io/File;)V

    .line 128
    invoke-static {v0, v7}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v10, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;

    move-object v11, v9

    .end local v9    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v11, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 131
    move-object v14, v11

    .end local v11    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v14, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->corePayloadBytes()J

    move-result-wide v11

    move-object/from16 v16, v14

    .end local v14    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v16, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    const/4 v14, 0x0

    move-object v0, v10

    move v10, v6

    move-object v6, v0

    move-object/from16 v0, v16

    .end local v16    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v0, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-direct/range {v6 .. v14}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;Lcom/ahsim/demulation/RomAssetAtomicInstaller-IA;)V

    .line 129
    return-object v6

    .line 122
    .end local v0    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .restart local v9    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_6
    move-object v0, v9

    .end local v9    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .restart local v0    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->rollbackReady(Ljava/io/File;)V

    .line 123
    new-instance v6, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "READY publication failed verification: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    .end local v0    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installed ROM asset generation failed verification: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v15, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    .end local v4    # "installs":Ljava/io/File;
    .end local v5    # "stagedManifest":Ljava/io/File;
    .end local v7    # "generation":Ljava/lang/String;
    .end local v8    # "finalRoot":Ljava/io/File;
    .end local v13    # "manifestSha256":Ljava/lang/String;
    .end local v15    # "generationValidation":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Verified ROM asset staging directory is unavailable"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v4, "ROM asset root is unavailable"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 9
    .param p0, "reason"    # Ljava/lang/String;

    .line 480
    new-instance v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    const-string v7, ""

    const-string v8, ""

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .end local p0    # "reason":Ljava/lang/String;
    .local v2, "reason":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 9
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/io/File;

    .line 484
    new-instance v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    const-string v7, ""

    const-string v8, ""

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p0    # "reason":Ljava/lang/String;
    .end local p1    # "generation":Ljava/lang/String;
    .end local p2    # "root":Ljava/io/File;
    .local v2, "reason":Ljava/lang/String;
    .local v3, "generation":Ljava/lang/String;
    .local v4, "root":Ljava/io/File;
    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static load(Ljava/io/File;)Ljava/util/Properties;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 408
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 409
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 411
    .end local v1    # "input":Ljava/io/FileInputStream;
    return-object v0

    .line 408
    .restart local v1    # "input":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method private static publishGeneration(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "stagingRoot"    # Ljava/io/File;
    .param p1, "finalRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not atomically publish verified ROM asset generation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static publishReady(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "manifestSha256"    # Ljava/lang/String;
    .param p3, "sourceSha256"    # Ljava/lang/String;
    .param p4, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/io/File;

    const-string v1, "READY.new"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v0, "next":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "READY"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    .local v1, "current":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "READY.prev"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v2, "previous":Ljava/io/File;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 311
    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 313
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 314
    .local v3, "properties":Ljava/util/Properties;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format.version"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    const-string v4, "stage"

    const-string v5, "04.233B"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    const-string v4, "group.id"

    const-string v5, "runtime_bootstrap_core_v1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    const-string v4, "generation"

    invoke-virtual {v3, v4, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const-string v4, "manifest.sha256"

    invoke-virtual {v3, v4, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    const-string v4, ""

    if-nez p3, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    const-string v6, "source.sha256"

    invoke-virtual {v3, v6, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    const-string v5, "source.profile"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "entries.total"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->corePayloadBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "payload.bytes"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    const-string v4, "Demulation Stage 04.233B READY pointer"

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 326
    :cond_2
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 327
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not preserve previous READY pointer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 330
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 331
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not publish READY pointer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    :cond_5
    return-void
.end method

.method public static recover(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 8
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 138
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "READY.new"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 139
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    .line 140
    .local v0, "current":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v2, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    const-string v3, "READY.prev"

    if-eqz v2, :cond_1

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 142
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupStaging(Ljava/io/File;)V

    .line 143
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->generation:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    return-object v0

    .line 147
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v2, "previousFile":Ljava/io/File;
    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v3

    .line 150
    .local v3, "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v4, v3, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v4, :cond_4

    .line 151
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .local v4, "ready":Ljava/io/File;
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    .line 156
    .local v1, "restored":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v5, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v5, :cond_2

    .line 159
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupStaging(Ljava/io/File;)V

    .line 160
    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->generation:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    return-object v1

    .line 157
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restored READY pointer is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    .end local v1    # "restored":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Could not restore previous READY pointer"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    .end local v4    # "ready":Ljava/io/File;
    :cond_4
    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 165
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupStaging(Ljava/io/File;)V

    .line 166
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "No valid READY state"

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    return-object v1

    .line 136
    .end local v0    # "current":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v2    # "previousFile":Ljava/io/File;
    .end local v3    # "previous":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_6
    :goto_1
    const-string v0, "ROM asset root does not exist"

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method private static rollbackReady(Ljava/io/File;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v0, "current":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "READY.prev"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v1, "previous":Ljava/io/File;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not roll back previous READY pointer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 342
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    return-object v0

    .line 401
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsafe installed asset path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static safeDirectChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeGeneration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "rootPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    return-object v0

    .line 384
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe ROM asset generation path"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "rootPath":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe ROM asset generation name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeGeneration(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 390
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    const-string v0, "runtime_bootstrap_core_v1-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const-string v0, "runtime_frontend_bundle_v1-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    nop

    .line 393
    const-string v0, "[A-Za-z0-9._-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0
.end method

.method private static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-static {}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 439
    .local v0, "digest":Ljava/security/MessageDigest;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 440
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 442
    .local v2, "input":Ljava/io/FileInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .local v3, "count":I
    if-gez v3, :cond_0

    .line 446
    .end local v3    # "count":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 447
    .end local v2    # "input":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->hex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 444
    .restart local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "count":I
    :cond_0
    if-lez v3, :cond_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .end local v3    # "count":I
    :cond_1
    goto :goto_0

    .line 440
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method

.method private static sha256Bytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-static {}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 452
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 453
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->hex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static validateGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 12
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Install generation is missing"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "manifest.properties"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 208
    .local v9, "manifest":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Install manifest is missing"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 209
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-static {v9}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    const-string v0, "Install manifest fingerprint mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 213
    :cond_2
    invoke-static {v9}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->load(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v10

    .line 214
    .local v10, "properties":Ljava/util/Properties;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format.version"

    invoke-virtual {v10, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    const-string v0, "Install manifest format version mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 217
    :cond_3
    const-string v0, "group.id"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "runtime_bootstrap_core_v1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    const-string v0, "Install manifest group mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 220
    :cond_4
    const-string v0, "generation"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    const-string v0, "Install manifest generation mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 223
    :cond_5
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, "entries.total"

    invoke-virtual {v10, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 225
    const-string v0, "Install manifest entry count mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 227
    :cond_6
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->corePayloadBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "payload.bytes"

    invoke-virtual {v10, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 229
    const-string v0, "Install manifest payload size mismatch"

    invoke-static {v0, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 232
    :cond_7
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v11

    .line 233
    .local v11, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ""

    if-ge v0, v1, :cond_d

    .line 234
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .line 235
    .local v1, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "asset.%02d."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "prefix":Ljava/lang/String;
    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    invoke-virtual {v10, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "length"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sha256"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-virtual {v10, v6, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    .line 243
    :cond_8
    iget-object v2, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 244
    .local v2, "asset":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    iget v7, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_9

    goto :goto_1

    .line 248
    :cond_9
    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed asset fingerprint mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    return-object v5

    .line 233
    .end local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v2    # "asset":Ljava/io/File;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 245
    .restart local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .restart local v2    # "asset":Ljava/io/File;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_b
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed asset is missing or has wrong size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    return-object v5

    .line 240
    .end local v2    # "asset":Ljava/io/File;
    :cond_c
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install manifest entry mismatch: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v2

    return-object v2

    .line 253
    .end local v0    # "i":I
    .end local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_d
    new-instance v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    .line 255
    const-string v1, "source.sha256"

    invoke-virtual {v10, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "source.profile"

    invoke-virtual {v10, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    const-string v2, "ok"

    const-string v5, "runtime_bootstrap_core_v1"

    const/4 v6, 0x1

    move-object v4, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v0
.end method

.method public static validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 2
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-nez p0, :cond_0

    const-string v0, "ROM asset root is unavailable"

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method private static validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .param p1, "pointerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "READY pointer is absent"

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->isBundlePointer(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->load(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    .line 185
    .local v0, "ready":Ljava/util/Properties;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    const-string v1, "READY format version is unsupported"

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    return-object v1

    .line 188
    :cond_2
    const-string v1, "group.id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "runtime_bootstrap_core_v1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    const-string v1, "READY group does not match the core provider group"

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    return-object v1

    .line 191
    :cond_3
    const-string v1, "generation"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "generation":Ljava/lang/String;
    const-string v3, "manifest.sha256"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "expectedManifestSha":Ljava/lang/String;
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeGeneration(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 196
    :cond_4
    new-instance v3, Ljava/io/File;

    const-string v4, "installs"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v3, "installs":Ljava/io/File;
    invoke-static {v3, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeDirectChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 198
    .local v4, "installRoot":Ljava/io/File;
    invoke-static {v4, v1, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    .line 200
    .local v5, "generationValidation":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-nez v6, :cond_5

    return-object v5

    .line 201
    :cond_5
    return-object v5

    .line 194
    .end local v3    # "installs":Ljava/io/File;
    .end local v4    # "installRoot":Ljava/io/File;
    .end local v5    # "generationValidation":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :cond_6
    :goto_0
    const-string v3, "READY pointer fields are invalid"

    invoke-static {v3}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->invalid(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v3

    return-object v3
.end method

.method private static verifyPayloadTree(Ljava/io/File;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .line 260
    .local v1, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 261
    .local v2, "asset":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 264
    iget-object v3, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    .end local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v2    # "asset":Ljava/io/File;
    goto :goto_0

    .line 265
    .restart local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .restart local v2    # "asset":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged asset fingerprint mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Staged asset is missing or has wrong size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    .end local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v2    # "asset":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static writeBytesSynced(Ljava/io/File;[B)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 428
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create directory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 432
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 433
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 435
    .end local v1    # "output":Ljava/io/FileOutputStream;
    return-void

    .line 431
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method private static writeInstallManifest(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "sourceSha256"    # Ljava/lang/String;
    .param p3, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "text":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.version"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "stage"

    const-string v2, "04.233B"

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "group.id"

    const-string v2, "runtime_bootstrap_core_v1"

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "generation"

    invoke-static {v0, v1, p1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const-string v3, "source.sha256"

    invoke-static {v0, v3, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    const-string v2, "source.profile"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entries.total"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->corePayloadBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload.bytes"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/ahsim/demulation/RomAssetManifest;->coreEntries()Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetManifest$Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 287
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .line 288
    .local v3, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "asset.%02d."

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sha256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v3    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .end local v4    # "prefix":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 294
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->writeBytesSynced(Ljava/io/File;[B)V

    .line 295
    return-void
.end method

.method private static writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 417
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create directory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 421
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1, v1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 424
    .end local v1    # "output":Ljava/io/FileOutputStream;
    return-void

    .line 420
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method
