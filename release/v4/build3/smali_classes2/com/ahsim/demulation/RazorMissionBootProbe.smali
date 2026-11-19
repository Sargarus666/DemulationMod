.class public final Lcom/ahsim/demulation/RazorMissionBootProbe;
.super Ljava/lang/Object;
.source "RazorMissionBootProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    .locals 6
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-eqz p0, :cond_4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bootProbeMission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v2

    .line 55
    .local v2, "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->runtimeTerrainSnapshot(II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    move-result-object v3

    .line 56
    .local v3, "snapshot":Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    invoke-static {v2}, Lcom/ahsim/demulation/RazorNativeWorldHost;->bootstrapMissionForProbe(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)[I

    move-result-object v4

    .line 57
    .local v4, "w":[I
    iget v0, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->house:I

    if-ne v0, p1, :cond_3

    iget v0, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->mission:I

    if-ne v0, p2, :cond_3

    iget v0, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romVariant:I

    .line 58
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->sourceSha256:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    aget v0, v4, v0

    iget v1, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->unknownCells:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    aget v0, v4, v0

    iget v1, v3, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    aget v0, v4, v0

    iget v1, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    aget v0, v4, v0

    const/16 v1, 0x9

    aget v1, v4, v1

    add-int/2addr v0, v1

    iget v1, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    aget v0, v4, v0

    iget v1, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0x11

    aget v0, v4, v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    const/16 v0, 0x19

    aget v1, v4, v0

    if-ltz v1, :cond_1

    aget v0, v4, v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 65
    new-instance v0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    const/4 v5, 0x0

    move-object v1, p0

    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .local v1, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;-><init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;[ILcom/ahsim/demulation/RazorMissionBootProbe-IA;)V

    .line 66
    .local v0, "report":Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    iget-boolean p0, v0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->gameplayReady:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->originalGameplayCompatible:Z

    if-nez p0, :cond_0

    iget-boolean p0, v0, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->emcRuntimeReady:Z

    if-nez p0, :cond_0

    .line 68
    return-object v0

    .line 67
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v5, "Razor unsafe gameplay capability escalation"

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    .end local v0    # "report":Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    .end local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :cond_1
    move-object v1, p0

    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    goto :goto_0

    .line 58
    .end local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :cond_2
    move-object v1, p0

    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    goto :goto_0

    .line 57
    .end local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :cond_3
    move-object v1, p0

    .line 64
    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :goto_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Razor map/initial-world bootstrap integration mismatch"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    .end local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local v2    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v3    # "snapshot":Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    .end local v4    # "w":[I
    .restart local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :cond_4
    move-object v1, p0

    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Razor boot requires authenticated diagnostic-only source"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
