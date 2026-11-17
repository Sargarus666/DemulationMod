.class public final Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;
.super Ljava/lang/Object;
.source "RomRuntimeRussianVoiceAssets.java"


# instance fields
.field private final installRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->installRoot:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->installRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-string v0, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    iget-object v1, p1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p1, Lcom/ahsim/demulation/RomRussianVoicePackStore$Snapshot;->installRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;->installRoot:Ljava/io/File;

    .line 21
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Russian voice snapshot source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Russian voice snapshot is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readExactly(Ljava/io/File;I)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 44
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 46
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 47
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 53
    .end local v4    # "n":I
    if-ne v3, p1, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-object v4

    .line 53
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Russian voice source changed while reading"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expected":I
    throw v4

    .line 48
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "n":I
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expected":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    add-int/2addr v3, v4

    .line 50
    if-gt v3, p1, :cond_3

    .line 51
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    .end local v4    # "n":I
    goto :goto_0

    .line 50
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Russian voice source grew while reading"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expected":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .end local v2    # "buf":[B
    .end local v3    # "total":I
    .end local v4    # "n":I
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expected":I
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expected":I
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expected":I
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
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

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 35
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 36
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

    .line 37
    return-object v0

    .line 36
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Russian voice path escapes active generation"

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

    .line 60
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 61
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 62
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
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

    .line 64
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 65
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method loadCompactAudioSource()Lcom/ahsim/demulation/GenesisAudioSource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;->installRoot:Ljava/io/File;

    const-string v1, "audio/russian_voice_source_pack.bin"

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 25
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x36d40

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 27
    const v1, 0x36d40

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;->readExactly(Ljava/io/File;I)[B

    move-result-object v1

    .line 28
    .local v1, "data":[B
    const-string v2, "9539071dac7d44ca4cd96fe8abd0f56d773260dc409b009128939691013ac1fa"

    invoke-static {v1}, Lcom/ahsim/demulation/RomRuntimeRussianVoiceAssets;->sha256([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v2

    return-object v2

    .line 29
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Russian voice source pack fingerprint mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    .end local v1    # "data":[B
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Russian voice source pack missing/wrong length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
