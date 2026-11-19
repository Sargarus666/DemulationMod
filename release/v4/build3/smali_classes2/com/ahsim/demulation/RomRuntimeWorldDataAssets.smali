.class public final Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;
.super Ljava/lang/Object;
.source "RomRuntimeWorldDataAssets.java"


# static fields
.field public static final LANDSCAPE_FIELDS:I = 0x11c

.field public static final LANDSCAPE_LOOKUP:I = 0x1c

.field public static final LAYOUT_PERIMETER_ADJACENCY:I = 0x202

.field public static final MAP_BOUNDS_TWO_SCALES:I = 0xc

.field public static final MAP_SEED_BLOBS:I = 0x331

.field public static final MAP_SEED_SIZE_FLAGS:I = 0x316

.field public static final PACK_BYTES:I = 0x16b31

.field public static final SCENARIO_MAP_OFFSETS_AND_HOUSE_MAP:I = 0x0

.field public static final SLAB2_ADJACENCY_MATRIX:I = 0x2e6

.field public static final SLAB2_SCORE_WEIGHTS:I = 0x2e2

.field public static final STRUCTURE_LAYOUT_COUNTS:I = 0x176

.field public static final STRUCTURE_LAYOUT_TILE_OFFSETS:I = 0x184


# instance fields
.field private final root:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "installRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->root:Ljava/io/File;

    .line 29
    return-void

    .line 27
    :cond_0
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

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->root:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 53
    .local v0, "f":Ljava/io/File;
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 55
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

    .line 56
    return-object v0

    .line 55
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe world-data READY path"

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

    .line 61
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 62
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 63
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
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

    .line 65
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 66
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public installRoot()Ljava/io/File;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->root:Ljava/io/File;

    return-object v0
.end method

.method public readMapScenarioLayout()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "data/world/map_scenario_layout_v1.bin"

    invoke-static {v0}, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    move-result-object v0

    .line 35
    .local v0, "e":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    if-eqz v0, :cond_4

    .line 36
    iget-object v1, v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->safeChild(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 37
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->length:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 38
    iget v2, v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->length:I

    new-array v2, v2, [B

    .line 39
    .local v2, "data":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 40
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 41
    .local v4, "off":I
    :goto_0
    :try_start_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 42
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 43
    .local v5, "n":I
    if-ltz v5, :cond_0

    .line 44
    add-int/2addr v4, v5

    .line 45
    .end local v5    # "n":I
    goto :goto_0

    .line 43
    .restart local v5    # "n":I
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unexpected end of world-data READY asset"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "e":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "data":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v4    # "off":I
    .end local v5    # "n":I
    .restart local v0    # "e":Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "data":[B
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 47
    .end local v3    # "in":Ljava/io/FileInputStream;
    iget-object v3, v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomRuntimeWorldDataAssets;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    return-object v2

    .line 47
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "World-data READY fingerprint mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 39
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

    .line 37
    .end local v2    # "data":[B
    .end local v3    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "World-data READY asset is missing"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    .end local v1    # "f":Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "World-data manifest entry unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
