.class public final Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;
.super Ljava/lang/Object;
.source "RomGraphicsMediaOverlayInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outcome"
.end annotation


# instance fields
.field public final adapterSummary:Ljava/lang/String;

.field public final candidateEntries:I

.field public final comparisonDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;",
            ">;"
        }
    .end annotation
.end field

.field public final identicalEntries:I

.field public final identicalPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public final overlayEntries:I

.field public final overlayPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final profileId:Ljava/lang/String;

.field public final profileLabel:Ljava/lang/String;

.field public final snapshot:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

.field public final sourceSha256:Ljava/lang/String;

.field public final tacticalCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

.field public final tacticalEvidence:Ljava/lang/String;

.field public final tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public final terrainCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

.field public final terrainEvidence:Ljava/lang/String;

.field public final terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public final terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

.field public final visuallyIdenticalPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;IIILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;)V
    .locals 16
    .param p1, "sourceSha256"    # Ljava/lang/String;
    .param p2, "profileId"    # Ljava/lang/String;
    .param p3, "profileLabel"    # Ljava/lang/String;
    .param p4, "layoutFamily"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .param p5, "terrainCapability"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;
    .param p6, "terrainEvidence"    # Ljava/lang/String;
    .param p7, "tacticalCapability"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;
    .param p8, "tacticalEvidence"    # Ljava/lang/String;
    .param p9, "terrainRadar"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .param p10, "tacticalSprites"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .param p11, "candidateEntries"    # I
    .param p12, "identicalEntries"    # I
    .param p13, "overlayEntries"    # I
    .param p18, "terrainScene"    # Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;
    .param p19, "adapterSummary"    # Ljava/lang/String;
    .param p20, "snapshot"    # Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;",
            ">;",
            "Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;",
            ")V"
        }
    .end annotation

    .line 80
    .local p14, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p15, "identicalPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p16, "visuallyIdenticalPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "comparisonDetails":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 81
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->sourceSha256:Ljava/lang/String;

    .line 82
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileId:Ljava/lang/String;

    .line 83
    const-string v3, ""

    if-nez p3, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    :goto_0
    iput-object v4, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->profileLabel:Ljava/lang/String;

    .line 84
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 85
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    .line 86
    if-nez p6, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object/from16 v6, p6

    :goto_1
    iput-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainEvidence:Ljava/lang/String;

    .line 87
    move-object/from16 v6, p7

    iput-object v6, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalCapability:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    .line 88
    if-nez p8, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p8

    :goto_2
    iput-object v7, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalEvidence:Ljava/lang/String;

    .line 89
    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 90
    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 91
    move/from16 v9, p11

    iput v9, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->candidateEntries:I

    .line 92
    move/from16 v10, p12

    iput v10, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalEntries:I

    .line 93
    move/from16 v11, p13

    iput v11, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayEntries:I

    .line 94
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v13, p14

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayPaths:Ljava/util/List;

    .line 95
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v14, p15

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalPaths:Ljava/util/List;

    .line 96
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v15, p16

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->visuallyIdenticalPaths:Ljava/util/List;

    .line 98
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v1, p17

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->comparisonDetails:Ljava/util/List;

    .line 100
    move-object/from16 v12, p18

    iput-object v12, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainScene:Lcom/ahsim/demulation/RomGraphicsVisualComparator$TerrainSceneResult;

    .line 101
    if-nez p19, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v3, p19

    :goto_3
    iput-object v3, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->adapterSummary:Ljava/lang/String;

    .line 102
    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->snapshot:Lcom/ahsim/demulation/RomGraphicsMediaOverlayStore$Snapshot;

    .line 103
    return-void
.end method


# virtual methods
.method public allCompatibleGraphicsIdentical()Z
    .locals 2

    .line 110
    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayEntries:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->candidateEntries:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->identicalEntries:I

    iget v1, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->candidateEntries:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->terrainRadar:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->tacticalSprites:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAnyOverlay()Z
    .locals 1

    .line 105
    iget v0, p0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$Outcome;->overlayEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
