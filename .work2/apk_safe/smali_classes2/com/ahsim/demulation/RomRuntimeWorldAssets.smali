.class public final Lcom/ahsim/demulation/RomRuntimeWorldAssets;
.super Ljava/lang/Object;
.source "RomRuntimeWorldAssets.java"


# instance fields
.field private final installRoot:Ljava/io/File;

.field private final overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

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

    invoke-direct {p0, p1, v0, v0}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)V
    .locals 1
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "overlay"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V
    .locals 2
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "overlay"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .param p3, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->installRoot:Ljava/io/File;

    .line 41
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    .line 42
    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->sourceProfile:Ljava/lang/String;

    .line 43
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Active ROM world-media generation is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isBaseOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 110
    const-string v0, "tactical/classic_purchase_icons.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isWorldGroup(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .line 124
    const-string v0, "world_terrain_radar_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const-string v0, "world_tactical_sprites_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0
.end method

.method private static matchesDeclaredGroup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "baseGroup"    # Ljava/lang/String;
    .param p1, "overlayGroup"    # Ljava/lang/String;

    .line 114
    const-string v0, "world_terrain_radar_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "WORLD_TERRAIN_RADAR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    :cond_0
    const-string v0, "world_tactical_sprites_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "TACTICAL_SPRITES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static readExactly(Ljava/io/File;ILjava/lang/String;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expectedLength"    # I
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 142
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 143
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 145
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 146
    .local v4, "count":I
    if-gez v4, :cond_1

    .line 154
    .end local v4    # "count":I
    if-ne v3, p1, :cond_0

    .line 157
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 157
    return-object v4

    .line 155
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changed while being read: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    .end local p2    # "label":Ljava/lang/String;
    throw v4

    .line 147
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "count":I
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    add-int/2addr v3, v4

    .line 149
    if-gt v3, p1, :cond_3

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 153
    .end local v4    # "count":I
    goto :goto_0

    .line 150
    .restart local v4    # "count":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " grew while being read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    .end local p2    # "label":Ljava/lang/String;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v4    # "count":I
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    .restart local p2    # "label":Ljava/lang/String;
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
    .end local p1    # "expectedLength":I
    .end local p2    # "label":Ljava/lang/String;
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    .restart local p2    # "label":Ljava/lang/String;
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

.method private static safeChild(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, "canonicalRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 131
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "rootPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "childPath":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 164
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 165
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
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

    .line 167
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 168
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private tryReadOverlay(Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;)[B
    .locals 6
    .param p1, "baseEntry"    # Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .param p2, "overlayEntry"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 92
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object v1, p1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    iget-object v2, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->matchesDeclaredGroup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    iget-object v1, v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->installRoot:Ljava/io/File;

    iget-object v2, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    const-string v3, "ROM graphics overlay path escapes active generation"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->safeChild(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 98
    .local v1, "overlayFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget v2, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    const-string v3, "ROM graphics overlay asset"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->readExactly(Ljava/io/File;ILjava/lang/String;)[B

    move-result-object v2

    .line 100
    .local v2, "data":[B
    iget-object v3, p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-object v0

    .line 101
    :cond_2
    return-object v2

    .line 98
    .end local v2    # "data":[B
    :cond_3
    :goto_0
    return-object v0

    .line 102
    .end local v1    # "overlayFile":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 103
    .local v1, "ignored":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 93
    .end local v1    # "ignored":Ljava/lang/Exception;
    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public installRoot()Ljava/io/File;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->installRoot:Ljava/io/File;

    return-object v0
.end method

.method public provides(Ljava/lang/String;)Z
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    move-result-object v0

    .line 51
    .local v0, "entry":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-static {v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->isWorldGroup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public read(Ljava/lang/String;)[B
    .locals 8
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    move-result-object v0

    .line 61
    .local v0, "baseEntry":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-static {v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->isWorldGroup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->isBaseOnly(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    move-result-object v1

    .line 67
    .local v1, "overlayEntry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->tryReadOverlay(Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;)[B

    move-result-object v2

    .line 68
    .local v2, "overlayData":[B
    if-eqz v2, :cond_0

    return-object v2

    .line 71
    .end local v1    # "overlayEntry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .end local v2    # "overlayData":[B
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->installRoot:Ljava/io/File;

    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->sourceProfile:Ljava/lang/String;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    iget v4, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    iget-object v5, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expectedForInstall(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v1

    .line 73
    .local v1, "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->installRoot:Ljava/io/File;

    iget-object v3, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    const-string v4, "ROM world-media path escapes active generation"

    invoke-static {v2, v3, v4}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->safeChild(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 75
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 79
    iget v3, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    const-string v4, "Installed ROM world-media asset"

    invoke-static {v2, v3, v4}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->readExactly(Ljava/io/File;ILjava/lang/String;)[B

    move-result-object v3

    .line 80
    .local v3, "data":[B
    invoke-static {v3}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->sha256([B)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "actual":Ljava/lang/String;
    iget-object v5, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    return-object v3

    .line 82
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Installed ROM world-media asset fingerprint mismatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    .end local v3    # "data":[B
    .end local v4    # "actual":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed ROM world-media asset is missing or has wrong size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v1    # "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROM world-media asset is not declared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public usesOverlay(Ljava/lang/String;)Z
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->isBaseOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->overlay:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 55
    :cond_2
    :goto_0
    return v1
.end method
