.class public final Lcom/ahsim/demulation/RomRuntimeAudioAssets;
.super Ljava/lang/Object;
.source "RomRuntimeAudioAssets.java"


# static fields
.field private static final ROM_IMAGE_BYTES:I = 0x100000


# instance fields
.field private final installRoot:Ljava/io/File;

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

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->installRoot:Ljava/io/File;

    .line 24
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->sourceProfile:Ljava/lang/String;

    .line 25
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audio READY root is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadVerifiedPack()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/ahsim/demulation/RomAudioAssetManifest;->entries()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;

    .line 53
    .local v0, "entry":Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->installRoot:Ljava/io/File;

    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->sourceProfile:Ljava/lang/String;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v4, v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->length:I

    iget-object v5, v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expectedForInstall(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v1

    .line 55
    .local v1, "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->installRoot:Ljava/io/File;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "packFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 59
    iget v3, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->readAll(Ljava/io/File;I)[B

    move-result-object v3

    .line 60
    .local v3, "pack":[B
    iget-object v4, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    return-object v3

    .line 61
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Installed audio source pack fingerprint mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v3    # "pack":[B
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Installed audio source pack is missing or changed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readAll(Ljava/io/File;I)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-array v0, p1, [B

    .line 68
    .local v0, "out":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 70
    .local v2, "total":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 71
    sub-int v3, p1, v2

    :try_start_0
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 72
    .local v3, "n":I
    if-gez v3, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    if-nez v3, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    add-int/2addr v2, v3

    .line 75
    .end local v3    # "n":I
    goto :goto_0

    .line 68
    .end local v2    # "total":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 76
    .restart local v2    # "total":I
    :cond_2
    :goto_1
    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_3

    .line 78
    nop

    .line 79
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 78
    return-object v0

    .line 77
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Audio source pack changed while reading"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":[B
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expected":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v2    # "total":I
    .restart local v0    # "out":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expected":I
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "cp":Ljava/lang/String;
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

    .line 99
    return-object v0

    .line 98
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe audio asset path"

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

    .line 84
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 85
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 86
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v2, "out":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "b":B
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

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 89
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public installRoot()Ljava/io/File;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->installRoot:Ljava/io/File;

    return-object v0
.end method

.method loadCompactAudioSource()Lcom/ahsim/demulation/GenesisAudioSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->loadVerifiedPack()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    return-object v0
.end method

.method public loadRomAddressedAudioImage()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->loadVerifiedPack()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    .line 37
    .local v0, "source":Lcom/ahsim/demulation/GenesisAudioSource;
    const/high16 v1, 0x100000

    new-array v2, v1, [B

    .line 40
    .local v2, "image":[B
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 41
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "p":I
    :cond_1
    return-object v2
.end method

.method readVerifiedPackForComparison()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/ahsim/demulation/RomRuntimeAudioAssets;->loadVerifiedPack()[B

    move-result-object v0

    return-object v0
.end method
