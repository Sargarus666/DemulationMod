.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;,
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;,
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;
    }
.end annotation


# static fields
.field public static final ACTIVE_FILE:Ljava/lang/String; = "ACTIVE"

.field public static final FORMAT_VERSION:I = 0x1

.field public static final GROUP_TACTICAL_SPRITES:Ljava/lang/String; = "TACTICAL_SPRITES"

.field public static final GROUP_TERRAIN_RADAR:Ljava/lang/String; = "WORLD_TERRAIN_RADAR"

.field public static final MANIFEST_FILE:Ljava/lang/String; = "overlay.properties"

.field public static final READY_FILE:Ljava/lang/String; = "READY"

.field public static final ROOT_DIR:Ljava/lang/String; = "rom_graphics_overlays"


# direct methods
.method static bridge synthetic -$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 353
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static cleanupInactive(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "keep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, "children":[Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 275
    .local v3, "child":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ACTIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 277
    :cond_1
    const-string v5, "generation-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".staging-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 278
    const-string v5, "ACTIVE.tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ACTIVE.bak"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 279
    :cond_2
    invoke-static {v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V

    .line 274
    .end local v3    # "child":Ljava/io/File;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_4
    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 258
    if-nez p0, :cond_0

    return-void

    .line 259
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    :goto_0
    return-void
.end method

.method public static commit(Landroid/content/Context;Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "request"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    move-object/from16 v0, p2

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    if-eqz v0, :cond_11

    .line 182
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 183
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create overlay root"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 185
    .local v2, "stage":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "rootPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 190
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 191
    .local v4, "props":Ljava/util/Properties;
    const-string v5, "format.version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v5, "source.sha256"

    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const-string v5, "source.profile"

    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v5, "source.family"

    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->layoutFamily:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v5, "group.terrain_radar"

    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->terrainRadarState:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v5, "group.tactical_sprites"

    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->tacticalSpritesState:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    iget-object v5, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->entries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "asset.count"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const/4 v5, 0x0

    .line 199
    .local v5, "index":I
    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->entries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 200
    .local v7, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    if-eqz v7, :cond_4

    .line 201
    iget-object v8, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v2, v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 202
    .local v8, "asset":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    iget v11, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 205
    iget v9, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    invoke-static {v8, v9}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->readExactly(Ljava/io/File;I)[B

    move-result-object v9

    .line 206
    .local v9, "data":[B
    invoke-static {v9}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->sha256([B)Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "actual":Ljava/lang/String;
    iget-object v11, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->sha256:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "asset."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, "prefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "path"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "group"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "length"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sha256"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    nop

    .end local v7    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .end local v8    # "asset":Ljava/io/File;
    .end local v9    # "data":[B
    .end local v10    # "actual":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 216
    goto/16 :goto_1

    .line 208
    .restart local v7    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .restart local v8    # "asset":Ljava/io/File;
    .restart local v9    # "data":[B
    .restart local v10    # "actual":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Staged overlay hash changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    .end local v9    # "data":[B
    .end local v10    # "actual":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Staged overlay asset is unavailable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    .end local v8    # "asset":Ljava/io/File;
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Null overlay entry"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    .end local v7    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    :cond_5
    new-instance v6, Ljava/io/File;

    const-string v7, "overlay.properties"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;)V

    .line 218
    new-instance v6, Ljava/io/File;

    const-string v7, "READY"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "READY\n"

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->writeTextSynced(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-lt v6, v7, :cond_6

    .line 221
    iget-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;->sourceSha256:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    const-string v6, "unknown"

    .line 222
    .local v6, "shaPrefix":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generation-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "generationName":Ljava/lang/String;
    invoke-static {v1, v7}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 224
    .local v8, "generation":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V

    .line 225
    :cond_7
    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 226
    invoke-static {v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v9

    .line 228
    .local v9, "validated":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    const-string v10, "ACTIVE.tmp"

    invoke-static {v1, v10}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 229
    .local v10, "activeTmp":Ljava/io/File;
    const-string v11, "ACTIVE.bak"

    invoke-static {v1, v11}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 230
    .local v11, "activeBak":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->writeTextSynced(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    const-string v12, "ACTIVE"

    invoke-static {v1, v12}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 232
    .local v12, "active":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    .line 233
    :cond_8
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Could not clear stale overlay ACTIVE backup"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 235
    :cond_9
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v13

    .line 236
    .local v13, "hadActive":Z
    if-eqz v13, :cond_b

    invoke-virtual {v12, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_4

    .line 237
    :cond_a
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Could not preserve previous overlay ACTIVE pointer"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 239
    :cond_b
    :goto_4
    invoke-virtual {v10, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 240
    if-eqz v13, :cond_c

    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 241
    :cond_c
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Could not activate graphics overlay generation"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 243
    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    .line 244
    :cond_e
    invoke-static {v1, v7}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->cleanupInactive(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    return-object v9

    .line 225
    .end local v9    # "validated":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .end local v10    # "activeTmp":Ljava/io/File;
    .end local v11    # "activeBak":Ljava/io/File;
    .end local v12    # "active":Ljava/io/File;
    .end local v13    # "hadActive":Z
    :cond_f
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Could not publish graphics overlay generation"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 187
    .end local v4    # "props":Ljava/util/Properties;
    .end local v5    # "index":I
    .end local v6    # "shaPrefix":Ljava/lang/String;
    .end local v7    # "generationName":Ljava/lang/String;
    .end local v8    # "generation":Ljava/io/File;
    :cond_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Overlay staging is outside the overlay root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "stage":Ljava/io/File;
    .end local v3    # "rootPath":Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Graphics overlay commit arguments are unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createStaging(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 250
    .local v0, "root":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not create overlay root"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".staging-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 252
    .local v1, "stage":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V

    .line 253
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create overlay staging"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_4
    :goto_1
    return-object v1
.end method

.method static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 369
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 371
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 372
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    .end local v0    # "children":[Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
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

    .line 375
    :cond_4
    :goto_1
    return-void

    .line 368
    :cond_5
    :goto_2
    return-void
.end method

.method public static entryForFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 268
    .local v1, "length":I
    new-instance v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->readExactly(Ljava/io/File;I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->sha256([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, p2, v1, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 265
    .end local v1    # "length":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay asset is unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadActive(Landroid/content/Context;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 111
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "ACTIVE"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v2, "active":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 116
    :cond_1
    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->readSmallText(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "generation":Ljava/lang/String;
    invoke-static {v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeGenerationName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v0

    .line 118
    :cond_2
    invoke-static {v1, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 119
    .local v4, "dir":Ljava/io/File;
    invoke-static {v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "active":Ljava/io/File;
    .end local v3    # "generation":Ljava/lang/String;
    .end local v4    # "dir":Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 121
    .local v1, "ignored":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .line 349
    if-nez p0, :cond_0

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 350
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static readExactly(Ljava/io/File;I)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 309
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 310
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 311
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 313
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-ltz v4, :cond_2

    .line 314
    if-nez v5, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    add-int/2addr v3, v5

    .line 316
    if-gt v3, p1, :cond_1

    .line 317
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 316
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Overlay asset grew while reading"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v4

    .line 319
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :cond_2
    if-ne v3, p1, :cond_3

    .line 320
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 320
    return-object v4

    .line 319
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Overlay asset changed while reading"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v5    # "n":I
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
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

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
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

.method private static readSmallText(Ljava/io/File;I)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->readExactly(Ljava/io/File;I)[B

    move-result-object v0

    .line 327
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 325
    .end local v0    # "data":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Overlay pointer is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static root(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rom_graphics_overlays"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
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

    .line 294
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, "canonicalRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 299
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "rp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "cp":Ljava/lang/String;
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

    .line 302
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Graphics overlay path escapes root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_1
    :goto_0
    return-object v1

    .line 295
    .end local v0    # "canonicalRoot":Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "rp":Ljava/lang/String;
    .end local v3    # "cp":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid overlay path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeGenerationName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string v1, "generation-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x60

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 288
    .local v2, "c":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_2
    return v0

    .line 286
    .end local v2    # "c":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_5
    :goto_1
    return v0
.end method

.method static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 358
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 359
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
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

    .line 361
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 362
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static validateGeneration(Ljava/io/File;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .locals 18
    .param p0, "generationRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 130
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 131
    .local v2, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    new-instance v0, Ljava/io/File;

    const-string v1, "overlay.properties"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 135
    .local v9, "manifestFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 136
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v10, v0

    .line 137
    .local v10, "props":Ljava/util/Properties;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v10, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    .end local v1    # "in":Ljava/io/InputStream;
    const-string v0, "format.version"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "version":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    .line 140
    const-string v3, "asset.count"

    invoke-virtual {v10, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->parseInt(Ljava/lang/String;I)I

    move-result v11

    .line 141
    .local v11, "count":I
    if-ltz v11, :cond_8

    const/16 v3, 0x40

    if-gt v11, v3, :cond_8

    .line 143
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .local v8, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_7

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asset."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "prefix":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "group"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "group":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "length"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 149
    .local v12, "length":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "sha256"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "expectedSha":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    if-ltz v12, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v3, :cond_6

    .line 151
    const-string v14, "WORLD_TERRAIN_RADAR"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "TACTICAL_SPRITES"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 154
    :cond_1
    :goto_1
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 155
    invoke-static {v2, v6}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 156
    .local v14, "asset":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object/from16 v17, v2

    .end local v2    # "root":Ljava/io/File;
    .local v17, "root":Ljava/io/File;
    int-to-long v1, v12

    cmp-long v1, v15, v1

    if-nez v1, :cond_4

    .line 159
    invoke-static {v14, v12}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->readExactly(Ljava/io/File;I)[B

    move-result-object v1

    .line 160
    .local v1, "data":[B
    invoke-static {v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->sha256([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    new-instance v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    invoke-direct {v2, v6, v7, v12, v13}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v1    # "data":[B
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "group":Ljava/lang/String;
    .end local v12    # "length":I
    .end local v13    # "expectedSha":Ljava/lang/String;
    .end local v14    # "asset":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    const/4 v1, -0x1

    goto/16 :goto_0

    .line 161
    .restart local v1    # "data":[B
    .restart local v5    # "prefix":Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "group":Ljava/lang/String;
    .restart local v12    # "length":I
    .restart local v13    # "expectedSha":Ljava/lang/String;
    .restart local v14    # "asset":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Graphics overlay asset fingerprint mismatch: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v1    # "data":[B
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_3
    move-object/from16 v17, v2

    .line 157
    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Graphics overlay asset is missing or has wrong length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v14    # "asset":Ljava/io/File;
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate graphics overlay path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_6
    move-object/from16 v17, v2

    .line 152
    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    :goto_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid graphics overlay manifest entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "group":Ljava/lang/String;
    .end local v12    # "length":I
    .end local v13    # "expectedSha":Ljava/lang/String;
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_7
    move-object/from16 v17, v2

    .line 165
    .end local v2    # "root":Ljava/io/File;
    .end local v4    # "i":I
    .restart local v17    # "root":Ljava/io/File;
    new-instance v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    .line 166
    const-string v2, "source.sha256"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    const-string v2, "source.profile"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    const-string v2, "source.family"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    const-string v2, "group.terrain_radar"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    const-string v2, "group.tactical_sprites"

    invoke-virtual {v10, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, v17

    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    return-object v1

    .line 141
    .end local v8    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_8
    move-object/from16 v17, v2

    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid graphics overlay asset count"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v11    # "count":I
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_9
    move-object/from16 v17, v2

    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported graphics overlay format"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0    # "version":I
    .end local v17    # "root":Ljava/io/File;
    .local v1, "in":Ljava/io/InputStream;
    .restart local v2    # "root":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v2    # "root":Ljava/io/File;
    .restart local v17    # "root":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2

    .line 135
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v10    # "props":Ljava/util/Properties;
    .end local v17    # "root":Ljava/io/File;
    .restart local v2    # "root":Ljava/io/File;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Graphics overlay manifest is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    .end local v9    # "manifestFile":Ljava/io/File;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Graphics overlay READY marker is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v2    # "root":Ljava/io/File;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Graphics overlay generation is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 341
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not create overlay directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 343
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v2, "Demulation graphics overlay v1"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 346
    .end local v1    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 342
    .restart local v1    # "out":Ljava/io/FileOutputStream;
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

.method private static writeTextSynced(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 332
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not create overlay directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 335
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 337
    .end local v1    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 333
    .restart local v1    # "out":Ljava/io/FileOutputStream;
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
