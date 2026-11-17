.class public final Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;
.super Ljava/lang/Object;
.source "RomRuntimeGameplayDataAssets.java"


# static fields
.field public static final HOUSE_PARAMETERS:I = 0x9aa

.field public static final HOUSE_PARAMETERS_BYTES:I = 0x34

.field public static final PACK_BYTES:I = 0x9ea

.field public static final STARPORT_DERIVED_SCALARS:I = 0x9de

.field public static final STARPORT_DERIVED_SCALARS_BYTES:I = 0xc

.field public static final STRUCTURE_PARAMETERS:I = 0x510

.field public static final STRUCTURE_PARAMETERS_BYTES:I = 0x49a

.field public static final UNIT_PARAMETERS:I = 0x0

.field public static final UNIT_PARAMETERS_BYTES:I = 0x510


# instance fields
.field private final root:Ljava/io/File;

.field private final sourceProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "installRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->root:Ljava/io/File;

    .line 33
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->sourceProfile:Ljava/lang/String;

    .line 34
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "READY install root unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeChild(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->root:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "fp":Ljava/lang/String;
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

    .line 64
    return-object v0

    .line 63
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe gameplay-data READY path"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 70
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 71
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v2, "b":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "v":B
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02x"

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "v":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 74
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public installRoot()Ljava/io/File;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->root:Ljava/io/File;

    return-object v0
.end method

.method public readUnitStructureParameters()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-string v0, "data/gameplay/unit_structure_parameters_v1.bin"

    invoke-static {v0}, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    move-result-object v0

    .line 41
    .local v0, "e":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    if-eqz v0, :cond_4

    .line 42
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->root:Ljava/io/File;

    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->sourceProfile:Ljava/lang/String;

    iget-object v3, v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v4, v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->length:I

    iget-object v5, v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expectedForInstall(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v1

    .line 44
    .local v1, "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    iget-object v2, v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->safeChild(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 45
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 46
    iget v3, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    new-array v3, v3, [B

    .line 47
    .local v3, "data":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v4, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 49
    .local v5, "off":I
    :goto_0
    :try_start_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 50
    array-length v6, v3

    sub-int/2addr v6, v5

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .line 51
    .local v6, "n":I
    if-ltz v6, :cond_0

    .line 52
    add-int/2addr v5, v6

    .line 53
    .end local v6    # "n":I
    goto :goto_0

    .line 51
    .restart local v6    # "n":I
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unexpected end of gameplay-data READY asset"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "e":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .end local v1    # "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "data":[B
    .end local v4    # "in":Ljava/io/FileInputStream;
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v5    # "off":I
    .end local v6    # "n":I
    .restart local v0    # "e":Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .restart local v1    # "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "data":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 55
    .end local v4    # "in":Ljava/io/FileInputStream;
    iget-object v4, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/RomRuntimeGameplayDataAssets;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    return-object v3

    .line 55
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Gameplay-data READY fingerprint mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5

    .line 45
    .end local v3    # "data":[B
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Gameplay-data READY asset is missing"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    .end local v1    # "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Gameplay-data manifest entry unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
