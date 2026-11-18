.class public final Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;
.super Ljava/lang/Object;
.source "RomAssetBundleAtomicInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    }
.end annotation


# static fields
.field public static final BUNDLE_STAGING_DIR:Ljava/lang/String; = "runtime_frontend_bundle_v1"

.field private static final GENERATION_PREFIX_V10:Ljava/lang/String; = "runtime_frontend_bundle_v1-v10-"

.field private static final GENERATION_PREFIX_V11:Ljava/lang/String; = "runtime_frontend_bundle_v1-v11-"

.field private static final GENERATION_PREFIX_V12:Ljava/lang/String; = "runtime_frontend_bundle_v1-v12-"

.field private static final GENERATION_PREFIX_V13:Ljava/lang/String; = "runtime_frontend_bundle_v1-v13-"

.field private static final GENERATION_PREFIX_V14:Ljava/lang/String; = "runtime_frontend_bundle_v1-v14-"

.field private static final GENERATION_PREFIX_V15:Ljava/lang/String; = "runtime_frontend_bundle_v1-v15-"

.field private static final GENERATION_PREFIX_V16:Ljava/lang/String; = "runtime_frontend_bundle_v1-v16-"

.field private static final GENERATION_PREFIX_V17:Ljava/lang/String; = "runtime_frontend_bundle_v1-v17-"

.field private static final GENERATION_PREFIX_V18:Ljava/lang/String; = "runtime_frontend_bundle_v1-v18-"

.field private static final GENERATION_PREFIX_V2:Ljava/lang/String; = "runtime_frontend_bundle_v1-"

.field private static final GENERATION_PREFIX_V3:Ljava/lang/String; = "runtime_frontend_bundle_v1-v3-"

.field private static final GENERATION_PREFIX_V4:Ljava/lang/String; = "runtime_frontend_bundle_v1-v4-"

.field private static final GENERATION_PREFIX_V5:Ljava/lang/String; = "runtime_frontend_bundle_v1-v5-"

.field private static final GENERATION_PREFIX_V6:Ljava/lang/String; = "runtime_frontend_bundle_v1-v6-"

.field private static final GENERATION_PREFIX_V7:Ljava/lang/String; = "runtime_frontend_bundle_v1-v7-"

.field private static final GENERATION_PREFIX_V8:Ljava/lang/String; = "runtime_frontend_bundle_v1-v8-"

