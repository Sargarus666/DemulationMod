.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;,
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;,
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;,
        Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareStagedTerrainScene(Lcom/ahsim/demulation/RomRuntimeWorldAssets;Ljava/io/File;Ljava/util/Map;)Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
    .locals 10
    .param p0, "base"    # Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    .param p1, "stage"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/RomRuntimeWorldAssets;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;)",
            "Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    .local p2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    const-string v0, "terrain/patterns.bin"

    .line 923
    .local v0, "pat":Ljava/lang/String;
    const-string v1, "terrain/metatile_descriptors.bin"

    .line 924
    .local v1, "met":Ljava/lang/String;
    const-string v2, "terrain/palette.bin"

    .line 925
    .local v2, "pal":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, "bp":[B
    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, "bm":[B
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    .line 926
    .local v5, "bc":[B
    invoke-static {p1, p2, v0, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readStagedOrBase(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;[B)[B

    move-result-object v6

    .line 927
    .local v6, "mp":[B
    invoke-static {p1, p2, v1, v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readStagedOrBase(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;[B)[B

    move-result-object v7

    .line 928
    .local v7, "mm":[B
    invoke-static {p1, p2, v2, v5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readStagedOrBase(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;[B)[B

    move-result-object v8

    .line 929
    .local v8, "mc":[B
    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->compareTerrainScenes([B[B[B[B[B[B)Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    move-result-object v9

    return-object v9
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;I)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1015
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1016
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 1017
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 1019
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "n":I
    if-ltz v4, :cond_2

    .line 1020
    if-nez v5, :cond_0

    goto :goto_0

    .line 1021
    :cond_0
    add-int/2addr v3, v5

    .line 1022
    if-gt v3, p2, :cond_1

    .line 1023
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1022
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Overlay asset grew during copy"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "expectedLength":I
    throw v4

    .line 1025
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "expectedLength":I
    :cond_2
    if-ne v3, p2, :cond_3

    .line 1026
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v5    # "n":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1028
    .end local v0    # "in":Ljava/io/InputStream;
    return-void

    .line 1025
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "total":I
    .restart local v5    # "n":I
    :cond_3
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Overlay asset changed during copy"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "expectedLength":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1014
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v5    # "n":I
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "expectedLength":I
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "source":Ljava/io/File;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "expectedLength":I
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "source":Ljava/io/File;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "expectedLength":I
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

.method private static copyIntoOverlay(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "expectedLength"    # I
    .param p4, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    .local p5, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 731
    .local v0, "source":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 734
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 735
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 736
    .local v2, "parent":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create overlay asset directory"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 739
    :cond_1
    :goto_0
    invoke-static {v0, v1, p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyFile(Ljava/io/File;Ljava/io/File;I)V

    .line 740
    nop

    .line 741
    invoke-static {p1, p2, p4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->entryForFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    move-result-object v3

    .line 742
    .local v3, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    invoke-interface {p5, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    return-void

    .line 732
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overlay group asset has unexpected length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static copyIntoOverlayFlexible(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    .local p4, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 807
    .local v0, "source":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x400000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 810
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 811
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 812
    .local v2, "parent":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create adapted overlay asset directory"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v0, v1, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyFile(Ljava/io/File;Ljava/io/File;I)V

    .line 816
    nop

    .line 817
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->entryForFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    move-result-object v3

    .line 818
    .local v3, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    invoke-interface {p4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    return-void

    .line 808
    .end local v1    # "target":Ljava/io/File;
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapted overlay asset has invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extractTactical(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;[BLjava/io/File;Ljava/util/Map;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 7
    .param p0, "analysis"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .param p1, "rom"    # [B
    .param p2, "stage"    # Ljava/io/File;
    .param p5, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;",
            "[B",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;",
            ")",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    .local p3, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 674
    .local v0, "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-virtual {p0, v1, v0}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->roleMayUseGroup(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 675
    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_POLICY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v1

    .line 677
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capability(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    move-result-object v1

    .line 678
    .local v1, "cap":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    iget-object v2, v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    sget-object v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->UNAVAILABLE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    if-ne v2, v3, :cond_1

    .line 679
    sget-object v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v2

    .line 681
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "group-tactical"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 683
    .local v2, "groupRoot":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v4, p1

    int-to-long v4, v4

    new-instance v6, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda2;

    invoke-direct {v6, p5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)V

    .line 684
    invoke-static {v3, v4, v5, v2, v6}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->extractOverlayCandidate(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;

    move-result-object v3

    .line 691
    .local v3, "result":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;->allVerified()Z

    move-result v4

    if-nez v4, :cond_2

    .line 692
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 693
    sget-object v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v4

    .line 695
    :cond_2
    invoke-static {v2, p2, p3, p4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->importTacticalGroup(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/util/List;)V

    .line 696
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 697
    sget-object v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 698
    .end local v3    # "result":Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider$Result;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 699
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomWorldTacticalSpriteAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 700
    :goto_1
    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1

    .line 701
    :goto_2
    iget-object v4, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-static {v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->isRebuild(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 702
    sget-object v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    goto :goto_3

    .line 703
    :cond_3
    sget-object v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 701
    :goto_3
    return-object v4
.end method

.method private static extractTerrainRadar(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;[BLjava/io/File;Ljava/util/Map;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 10
    .param p0, "analysis"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .param p1, "rom"    # [B
    .param p2, "stage"    # Ljava/io/File;
    .param p5, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;",
            "[B",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;",
            ")",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    .local p3, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 633
    .local v1, "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v0, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->roleMayUseGroup(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_POLICY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v0

    .line 636
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capability(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    move-result-object v2

    .line 637
    .local v2, "cap":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    iget-object v0, v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    sget-object v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->UNAVAILABLE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    if-ne v0, v3, :cond_1

    .line 638
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v0

    .line 640
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "group-terrain-radar"

    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 642
    .local v4, "groupRoot":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v3, p1

    int-to-long v5, v3

    new-instance v3, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v3, p5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)V

    .line 643
    invoke-static {v0, v5, v6, v4, v3}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->extractOverlayCandidate(Ljava/io/InputStream;JLjava/io/File;Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$ProgressListener;)Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;

    move-result-object v0

    .line 650
    .local v0, "result":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;->allVerified()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v3, :cond_2

    .line 651
    :try_start_1
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 652
    sget-object v3, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 658
    .end local v0    # "result":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    goto :goto_2

    .line 654
    .restart local v0    # "result":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v6

    const-string v7, "WORLD_TERRAIN_RADAR"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    .end local p2    # "stage":Ljava/io/File;
    .end local p3    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local p4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "stage":Ljava/io/File;
    .local v8, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v9, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_3
    invoke-static/range {v4 .. v9}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->importGroup(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 656
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V

    .line 657
    sget-object p2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p2

    .line 658
    .end local v0    # "result":Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider$Result;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    .end local v5    # "stage":Ljava/io/File;
    .end local v8    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v9    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "stage":Ljava/io/File;
    .restart local p3    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local p4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    .end local p2    # "stage":Ljava/io/File;
    .end local p3    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local p4    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stage":Ljava/io/File;
    .restart local v8    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v9    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move-object p2, v0

    .line 659
    .local p2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Lcom/ahsim/demulation/GenesisRomWorldTerrainRadarAssetProvider;->deleteRecursively(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 660
    :goto_3
    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    .line 661
    :goto_4
    iget-object p3, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-static {p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->isRebuild(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 662
    sget-object p3, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    goto :goto_5

    .line 663
    :cond_3
    sget-object p3, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 661
    :goto_5
    return-object p3
.end method

.method private static fileEqualsBytes(Ljava/io/File;[B)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expected"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    array-length v3, p1

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_3

    .line 962
    :cond_0
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 963
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 964
    .local v2, "offset":I
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 965
    .local v3, "input":Ljava/io/FileInputStream;
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 966
    array-length v4, v1

    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .local v4, "read":I
    if-gez v4, :cond_1

    .line 974
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 967
    return v0

    .line 968
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 969
    :try_start_1
    aget-byte v6, v1, v5

    add-int v7, v2, v5

    aget-byte v7, p1, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v6, v7, :cond_2

    .line 974
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 969
    return v0

    .line 968
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 971
    .end local v5    # "i":I
    :cond_3
    add-int/2addr v2, v4

    .line 972
    .end local v4    # "read":I
    goto :goto_0

    .line 973
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v4, :cond_5

    const/4 v0, 0x1

    .line 974
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 973
    return v0

    .line 964
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    .line 960
    .end local v1    # "buffer":[B
    .end local v2    # "offset":I
    .end local v3    # "input":Ljava/io/FileInputStream;
    :cond_6
    :goto_3
    return v0
.end method

.method private static importAdaptedTactical(Ljava/io/File;Ljava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;Ljava/util/Map;Ljava/util/List;)I
    .locals 21
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .param p2, "adapted"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    .local p3, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    const-string v1, "tactical/static_patterns_922_2047.bin"

    .line 784
    .local v1, "staticPatterns":Ljava/lang/String;
    const-string v2, "tactical/visual_catalog.bin"

    .line 785
    .local v2, "visuals":Ljava/lang/String;
    const-string v3, "tactical/dynamic_patterns.bin"

    .line 786
    .local v3, "dynamics":Ljava/lang/String;
    const-string v4, "tactical/static_patterns_922_2047.bin"

    invoke-virtual {v0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "tactical/dynamic_patterns.bin"

    const-string v7, "tactical/visual_catalog.bin"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    .line 787
    invoke-virtual {v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    move v5, v8

    .line 788
    .local v5, "coreReady":Z
    :goto_0
    const/4 v10, 0x0

    .line 789
    .local v10, "imported":I
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->legacyEntries()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    .line 790
    .local v12, "item":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    iget-object v13, v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    .line 791
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v8

    goto :goto_3

    :cond_2
    :goto_2
    move v13, v9

    .line 793
    .local v13, "corePath":Z
    :goto_3
    if-eqz v13, :cond_3

    if-nez v5, :cond_3

    goto :goto_1

    .line 794
    :cond_3
    iget-object v14, v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_1

    .line 795
    :cond_4
    iget-object v14, v12, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    const-string v18, "TACTICAL_SPRITES"

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v17, v14

    invoke-static/range {v15 .. v20}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyIntoOverlayFlexible(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 797
    nop

    .end local v12    # "item":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .end local v13    # "corePath":Z
    add-int/lit8 v10, v10, 0x1

    .line 798
    goto :goto_1

    .line 799
    :cond_5
    return v10
.end method

.method private static importAdaptedTerrain(Ljava/io/File;Ljava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)I
    .locals 20
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .param p2, "adapted"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    .local p4, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .local p5, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    const-string v1, "terrain/patterns.bin"

    .line 765
    .local v1, "patterns":Ljava/lang/String;
    const-string v2, "terrain/metatile_descriptors.bin"

    .line 766
    .local v2, "descriptors":Ljava/lang/String;
    const-string v3, "terrain/metatile_descriptors.bin"

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v4

    .line 767
    .local v4, "descriptorOverlay":Z
    const-string v5, "terrain/patterns.bin"

    invoke-virtual {v0, v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 768
    .local v6, "sharedCoreReady":Z
    :goto_0
    const/4 v9, 0x0

    .line 769
    .local v9, "imported":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    .line 770
    .local v11, "item":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    iget-object v12, v11, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, v11, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    move v12, v7

    goto :goto_3

    :cond_2
    :goto_2
    move v12, v8

    .line 771
    .local v12, "corePath":Z
    :goto_3
    if-eqz v12, :cond_3

    if-eqz v4, :cond_3

    if-nez v6, :cond_3

    goto :goto_1

    .line 772
    :cond_3
    iget-object v13, v11, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_1

    .line 773
    :cond_4
    iget-object v13, v11, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v16, v13

    invoke-static/range {v14 .. v19}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyIntoOverlayFlexible(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 774
    nop

    .end local v11    # "item":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .end local v12    # "corePath":Z
    add-int/lit8 v9, v9, 0x1

    .line 775
    goto :goto_1

    .line 776
    :cond_5
    return v9
.end method

.method private static importGroup(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    .local p2, "manifest":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;>;"
    .local p4, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    .line 713
    .local v1, "item":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    iget-object v4, v1, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v5, v1, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->length:I

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p0    # "groupRoot":Ljava/io/File;
    .end local p1    # "stage":Ljava/io/File;
    .end local p3    # "group":Ljava/lang/String;
    .end local p4    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local p5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "groupRoot":Ljava/io/File;
    .local v3, "stage":Ljava/io/File;
    .local v6, "group":Ljava/lang/String;
    .local v7, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v2 .. v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyIntoOverlay(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 714
    .end local v1    # "item":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    goto :goto_0

    .line 715
    .end local v2    # "groupRoot":Ljava/io/File;
    .end local v3    # "stage":Ljava/io/File;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v8    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "groupRoot":Ljava/io/File;
    .restart local p1    # "stage":Ljava/io/File;
    .restart local p3    # "group":Ljava/lang/String;
    .restart local p4    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local p5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static importTacticalGroup(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Ljava/util/List;)V
    .locals 9
    .param p0, "groupRoot"    # Ljava/io/File;
    .param p1, "stage"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    .local p2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->legacyEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    .line 721
    .local v1, "item":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    iget-object v4, v1, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v5, v1, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->length:I

    const-string v6, "TACTICAL_SPRITES"

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    .end local p0    # "groupRoot":Ljava/io/File;
    .end local p1    # "stage":Ljava/io/File;
    .end local p2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local p3    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "groupRoot":Ljava/io/File;
    .local v3, "stage":Ljava/io/File;
    .local v7, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v2 .. v8}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->copyIntoOverlay(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 723
    .end local v1    # "item":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    goto :goto_0

    .line 724
    .end local v2    # "groupRoot":Ljava/io/File;
    .end local v3    # "stage":Ljava/io/File;
    .end local v7    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v8    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "groupRoot":Ljava/io/File;
    .restart local p1    # "stage":Ljava/io/File;
    .restart local p2    # "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local p3    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p2, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    if-eqz p0, :cond_4

    .line 123
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    if-ne v0, v1, :cond_3

    .line 126
    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v1, "input":Ljava/io/InputStream;
    :try_start_1
    iget-wide v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->size:J

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readAll(Ljava/io/InputStream;J)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .local v2, "raw":[B
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_0
    nop

    .line 138
    invoke-static {p0, p1, v2, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->installFromBytes(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;[BLcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    move-result-object v1

    return-object v1

    .line 133
    .end local v2    # "raw":[B
    .restart local v1    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .end local p2    # "listener":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .restart local p2    # "listener":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Persistent permission for the MEDIA_MOD ROM is unavailable"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MEDIA_MOD graphics are denied by source policy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MEDIA_MOD selection is required"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Context is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static installFromBytes(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;[BLcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;
    .locals 40
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p2, "raw"    # [B
    .param p3, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, " direct maps, "

    const-string v4, ", build="

    const-string v5, ", projectile="

    const-string v6, " buildings, "

    const-string v7, " units, "

    const-string v8, " (45, non-READY)"

    const-string v9, " ("

    if-eqz v2, :cond_e

    array-length v0, v2

    if-eqz v0, :cond_e

    .line 145
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v10, v2

    int-to-long v10, v10

    invoke-static {v0, v10, v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->analyze(Ljava/io/InputStream;J)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;

    move-result-object v12

    .line 147
    .local v12, "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v10, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq v0, v10, :cond_d

    .line 150
    invoke-static {v2}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v10

    .line 151
    .local v10, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    iget-object v13, v10, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 153
    .local v13, "rom":[B
    invoke-static {v1}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->createStaging(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    .line 154
    .local v14, "stage":Ljava/io/File;
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 156
    .local v15, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v16, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, ""

    .line 161
    .local v11, "adapterSummary":Ljava/lang/String;
    :try_start_0
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_65

    if-eq v0, v2, :cond_8

    :try_start_1
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v0, v2, :cond_0

    move-object/from16 v2, v16

    goto/16 :goto_a

    .line 533
    :cond_0
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-ne v0, v2, :cond_2

    .line 537
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-object v2, v0

    .line 538
    .local v2, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_e

    move-object v3, v0

    .line 540
    .local v3, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_start_2
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 541
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;

    move-result-object v0

    .line 542
    .local v0, "audit":Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;
    iget-boolean v4, v0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->referenceFingerprint:Z

    if-eqz v4, :cond_1

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R82B Requite reference audited ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;->emcBanks:Ljava/util/List;

    .line 543
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " compiled EMC banks; compiled combat multipliers NOT VERIFIED; non-READY)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 545
    :cond_1
    const-string v4, "R82B variant recognized (layout and combat unverified; non-READY)"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_e

    :goto_0
    move-object v11, v4

    .line 549
    .end local v0    # "audit":Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$Result;
    :goto_1
    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v31, v16

    goto/16 :goto_32

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "unverifiedR82b":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R82B layout audit failed (non-READY): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 548
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .end local v0    # "unverifiedR82b":Ljava/io/IOException;
    goto :goto_1

    .line 550
    .end local v2    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v3    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :cond_2
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-static {v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->isRebuild(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_e

    if-eqz v0, :cond_7

    .line 551
    :try_start_4
    new-instance v0, Ljava/io/File;

    const-string v2, "group-dunehack-r80-r81"

    invoke-direct {v0, v14, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_c

    move-object v2, v0

    .line 552
    .local v2, "adapterRoot":Ljava/io/File;
    const/4 v3, 0x0

    .line 553
    .local v3, "baseStaticPatterns":[B
    const/4 v4, 0x0

    .line 555
    .local v4, "baseDirectLayouts":[B
    :try_start_5
    const-string v0, "tactical/static_patterns_922_2047.bin"

    invoke-static {v1, v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readBaseTacticalAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    move-object v3, v0

    .line 557
    const-string v0, "tactical/direct_layouts.bin"

    invoke-static {v1, v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readBaseTacticalAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e

    move-object v4, v0

    .line 562
    goto :goto_2

    .line 559
    :catch_1
    move-exception v0

    .line 563
    :goto_2
    :try_start_6
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda1;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_c

    move-object/from16 v5, p3

    :try_start_7
    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)V

    .line 564
    invoke-static {v13, v2, v0, v3, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move-result-object v0

    .line 568
    .local v0, "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;->summary()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    .line 569
    const-string v17, "WORLD_TERRAIN_RADAR"

    .line 571
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v18
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    .line 569
    move-object/from16 v19, v15

    move-object/from16 v20, v16

    move-object/from16 v16, v0

    move-object v15, v14

    move-object v14, v2

    .end local v0    # "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .end local v2    # "adapterRoot":Ljava/io/File;
    .local v14, "adapterRoot":Ljava/io/File;
    .local v15, "stage":Ljava/io/File;
    .local v16, "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .local v19, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v20, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_8
    invoke-static/range {v14 .. v20}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->importAdaptedTerrain(Ljava/io/File;Ljava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v6, v14

    move-object v14, v15

    move-object/from16 v7, v16

    move-object/from16 v15, v19

    move-object/from16 v2, v20

    .line 572
    .end local v16    # "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .end local v19    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "terrainImported":I
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v6, "adapterRoot":Ljava/io/File;
    .local v7, "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .local v14, "stage":Ljava/io/File;
    .local v15, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :try_start_9
    invoke-static {v6, v14, v7, v15, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->importAdaptedTactical(Ljava/io/File;Ljava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;Ljava/util/Map;Ljava/util/List;)I

    move-result v8

    .line 573
    .local v8, "tacticalImported":I
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->entries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    if-lt v0, v9, :cond_3

    .line 574
    :try_start_a
    sget-object v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    goto :goto_3

    .line 619
    .end local v0    # "terrainImported":I
    .end local v3    # "baseStaticPatterns":[B
    .end local v4    # "baseDirectLayouts":[B
    .end local v6    # "adapterRoot":Ljava/io/File;
    .end local v7    # "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .end local v8    # "tacticalImported":I
    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v16, v2

    move-object/from16 v38, v10

    goto/16 :goto_3a

    :catch_3
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v16, v2

    move-object/from16 v38, v10

    goto/16 :goto_3a

    .line 575
    .restart local v0    # "terrainImported":I
    .restart local v3    # "baseStaticPatterns":[B
    .restart local v4    # "baseDirectLayouts":[B
    .restart local v6    # "adapterRoot":Ljava/io/File;
    .restart local v7    # "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .restart local v8    # "tacticalImported":I
    :cond_3
    if-lez v0, :cond_4

    sget-object v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 576
    :cond_4
    :try_start_b
    sget-object v9, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    :goto_3
    nop

    .line 577
    .local v9, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    invoke-static {}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->legacyEntries()Ljava/util/List;

    move-result-object v16
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6

    move-object/from16 v20, v2

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_c
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-lt v8, v2, :cond_5

    .line 578
    sget-object v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    goto :goto_4

    .line 579
    :cond_5
    if-lez v8, :cond_6

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    goto :goto_4

    .line 580
    :cond_6
    sget-object v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    :goto_4
    nop

    .line 581
    .local v2, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    invoke-static {v6}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 582
    .end local v0    # "terrainImported":I
    .end local v3    # "baseStaticPatterns":[B
    .end local v4    # "baseDirectLayouts":[B
    .end local v6    # "adapterRoot":Ljava/io/File;
    .end local v7    # "adapted":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .end local v8    # "tacticalImported":I
    move-object v3, v2

    move-object v2, v9

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v31, v20

    goto/16 :goto_32

    .line 619
    .end local v2    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v9    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    move-object/from16 v6, p1

    move-object/from16 v38, v10

    move-object/from16 v16, v20

    goto/16 :goto_3a

    .end local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_6
    move-object/from16 v20, v2

    move-object/from16 v6, p1

    move-object/from16 v38, v10

    move-object/from16 v16, v20

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_3a

    .end local v14    # "stage":Ljava/io/File;
    .local v15, "stage":Ljava/io/File;
    .restart local v19    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    :goto_7
    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v6, p1

    move-object/from16 v38, v10

    move-object/from16 v16, v20

    .end local v19    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v14    # "stage":Ljava/io/File;
    .local v15, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    goto/16 :goto_3a

    .end local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_a
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_8

    :catch_d
    move-exception v0

    :goto_8
    move-object/from16 v5, p3

    :goto_9
    move-object/from16 v20, v16

    move-object/from16 v6, p1

    move-object/from16 v38, v10

    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_3a

    .line 583
    .end local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v5, p3

    move-object/from16 v20, v16

    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v17, v5

    .end local v20    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_d
    invoke-static/range {v12 .. v17}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->extractTerrainRadar(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;[BLjava/io/File;Ljava/util/Map;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v0

    move-object v2, v0

    .line 584
    .local v2, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    move-object/from16 v17, p3

    invoke-static/range {v12 .. v17}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->extractTactical(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;[BLjava/io/File;Ljava/util/Map;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e

    move-object v3, v0

    move-object/from16 v38, v10

    move-object/from16 v36, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v31, v16

    .local v3, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    goto/16 :goto_32

    .line 619
    .end local v2    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v3    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_e
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v38, v10

    goto/16 :goto_3a

    :catch_f
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v38, v10

    goto/16 :goto_3a

    .line 161
    :cond_8
    move-object/from16 v2, v16

    .line 166
    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_a
    :try_start_e
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-object/from16 v16, v0

    .line 167
    .local v16, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_63

    move-object/from16 v17, v0

    .line 172
    .local v17, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :try_start_f
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_28

    move-object/from16 v38, v10

    .end local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .local v38, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    :try_start_10
    iget-object v10, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 173
    invoke-static {v13, v0, v10}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;

    move-result-object v0

    move-object v10, v0

    .line 175
    .local v10, "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    iget-boolean v0, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_27
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_26

    if-eqz v0, :cond_9

    .line 180
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_12

    move-object/from16 v18, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v18, "adapterSummary":Ljava/lang/String;
    :try_start_12
    const-string v11, "R82C Razor ROM audited ("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->emcBanks:Ljava/util/List;

    .line 176
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " EMC banks; Q8.8 coefficients "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->linkedDamageWords:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", modified "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->nonUnityCoefficients:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "; gameplay unverified, non-READY)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_b

    .line 619
    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_10
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v16, v2

    move-object/from16 v11, v18

    goto/16 :goto_3a

    .line 237
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_11
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v11, v18

    goto/16 :goto_f

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v6, p1

    move-object/from16 v16, v2

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    goto/16 :goto_3a

    .line 237
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_13
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    goto/16 :goto_f

    .line 182
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "R82C variant: damage route "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->damageEvidence:Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Evidence;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " (not gameplay verified; non-READY)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_24

    :goto_b
    move-object v11, v0

    .line 186
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :try_start_14
    iget-boolean v0, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_22

    if-eqz v0, :cond_a

    .line 188
    nop

    .line 189
    :try_start_15
    invoke-static {v13, v10}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;

    move-result-object v0

    .line 190
    .local v0, "building":Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    nop

    .line 191
    invoke-static {v13, v10, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;

    move-result-object v18
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_22

    move-object/from16 v19, v18

    .line 192
    .local v19, "hit":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    nop

    .line 193
    move-object/from16 v31, v2

    move-object/from16 v2, v19

    .end local v19    # "hit":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    .local v2, "hit":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    .local v31, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_16
    invoke-static {v13, v10, v0, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;

    move-result-object v18
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1d

    move-object/from16 v19, v18

    .line 198
    .local v19, "callers":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    nop

    .line 199
    move-object/from16 v39, v14

    move-object/from16 v14, v19

    .end local v19    # "callers":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .local v14, "callers":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .local v39, "stage":Ljava/io/File;
    :try_start_17
    invoke-static {v13, v10, v14}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;

    move-result-object v18
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1b

    move-object/from16 v19, v18

    .line 204
    .local v19, "routes":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    nop

    .line 205
    move-object/from16 v22, v15

    move-object/from16 v15, v19

    .end local v19    # "routes":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .local v15, "routes":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .local v22, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :try_start_18
    invoke-static {v13, v10, v14, v15}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;

    move-result-object v18
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_4b

    move-object/from16 v19, v18

    .line 207
    .local v19, "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    move-object/from16 v20, v10

    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .local v20, "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :try_start_19
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_4b

    move-object/from16 v21, v4

    :try_start_1a
    const-string v4, "; damage argument routes "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v15, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (mode0="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v15, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->modeZeroCount:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ", mode1="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v15, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->modeOneCount:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "; event origin unproven, non-READY)"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_4b

    move-object v11, v4

    .line 211
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "; damage contexts: explosion, decay, HP cap (3/3 ROM-attested; local indirect opcode candidates="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_16

    move-object/from16 v18, v11

    move-object/from16 v10, v19

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v19    # "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    .local v10, "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    :try_start_1c
    iget-object v11, v10, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;->possibleIndirectOpcodeOffsets:Ljava/util/List;

    .line 213
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", entire call graph unverified)"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_14

    move-object v11, v4

    .line 215
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v19, v10

    .end local v10    # "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    .restart local v19    # "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    const-string v10, "; building HP/return branch 0x"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->hpSubtractOffset:I

    .line 216
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " -> 0x"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v10, v2, Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;->nonlethalBranchTarget:I

    .line 217
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "; direct damage calls "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v14, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    .line 218
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (indirect / projectile semantics unknown, non-READY)"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_4b

    move-object v11, v4

    goto/16 :goto_d

    .line 619
    .end local v0    # "building":Lcom/ahsim/demulation/DuneHackR82cRazorStructureDamageAudit$Result;
    .end local v2    # "hit":Lcom/ahsim/demulation/DuneHackR82cRazorStructureImpactAudit$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v14    # "callers":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .end local v15    # "routes":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v19    # "origin":Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    :catch_14
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v11, v18

    move-object/from16 v15, v22

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    goto/16 :goto_3a

    .line 220
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :catch_15
    move-exception v0

    move-object/from16 v11, v18

    goto :goto_c

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object/from16 v18, v11

    move-object/from16 v6, p1

    move-object/from16 v15, v22

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    goto/16 :goto_3a

    .line 220
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :catch_17
    move-exception v0

    move-object/from16 v18, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    goto :goto_c

    .end local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_18
    move-exception v0

    goto :goto_c

    :catch_19
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_c

    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .local v10, "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :catch_1a
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v20, v10

    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    goto :goto_c

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v15, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_1b
    move-exception v0

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    goto/16 :goto_3a

    .line 220
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_1c
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v20, v10

    move-object/from16 v22, v15

    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    goto :goto_c

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v39    # "stage":Ljava/io/File;
    .local v14, "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_1d
    move-exception v0

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v16, v31

    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_3a

    .line 220
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_1e
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v20, v10

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto :goto_c

    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_1f
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v10

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .line 221
    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v0, "buildingError":Ljava/io/IOException;
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    :goto_c
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; building damage route NOT verified"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_4b

    move-object v11, v2

    .line 222
    .end local v0    # "buildingError":Ljava/io/IOException;
    :goto_d
    goto :goto_e

    .line 237
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :catch_20
    move-exception v0

    goto/16 :goto_f

    .line 228
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :cond_a
    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v10

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .line 229
    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    :try_start_1f
    invoke-static {v13}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;->surveyCandidate([B)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;

    move-result-object v0

    .line 230
    .local v0, "candidate":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; structure damage direct-call candidates "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    .line 231
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (UNVERIFIED, non-READY)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_4b

    move-object v11, v2

    .line 235
    .end local v0    # "candidate":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    goto :goto_e

    .line 232
    :catch_21
    move-exception v0

    .line 239
    .end local v20    # "razor":Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    :goto_e
    goto/16 :goto_10

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_22
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v16, v31

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_3a

    .line 237
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_23
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_f

    .line 619
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    :catch_24
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v11, v18

    move-object/from16 v16, v31

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_3a

    .line 237
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_25
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v11, v18

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto :goto_f

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_26
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v18, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v16, v31

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_3a

    .line 237
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_27
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v18, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    goto :goto_f

    .line 619
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_28
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v38, v10

    move-object/from16 v18, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    move-object/from16 v6, p1

    move-object/from16 v16, v31

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v18    # "adapterSummary":Ljava/lang/String;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v39    # "stage":Ljava/io/File;
    goto/16 :goto_3a

    .line 237
    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v39    # "stage":Ljava/io/File;
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_29
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v21, v4

    move-object/from16 v38, v10

    move-object/from16 v18, v11

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    .line 238
    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local v0, "razorAuditError":Ljava/io/IOException;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v39    # "stage":Ljava/io/File;
    :goto_f
    :try_start_20
    const-string v2, "R82C Razor combat layout unverified (non-READY)"
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_61

    move-object v11, v2

    .line 246
    .end local v0    # "razorAuditError":Ljava/io/IOException;
    :goto_10
    :try_start_21
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 247
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v0

    move-object v2, v0

    .line 248
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    invoke-static {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionStore;->save(Landroid/content/Context;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 249
    .local v4, "state":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "; Razor campaign data "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "/45 decoded, "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " expanded-map missions; "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->unsupportedScenarioSlots:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " blocked; NO GAMEPLAY READY)"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_4b

    move-object v11, v0

    .line 256
    nop

    .line 257
    :try_start_22
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeWorldPreview;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;

    move-result-object v0

    move-object v10, v0

    .line 258
    .local v10, "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "; native Razor preflight: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v10, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->native64MapMissions:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " maps <=64, "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v10, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->expanded128MapMissions:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " need 128x128 runtime (non-READY)"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_4a
    .catch Ljava/lang/LinkageError; {:try_start_22 .. :try_end_22} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_4b

    move-object v11, v0

    .line 265
    nop

    .line 266
    :try_start_23
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeMissionState;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeMissionState$Summary;

    move-result-object v0

    move-object v14, v0

    .line 267
    .local v14, "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "; Razor native initial state "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v14, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->parsed:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/45 parsed, "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v14, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->rawFifthHouseDefinitions:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " fifth-house records (non-READY)"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_46
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_23} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_4b

    move-object v11, v0

    .line 275
    nop

    .line 276
    :try_start_24
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeIdentityBridge;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;

    move-result-object v0

    move-object v15, v0

    .line 277
    .local v15, "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_42
    .catch Ljava/lang/LinkageError; {:try_start_24 .. :try_end_24} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_4b

    move-object/from16 v18, v4

    .end local v4    # "state":Ljava/lang/String;
    .local v18, "state":Ljava/lang/String;
    :try_start_25
    const-string v4, "; Razor source identities "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v15, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->scenarios:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/45 missions, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v15, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->sourceUnits:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v15, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->placedStructures:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v15, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->expandedMissions:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " expanded grids (non-READY)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_40
    .catch Ljava/lang/LinkageError; {:try_start_25 .. :try_end_25} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_4b

    move-object v11, v0

    .line 286
    :try_start_26
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeWorldHost;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;

    move-result-object v0

    move-object v4, v0

    .line 287
    .local v4, "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_3c
    .catch Ljava/lang/LinkageError; {:try_start_26 .. :try_end_26} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_4b

    move-object/from16 v19, v10

    .end local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .local v19, "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :try_start_27
    const-string v10, "; Razor native host bootstrap "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v4, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->missions:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "/45, "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v4, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->units:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v4, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->buildings:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;->extendedGrids:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " expanded grids (EMC not connected, non-READY)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_3a
    .catch Ljava/lang/LinkageError; {:try_start_27 .. :try_end_27} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_4b

    move-object v11, v0

    .line 296
    nop

    .line 297
    :try_start_28
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot;->inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;

    move-result-object v0

    move-object v6, v0

    .line 298
    .local v6, "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "; Razor render source "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->directMaps:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->compactPending:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " compact pending, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v6, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->objects:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " object anchors (sprites/EMC not connected, non-READY)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_36
    .catch Ljava/lang/LinkageError; {:try_start_28 .. :try_end_28} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_4b

    move-object v11, v0

    .line 308
    :try_start_29
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 309
    invoke-static {v13, v0, v2}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->inspect([BLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    move-result-object v0

    .line 311
    .local v0, "terrain":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; Razor terrain "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 312
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " palettes, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 313
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x168

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " descriptors, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMaps:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " direct tile grids, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactPending:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " compact maps, centre placement audited; ROM graphics "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 316
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x39c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " VRAM patterns, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 317
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x200

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " terrain metatiles verified (runtime rendering/EMC pending, non-READY)"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_32
    .catch Ljava/lang/LinkageError; {:try_start_29 .. :try_end_29} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_4b

    move-object v11, v7

    .line 324
    nop

    .line 325
    :try_start_2a
    invoke-static {v2}, Lcom/ahsim/demulation/RazorTerrainAtlas;->inspectMapUsage(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;

    move-result-object v7

    .line 326
    .local v7, "atlasMaps":Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_31
    .catch Ljava/lang/LinkageError; {:try_start_2a .. :try_end_2a} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_2f

    move-object/from16 v20, v2

    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v20, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :try_start_2b
    const-string v2, "; Razor 512-tile atlas 16x32 (4 palettes, diagnostic preview only); raw map bytes "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_2e
    .catch Ljava/lang/LinkageError; {:try_start_2b .. :try_end_2b} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_2f

    move-object/from16 v23, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v23, "adapterSummary":Ljava/lang/String;
    :try_start_2c
    iget-wide v10, v7, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->directCells:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " cells in "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v7, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->fullMaps:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->compactMaps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " compact still pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2c
    .catch Ljava/lang/LinkageError; {:try_start_2c .. :try_end_2c} :catch_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_2a

    .line 334
    .end local v0    # "terrain":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local v7    # "atlasMaps":Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .local v2, "adapterSummary":Ljava/lang/String;
    goto :goto_12

    .line 619
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .end local v4    # "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .end local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .end local v14    # "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .end local v15    # "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    :catch_2a
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v15, v22

    move-object/from16 v11, v23

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    goto/16 :goto_3a

    .line 335
    .restart local v4    # "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .restart local v14    # "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .restart local v15    # "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catch_2b
    move-exception v0

    move-object/from16 v11, v23

    goto :goto_14

    .line 332
    .restart local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    :catch_2c
    move-exception v0

    move-object/from16 v11, v23

    goto :goto_11

    .line 335
    .end local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_2d
    move-exception v0

    move-object/from16 v23, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    goto :goto_14

    .line 332
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .restart local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_2e
    move-exception v0

    move-object/from16 v23, v11

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    goto :goto_11

    .line 619
    .end local v4    # "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .end local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .end local v14    # "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .end local v15    # "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_2f
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v6, p1

    move-object/from16 v15, v22

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    goto/16 :goto_3a

    .line 335
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v4    # "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v14    # "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .restart local v15    # "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :catch_30
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v23, v11

    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    goto :goto_14

    .line 332
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .restart local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_31
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v23, v11

    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v23    # "adapterSummary":Ljava/lang/String;
    goto :goto_11

    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v23    # "adapterSummary":Ljava/lang/String;
    .restart local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_32
    move-exception v0

    move-object/from16 v20, v2

    .line 333
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v0, "terrainNotVerified":Ljava/io/IOException;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_11
    :try_start_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor terrain source unverified (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_34
    .catch Ljava/lang/LinkageError; {:try_start_2d .. :try_end_2d} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_4b

    .line 337
    .end local v0    # "terrainNotVerified":Ljava/io/IOException;
    .end local v6    # "render":Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_12
    goto :goto_15

    .line 335
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_33
    move-exception v0

    goto :goto_14

    :catch_34
    move-exception v0

    goto :goto_14

    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catch_35
    move-exception v0

    goto :goto_13

    :catch_36
    move-exception v0

    :goto_13
    move-object/from16 v20, v2

    .line 336
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v0, "renderError":Ljava/lang/Throwable;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_14
    :try_start_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor render source pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_38
    .catch Ljava/lang/LinkageError; {:try_start_2e .. :try_end_2e} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_4b

    .line 340
    .end local v0    # "renderError":Ljava/lang/Throwable;
    .end local v4    # "host":Lcom/ahsim/demulation/RazorNativeWorldHost$Summary;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_15
    goto :goto_19

    .line 338
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_37
    move-exception v0

    goto :goto_18

    :catch_38
    move-exception v0

    goto :goto_18

    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catch_39
    move-exception v0

    goto :goto_16

    :catch_3a
    move-exception v0

    :goto_16
    move-object/from16 v20, v2

    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    goto :goto_18

    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :catch_3b
    move-exception v0

    goto :goto_17

    :catch_3c
    move-exception v0

    :goto_17
    move-object/from16 v20, v2

    move-object/from16 v19, v10

    .line 339
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .local v0, "hostError":Ljava/lang/Throwable;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_18
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor native host pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_3e
    .catch Ljava/lang/LinkageError; {:try_start_2f .. :try_end_2f} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_4b

    .line 343
    .end local v0    # "hostError":Ljava/lang/Throwable;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v15    # "identities":Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_19
    goto :goto_1d

    .line 341
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_3d
    move-exception v0

    goto :goto_1c

    :catch_3e
    move-exception v0

    goto :goto_1c

    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :catch_3f
    move-exception v0

    goto :goto_1a

    :catch_40
    move-exception v0

    :goto_1a
    move-object/from16 v20, v2

    move-object/from16 v19, v10

    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    goto :goto_1c

    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v4, "state":Ljava/lang/String;
    .restart local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :catch_41
    move-exception v0

    goto :goto_1b

    :catch_42
    move-exception v0

    :goto_1b
    move-object/from16 v20, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    .line 342
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v4    # "state":Ljava/lang/String;
    .end local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .local v0, "identityError":Ljava/lang/Throwable;
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_1c
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor source identity bridge pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_44
    .catch Ljava/lang/LinkageError; {:try_start_30 .. :try_end_30} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_4b

    .line 346
    .end local v0    # "identityError":Ljava/lang/Throwable;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v14    # "initial":Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_1d
    goto :goto_20

    .line 344
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_44
    move-exception v0

    goto :goto_1f

    .end local v18    # "state":Ljava/lang/String;
    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v4    # "state":Ljava/lang/String;
    .restart local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    :catch_45
    move-exception v0

    goto :goto_1e

    :catch_46
    move-exception v0

    :goto_1e
    move-object/from16 v20, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    .line 345
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v4    # "state":Ljava/lang/String;
    .end local v10    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .local v0, "initialError":Ljava/lang/Throwable;
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_1f
    :try_start_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor native initial state pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_48
    .catch Ljava/lang/LinkageError; {:try_start_31 .. :try_end_31} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_4b

    .line 349
    .end local v0    # "initialError":Ljava/lang/Throwable;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v19    # "nativePreview":Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_20
    goto :goto_23

    .line 347
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_47
    move-exception v0

    goto :goto_22

    :catch_48
    move-exception v0

    goto :goto_22

    .end local v18    # "state":Ljava/lang/String;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v4    # "state":Ljava/lang/String;
    :catch_49
    move-exception v0

    goto :goto_21

    :catch_4a
    move-exception v0

    :goto_21
    move-object/from16 v20, v2

    move-object/from16 v18, v4

    .line 348
    .end local v2    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v4    # "state":Ljava/lang/String;
    .local v0, "nativeError":Ljava/lang/Throwable;
    .restart local v18    # "state":Ljava/lang/String;
    .restart local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_22
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; native Razor preflight pending (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_4b

    .line 352
    .end local v0    # "nativeError":Ljava/lang/Throwable;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v18    # "state":Ljava/lang/String;
    .end local v20    # "missions":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v2, "adapterSummary":Ljava/lang/String;
    :goto_23
    move-object v11, v2

    goto :goto_24

    .line 619
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_4b
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v15, v22

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    goto/16 :goto_3a

    .line 350
    .restart local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .restart local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    :catch_4c
    move-exception v0

    .line 351
    .local v0, "notReady":Ljava/io/IOException;
    :try_start_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Razor mission bridge not verified (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_61

    move-object v11, v2

    .line 354
    .end local v0    # "notReady":Ljava/io/IOException;
    :goto_24
    :try_start_34
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 355
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;

    move-result-object v0

    .line 356
    .local v0, "neutral":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    iget-object v2, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; R82C neutral palette preview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": 4x128-byte game + 96-byte region palette; gameplay/assets still unsupported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_4b

    .line 364
    .end local v0    # "neutral":Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
    .end local v2    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v3, "adapterSummary":Ljava/lang/String;
    move-object v11, v3

    goto :goto_25

    .line 361
    .end local v3    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_4d
    move-exception v0

    .line 362
    .local v0, "unsupported":Ljava/io/IOException;
    :try_start_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C preview unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; no gameplay/graphics overlay imported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_61

    move-object v11, v2

    .line 369
    .end local v0    # "unsupported":Ljava/io/IOException;
    :goto_25
    :try_start_36
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 370
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;

    move-result-object v0

    .line 371
    .local v0, "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    iget-object v2, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 372
    invoke-static {v13, v2}, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;

    move-result-object v2

    .line 373
    .local v2, "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    iget-object v3, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v3, v0, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C scenarios preview "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (45 scenarios + 20 troop parameters, non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_4b

    .line 379
    .end local v0    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .end local v2    # "parameters":Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    .end local v3    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v4, "adapterSummary":Ljava/lang/String;
    move-object v11, v4

    goto :goto_26

    .line 377
    .end local v4    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_4e
    move-exception v0

    .line 378
    .local v0, "unsupportedScenarioLayout":Ljava/io/IOException;
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C scenarios unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_61

    move-object v11, v2

    .line 383
    .end local v0    # "unsupportedScenarioLayout":Ljava/io/IOException;
    :goto_26
    :try_start_38
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 384
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;

    move-result-object v0

    .line 385
    .local v0, "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    iget-object v2, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/DuneHackR82MapContentStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; R82C maps preview "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (45: 10 compact + 35 full, non-READY)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_4b

    .line 391
    .end local v0    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v2    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v3, "adapterSummary":Ljava/lang/String;
    move-object v11, v3

    goto :goto_27

    .line 389
    .end local v3    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_4f
    move-exception v0

    .line 390
    .local v0, "unsupportedMapLayout":Ljava/io/IOException;
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C maps unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_61

    move-object v11, v2

    .line 396
    .end local v0    # "unsupportedMapLayout":Ljava/io/IOException;
    :goto_27
    :try_start_3a
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 397
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;

    move-result-object v0

    .line 398
    .local v0, "auditedScenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    nop

    .line 399
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decodeAuditedBank(Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;

    move-result-object v2

    .line 400
    .local v2, "records":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
    iget-object v3, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C scenario records decoded "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 407
    nop

    .line 408
    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->auditBank(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    move-result-object v4

    .line 409
    .local v4, "identities":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    iget-object v6, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;)Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "identityState":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; R82C object IDs audited "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " (5 houses, 32 unit types, 19 structure types; non-READY)"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_4b

    .line 415
    .end local v0    # "auditedScenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .end local v2    # "records":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "identities":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    .end local v6    # "identityState":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v7, "adapterSummary":Ljava/lang/String;
    move-object v11, v7

    goto :goto_28

    .line 413
    .end local v7    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_50
    move-exception v0

    .line 414
    .local v0, "unsupportedRecordLayout":Ljava/io/IOException;
    :try_start_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C scenario records unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_61

    move-object v11, v2

    .line 421
    .end local v0    # "unsupportedRecordLayout":Ljava/io/IOException;
    :goto_28
    :try_start_3c
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 422
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;

    move-result-object v0

    move-object v2, v0

    .line 423
    .local v2, "emc":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 425
    .restart local v3    # "state":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; R82C EMC dependency audit "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " (build 19, team 6, unit 27 scripts; native ABI unverified, non-READY)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_4b

    move-object v11, v0

    .line 431
    :try_start_3d
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 432
    invoke-static {v13, v0, v2}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;)Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;

    move-result-object v0

    move-object v4, v0

    .line 433
    .local v4, "dispatch":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/ahsim/demulation/DuneHackR82UnitDispatchStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 435
    .local v6, "dispatchState":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "; R82C unit EMC mappings "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " (32 types, 27 scripts, 5 aliases; native ABI unverified, non-READY)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_4b

    move-object v11, v0

    .line 440
    nop

    .line 441
    :try_start_3e
    invoke-static {v13, v2, v4}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;->inspect([BLcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;)Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;

    move-result-object v0

    .line 442
    .local v0, "nativeAbi":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;
    iget-object v7, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v7, v0}, Lcom/ahsim/demulation/DuneHackR82NativeAbiStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "nativeState":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "; R82C EMC native IDs "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " (unit 53, build 14, team 13; semantics unverified, non-READY)"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_4b

    .line 448
    .end local v0    # "nativeAbi":Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Result;
    .end local v7    # "nativeState":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v10, "adapterSummary":Ljava/lang/String;
    goto :goto_29

    .line 446
    .end local v10    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_51
    move-exception v0

    .line 447
    .local v0, "unverifiedNative":Ljava/io/IOException;
    :try_start_3f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "; R82C EMC native ID audit unverified (non-READY)"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_52
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_4b

    move-object v10, v7

    .line 451
    .end local v0    # "unverifiedNative":Ljava/io/IOException;
    .end local v4    # "dispatch":Lcom/ahsim/demulation/DuneHackR82UnitDispatchProbe$Result;
    .end local v6    # "dispatchState":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v10    # "adapterSummary":Ljava/lang/String;
    :goto_29
    goto :goto_2a

    .line 449
    .end local v10    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 450
    .local v0, "unknownDispatcher":Ljava/io/IOException;
    :try_start_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C unit EMC dispatcher unverified (non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_4b

    move-object v10, v4

    .line 454
    .end local v0    # "unknownDispatcher":Ljava/io/IOException;
    .end local v2    # "emc":Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Result;
    .end local v3    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v10    # "adapterSummary":Ljava/lang/String;
    :goto_2a
    move-object v11, v10

    goto :goto_2b

    .line 452
    .end local v10    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_53
    move-exception v0

    .line 453
    .local v0, "unsupportedEmc":Ljava/io/IOException;
    :try_start_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C EMC dependencies unverified (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_61

    move-object v11, v2

    .line 460
    .end local v0    # "unsupportedEmc":Ljava/io/IOException;
    :goto_2b
    :try_start_42
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 461
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;

    move-result-object v0

    move-object v2, v0

    .line 462
    .local v2, "hooks":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/ahsim/demulation/DuneHackR82AsmHookStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 464
    .restart local v3    # "state":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; R82C ASM hook opcode audit "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->opcodeObservations:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " locations observed, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;->unresolvedHooks:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " unresolved; semantics unverified, non-READY)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_4b

    move-object v11, v0

    .line 470
    nop

    .line 471
    :try_start_43
    invoke-static {v13, v2}, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;

    move-result-object v0

    .line 472
    .local v0, "damage":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C combat damage paths unit="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", structure="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Evidence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (multipliers unverified, non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_4b

    .line 477
    .end local v0    # "damage":Lcom/ahsim/demulation/DuneHackR82DamageHookAudit$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v4, "adapterSummary":Ljava/lang/String;
    move-object v11, v4

    goto :goto_2c

    .line 475
    .end local v4    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 476
    .local v0, "damageAuditError":Ljava/io/IOException;
    :try_start_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C damage hook audit unavailable (non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_4b

    move-object v11, v4

    .line 482
    .end local v0    # "damageAuditError":Ljava/io/IOException;
    :goto_2c
    nop

    .line 483
    :try_start_45
    invoke-static {v13, v2}, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;

    move-result-object v0

    .line 484
    .local v0, "weapon":Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C weapon hook audit DeathHand="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->deathHand:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;->projectileSurface:Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Evidence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (weapon behavior / settings unverified, non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_4b

    .line 489
    .end local v0    # "weapon":Lcom/ahsim/demulation/DuneHackR82WeaponHookAudit$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v4    # "adapterSummary":Ljava/lang/String;
    move-object v11, v4

    goto :goto_2d

    .line 487
    .end local v4    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_55
    move-exception v0

    .line 488
    .local v0, "weaponAuditError":Ljava/io/IOException;
    :try_start_46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C weapon hook audit unavailable (non-READY)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_4b

    move-object v11, v4

    .line 494
    .end local v0    # "weaponAuditError":Ljava/io/IOException;
    :goto_2d
    :try_start_47
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 495
    invoke-static {v13, v0, v2}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;)Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;

    move-result-object v0

    .line 496
    .local v0, "code":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; R82C compiled combat: unit="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->unitDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    iget-object v6, v6, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, v21

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->structureDamage:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    iget-object v7, v7, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", DeathHand="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->deathHand:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    iget-object v7, v7, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->projectileSurface:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;

    iget-object v5, v5, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", linked damage table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;->linkedPrimaryDamageTableWords:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " words (runtime behavior unverified, non-READY)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 504
    nop

    .line 505
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit;->inspect([BLcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;)Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;

    move-result-object v4

    .line 506
    .local v4, "route":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; R82C damage handler routes: unit="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->units:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    iget-object v7, v7, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->evidence:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;->structures:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;

    iget-object v6, v6, Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Route;->evidence:Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Evidence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (reachability/semantics unverified, non-READY)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_56
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_4b

    .line 511
    .end local v0    # "code":Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Result;
    .end local v4    # "route":Lcom/ahsim/demulation/DuneHackR82ActiveDamageRouteAudit$Result;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v5, "adapterSummary":Ljava/lang/String;
    goto :goto_2e

    .line 509
    .end local v5    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 510
    .local v0, "codeAuditError":Ljava/io/IOException;
    :try_start_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; R82C compiled combat audit unavailable (non-READY)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_4b

    move-object v5, v4

    .line 514
    .end local v0    # "codeAuditError":Ljava/io/IOException;
    .end local v2    # "hooks":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    .end local v3    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v5    # "adapterSummary":Ljava/lang/String;
    :goto_2e
    move-object v11, v5

    goto :goto_2f

    .line 512
    .end local v5    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 513
    .local v0, "unverifiedHooks":Ljava/io/IOException;
    :try_start_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C ASM hook audit unavailable (non-READY)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_61

    move-object v11, v2

    .line 519
    .end local v0    # "unverifiedHooks":Ljava/io/IOException;
    :goto_2f
    :try_start_4a
    iget-object v0, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 520
    invoke-static {v13, v0}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    move-result-object v0

    .line 521
    .local v0, "campaign":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    iget-object v2, v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-eq v2, v3, :cond_c

    .line 522
    iget-object v2, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "state":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-ne v4, v5, :cond_b

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; R82C campaign pairs verified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    .line 526
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; R82C campaign layout candidate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (house mapping unverified)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    .end local v2    # "state":Ljava/lang/String;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v3, "adapterSummary":Ljava/lang/String;
    move-object v11, v3

    goto :goto_31

    .line 528
    .end local v3    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C campaign layout unverified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_4b

    move-object v11, v2

    .end local v11    # "adapterSummary":Ljava/lang/String;
    .local v2, "adapterSummary":Ljava/lang/String;
    goto :goto_31

    .line 530
    .end local v0    # "campaign":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    .end local v2    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 531
    .local v0, "unsupportedCampaignLayout":Ljava/io/IOException;
    :try_start_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; R82C campaign layout unsupported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_61

    move-object v11, v2

    .line 532
    .end local v0    # "unsupportedCampaignLayout":Ljava/io/IOException;
    :goto_31
    move-object/from16 v36, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    .line 591
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v16    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v17    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .local v2, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .local v3, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .local v36, "adapterSummary":Ljava/lang/String;
    :goto_32
    move-object/from16 v15, v22

    move-object/from16 v4, v31

    move-object/from16 v14, v39

    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .local v4, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "stage":Ljava/io/File;
    .local v15, "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :try_start_4c
    invoke-static {v1, v14, v15, v4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->removeBaseIdenticalEntries(Landroid/content/Context;Ljava/io/File;Ljava/util/Map;Ljava/util/List;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;

    move-result-object v0

    .line 592
    .local v0, "comparison":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
    iget v5, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainCandidates:I

    iget v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainIdentical:I

    invoke-static {v2, v5, v6}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->stateAfterBaseComparison(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;II)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v26

    .line 594
    .end local v2    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .local v26, "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    iget v2, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalCandidates:I

    iget v5, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalIdentical:I

    invoke-static {v3, v2, v5}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->stateAfterBaseComparison(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;II)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v27

    .line 597
    .end local v3    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .local v27, "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    new-instance v16, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;

    iget-object v2, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    iget-object v3, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    iget-object v5, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 601
    invoke-virtual {v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->name()Ljava/lang/String;

    move-result-object v19

    .line 602
    invoke-virtual/range {v26 .. v26}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v27 .. v27}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->name()Ljava/lang/String;

    move-result-object v21
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_5f

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v22, v15

    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :try_start_4d
    invoke-direct/range {v16 .. v22}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_5d

    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    move-object/from16 v2, v16

    .line 603
    .local v2, "request":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;
    nop

    .line 604
    :try_start_4e
    invoke-static {v1, v14, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->commit(Landroid/content/Context;Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    move-result-object v37

    .line 605
    .local v37, "snapshot":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    iget-object v3, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    iget-object v5, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_60
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_5f

    move-object/from16 v6, p1

    :try_start_4f
    invoke-static {v1, v6, v3, v5}, Lcom/ahsim/demulation/RomSelectionStore;->recordOverlayFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    invoke-virtual {v12, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capability(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    move-result-object v3

    .line 609
    .local v3, "terrainCapability":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    invoke-virtual {v12, v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capability(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    move-result-object v5

    .line 611
    .local v5, "tacticalCapability":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    new-instance v17, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;

    iget-object v7, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    iget-object v8, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    iget-object v9, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileLabel:Ljava/lang/String;

    iget-object v10, v12, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    iget-object v11, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    iget-object v1, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->evidence:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->state:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    move-object/from16 v24, v1

    iget-object v1, v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;->evidence:Ljava/lang/String;

    .line 615
    invoke-virtual {v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->candidateTotal()I

    move-result v28

    .line 616
    invoke-virtual {v0}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->identicalTotal()I

    move-result v29

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->size()I

    move-result v30

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->identicalPaths:Ljava/util/ArrayList;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->visuallyIdenticalPaths:Ljava/util/ArrayList;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->details:Ljava/util/ArrayList;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_5b

    move-object/from16 v35, v1

    move-object/from16 v31, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_50
    invoke-direct/range {v17 .. v37}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_5a
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_59

    move-object/from16 v16, v31

    .line 611
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v17

    .line 619
    .end local v0    # "comparison":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
    .end local v2    # "request":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$CommitRequest;
    .end local v3    # "terrainCapability":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    .end local v5    # "tacticalCapability":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "terrainState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v27    # "tacticalState":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .end local v37    # "snapshot":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_59
    move-exception v0

    goto :goto_33

    :catch_5a
    move-exception v0

    :goto_33
    move-object/from16 v16, v31

    move-object/from16 v11, v36

    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a

    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_5b
    move-exception v0

    goto :goto_36

    :catch_5c
    move-exception v0

    goto :goto_36

    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    :catch_5d
    move-exception v0

    goto :goto_34

    :catch_5e
    move-exception v0

    :goto_34
    move-object/from16 v6, p1

    move-object/from16 v16, v4

    move-object/from16 v15, v22

    move-object/from16 v11, v36

    .end local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a

    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_5f
    move-exception v0

    goto :goto_35

    :catch_60
    move-exception v0

    :goto_35
    move-object/from16 v6, p1

    :goto_36
    move-object/from16 v16, v4

    move-object/from16 v11, v36

    .end local v4    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a

    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v36    # "adapterSummary":Ljava/lang/String;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v39    # "stage":Ljava/io/File;
    :catch_61
    move-exception v0

    goto :goto_37

    :catch_62
    move-exception v0

    :goto_37
    move-object/from16 v6, p1

    move-object/from16 v15, v22

    move-object/from16 v16, v31

    move-object/from16 v14, v39

    .end local v22    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v31    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "stage":Ljava/io/File;
    .restart local v14    # "stage":Ljava/io/File;
    .restart local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3a

    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    :catch_63
    move-exception v0

    goto :goto_38

    :catch_64
    move-exception v0

    :goto_38
    move-object/from16 v6, p1

    move-object/from16 v16, v2

    move-object/from16 v38, v10

    move-object/from16 v18, v11

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .restart local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "adapterSummary":Ljava/lang/String;
    .restart local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    goto :goto_3a

    .end local v18    # "adapterSummary":Ljava/lang/String;
    .end local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v11    # "adapterSummary":Ljava/lang/String;
    :catch_65
    move-exception v0

    goto :goto_39

    :catch_66
    move-exception v0

    :goto_39
    move-object/from16 v6, p1

    move-object/from16 v38, v10

    move-object/from16 v18, v11

    .end local v10    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .restart local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    :goto_3a
    move-object v1, v0

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    :try_start_51
    invoke-static {v14}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore;->deleteRecursively(Ljava/io/File;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_67

    .line 621
    :goto_3b
    goto :goto_3c

    :catch_67
    move-exception v0

    goto :goto_3b

    .line 622
    :goto_3c
    throw v1

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v11    # "adapterSummary":Ljava/lang/String;
    .end local v13    # "rom":[B
    .end local v14    # "stage":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .end local v16    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    :cond_d
    move-object/from16 v6, p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MEDIA_MOD ROM layout is not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v12    # "analysis":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    :cond_e
    move-object/from16 v6, p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MEDIA_MOD ROM is empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isRebuild(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;)Z
    .locals 1
    .param p0, "family"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 978
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

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

.method static synthetic lambda$extractTactical$2(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;IILjava/lang/String;)V
    .locals 1
    .param p0, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .param p1, "done"    # I
    .param p2, "total"    # I
    .param p3, "asset"    # Ljava/lang/String;

    .line 687
    if-eqz p0, :cond_0

    const-string v0, "TACTICAL_SPRITES"

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;->onProgress(Ljava/lang/String;IILjava/lang/String;)V

    .line 690
    :cond_0
    return-void
.end method

.method static synthetic lambda$extractTerrainRadar$1(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;IILjava/lang/String;)V
    .locals 1
    .param p0, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .param p1, "done"    # I
    .param p2, "total"    # I
    .param p3, "asset"    # Ljava/lang/String;

    .line 646
    if-eqz p0, :cond_0

    const-string v0, "WORLD_TERRAIN_RADAR"

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;->onProgress(Ljava/lang/String;IILjava/lang/String;)V

    .line 649
    :cond_0
    return-void
.end method

.method static synthetic lambda$installFromBytes$0(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "listener"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "done"    # I
    .param p3, "total"    # I
    .param p4, "asset"    # Ljava/lang/String;

    .line 566
    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$ProgressListener;->onProgress(Ljava/lang/String;IILjava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method private static readAll(Ljava/io/InputStream;J)[B
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    if-eqz p0, :cond_6

    .line 987
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/32 v2, 0x1000000

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 988
    long-to-int v2, p1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x100000

    .line 989
    .local v2, "initial":I
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 990
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    const v4, 0x8000

    new-array v4, v4, [B

    .line 991
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .line 993
    .local v5, "total":I
    :goto_1
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "n":I
    if-ltz v6, :cond_3

    .line 994
    if-nez v7, :cond_1

    goto :goto_1

    .line 995
    :cond_1
    add-int/2addr v5, v7

    .line 996
    const/high16 v6, 0x1000000

    if-gt v5, v6, :cond_2

    .line 997
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 996
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM is unexpectedly large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_3
    cmp-long v0, p1, v0

    if-lez v0, :cond_5

    int-to-long v0, v5

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM size changed while reading"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 986
    .end local v2    # "initial":I
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "total":I
    .end local v7    # "n":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readBaseTacticalAsset(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v0

    .line 750
    .local v0, "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    iget-object v2, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)V

    .line 751
    .local v1, "baseOnly":Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    invoke-virtual {v1, p1}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method private static readStagedFile(Ljava/io/File;I)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    const/high16 v0, 0x400000

    if-gt p1, v0, :cond_3

    .line 942
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 945
    new-array v0, p1, [B

    .line 946
    .local v0, "data":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 947
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 948
    .local v2, "pos":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 949
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 950
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 951
    add-int/2addr v2, v3

    .line 952
    .end local v3    # "n":I
    goto :goto_0

    .line 950
    .restart local v3    # "n":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Truncated graphics payload during comparison"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v4

    .line 953
    .end local v3    # "n":I
    .restart local v0    # "data":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 954
    .end local v2    # "pos":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 955
    .end local v1    # "in":Ljava/io/FileInputStream;
    return-object v0

    .line 953
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "pos":I
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Graphics payload grew during comparison"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    .end local v2    # "pos":I
    .restart local v0    # "data":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 943
    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Graphics staged payload changed during comparison"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readStagedOrBase(Ljava/io/File;Ljava/util/Map;Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "stage"    # Ljava/io/File;
    .param p2, "relativePath"    # Ljava/lang/String;
    .param p3, "base"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/lang/String;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 936
    .local v0, "item":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    if-nez v0, :cond_0

    return-object p3

    .line 937
    :cond_0
    invoke-static {p0, p2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget v2, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    invoke-static {v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readStagedFile(Ljava/io/File;I)[B

    move-result-object v1

    return-object v1
.end method

.method private static removeBaseIdenticalEntries(Landroid/content/Context;Ljava/io/File;Ljava/util/Map;Ljava/util/List;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stage"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    .local p2, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;>;"
    .local p3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;-><init>(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller-IA;)V

    move-object v4, v0

    .line 843
    .local v4, "result":Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v4

    .line 845
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v5

    .line 848
    .local v5, "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    new-instance v0, Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    iget-object v6, v5, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->installRoot:Ljava/io/File;

    iget-object v7, v5, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-direct {v0, v6, v3, v7}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;Ljava/lang/String;)V

    move-object v3, v0

    .line 854
    .local v3, "baseOnly":Lcom/ahsim/demulation/RomRuntimeWorldAssets;
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "WORLD_TERRAIN_RADAR"

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 855
    .local v6, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    iget-object v8, v6, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 857
    :try_start_0
    invoke-static {v3, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->compareStagedTerrainScene(Lcom/ahsim/demulation/RomRuntimeWorldAssets;Ljava/io/File;Ljava/util/Map;)Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    move-result-object v0

    iput-object v0, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    goto :goto_1

    .line 858
    :catch_0
    move-exception v0

    .line 861
    goto :goto_1

    .line 863
    .end local v6    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    :cond_1
    goto :goto_0

    .line 864
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v0, "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;

    .line 867
    .local v8, "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    iget-object v9, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 868
    .local v9, "terrain":Z
    const-string v10, "TACTICAL_SPRITES"

    iget-object v11, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->group:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 869
    .local v10, "tactical":Z
    if-eqz v9, :cond_3

    iget v11, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainCandidates:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainCandidates:I

    goto :goto_3

    .line 870
    :cond_3
    if-eqz v10, :cond_7

    iget v11, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalCandidates:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalCandidates:I

    .line 873
    :goto_3
    iget-object v11, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/ahsim/demulation/RomRuntimeWorldAssets;->read(Ljava/lang/String;)[B

    move-result-object v11

    .line 874
    .local v11, "base":[B
    iget-object v12, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 877
    .local v12, "staged":Ljava/io/File;
    iget v13, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->length:I

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->readStagedFile(Ljava/io/File;I)[B

    move-result-object v13

    .line 878
    .local v13, "candidate":[B
    iget-object v14, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    .line 879
    invoke-static {v14, v11, v13}, Lcom/ahsim/demulation/RomGraphicsVisualComparator;->compare(Ljava/lang/String;[B[B)Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;

    move-result-object v14

    .line 880
    .local v14, "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    iget-object v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->details:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-boolean v15, v14, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->visualEqual:Z

    if-nez v15, :cond_4

    goto :goto_2

    .line 883
    :cond_4
    if-eqz v9, :cond_5

    iget v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainIdentical:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->terrainIdentical:I

    goto :goto_4

    .line 884
    :cond_5
    iget v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalIdentical:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->tacticalIdentical:I

    .line 885
    :goto_4
    iget-object v15, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v15, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->identicalPaths:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .end local v0    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {v14}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->decodedEquivalentOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 888
    iget-object v0, v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$BaseComparison;->visuallyIdenticalPaths:Ljava/util/ArrayList;

    iget-object v15, v8, Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    .end local v8    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .end local v9    # "terrain":Z
    .end local v10    # "tactical":Z
    .end local v11    # "base":[B
    .end local v12    # "staged":Ljava/io/File;
    .end local v13    # "candidate":[B
    .end local v14    # "detail":Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
    :cond_6
    move-object/from16 v0, v16

    goto :goto_2

    .line 870
    .end local v16    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .restart local v9    # "terrain":Z
    .restart local v10    # "tactical":Z
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 892
    .end local v8    # "entry":Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Entry;
    .end local v9    # "terrain":Z
    .end local v10    # "tactical":Z
    .end local v16    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "identicalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 893
    .local v6, "relativePath":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 895
    invoke-static {v1, v6}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 896
    .local v8, "duplicate":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    .line 897
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not remove BASE-identical staged graphics: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    .end local v6    # "relativePath":Ljava/lang/String;
    .end local v8    # "duplicate":Ljava/io/File;
    :cond_a
    :goto_6
    goto :goto_5

    .line 900
    :cond_b
    move-object/from16 v7, p3

    return-object v4
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

    .line 1004
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 1005
    .local v0, "cr":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 1006
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "rp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1007
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

    .line 1008
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Overlay path escaped staging root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1010
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static stateAfterBaseComparison(Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;II)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 2
    .param p0, "state"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .param p1, "candidates"    # I
    .param p2, "identical"    # I

    .line 905
    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    sub-int v0, p1, p2

    .line 910
    .local v0, "changed":I
    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-ne p0, v1, :cond_1

    if-nez v0, :cond_1

    .line 911
    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v1

    .line 913
    :cond_1
    if-lez v0, :cond_3

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-eq p0, v1, :cond_2

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-ne p0, v1, :cond_3

    .line 914
    :cond_2
    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v1

    .line 916
    :cond_3
    return-object p0

    .line 905
    .end local v0    # "changed":I
    :cond_4
    :goto_0
    return-object p0
.end method
