.class public final Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;
.super Ljava/lang/Object;
.source "GenesisRomRussianVoiceAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;
    }
.end annotation


# static fields
.field private static final MAGIC:[B

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final PACK_VERSION:I = 0x1

.field private static final ROM_IMAGE_BYTES:I = 0x100000

.field private static final SEGMENTS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->MAGIC:[B

    .line 20
    const v0, 0x6a87e

    const v1, 0x6a9ba

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const v1, 0xc8160

    const v2, 0xfed40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->SEGMENTS:[[I

    return-void

    :array_0
    .array-data 1
        0x44t
        0x45t
        0x4dt
        0x41t
        0x55t
        0x44t
        0x30t
        0x31t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildPack([B)[B
    .locals 10
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    if-eqz p0, :cond_2

    array-length v0, p0

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_2

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v2, 0x36d40

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 70
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->MAGIC:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 71
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 72
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 73
    sget-object v1, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->SEGMENTS:[[I

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 74
    sget-object v1, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->SEGMENTS:[[I

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 75
    .local v6, "segment":[I
    aget v7, v6, v4

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 76
    aget v7, v6, v2

    aget v8, v6, v4

    sub-int/2addr v7, v8

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->writeBe32(Ljava/io/ByteArrayOutputStream;I)V

    .line 74
    .end local v6    # "segment":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->SEGMENTS:[[I

    array-length v3, v1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .restart local v6    # "segment":[I
    aget v7, v6, v4

    aget v8, v6, v2

    aget v9, v6, v4

    sub-int/2addr v8, v9

    invoke-virtual {v0, p0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v6    # "segment":[I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 68
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM is truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 109
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    :goto_1
    return-void

    .line 106
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract(Ljava/io/InputStream;JLjava/io/File;)Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .param p3, "stagingRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    if-eqz p0, :cond_9

    .line 40
    if-eqz p3, :cond_8

    .line 41
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 42
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v0

    .line 43
    .local v0, "rom":[B
    array-length v1, v0

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_6

    .line 44
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "sourceSha":Ljava/lang/String;
    const-string v2, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 48
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->buildPack([B)[B

    move-result-object v2

    .line 49
    .local v2, "pack":[B
    array-length v3, v2

    const v4, 0x36d40

    if-ne v3, v4, :cond_4

    .line 50
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->sha256([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "9539071dac7d44ca4cd96fe8abd0f56d773260dc409b009128939691013ac1fa"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-static {p3}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 54
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create Russian voice staging"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_1
    :goto_0
    const-string v3, "audio/russian_voice_source_pack.bin"

    invoke-static {p3, v3}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 57
    .local v3, "out":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 58
    .local v4, "parent":Ljava/io/File;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not create Russian voice staging directory"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_3
    :goto_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 64
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;

    array-length v6, v2

    int-to-long v6, v6

    invoke-direct {v5, p3, v1, v6, v7}, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object v5

    .line 60
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v6

    .line 51
    .end local v3    # "out":Ljava/io/File;
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Russian voice source pack fingerprint mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    .end local v2    # "pack":[B
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Russian voice source ROM fingerprint mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    .end local v1    # "sourceSha":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Audited Russian translation must be exactly 1 MiB"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v0    # "rom":[B
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Russian voice staging is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Translation ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x100000

    .line 84
    .local v0, "initial":I
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 85
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 86
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 88
    .local v3, "total":I
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 89
    .local v4, "n":I
    if-gez v4, :cond_1

    .line 95
    .end local v4    # "n":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 90
    .restart local v4    # "n":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    add-int/2addr v3, v4

    .line 92
    const/high16 v5, 0x1000000

    if-gt v3, v5, :cond_3

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 94
    .end local v4    # "n":I
    goto :goto_1

    .line 92
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Translation ROM is unexpectedly large"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
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

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 129
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    return-object v1

    .line 130
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Russian voice path escapes staging root"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 118
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
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

    .line 120
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 121
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static writeBe32(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 99
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 102
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    return-void
.end method
