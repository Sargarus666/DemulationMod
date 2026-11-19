.class public final Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
.super Ljava/lang/Object;
.source "RazorTerrainVisualSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainVisualSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    }
.end annotation


# instance fields
.field public final artworkReady:Z

.field public final baseVramPatternsVerified:Z

.field private final bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

.field public final compactPending:I

.field public final compactPreviewVerified:Z

.field public final compactTerrainReady:Z

.field public final compiledMetatileCount:I

.field public final compiledMetatilesVerified:Z

.field public final compiledPatternCount:I

.field private final compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

.field public final descriptorCandidates:I

.field public final descriptorSha256:Ljava/lang/String;

.field private final descriptors:[B

.field public final directMaps:I

.field public final expandedGrids:I

.field public final gameplayReady:Z

.field public final missions:I

.field private final palette:[B

.field public final paletteSha256:Ljava/lang/String;

.field public final paletteVariants:I

.field private final placementEvidence:Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;


# direct methods
.method private constructor <init>([B[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/RazorVramPatternLoader$Result;Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;)V
    .locals 7
    .param p1, "palettes"    # [B
    .param p2, "desc"    # [B
    .param p3, "verified"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p4, "vram"    # Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
    .param p5, "compactEvidence"    # Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->paletteVariants:I

    .line 35
    const/16 v0, 0x168

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->descriptorCandidates:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->artworkReady:Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->baseVramPatternsVerified:Z

    .line 38
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledMetatilesVerified:Z

    .line 39
    const/16 v2, 0x39c

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledPatternCount:I

    .line 40
    const/16 v2, 0x200

    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledMetatileCount:I

    .line 41
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactTerrainReady:Z

    .line 43
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->gameplayReady:Z

    .line 56
    iput-object p4, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    .line 57
    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->placementEvidence:Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    .line 58
    iget v2, p5, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->romVariant:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p5, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->compactBoundsVerified:Z

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactPreviewVerified:Z

    .line 59
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->palette:[B

    .line 60
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->descriptors:[B

    .line 61
    iput-object p3, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    .line 62
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->palette:[B

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->-$$Nest$smsha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->paletteSha256:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->descriptors:[B

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->-$$Nest$smsha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->descriptorSha256:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "c":I
    const/4 v2, 0x0

    .line 65
    .local v2, "e":I
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v3}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 66
    .local v4, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    iget v5, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    :goto_1
    iget v5, v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 68
    .end local v4    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    :cond_2
    goto :goto_0

    .line 69
    :cond_3
    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    iput v3, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->missions:I

    .line 70
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMaps:I

    .line 71
    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactPending:I

    .line 72
    iput v2, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->expandedGrids:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>([B[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/RazorVramPatternLoader$Result;Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;Lcom/ahsim/demulation/RazorTerrainVisualSource-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;-><init>([B[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/RazorVramPatternLoader$Result;Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;)V

    return-void
.end method


# virtual methods
.method bootProbeMission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor boot source mission not authenticated"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compactPlacement(II)Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactSourceCopy(II)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->placementEvidence:Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->place([BLcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;)Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;

    move-result-object v0

    return-object v0
.end method

.method public compactSourceCopy(II)[B
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    nop

    .line 186
    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    iget v1, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Requested mission has no attested compact source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor compact scenario unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public compiledMetatileAttribute(III)I
    .locals 1
    .param p1, "metatile"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 139
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatileAttribute(III)I

    move-result v0

    return v0
.end method

.method public compiledMetatileSha256()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->metatileSha256:Ljava/lang/String;

    return-object v0
.end method

.method public compiledVramSha256()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    iget-object v0, v0, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->patternSha256:Ljava/lang/String;

    return-object v0
.end method

.method public decodeOriginalMetatile(II)[I
    .locals 2
    .param p1, "paletteVariant"    # I
    .param p2, "metatileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compiledVram:Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->palette:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;->decodeMetatile([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public directMapCopy(II)[B
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v0, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    nop

    .line 175
    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor compact 32x32 source requires ROM generator"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v1

    return-object v1

    .line 172
    .end local v0    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor mission map is not verified/available"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public initialObjectScenario(II)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor object mission is unverified"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public loadedTerrainMetatile(IIII)I
    .locals 4
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    move-result-object v0

    .line 198
    .local v0, "info":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    const/4 v1, -0x1

    if-ltz p3, :cond_5

    if-ltz p4, :cond_5

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioWidth:I

    if-ge p3, v2, :cond_5

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->scenarioHeight:I

    if-lt p4, v2, :cond_0

    goto :goto_3

    .line 201
    :cond_0
    iget-boolean v2, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->centeredCompact:Z

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->compactPlacement(II)Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;->rawTile(II)I

    move-result v2

    .local v2, "raw":I
    goto :goto_0

    .line 204
    .end local v2    # "raw":I
    :cond_1
    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-ge p3, v2, :cond_4

    iget v2, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    if-lt p4, v2, :cond_2

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->directMapCopy(II)[B

    move-result-object v2

    .line 206
    .local v2, "data":[B
    iget v3, v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;->storedSide:I

    mul-int/2addr v3, p4

    add-int/2addr v3, p3

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    move v2, v3

    .line 208
    .local v2, "raw":I
    :goto_0
    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->placementEvidence:Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    iget-boolean v1, v1, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->specialMapTileRemap:Z

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->loadedTile(IZ)I

    move-result v1

    :goto_1
    return v1

    .line 204
    .end local v2    # "raw":I
    :cond_4
    :goto_2
    return v1

    .line 199
    :cond_5
    :goto_3
    return v1
.end method

.method public mapInfo(II)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :try_start_0
    new-instance v0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v1, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit$MapInfo;-><init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainVisualSource-IA;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor mission map is not verified/available"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public needsMapGeneration(II)Z
    .locals 2
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offlineRendererInput(II)Lcom/ahsim/demulation/RazorTerrainRendererInput;
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRendererInput;->capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRendererInput;

    move-result-object v0

    return-object v0
.end method

.method public originalMapRemapEnabled()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->placementEvidence:Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    iget-boolean v0, v0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->specialMapTileRemap:Z

    return v0
.end method

.method public paletteCopy()[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->palette:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public paletteWord(III)I
    .locals 2
    .param p1, "variant"    # I
    .param p2, "line"    # I
    .param p3, "index"    # I

    .line 75
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0x10

    if-ge p3, v0, :cond_0

    .line 77
    mul-int/lit16 v0, p1, 0x80

    mul-int/lit8 v1, p2, 0x20

    add-int/2addr v0, v1

    mul-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    .line 78
    .local v0, "p":I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->palette:[B

    invoke-static {v1, v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->-$$Nest$smu16([BI)I

    move-result v1

    return v1

    .line 76
    .end local v0    # "p":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Razor palette index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawTile(IIII)I
    .locals 3
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 212
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0

    .line 213
    .local v0, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    if-ge p3, v1, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    if-ge p4, v1, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v1

    .line 216
    .local v1, "bytes":[B
    iget v2, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    mul-int/2addr v2, p4

    add-int/2addr v2, p3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 214
    .end local v1    # "bytes":[B
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public romSourceSha256()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    iget-object v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    return-object v0
.end method

.method public romVariant()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    return v0
.end method

.method public runtimeTerrainReadPath(II)Lcom/ahsim/demulation/RazorTerrainCellReadPath;
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->runtimeTerrainSnapshot(II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainCellReadPath;->capture(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)Lcom/ahsim/demulation/RazorTerrainCellReadPath;

    move-result-object v0

    return-object v0
.end method

.method public runtimeTerrainSnapshot(II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    .locals 1
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    move-result-object v0

    return-object v0
.end method

.method verifiedCampaignBundle559()Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    return-object v0
.end method

.method public visualDescriptorCandidateCopy()[B
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->descriptors:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
