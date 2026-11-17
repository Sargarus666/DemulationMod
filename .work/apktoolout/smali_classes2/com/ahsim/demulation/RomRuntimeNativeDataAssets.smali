.class public final Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;
.super Ljava/lang/Object;
.source "RomRuntimeNativeDataAssets.java"


# static fields
.field public static final ACTION_SWITCH_TYPES_BYTES:I = 0x1c

.field public static final ACTION_SWITCH_TYPES_OFFSET:I = 0x0

.field public static final FREMEN_COUNTS_BYTES:I = 0x10

.field public static final FREMEN_COUNTS_OFFSET:I = 0x24

.field public static final FREMEN_TYPES_BYTES:I = 0x8

.field public static final FREMEN_TYPES_OFFSET:I = 0x1c

.field public static final MCV_ANCHORS_BYTES:I = 0x8

.field public static final MCV_ANCHORS_OFFSET:I = 0x2f4

.field public static final PACK_BYTES:I = 0x2fc

.field public static final RUBBLE_VISUAL_IDS_BYTES:I = 0xe

.field public static final RUBBLE_VISUAL_IDS_OFFSET:I = 0x34

.field public static final VISUAL_INDEX_COUNT:I = 0x15

.field public static final VISUAL_INDEX_ENTRY_BYTES:I = 0x6

.field public static final VISUAL_INDEX_OFFSET:I = 0x42

.field public static final VISUAL_STREAMS_BYTES:I = 0x234

.field public static final VISUAL_STREAMS_OFFSET:I = 0xc0


# instance fields
.field private final root:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->root:Ljava/io/File;

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native-data READY root is unavailable"

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

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->root:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 70
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

    .line 71
    return-object v0

    .line 70
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe native-data READY path"

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

    .line 76
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 77
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 78
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
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

    .line 80
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 81
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private verifiedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    move-result-object v0

    .line 60
    .local v0, "e":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->safeChild(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->length:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 63
    return-object v1

    .line 62
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Native-data READY asset is missing"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unknown native-data READY asset"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public installRoot()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->root:Ljava/io/File;

    return-object v0
.end method

.method public readRemainingPureData()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const-string v0, "data/native/remaining_pure_data_v1.bin"

    invoke-static {v0}, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    move-result-object v0

    .line 44
    .local v0, "e":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    iget-object v1, v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->verifiedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "f":Ljava/io/File;
    iget v2, v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->length:I

    new-array v2, v2, [B

    .line 46
    .local v2, "data":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 48
    .local v4, "off":I
    :goto_0
    :try_start_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 49
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 50
    .local v5, "n":I
    if-ltz v5, :cond_0

    .line 51
    add-int/2addr v4, v5

    .line 52
    .end local v5    # "n":I
    goto :goto_0

    .line 50
    .restart local v5    # "n":I
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unexpected end of native-data READY asset"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "e":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "data":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v4    # "off":I
    .end local v5    # "n":I
    .restart local v0    # "e":Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "data":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 54
    .end local v3    # "in":Ljava/io/FileInputStream;
    iget-object v3, v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    return-object v2

    .line 54
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Native-data READY fingerprint mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
.end method

.method public remainingPureDataFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const-string v0, "data/native/remaining_pure_data_v1.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RomRuntimeNativeDataAssets;->verifiedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