.field private static final GENERATION_PREFIX_V9:Ljava/lang/String; = "runtime_frontend_bundle_v1-v9-"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
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

    .line 904
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 907
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 908
    return-void

    .line 905
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe bundle manifest property"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/io/File;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const/4 v0, 0x0

    .line 622
    .local v0, "required":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    :cond_0
    goto :goto_0

    .line 623
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 624
    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 625
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 626
    .restart local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 627
    :cond_3
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 628
    .local v3, "src":Ljava/io/File;
    iget-object v4, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 629
    .local v4, "dst":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 630
    .local v5, "parent":Ljava/io/File;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 631
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v6, "Could not create bundle asset directory"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_5
    :goto_3
    invoke-static {v3, v4}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copySynced(Ljava/io/File;Ljava/io/File;)V

    .line 634
    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v3    # "src":Ljava/io/File;
    .end local v4    # "dst":Ljava/io/File;
    .end local v5    # "parent":Ljava/io/File;
    goto :goto_2

    .line 635
    :cond_6
    return-void

    .line 624
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source group unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static copySynced(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 895
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 897
    .local v2, "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_1

    if-lez v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 898
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .end local v4    # "n":I
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 900
    .end local v1    # "in":Ljava/io/InputStream;
    return-void

    .line 895
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":[B
    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method private static countGroup(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 834
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const/4 v0, 0x0

    .line 835
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    :cond_1
    return v0
.end method

.method private static deleteQuietly(Ljava/io/File;)V
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 954
    :cond_0
    return-void
.end method

.method private static deriveManifestBoundEntries(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 21
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "core"    # Ljava/io/File;
    .param p3, "generic"    # Ljava/io/File;
    .param p4, "direct"    # Ljava/io/File;
    .param p5, "mentat"    # Ljava/io/File;
    .param p6, "mission"    # Ljava/io/File;
    .param p7, "tutorial"    # Ljava/io/File;
    .param p8, "missionResult"    # Ljava/io/File;
    .param p9, "ending"    # Ljava/io/File;
    .param p10, "worldTerrain"    # Ljava/io/File;
    .param p11, "worldTactical"    # Ljava/io/File;
    .param p12, "audio"    # Ljava/io/File;
    .param p13, "content"    # Ljava/io/File;
    .param p14, "worldData"    # Ljava/io/File;
    .param p15, "gameplayData"    # Ljava/io/File;
    .param p16, "nativeData"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    .local p0, "declared":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 541
    .local v2, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->manifestBoundAsset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    goto :goto_0

    .line 545
    :cond_0
    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    invoke-static/range {v5 .. v20}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sourceRoot(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 547
    .local v3, "source":Ljava/io/File;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 549
    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 550
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    .line 552
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v12, v6

    .line 553
    .local v12, "length":I
    const-string v6, "tactical/classic_purchase_icons.bin"

    iget-object v7, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 554
    iget v6, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    if-ne v12, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 555
    :cond_2
    iget-object v6, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    iget v7, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    invoke-static {v6, v7, v12}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validSourceBoundLength(Ljava/lang/String;II)Z

    move-result v6

    :goto_1
    nop

    .line 556
    .local v6, "lengthOk":Z
    if-eqz v6, :cond_3

    .line 558
    new-instance v8, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    iget-object v9, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    iget-object v10, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v3    # "source":Ljava/io/File;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "lengthOk":Z
    .end local v12    # "length":I
    goto/16 :goto_0

    .line 557
    .restart local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .restart local v3    # "source":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v6    # "lengthOk":Z
    .restart local v12    # "length":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source-bound asset shape mismatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    .end local v6    # "lengthOk":Z
    .end local v12    # "length":I
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Source-bound asset is missing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    .end local v5    # "f":Ljava/io/File;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source-bound staging group is unavailable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 560
    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v3    # "source":Ljava/io/File;
    :cond_6
    move-object/from16 v4, p1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static digest()Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 943
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static entriesForVersion(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "version"    # I
    .param p1, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->legacyEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 770
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->missionCampaignEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 771
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->mediaEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 772
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->worldEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 773
    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->gameDataFreeEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 774
    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->audioEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 775
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->contentV8Entries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 776
    :cond_6
    const/16 v0, 0x9

    if-ne p0, v0, :cond_7

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->contentV9Entries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 777
    :cond_7
    const/16 v0, 0xa

    if-ne p0, v0, :cond_8

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->contentV10Entries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 778
    :cond_8
    const/16 v0, 0xb

    if-ne p0, v0, :cond_9

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->worldDataEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 779
    :cond_9
    const/16 v0, 0xc

    if-ne p0, v0, :cond_a

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->gameplayDataEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 780
    :cond_a
    const/16 v0, 0xd

    if-ne p0, v0, :cond_b

    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleManifest;->nativeDataEntries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 781
    :cond_b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_c

    .line 782
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->officialRegionEntriesForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 783
    :cond_c
    const/16 v0, 0xf

    if-ne p0, v0, :cond_d

    .line 784
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->classicPurchaseEntriesForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 785
    :cond_d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_e

    .line 786
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->classicEverywhereEntriesForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 787
    :cond_e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_f

    .line 788
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->classicDetailEntriesForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 789
    :cond_f
    const/16 v0, 0x12

    if-ne p0, v0, :cond_10

    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleManifest;->entriesForProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 790
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bundle format version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static generationName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "version"    # I
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "source":Ljava/lang/String;
    :goto_0
    const-string v1, "[0-9a-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 848
    if-nez p2, :cond_1

    const-string v1, "unknown"

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 848
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256Bytes([B)Ljava/lang/String;

    move-result-object v0

    .line 851
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const-string v1, "runtime_frontend_bundle_v1-"

    goto/16 :goto_2

    .line 852
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    const-string v1, "runtime_frontend_bundle_v1-v3-"

    goto/16 :goto_2

    .line 853
    :cond_4
    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    const-string v1, "runtime_frontend_bundle_v1-v4-"

    goto/16 :goto_2

    .line 854
    :cond_5
    const/4 v1, 0x5

    if-ne p0, v1, :cond_6

    const-string v1, "runtime_frontend_bundle_v1-v5-"

    goto :goto_2

    .line 855
    :cond_6
    const/4 v1, 0x6

    if-ne p0, v1, :cond_7

    const-string v1, "runtime_frontend_bundle_v1-v6-"

    goto :goto_2

    .line 856
    :cond_7
    const/4 v1, 0x7

    if-ne p0, v1, :cond_8

    const-string v1, "runtime_frontend_bundle_v1-v7-"

    goto :goto_2

    .line 857
    :cond_8
    const/16 v1, 0x8

    if-ne p0, v1, :cond_9

    const-string v1, "runtime_frontend_bundle_v1-v8-"

    goto :goto_2

    .line 858
    :cond_9
    const/16 v1, 0x9

    if-ne p0, v1, :cond_a

    const-string v1, "runtime_frontend_bundle_v1-v9-"

    goto :goto_2

    .line 859
    :cond_a
    const/16 v1, 0xa

    if-ne p0, v1, :cond_b

    const-string v1, "runtime_frontend_bundle_v1-v10-"

    goto :goto_2

    .line 860
    :cond_b
    const/16 v1, 0xb

    if-ne p0, v1, :cond_c

    const-string v1, "runtime_frontend_bundle_v1-v11-"

    goto :goto_2

    .line 861
    :cond_c
    const/16 v1, 0xc

    if-ne p0, v1, :cond_d

    const-string v1, "runtime_frontend_bundle_v1-v12-"

    goto :goto_2

    .line 862
    :cond_d
    const/16 v1, 0xd

    if-ne p0, v1, :cond_e

    const-string v1, "runtime_frontend_bundle_v1-v13-"

    goto :goto_2

    .line 863
    :cond_e
    const/16 v1, 0xe

    if-ne p0, v1, :cond_f

    const-string v1, "runtime_frontend_bundle_v1-v14-"

    goto :goto_2

    .line 864
    :cond_f
    const/16 v1, 0xf

    if-ne p0, v1, :cond_10

    const-string v1, "runtime_frontend_bundle_v1-v15-"

    goto :goto_2

    .line 865
    :cond_10
    const/16 v1, 0x10

    if-ne p0, v1, :cond_11

    const-string v1, "runtime_frontend_bundle_v1-v16-"

    goto :goto_2

    .line 866
    :cond_11
    const/16 v1, 0x11

    if-ne p0, v1, :cond_12

    const-string v1, "runtime_frontend_bundle_v1-v17-"

    goto :goto_2

    .line 867
    :cond_12
    const-string v1, "runtime_frontend_bundle_v1-v18-"

    :goto_2
    nop

    .line 868
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static hasManifestBoundEntries(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 527
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 528
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 529
    .local v2, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->manifestBoundAsset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    :cond_1
    goto :goto_0

    .line 530
    :cond_2
    return v0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 947
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "a":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 948
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static install(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "sourceSha256"    # Ljava/lang/String;
    .param p12, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static install(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "sourceSha256"    # Ljava/lang/String;
    .param p10, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static install(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "sourceSha256"    # Ljava/lang/String;
    .param p7, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installAudioV7(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "sourceSha256"    # Ljava/lang/String;
    .param p13, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x7

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installContentV10(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "sourceSha256"    # Ljava/lang/String;
    .param p14, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installContentV8(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "sourceSha256"    # Ljava/lang/String;
    .param p14, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0x8

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installContentV9(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "sourceSha256"    # Ljava/lang/String;
    .param p14, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installGameplayDataV12(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "sourceSha256"    # Ljava/lang/String;
    .param p16, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/16 v2, 0xc

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installLegacyV2(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "sourceSha256"    # Ljava/lang/String;
    .param p6, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installNativeDataV13(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "nativeDataRoot"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/16 v2, 0xd

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installRegionAwareV14(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "nativeDataRoot"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/16 v2, 0xe

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installRegionAwareV15(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "nativeDataRoot"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/16 v2, 0xf

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installRegionAwareV16(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "nativeDataRoot"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/16 v2, 0x10

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installRegionAwareV17(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "gameplayDataRoot"    # Ljava/io/File;
    .param p15, "nativeDataRoot"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/16 v2, 0x12

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method private static installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 29
    .param p0, "root"    # Ljava/io/File;
    .param p1, "version"    # I
    .param p2, "core"    # Ljava/io/File;
    .param p3, "generic"    # Ljava/io/File;
    .param p4, "direct"    # Ljava/io/File;
    .param p5, "mentat"    # Ljava/io/File;
    .param p6, "mission"    # Ljava/io/File;
    .param p7, "tutorial"    # Ljava/io/File;
    .param p8, "missionResult"    # Ljava/io/File;
    .param p9, "ending"    # Ljava/io/File;
    .param p10, "worldTerrain"    # Ljava/io/File;
    .param p11, "worldTactical"    # Ljava/io/File;
    .param p12, "audio"    # Ljava/io/File;
    .param p13, "content"    # Ljava/io/File;
    .param p14, "worldData"    # Ljava/io/File;
    .param p15, "gameplayData"    # Ljava/io/File;
    .param p16, "nativeData"    # Ljava/io/File;
    .param p17, "sourceSha256"    # Ljava/lang/String;
    .param p18, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v5, p17

    move-object/from16 v6, p18

    const-string v0, "manifest.properties"

    if-eqz v1, :cond_d

    .line 299
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not create ROM asset root"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    :goto_0
    invoke-static {v2, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->entriesForVersion(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 301
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const/16 v4, 0xe

    if-eq v2, v4, :cond_3

    const/16 v4, 0xf

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x11

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v6

    move-object v6, v3

    goto :goto_2

    .line 306
    :cond_3
    :goto_1
    invoke-static {v3, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->hasManifestBoundEntries(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    invoke-static {v6, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->requireExactProfileIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move-object/from16 v21, p15

    move-object/from16 v22, p16

    move-object v7, v6

    move-object v6, v3

    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    invoke-static/range {v6 .. v22}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deriveManifestBoundEntries(Ljava/util/List;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    move-object v4, v7

    move-object v7, v3

    .end local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    goto :goto_3

    .line 306
    :cond_4
    move-object v4, v6

    move-object v6, v3

    .line 311
    .end local v3    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    :goto_2
    move-object v7, v6

    .end local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    :goto_3
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v21, p16

    move-object v6, v7

    move-object/from16 v7, p2

    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    invoke-static/range {v6 .. v21}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->verifySourceTrees(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 313
    move-object v7, v6

    .end local v6    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    new-instance v3, Ljava/io/File;

    const-string v6, "_staging"

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v3

    .line 314
    .local v8, "stagingParent":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "runtime_frontend_bundle_v1"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v3

    .line 315
    .local v10, "bundleStaging":Ljava/io/File;
    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 316
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 317
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not create bundle staging directory"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_6
    :goto_4
    :try_start_0
    const-string v3, "runtime_bootstrap_core_v1"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_18

    move-object/from16 v11, p2

    :try_start_1
    invoke-static {v7, v11, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 322
    const-string v3, "frontend_generic_graphics_v1"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_16

    move-object/from16 v12, p3

    :try_start_2
    invoke-static {v7, v12, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 323
    const-string v3, "frontend_direct_v1"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_14

    move-object/from16 v13, p4

    :try_start_3
    invoke-static {v7, v13, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 324
    const-string v3, "frontend_mentat_v1"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_12

    move-object/from16 v14, p5

    :try_start_4
    invoke-static {v7, v14, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 325
    const-string v3, "mission_campaign_transition_v1"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_10

    move-object/from16 v15, p6

    :try_start_5
    invoke-static {v7, v15, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 326
    const-string v3, "tutorial_original_v1"

    move-object/from16 v6, p7

    invoke-static {v7, v6, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 327
    const-string v3, "mission_result_graphics_v1"
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e

    move-object/from16 v16, v8

    move-object/from16 v8, p8

    .end local v8    # "stagingParent":Ljava/io/File;
    .local v16, "stagingParent":Ljava/io/File;
    :try_start_6
    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 328
    const-string v3, "ending_graphics_v1"

    move-object/from16 v8, p9

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 329
    const-string v3, "world_terrain_radar_v1"

    move-object/from16 v8, p10

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 330
    const-string v3, "world_tactical_sprites_v1"

    move-object/from16 v8, p11

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 331
    const-string v3, "original_audio_ready_v1"

    move-object/from16 v8, p12

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 332
    const-string v3, "original_content_ready_v1"

    move-object/from16 v8, p13

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 333
    const-string v3, "original_world_data_v1"

    move-object/from16 v8, p14

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 334
    const-string v3, "original_gameplay_data_v1"

    move-object/from16 v8, p15

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 335
    const-string v3, "original_native_pure_data_v1"

    move-object/from16 v8, p16

    invoke-static {v7, v8, v10, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->copyGroup(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 336
    invoke-static {v10, v7}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->verifyBundleTree(Ljava/io/File;Ljava/util/List;)V

    .line 338
    invoke-static {v2, v5, v4}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->generationName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c

    .line 339
    .local v3, "generation":Ljava/lang/String;
    :try_start_7
    new-instance v2, Ljava/io/File;

    const-string v4, "installs"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v2, "installs":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    if-nez v4, :cond_8

    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_7

    .line 341
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Could not create ROM asset install directory"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v10    # "bundleStaging":Ljava/io/File;
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "version":I
    .end local p2    # "core":Ljava/io/File;
    .end local p3    # "generic":Ljava/io/File;
    .end local p4    # "direct":Ljava/io/File;
    .end local p5    # "mentat":Ljava/io/File;
    .end local p6    # "mission":Ljava/io/File;
    .end local p7    # "tutorial":Ljava/io/File;
    .end local p8    # "missionResult":Ljava/io/File;
    .end local p9    # "ending":Ljava/io/File;
    .end local p10    # "worldTerrain":Ljava/io/File;
    .end local p11    # "worldTactical":Ljava/io/File;
    .end local p12    # "audio":Ljava/io/File;
    .end local p13    # "content":Ljava/io/File;
    .end local p14    # "worldData":Ljava/io/File;
    .end local p15    # "gameplayData":Ljava/io/File;
    .end local p16    # "nativeData":Ljava/io/File;
    .end local p17    # "sourceSha256":Ljava/lang/String;
    .end local p18    # "sourceProfile":Ljava/lang/String;
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 384
    .end local v2    # "installs":Ljava/io/File;
    .end local v3    # "generation":Ljava/lang/String;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v10    # "bundleStaging":Ljava/io/File;
    .restart local v16    # "stagingParent":Ljava/io/File;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "version":I
    .restart local p2    # "core":Ljava/io/File;
    .restart local p3    # "generic":Ljava/io/File;
    .restart local p4    # "direct":Ljava/io/File;
    .restart local p5    # "mentat":Ljava/io/File;
    .restart local p6    # "mission":Ljava/io/File;
    .restart local p7    # "tutorial":Ljava/io/File;
    .restart local p8    # "missionResult":Ljava/io/File;
    .restart local p9    # "ending":Ljava/io/File;
    .restart local p10    # "worldTerrain":Ljava/io/File;
    .restart local p11    # "worldTactical":Ljava/io/File;
    .restart local p12    # "audio":Ljava/io/File;
    .restart local p13    # "content":Ljava/io/File;
    .restart local p14    # "worldData":Ljava/io/File;
    .restart local p15    # "gameplayData":Ljava/io/File;
    .restart local p16    # "nativeData":Ljava/io/File;
    .restart local p17    # "sourceSha256":Ljava/lang/String;
    .restart local p18    # "sourceProfile":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v2, p1

    :goto_5
    move-object/from16 v28, v10

    goto/16 :goto_11

    .line 381
    :catch_1
    move-exception v0

    move/from16 v2, p1

    :goto_6
    move-object/from16 v28, v10

    goto/16 :goto_18

    .line 343
    .restart local v2    # "installs":Ljava/io/File;
    .restart local v3    # "generation":Ljava/lang/String;
    :cond_8
    :goto_7
    :try_start_9
    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeDirectChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 344
    .local v19, "finalRoot":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a

    .line 345
    .local v4, "stagedManifest":Ljava/io/File;
    move-object/from16 v6, p18

    move-object/from16 v26, v2

    move-object v2, v4

    move-object v4, v3

    move/from16 v3, p1

    .end local v3    # "generation":Ljava/lang/String;
    .local v2, "stagedManifest":Ljava/io/File;
    .local v4, "generation":Ljava/lang/String;
    .local v26, "installs":Ljava/io/File;
    :try_start_a
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->writeInstallManifest(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v27, v2

    move v2, v3

    move-object v3, v4

    .line 346
    .end local v2    # "stagedManifest":Ljava/io/File;
    .end local v4    # "generation":Ljava/lang/String;
    .restart local v3    # "generation":Ljava/lang/String;
    .local v27, "stagedManifest":Ljava/io/File;
    :try_start_b
    invoke-static/range {v27 .. v27}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "manifestSha":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    if-eqz v5, :cond_a

    .line 349
    move-object/from16 v5, v19

    .end local v19    # "finalRoot":Ljava/io/File;
    .local v5, "finalRoot":Ljava/io/File;
    :try_start_c
    invoke-static {v5, v3, v4, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v6

    .line 351
    .local v6, "existing":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v1, v6, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v1, :cond_9

    .line 352
    invoke-static {v10}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    goto :goto_8

    .line 354
    :cond_9
    invoke-static {v5}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 355
    invoke-static {v10, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->publishGeneration(Ljava/io/File;Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 357
    .end local v6    # "existing":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    :goto_8
    goto :goto_9

    .line 384
    .end local v3    # "generation":Ljava/lang/String;
    .end local v4    # "manifestSha":Ljava/lang/String;
    .end local v5    # "finalRoot":Ljava/io/File;
    .end local v26    # "installs":Ljava/io/File;
    .end local v27    # "stagedManifest":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    .line 381
    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    .line 358
    .restart local v3    # "generation":Ljava/lang/String;
    .restart local v4    # "manifestSha":Ljava/lang/String;
    .restart local v19    # "finalRoot":Ljava/io/File;
    .restart local v26    # "installs":Ljava/io/File;
    .restart local v27    # "stagedManifest":Ljava/io/File;
    :cond_a
    move-object/from16 v5, v19

    .end local v19    # "finalRoot":Ljava/io/File;
    .restart local v5    # "finalRoot":Ljava/io/File;
    :try_start_d
    invoke-static {v10, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->publishGeneration(Ljava/io/File;Ljava/io/File;)V

    .line 361
    :goto_9
    invoke-static {v5, v3, v4, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    .line 363
    .local v1, "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v6, v1, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6

    if-eqz v6, :cond_c

    .line 367
    move-object/from16 v6, p18

    move-object v8, v5

    move-object/from16 v28, v10

    move-object/from16 v5, p17

    move-object v10, v1

    move-object/from16 v1, p0

    .end local v1    # "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v5    # "finalRoot":Ljava/io/File;
    .local v8, "finalRoot":Ljava/io/File;
    .local v10, "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .local v28, "bundleStaging":Ljava/io/File;
    :try_start_e
    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->publishReady(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 368
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->validateReady(Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    .line 369
    .local v5, "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    iget-boolean v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    if-eqz v6, :cond_b

    iget-object v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    if-ne v6, v2, :cond_b

    .line 375
    new-instance v6, Ljava/io/File;

    const-string v9, "READY.prev"

    invoke-direct {v6, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 376
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupStaging(Ljava/io/File;)V

    .line 377
    invoke-static {v1, v3}, Lcom/ahsim/demulation/RomAssetAtomicInstaller;->cleanupCoreGenerations(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    new-instance v17, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-static {v7}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->payloadBytes(Ljava/util/List;)J

    move-result-wide v22

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v24, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v8

    .end local v3    # "generation":Ljava/lang/String;
    .end local v4    # "manifestSha":Ljava/lang/String;
    .end local v8    # "finalRoot":Ljava/io/File;
    .local v18, "generation":Ljava/lang/String;
    .restart local v19    # "finalRoot":Ljava/io/File;
    .local v24, "manifestSha":Ljava/lang/String;
    invoke-direct/range {v17 .. v25}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller-IA;)V

    .line 378
    .end local v18    # "generation":Ljava/lang/String;
    .end local v24    # "manifestSha":Ljava/lang/String;
    .restart local v3    # "generation":Ljava/lang/String;
    .restart local v4    # "manifestSha":Ljava/lang/String;
    return-object v17

    .line 369
    .end local v19    # "finalRoot":Ljava/io/File;
    .restart local v8    # "finalRoot":Ljava/io/File;
    :cond_b
    move-object/from16 v19, v8

    .line 371
    .end local v8    # "finalRoot":Ljava/io/File;
    .restart local v19    # "finalRoot":Ljava/io/File;
    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->rollbackReady(Ljava/io/File;)V

    .line 372
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bundle READY publication failed verification: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local v28    # "bundleStaging":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "version":I
    .end local p2    # "core":Ljava/io/File;
    .end local p3    # "generic":Ljava/io/File;
    .end local p4    # "direct":Ljava/io/File;
    .end local p5    # "mentat":Ljava/io/File;
    .end local p6    # "mission":Ljava/io/File;
    .end local p7    # "tutorial":Ljava/io/File;
    .end local p8    # "missionResult":Ljava/io/File;
    .end local p9    # "ending":Ljava/io/File;
    .end local p10    # "worldTerrain":Ljava/io/File;
    .end local p11    # "worldTactical":Ljava/io/File;
    .end local p12    # "audio":Ljava/io/File;
    .end local p13    # "content":Ljava/io/File;
    .end local p14    # "worldData":Ljava/io/File;
    .end local p15    # "gameplayData":Ljava/io/File;
    .end local p16    # "nativeData":Ljava/io/File;
    .end local p17    # "sourceSha256":Ljava/lang/String;
    .end local p18    # "sourceProfile":Ljava/lang/String;
    throw v0

    .line 384
    .end local v3    # "generation":Ljava/lang/String;
    .end local v4    # "manifestSha":Ljava/lang/String;
    .end local v5    # "ready":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v10    # "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v19    # "finalRoot":Ljava/io/File;
    .end local v26    # "installs":Ljava/io/File;
    .end local v27    # "stagedManifest":Ljava/io/File;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .restart local v16    # "stagingParent":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "version":I
    .restart local p2    # "core":Ljava/io/File;
    .restart local p3    # "generic":Ljava/io/File;
    .restart local p4    # "direct":Ljava/io/File;
    .restart local p5    # "mentat":Ljava/io/File;
    .restart local p6    # "mission":Ljava/io/File;
    .restart local p7    # "tutorial":Ljava/io/File;
    .restart local p8    # "missionResult":Ljava/io/File;
    .restart local p9    # "ending":Ljava/io/File;
    .restart local p10    # "worldTerrain":Ljava/io/File;
    .restart local p11    # "worldTactical":Ljava/io/File;
    .restart local p12    # "audio":Ljava/io/File;
    .restart local p13    # "content":Ljava/io/File;
    .restart local p14    # "worldData":Ljava/io/File;
    .restart local p15    # "gameplayData":Ljava/io/File;
    .restart local p16    # "nativeData":Ljava/io/File;
    .restart local p17    # "sourceSha256":Ljava/lang/String;
    .restart local p18    # "sourceProfile":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto/16 :goto_11

    .line 381
    :catch_5
    move-exception v0

    goto/16 :goto_18

    .line 364
    .end local v28    # "bundleStaging":Ljava/io/File;
    .restart local v1    # "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .restart local v3    # "generation":Ljava/lang/String;
    .restart local v4    # "manifestSha":Ljava/lang/String;
    .local v5, "finalRoot":Ljava/io/File;
    .local v10, "bundleStaging":Ljava/io/File;
    .restart local v26    # "installs":Ljava/io/File;
    .restart local v27    # "stagedManifest":Ljava/io/File;
    :cond_c
    move-object/from16 v19, v5

    move-object/from16 v28, v10

    move-object v10, v1

    move-object/from16 v1, p0

    .end local v1    # "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .end local v5    # "finalRoot":Ljava/io/File;
    .local v10, "installed":Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .restart local v19    # "finalRoot":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed frontend/media bundle failed verification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local v28    # "bundleStaging":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "version":I
    .end local p2    # "core":Ljava/io/File;
    .end local p3    # "generic":Ljava/io/File;
    .end local p4    # "direct":Ljava/io/File;
    .end local p5    # "mentat":Ljava/io/File;
    .end local p6    # "mission":Ljava/io/File;
    .end local p7    # "tutorial":Ljava/io/File;
    .end local p8    # "missionResult":Ljava/io/File;
    .end local p9    # "ending":Ljava/io/File;
    .end local p10    # "worldTerrain":Ljava/io/File;
    .end local p11    # "worldTactical":Ljava/io/File;
    .end local p12    # "audio":Ljava/io/File;
    .end local p13    # "content":Ljava/io/File;
    .end local p14    # "worldData":Ljava/io/File;
    .end local p15    # "gameplayData":Ljava/io/File;
    .end local p16    # "nativeData":Ljava/io/File;
    .end local p17    # "sourceSha256":Ljava/lang/String;
    .end local p18    # "sourceProfile":Ljava/lang/String;
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 384
    .end local v3    # "generation":Ljava/lang/String;
    .end local v4    # "manifestSha":Ljava/lang/String;
    .end local v19    # "finalRoot":Ljava/io/File;
    .end local v26    # "installs":Ljava/io/File;
    .end local v27    # "stagedManifest":Ljava/io/File;
    .restart local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .local v10, "bundleStaging":Ljava/io/File;
    .restart local v16    # "stagingParent":Ljava/io/File;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "version":I
    .restart local p2    # "core":Ljava/io/File;
    .restart local p3    # "generic":Ljava/io/File;
    .restart local p4    # "direct":Ljava/io/File;
    .restart local p5    # "mentat":Ljava/io/File;
    .restart local p6    # "mission":Ljava/io/File;
    .restart local p7    # "tutorial":Ljava/io/File;
    .restart local p8    # "missionResult":Ljava/io/File;
    .restart local p9    # "ending":Ljava/io/File;
    .restart local p10    # "worldTerrain":Ljava/io/File;
    .restart local p11    # "worldTactical":Ljava/io/File;
    .restart local p12    # "audio":Ljava/io/File;
    .restart local p13    # "content":Ljava/io/File;
    .restart local p14    # "worldData":Ljava/io/File;
    .restart local p15    # "gameplayData":Ljava/io/File;
    .restart local p16    # "nativeData":Ljava/io/File;
    .restart local p17    # "sourceSha256":Ljava/lang/String;
    .restart local p18    # "sourceProfile":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_a

    .line 381
    :catch_7
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_b

    .line 384
    :catch_8
    move-exception v0

    move v2, v3

    goto :goto_a

    .line 381
    :catch_9
    move-exception v0

    move v2, v3

    goto :goto_b

    .line 384
    :catch_a
    move-exception v0

    move/from16 v2, p1

    goto :goto_a

    .line 381
    :catch_b
    move-exception v0

    move/from16 v2, p1

    goto :goto_b

    .line 384
    :catch_c
    move-exception v0

    :goto_a
    move-object/from16 v28, v10

    .end local v10    # "bundleStaging":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    goto :goto_11

    .line 381
    .end local v28    # "bundleStaging":Ljava/io/File;
    .restart local v10    # "bundleStaging":Ljava/io/File;
    :catch_d
    move-exception v0

    :goto_b
    move-object/from16 v28, v10

    .end local v10    # "bundleStaging":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    goto :goto_18

    .line 384
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local v28    # "bundleStaging":Ljava/io/File;
    .local v8, "stagingParent":Ljava/io/File;
    .restart local v10    # "bundleStaging":Ljava/io/File;
    :catch_e
    move-exception v0

    goto :goto_10

    .line 381
    :catch_f
    move-exception v0

    goto :goto_17

    .line 384
    :catch_10
    move-exception v0

    goto :goto_f

    .line 381
    :catch_11
    move-exception v0

    goto :goto_16

    .line 384
    :catch_12
    move-exception v0

    goto :goto_e

    .line 381
    :catch_13
    move-exception v0

    goto :goto_15

    .line 384
    :catch_14
    move-exception v0

    goto :goto_d

    .line 381
    :catch_15
    move-exception v0

    goto :goto_14

    .line 384
    :catch_16
    move-exception v0

    goto :goto_c

    .line 381
    :catch_17
    move-exception v0

    goto :goto_13

    .line 384
    :catch_18
    move-exception v0

    move-object/from16 v11, p2

    :goto_c
    move-object/from16 v12, p3

    :goto_d
    move-object/from16 v13, p4

    :goto_e
    move-object/from16 v14, p5

    :goto_f
    move-object/from16 v15, p6

    :goto_10
    move-object/from16 v16, v8

    move-object/from16 v28, v10

    .end local v8    # "stagingParent":Ljava/io/File;
    .end local v10    # "bundleStaging":Ljava/io/File;
    .restart local v16    # "stagingParent":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    :goto_11
    move-object v3, v0

    .line 385
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_f
    invoke-static/range {v28 .. v28}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_19

    goto :goto_12

    :catch_19
    move-exception v0

    .line 386
    :goto_12
    throw v3

    .line 381
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local v28    # "bundleStaging":Ljava/io/File;
    .restart local v8    # "stagingParent":Ljava/io/File;
    .restart local v10    # "bundleStaging":Ljava/io/File;
    :catch_1a
    move-exception v0

    move-object/from16 v11, p2

    :goto_13
    move-object/from16 v12, p3

    :goto_14
    move-object/from16 v13, p4

    :goto_15
    move-object/from16 v14, p5

    :goto_16
    move-object/from16 v15, p6

    :goto_17
    move-object/from16 v16, v8

    move-object/from16 v28, v10

    .line 382
    .end local v8    # "stagingParent":Ljava/io/File;
    .end local v10    # "bundleStaging":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "stagingParent":Ljava/io/File;
    .restart local v28    # "bundleStaging":Ljava/io/File;
    :goto_18
    invoke-static/range {v28 .. v28}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore;->deleteRecursively(Ljava/io/File;)V

    .line 383
    throw v0

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v16    # "stagingParent":Ljava/io/File;
    .end local v28    # "bundleStaging":Ljava/io/File;
    :cond_d
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    new-instance v0, Ljava/io/IOException;

    const-string v3, "ROM asset root is unavailable"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 20
    .param p0, "root"    # Ljava/io/File;
    .param p1, "version"    # I
    .param p2, "core"    # Ljava/io/File;
    .param p3, "generic"    # Ljava/io/File;
    .param p4, "direct"    # Ljava/io/File;
    .param p5, "mentat"    # Ljava/io/File;
    .param p6, "mission"    # Ljava/io/File;
    .param p7, "tutorial"    # Ljava/io/File;
    .param p8, "missionResult"    # Ljava/io/File;
    .param p9, "ending"    # Ljava/io/File;
    .param p10, "worldTerrain"    # Ljava/io/File;
    .param p11, "worldTactical"    # Ljava/io/File;
    .param p12, "audio"    # Ljava/io/File;
    .param p13, "content"    # Ljava/io/File;
    .param p14, "worldData"    # Ljava/io/File;
    .param p15, "gameplayData"    # Ljava/io/File;
    .param p16, "sourceSha256"    # Ljava/lang/String;
    .param p17, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-static/range {v1 .. v19}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installWorldDataV11(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "audioRoot"    # Ljava/io/File;
    .param p12, "contentRoot"    # Ljava/io/File;
    .param p13, "worldDataRoot"    # Ljava/io/File;
    .param p14, "sourceSha256"    # Ljava/lang/String;
    .param p15, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/16 v2, 0xb

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method public static installWorldV5(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .locals 19
    .param p0, "root"    # Ljava/io/File;
    .param p1, "sourceCoreRoot"    # Ljava/io/File;
    .param p2, "frontendGenericRoot"    # Ljava/io/File;
    .param p3, "frontendDirectRoot"    # Ljava/io/File;
    .param p4, "mentatRoot"    # Ljava/io/File;
    .param p5, "missionTransitionRoot"    # Ljava/io/File;
    .param p6, "tutorialRoot"    # Ljava/io/File;
    .param p7, "missionResultGraphicsRoot"    # Ljava/io/File;
    .param p8, "endingGraphicsRoot"    # Ljava/io/File;
    .param p9, "worldTerrainRadarRoot"    # Ljava/io/File;
    .param p10, "worldTacticalSpriteRoot"    # Ljava/io/File;
    .param p11, "sourceSha256"    # Ljava/lang/String;
    .param p12, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    invoke-static/range {v1 .. v18}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->installVersion(Ljava/io/File;ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    move-result-object v0

    return-object v0
.end method

.method private static invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 9
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/io/File;
    .param p3, "version"    # I

    .line 957
    new-instance v0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    const-string v7, ""

    const-string v8, ""

    const/4 v1, 0x0

    const-string v5, "runtime_frontend_bundle_v1"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .end local p0    # "reason":Ljava/lang/String;
    .end local p1    # "generation":Ljava/lang/String;
    .end local p2    # "root":Ljava/io/File;
    .end local p3    # "version":I
    .local v2, "reason":Ljava/lang/String;
    .local v3, "generation":Ljava/lang/String;
    .local v4, "root":Ljava/io/File;
    .local v6, "version":I
    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static isBundlePointer(Ljava/io/File;)Z
    .locals 4
    .param p0, "pointer"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->load(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v1

    .line 393
    .local v1, "p":Ljava/util/Properties;
    const-string v2, "group.id"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "runtime_frontend_bundle_v1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 395
    :cond_1
    :try_start_0
    const-string v2, "format.version"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .local v0, "version":I
    nop

    .line 397
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->supportedVersion(I)Z

    move-result v2

    return v2

    .line 396
    .end local v0    # "version":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    return v0

    .line 391
    .end local v1    # "p":Ljava/util/Properties;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return v0
.end method

.method private static load(Ljava/io/File;)Ljava/util/Properties;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 912
    .local v0, "p":Ljava/util/Properties;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 913
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 912
    .restart local v1    # "in":Ljava/io/FileInputStream;
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

.method private static manifestBoundEntriesFromManifest(Ljava/util/Properties;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p0, "p"    # Ljava/util/Properties;
    .param p2, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    .local p1, "declared":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    move-object/from16 v1, p0

    const-string v0, "-1"

    :try_start_0
    const-string v2, "entries.total"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 567
    .local v2, "total":I
    nop

    .line 568
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 569
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const-wide/16 v4, 0x0

    .line 571
    .local v4, "payload":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-string v7, ""

    if-ge v6, v2, :cond_7

    .line 572
    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 573
    .local v9, "base":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "asset.%03d."

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 574
    .local v10, "prefix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "source_group"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, "group":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 576
    .local v14, "name":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "path"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 577
    .local v15, "path":Ljava/lang/String;
    iget-object v11, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 580
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "length"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v11, v16

    .line 581
    .local v11, "length":I
    nop

    .line 582
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v18, v0

    const-string v0, "sha256"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "sha":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-static {v7, v15}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->manifestBoundAsset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 584
    .local v19, "bound":Z
    if-eqz v19, :cond_4

    .line 585
    const-string v12, "tactical/classic_purchase_icons.bin"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 586
    iget v12, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    if-ne v11, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 587
    :cond_1
    iget v12, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    invoke-static {v15, v12, v11}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validSourceBoundLength(Ljava/lang/String;II)Z

    move-result v12

    :goto_1
    nop

    .line 588
    .local v12, "lengthOk":Z
    if-eqz v12, :cond_2

    move/from16 v20, v2

    .end local v2    # "total":I
    .local v20, "total":I
    const-string v2, "(?i)[0-9a-f]{64}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 590
    .end local v12    # "lengthOk":Z
    move-wide/from16 v21, v4

    goto :goto_2

    .line 588
    .end local v20    # "total":I
    .restart local v2    # "total":I
    .restart local v12    # "lengthOk":Z
    :cond_2
    move/from16 v20, v2

    .line 589
    .end local v2    # "total":I
    .restart local v20    # "total":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    move-wide/from16 v21, v4

    .end local v4    # "payload":J
    .local v21, "payload":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source-bound READY asset declaration is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    .end local v12    # "lengthOk":Z
    .end local v20    # "total":I
    .end local v21    # "payload":J
    .restart local v2    # "total":I
    .restart local v4    # "payload":J
    :cond_4
    move/from16 v20, v2

    move-wide/from16 v21, v4

    .end local v2    # "total":I
    .end local v4    # "payload":J
    .restart local v20    # "total":I
    .restart local v21    # "payload":J
    iget v2, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    if-ne v11, v2, :cond_5

    iget-object v2, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 593
    :goto_2
    new-instance v12, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    move-object/from16 v17, v0

    move/from16 v16, v11

    .end local v0    # "sha":Ljava/lang/String;
    .end local v11    # "length":I
    .local v16, "length":I
    .local v17, "sha":Ljava/lang/String;
    invoke-direct/range {v12 .. v17}, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move/from16 v0, v16

    .end local v16    # "length":I
    .local v0, "length":I
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    int-to-long v4, v0

    add-long v4, v21, v4

    .line 571
    .end local v0    # "length":I
    .end local v9    # "base":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v13    # "group":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v17    # "sha":Ljava/lang/String;
    .end local v19    # "bound":Z
    .end local v21    # "payload":J
    .restart local v4    # "payload":J
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    move/from16 v2, v20

    goto/16 :goto_0

    .line 590
    .end local v4    # "payload":J
    .local v0, "sha":Ljava/lang/String;
    .restart local v9    # "base":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .restart local v10    # "prefix":Ljava/lang/String;
    .restart local v11    # "length":I
    .restart local v13    # "group":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v19    # "bound":Z
    .restart local v21    # "payload":J
    :cond_5
    move-object/from16 v17, v0

    move v0, v11

    .line 591
    .end local v11    # "length":I
    .local v0, "length":I
    .restart local v17    # "sha":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READY manifest static asset declaration mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 581
    .end local v0    # "length":I
    .end local v17    # "sha":Ljava/lang/String;
    .end local v19    # "bound":Z
    .end local v20    # "total":I
    .end local v21    # "payload":J
    .restart local v2    # "total":I
    .restart local v4    # "payload":J
    :catch_0
    move-exception v0

    move-object/from16 v7, p2

    move/from16 v20, v2

    move-wide/from16 v21, v4

    .end local v2    # "total":I
    .end local v4    # "payload":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "total":I
    .restart local v21    # "payload":J
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source-bound READY asset length is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 577
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "total":I
    .end local v21    # "payload":J
    .restart local v2    # "total":I
    .restart local v4    # "payload":J
    :cond_6
    move-object/from16 v7, p2

    move/from16 v20, v2

    move-wide/from16 v21, v4

    .line 578
    .end local v2    # "total":I
    .end local v4    # "payload":J
    .restart local v20    # "total":I
    .restart local v21    # "payload":J
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source-bound READY manifest structure mismatch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v9, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    .end local v9    # "base":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v13    # "group":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    .end local v20    # "total":I
    .end local v21    # "payload":J
    .restart local v2    # "total":I
    .restart local v4    # "payload":J
    :cond_7
    move-object/from16 v8, p1

    move/from16 v20, v2

    move-wide/from16 v21, v4

    .line 596
    .end local v2    # "total":I
    .end local v4    # "payload":J
    .end local v6    # "i":I
    .restart local v20    # "total":I
    .restart local v21    # "payload":J
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "payload.bytes"

    invoke-virtual {v1, v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 598
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 597
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Source-bound READY manifest payload size mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v20    # "total":I
    .end local v21    # "payload":J
    .restart local v2    # "total":I
    :cond_9
    move/from16 v20, v2

    .end local v2    # "total":I
    .restart local v20    # "total":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Source-bound READY manifest entry count mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    .end local v20    # "total":I
    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Source-bound READY manifest entry count is invalid"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static payloadBytes(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;)J"
        }
    .end annotation

    .line 840
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const-wide/16 v0, 0x0

    .line 841
    .local v0, "total":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    goto :goto_0

    .line 842
    :cond_0
    return-wide v0
.end method

.method private static publishGeneration(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p0, "staging"    # Ljava/io/File;
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    return-void

    .line 764
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not atomically publish frontend/media bundle generation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static publishReady(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .param p1, "version"    # I
    .param p2, "generation"    # Ljava/lang/String;
    .param p3, "manifestSha"    # Ljava/lang/String;
    .param p4, "sourceSha256"    # Ljava/lang/String;
    .param p5, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    .local p6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    new-instance v0, Ljava/io/File;

    const-string v1, "READY.new"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    .local v0, "next":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "READY"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 727
    .local v1, "current":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "READY.prev"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    .local v2, "previous":Ljava/io/File;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 729
    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 731
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 732
    .local v3, "p":Ljava/util/Properties;
    const-string v4, "format.version"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 733
    const-string v4, "stage"

    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->stageForVersion(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 734
    const-string v4, "group.id"

    const-string v5, "runtime_frontend_bundle_v1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 735
    const-string v4, "generation"

    invoke-virtual {v3, v4, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 736
    const-string v4, "manifest.sha256"

    invoke-virtual {v3, v4, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 737
    const-string v4, ""

    if-nez p4, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    const-string v6, "source.sha256"

    invoke-virtual {v3, v6, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 738
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, p5

    :goto_1
    const-string v5, "source.profile"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 739
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "entries.total"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 740
    invoke-static {p6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->payloadBytes(Ljava/util/List;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "payload.bytes"

    invoke-virtual {v3, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Demulation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->stageForVersion(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " READY pointer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 744
    :cond_2
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 745
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not preserve previous READY pointer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 747
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 748
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 749
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not publish frontend/media bundle READY pointer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 751
    :cond_5
    return-void
.end method

.method private static requireExactProfileIdentity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    invoke-static {p0}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->findById(Ljava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v0

    .line 520
    .local v0, "profile":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    if-eqz v1, :cond_1

    .line 522
    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha256:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    return-void

    .line 523
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Source-bound BASE source fingerprint mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unsupported source-bound BASE profile"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static rollbackReady(Ljava/io/File;)V
    .locals 4
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/io/File;

    const-string v1, "READY"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    .local v0, "current":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "READY.prev"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 756
    .local v1, "previous":Ljava/io/File;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->deleteQuietly(Ljava/io/File;)V

    .line 757
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not restore previous READY pointer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 760
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relative"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 887
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 889
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

    .line 890
    return-object v0

    .line 889
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsafe asset path: "

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

    .line 877
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeGeneration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 879
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 881
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

    .line 882
    return-object v0

    .line 881
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe frontend/media bundle generation path"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 877
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "rp":Ljava/lang/String;
    .end local v2    # "fp":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe frontend/media bundle generation name"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeGeneration(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 872
    if-eqz p0, :cond_0

    const-string v0, "runtime_frontend_bundle_v1-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    const-string v0, "[A-Za-z0-9._-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 872
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

    .line 929
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 930
    .local v0, "d":Ljava/security/MessageDigest;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 931
    .local v1, "b":[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 932
    .local v2, "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_1

    if-lez v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 933
    .end local v4    # "n":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 934
    .end local v2    # "in":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->hex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 931
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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

    .line 938
    invoke-static {}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "d":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->hex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sourceRoot(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .param p1, "core"    # Ljava/io/File;
    .param p2, "generic"    # Ljava/io/File;
    .param p3, "direct"    # Ljava/io/File;
    .param p4, "mentat"    # Ljava/io/File;
    .param p5, "mission"    # Ljava/io/File;
    .param p6, "tutorial"    # Ljava/io/File;
    .param p7, "missionResult"    # Ljava/io/File;
    .param p8, "ending"    # Ljava/io/File;
    .param p9, "worldTerrain"    # Ljava/io/File;
    .param p10, "worldTactical"    # Ljava/io/File;
    .param p11, "audio"    # Ljava/io/File;
    .param p12, "content"    # Ljava/io/File;
    .param p13, "worldData"    # Ljava/io/File;
    .param p14, "gameplayData"    # Ljava/io/File;
    .param p15, "nativeData"    # Ljava/io/File;

    .line 640
    const-string v0, "runtime_bootstrap_core_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 641
    :cond_0
    const-string v0, "frontend_generic_graphics_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 642
    :cond_1
    const-string v0, "frontend_direct_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p3

    .line 643
    :cond_2
    const-string v0, "frontend_mentat_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p4

    .line 644
    :cond_3
    const-string v0, "mission_campaign_transition_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p5

    .line 645
    :cond_4
    const-string v0, "tutorial_original_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p6

    .line 646
    :cond_5
    const-string v0, "mission_result_graphics_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p7

    .line 647
    :cond_6
    const-string v0, "ending_graphics_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p8

    .line 648
    :cond_7
    const-string v0, "world_terrain_radar_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p9

    .line 649
    :cond_8
    const-string v0, "world_tactical_sprites_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p10

    .line 650
    :cond_9
    const-string v0, "original_audio_ready_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p11

    .line 651
    :cond_a
    const-string v0, "original_content_ready_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p12

    .line 652
    :cond_b
    const-string v0, "original_world_data_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p13

    .line 653
    :cond_c
    const-string v0, "original_gameplay_data_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p14

    .line 654
    :cond_d
    const-string v0, "original_native_pure_data_v1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p15

    .line 655
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static stageForVersion(I)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # I

    .line 814
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string v0, "04.234D"

    return-object v0

    .line 815
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string v0, "04.234G"

    return-object v0

    .line 816
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string v0, "04.234M"

    return-object v0

    .line 817
    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const-string v0, "04.235D"

    return-object v0

    .line 818
    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    const-string v0, "04.235G"

    return-object v0

    .line 819
    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const-string v0, "04.235I"

    return-object v0

    .line 820
    :cond_5
    const/16 v0, 0x8

    if-ne p0, v0, :cond_6

    const-string v0, "04.235P"

    return-object v0

    .line 821
    :cond_6
    const/16 v0, 0x9

    if-ne p0, v0, :cond_7

    const-string v0, "04.235Q"

    return-object v0

    .line 822
    :cond_7
    const/16 v0, 0xa

    if-ne p0, v0, :cond_8

    const-string v0, "04.235R"

    return-object v0

    .line 823
    :cond_8
    const/16 v0, 0xb

    if-ne p0, v0, :cond_9

    const-string v0, "04.235T1"

    return-object v0

    .line 824
    :cond_9
    const/16 v0, 0xc

    if-ne p0, v0, :cond_a

    const-string v0, "04.235U1"

    return-object v0

    .line 825
    :cond_a
    const/16 v0, 0xd

    if-ne p0, v0, :cond_b

    const-string v0, "04.235V1"

    return-object v0

    .line 826
    :cond_b
    const/16 v0, 0xe

    if-ne p0, v0, :cond_c

    const-string v0, "04.238Y43"

    return-object v0

    .line 827
    :cond_c
    const/16 v0, 0xf

    if-ne p0, v0, :cond_d

    const-string v0, "0.4.257"

    return-object v0

    .line 828
    :cond_d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_e

    const-string v0, "0.4.258"

    return-object v0

    .line 829
    :cond_e
    const/16 v0, 0x11

    if-ne p0, v0, :cond_f

    const-string v0, "0.4.261"

    return-object v0

    .line 830
    :cond_f
    const-string v0, "0.4.601"

    return-object v0
.end method

.method private static supportedVersion(I)Z
    .locals 1
    .param p0, "version"    # I

    .line 794
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static validateGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 1
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    const/16 v0, 0x12

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method private static validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 19
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    move-object/from16 v4, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move/from16 v6, p3

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 461
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "manifest.properties"

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 462
    .local v10, "manifest":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bundle manifest is missing"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 463
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    invoke-static {v10}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    const-string v0, "Bundle manifest fingerprint mismatch"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 467
    :cond_2
    invoke-static {v10}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->load(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v11

    .line 468
    .local v11, "p":Ljava/util/Properties;
    const-string v0, "source.profile"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 470
    .local v12, "manifestProfile":Ljava/lang/String;
    invoke-static {v6, v12}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->entriesForVersion(ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 471
    .local v13, "declared":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    const/16 v2, 0xe

    const-string v5, "source.sha256"

    if-eq v6, v2, :cond_3

    const/16 v2, 0xf

    if-eq v6, v2, :cond_3

    const/16 v2, 0x10

    if-eq v6, v2, :cond_3

    const/16 v2, 0x11

    if-eq v6, v2, :cond_3

    const/16 v2, 0x12

    if-ne v6, v2, :cond_4

    .line 476
    :cond_3
    invoke-static {v13, v12}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->hasManifestBoundEntries(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 478
    :try_start_0
    invoke-virtual {v11, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->requireExactProfileIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {v11, v13, v12}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->manifestBoundEntriesFromManifest(Ljava/util/Properties;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    move-object v14, v2

    goto :goto_0

    .line 480
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v1

    return-object v1

    .line 484
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move-object v2, v13

    move-object v14, v2

    .line 486
    .local v14, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "format.version"

    invoke-virtual {v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 487
    const-string v0, "Bundle manifest format mismatch"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 489
    :cond_5
    const-string v2, "group.id"

    invoke-virtual {v11, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "runtime_frontend_bundle_v1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 490
    const-string v2, "generation"

    invoke-virtual {v11, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_5

    .line 493
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "entries.total"

    invoke-virtual {v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 494
    invoke-static {v14}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->payloadBytes(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v7, "payload.bytes"

    invoke-virtual {v11, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_4

    .line 497
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_d

    .line 498
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 499
    .local v7, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "i":I
    .local v16, "i":I
    const-string v2, "asset.%03d."

    invoke-static {v8, v2, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "prefix":Ljava/lang/String;
    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v9, "source_group"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "name"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 501
    invoke-virtual {v11, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "path"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 502
    invoke-virtual {v11, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    .line 503
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "length"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "sha256"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 504
    invoke-virtual {v11, v9, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    .line 507
    :cond_8
    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 508
    .local v8, "asset":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v17

    iget v9, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    move-object v15, v8

    .end local v8    # "asset":Ljava/io/File;
    .local v15, "asset":Ljava/io/File;
    int-to-long v8, v9

    cmp-long v8, v17, v8

    if-nez v8, :cond_b

    iget-object v8, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    .line 509
    invoke-static {v15}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    .line 497
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v7    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v15    # "asset":Ljava/io/File;
    :cond_9
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v9, p2

    .end local v16    # "i":I
    .local v2, "i":I
    goto/16 :goto_1

    .line 508
    .local v2, "prefix":Ljava/lang/String;
    .restart local v7    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .restart local v8    # "asset":Ljava/io/File;
    .restart local v16    # "i":I
    :cond_a
    move-object v15, v8

    .line 510
    .end local v8    # "asset":Ljava/io/File;
    .restart local v15    # "asset":Ljava/io/File;
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installed bundle asset mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 505
    .end local v15    # "asset":Ljava/io/File;
    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle manifest entry mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 497
    .end local v7    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v16    # "i":I
    .local v2, "i":I
    :cond_d
    move/from16 v16, v2

    .line 513
    .end local v2    # "i":I
    new-instance v2, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    .line 515
    invoke-virtual {v11, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x1

    move-object v0, v2

    const-string v2, "ok"

    const-string v5, "runtime_frontend_bundle_v1"

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 513
    return-object v0

    .line 495
    :cond_e
    :goto_4
    const-string v0, "Bundle manifest size/count mismatch"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 491
    :cond_f
    :goto_5
    const-string v0, "Bundle manifest identity mismatch"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 459
    .end local v10    # "manifest":Ljava/io/File;
    .end local v11    # "p":Ljava/util/Properties;
    .end local v12    # "manifestProfile":Ljava/lang/String;
    .end local v13    # "declared":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    .end local v14    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    :cond_10
    :goto_6
    const-string v0, "Bundle generation is missing"

    invoke-static {v0, v3, v4, v6}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method static validateLegacyGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 1
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method static validateMediaGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 1
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method static validateMissionCampaignGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 1
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method static validateReadyFile(Ljava/io/File;Ljava/io/File;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .param p1, "pointerFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    const-string v0, "Frontend/media bundle READY format version is unsupported"

    const-string v1, ""

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->load(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v4

    .line 406
    .local v4, "ready":Ljava/util/Properties;
    :try_start_0
    const-string v5, "format.version"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .local v2, "version":I
    nop

    .line 411
    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->supportedVersion(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 412
    invoke-static {v0, v3, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 414
    :cond_1
    const-string v0, "group.id"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "runtime_frontend_bundle_v1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    const-string v0, "READY group does not match frontend/media bundle"

    invoke-static {v0, v3, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 417
    :cond_2
    const-string v0, "generation"

    invoke-virtual {v4, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "generation":Ljava/lang/String;
    const-string v5, "manifest.sha256"

    invoke-virtual {v4, v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "manifestSha":Ljava/lang/String;
    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeGeneration(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 422
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v5, "installs"

    invoke-direct {v3, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeDirectChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 423
    .local v3, "installRoot":Ljava/io/File;
    invoke-static {v3, v0, v1, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v5

    return-object v5

    .line 420
    .end local v3    # "installRoot":Ljava/io/File;
    :cond_4
    :goto_0
    const-string v5, "Frontend/media bundle READY pointer fields are invalid"

    invoke-static {v5, v0, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v3

    return-object v3

    .line 407
    .end local v0    # "generation":Ljava/lang/String;
    .end local v1    # "manifestSha":Ljava/lang/String;
    .end local v2    # "version":I
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0, v3, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0

    .line 402
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "ready":Ljava/util/Properties;
    :cond_5
    :goto_1
    const-string v0, "READY pointer is absent"

    invoke-static {v0, v3, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->invalid(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method static validateWorldGeneration(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
    .locals 1
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "expectedManifestSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->validateGenerationVersion(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;

    move-result-object v0

    return-object v0
.end method

.method private static verifyBundleTree(Ljava/io/File;Ljava/util/List;)V
    .locals 7
    .param p0, "root"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 660
    .local v1, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 661
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    .end local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v2    # "f":Ljava/io/File;
    goto :goto_0

    .line 662
    .restart local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .restart local v2    # "f":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assembled bundle verification failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    .end local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static verifySourceTrees(Ljava/util/List;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 18
    .param p1, "core"    # Ljava/io/File;
    .param p2, "generic"    # Ljava/io/File;
    .param p3, "direct"    # Ljava/io/File;
    .param p4, "mentat"    # Ljava/io/File;
    .param p5, "mission"    # Ljava/io/File;
    .param p6, "tutorial"    # Ljava/io/File;
    .param p7, "missionResult"    # Ljava/io/File;
    .param p8, "ending"    # Ljava/io/File;
    .param p9, "worldTerrain"    # Ljava/io/File;
    .param p10, "worldTactical"    # Ljava/io/File;
    .param p11, "audio"    # Ljava/io/File;
    .param p12, "content"    # Ljava/io/File;
    .param p13, "worldData"    # Ljava/io/File;
    .param p14, "gameplayData"    # Ljava/io/File;
    .param p15, "nativeData"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 607
    .local v1, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-static/range {v2 .. v17}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sourceRoot(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 609
    .local v2, "sourceRoot":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 612
    iget-object v3, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 613
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 616
    .end local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v2    # "sourceRoot":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    goto :goto_0

    .line 614
    .restart local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .restart local v2    # "sourceRoot":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source asset failed bundle verification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verified staging/source group is unavailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    .end local v1    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v2    # "sourceRoot":Ljava/io/File;
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

    .line 923
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 924
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

    const-string v2, "Could not create manifest directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 926
    .end local v1    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 925
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

.method private static writeInstallManifest(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "version"    # I
    .param p2, "generation"    # Ljava/lang/String;
    .param p3, "sourceSha256"    # Ljava/lang/String;
    .param p4, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    .local p5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v0, "text":Ljava/lang/StringBuilder;
    const-string v1, "format.version"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v1, "stage"

    invoke-static {p1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->stageForVersion(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "group.id"

    const-string v2, "runtime_frontend_bundle_v1"

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v1, "generation"

    invoke-static {v0, v1, p2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v1, ""

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    const-string v3, "source.sha256"

    invoke-static {v0, v3, v2}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    const-string v2, "source.profile"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entries.total"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->payloadBytes(Ljava/util/List;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload.bytes"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "runtime_bootstrap_core_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.core.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.frontend_generic.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.frontend_direct.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-static {}, Lcom/ahsim/demulation/RomMentatAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.frontend_mentat.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v1, 0x3

    if-lt p1, v1, :cond_2

    .line 684
    invoke-static {}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.mission_campaign.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_2
    const/4 v1, 0x4

    if-lt p1, v1, :cond_3

    .line 687
    invoke-static {}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.tutorial_media.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.mission_result_graphics.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.ending_graphics.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_3
    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    .line 692
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.world_terrain_radar.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v1, "world_tactical_sprites_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.world_tactical_sprites.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_4
    const/4 v1, 0x7

    if-lt p1, v1, :cond_5

    .line 696
    invoke-static {}, Lcom/ahsim/demulation/RomAudioAssetManifest;->entries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.original_audio.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_5
    const/16 v1, 0x8

    if-lt p1, v1, :cond_6

    .line 699
    const-string v1, "original_content_ready_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.original_content.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_6
    const/16 v1, 0xb

    if-lt p1, v1, :cond_7

    .line 702
    const-string v1, "original_world_data_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.world_data.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_7
    const/16 v1, 0xc

    if-lt p1, v1, :cond_8

    .line 705
    const-string v1, "original_gameplay_data_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.gameplay_data.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_8
    const/16 v1, 0xd

    if-lt p1, v1, :cond_9

    .line 708
    const-string v1, "original_native_pure_data_v1"

    invoke-static {p5, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->countGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group.native_pure_data.entries"

    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 711
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;

    .line 712
    .local v2, "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "asset.%03d."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "source_group"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->name:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sha256"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .end local v2    # "e":Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
    .end local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 719
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;->writeBytesSynced(Ljava/io/File;[B)V

    .line 720
    return-void
.end method

.method private static writePropertiesSynced(Ljava/io/File;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "p"    # Ljava/util/Properties;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 918
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

    const-string v2, "Could not create READY directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 919
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1, v1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 920
    .end local v1    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 919
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
