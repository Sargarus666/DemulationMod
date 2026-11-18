.class public final Lcom/ahsim/demulation/RazorCampaignNativeSession;
.super Ljava/lang/Object;
.source "RazorCampaignNativeSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;,
        Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;,
        Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;,
        Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;,
        Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    }
.end annotation


# static fields
.field private static final NATIVE:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;


# instance fields
.field private final access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

.field private final guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

.field private final guardUnitCount:I

.field public final house:I

.field private lastMap559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

.field private lastProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

.field public final mission:I

.field private orderSteps:I

.field private probeSteps:I

.field private registeredDynamicBuilds729:I

.field private routeMode665:Z

.field private schedulerMoves560:I

.field private schedulerTicks560:I

.field public final sourceSha256:Ljava/lang/String;

.field private token:J

.field public final variant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$1;

    invoke-direct {v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession$1;-><init>()V

    sput-object v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->NATIVE:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    return-void
.end method

.method private constructor <init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;JLjava/lang/String;IIILcom/ahsim/demulation/RazorCampaignSessionGuard;)V
    .locals 1
    .param p1, "access"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .param p2, "token"    # J
    .param p4, "sha"    # Ljava/lang/String;
    .param p5, "variant"    # I
    .param p6, "house"    # I
    .param p7, "mission"    # I
    .param p8, "guard"    # Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iput-wide p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    iput-object p4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    .line 120
    iput p5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    iput p6, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    iput-object p8, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 121
    invoke-virtual {p8}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->unitCount()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    .line 122
    return-void
.end method

.method private acceptEmc672([II)[I
    .locals 5
    .param p1, "r"    # [I
    .param p2, "selected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/16 v1, 0x2a0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    aget v1, p1, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x2

    aget v0, p1, v0

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0x16

    aget v0, p1, v0

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    aget v1, p1, v0

    if-ltz v1, :cond_3

    const/4 v1, 0x6

    aget v2, p1, v1

    if-ltz v2, :cond_3

    const/4 v2, 0x7

    aget v3, p1, v2

    if-ltz v3, :cond_3

    const/16 v3, 0x8

    aget v4, p1, v3

    if-ltz v4, :cond_3

    aget v0, p1, v0

    aget v4, p1, v1

    add-int/2addr v0, v4

    aget v2, p1, v2

    add-int/2addr v0, v2

    aget v2, p1, v3

    add-int/2addr v0, v2

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v0, v2, :cond_3

    const/16 v0, 0x9

    aget v2, p1, v0

    if-ltz v2, :cond_3

    aget v2, p1, v0

    aget v3, p1, v1

    if-gt v2, v3, :cond_3

    const/16 v2, 0xa

    aget v2, p1, v2

    aget v1, p1, v1

    aget v0, p1, v0

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_3

    const/4 v0, 0x3

    aget v1, p1, v0

    if-ltz v1, :cond_3

    const/4 v1, 0x4

    aget v2, p1, v1

    if-ltz v2, :cond_3

    const/16 v2, 0xb

    aget v2, p1, v2

    .line 501
    const/4 v3, -0x1

    if-gez p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    if-ne v2, v4, :cond_3

    const/16 v2, 0xe

    aget v4, p1, v2

    if-gez v4, :cond_1

    aget v4, p1, v2

    if-ne v4, v3, :cond_3

    :cond_1
    const/16 v3, 0x10

    aget v3, p1, v3

    if-nez v3, :cond_3

    const/16 v3, 0x11

    aget v4, p1, v3

    if-ltz v4, :cond_3

    aget v3, p1, v3

    aget v4, p1, v1

    if-gt v3, v4, :cond_3

    const/16 v3, 0x12

    aget v3, p1, v3

    const v4, 0x6d7659b5

    if-ne v3, v4, :cond_3

    const/16 v3, 0x13

    aget v3, p1, v3

    aget v0, p1, v0

    if-lt v3, v0, :cond_3

    const/16 v0, 0x17

    aget v3, p1, v0

    if-ltz v3, :cond_3

    aget v0, p1, v0

    if-gt v0, v1, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0xc

    aget v0, p1, v0

    if-ltz v0, :cond_3

    const/16 v0, 0xd

    aget v0, p1, v0

    if-ltz v0, :cond_3

    aget v0, p1, v2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_3

    .line 507
    :cond_2
    return-object p1

    .line 506
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 672 per-unit EMC consistency failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acceptScheduler560([I)Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .locals 9
    .param p1, "w"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    if-eqz p1, :cond_4

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget v0, p1, v0

    const/16 v1, 0x230

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget v1, p1, v0

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_4

    aget v1, p1, v0

    const v2, 0xf4240

    if-gt v1, v2, :cond_4

    const/4 v1, 0x2

    aget v2, p1, v1

    if-eqz v2, :cond_0

    aget v1, p1, v1

    if-ne v1, v0, :cond_4

    :cond_0
    const/16 v1, 0xa

    aget v1, p1, v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    const/16 v2, 0xb

    aget v2, p1, v2

    const/16 v3, 0xc

    aget v3, p1, v3

    const/16 v4, 0xd

    aget v4, p1, v4

    .line 637
    invoke-virtual {v1, v2, v3, v4}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sameSourceHashes(III)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    aget v1, p1, v1

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v1, v2, :cond_4

    const/16 v1, 0x9

    aget v2, p1, v1

    if-eqz v2, :cond_1

    aget v1, p1, v1

    if-ne v1, v0, :cond_4

    :cond_1
    const/4 v1, 0x7

    aget v2, p1, v1

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    if-lt v2, v3, :cond_4

    const/16 v2, 0x8

    aget v3, p1, v2

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    if-lt v3, v4, :cond_4

    aget v3, p1, v1

    aget v4, p1, v2

    if-gt v3, v4, :cond_4

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    iget v5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerMoves560:I

    iget v6, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    .line 640
    invoke-static {p1, v3, v4, v5, v6}, Lcom/ahsim/demulation/RazorSchedulerGuard751;->validMovementDelta([IIIII)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    aget v4, p1, v3

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    aget v4, p1, v3

    if-ltz v4, :cond_4

    aget v4, p1, v3

    iget v8, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge v4, v8, :cond_4

    aget v4, p1, v6

    if-ltz v4, :cond_4

    aget v4, p1, v6

    iget-object v8, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 643
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v8

    if-ge v4, v8, :cond_4

    aget v4, p1, v5

    if-ltz v4, :cond_4

    aget v4, p1, v5

    iget-object v8, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 644
    invoke-virtual {v8}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v8

    if-ge v4, v8, :cond_4

    :cond_2
    aget v3, p1, v3

    if-ne v3, v7, :cond_3

    aget v3, p1, v6

    if-ne v3, v7, :cond_4

    aget v3, p1, v5

    if-ne v3, v7, :cond_4

    .line 649
    :cond_3
    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    const/16 v0, 0xf

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerMoves560:I

    .line 650
    aget v0, p1, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    aget v0, p1, v2

    iput v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    .line 651
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 652
    new-instance v0, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    invoke-direct {v0, p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;-><init>([I)V

    return-object v0

    .line 646
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid native Razor sandbox tick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    iget v5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerMoves560:I

    .line 647
    invoke-static {p1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RazorSchedulerGuard751;->diagnostic([IIIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static open(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .locals 1
    .param p0, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->NATIVE:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->openWithAccess(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;IILcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;)Lcom/ahsim/demulation/RazorCampaignNativeSession;

    move-result-object v0

    return-object v0
.end method

.method static openWithAccess(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;IILcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;)Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .locals 12
    .param p0, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .param p3, "access"    # Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    .line 134
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    .line 136
    const-string v1, "[a-f0-9]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->mission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v0

    .line 142
    .local v1, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    nop

    .line 143
    new-instance v2, Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v4, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v6, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    iget v8, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    iget v9, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    iget v10, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v11, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    mul-int/2addr v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;-><init>(IIIIIIIII)V

    move-object v11, v2

    .line 146
    .local v11, "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    invoke-interface {p3, v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->open(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)J

    move-result-wide v5

    .line 147
    .local v5, "token":J
    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    .line 148
    new-instance v3, Lcom/ahsim/demulation/RazorCampaignNativeSession;

    iget-object v7, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    iget v8, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    move v9, p1

    move v10, p2

    move-object v4, p3

    .end local p1    # "house":I
    .end local p2    # "mission":I
    .end local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .local v4, "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .local v9, "house":I
    .local v10, "mission":I
    invoke-direct/range {v3 .. v11}, Lcom/ahsim/demulation/RazorCampaignNativeSession;-><init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;JLjava/lang/String;IIILcom/ahsim/demulation/RazorCampaignSessionGuard;)V

    .line 151
    .local v3, "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :try_start_1
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->terrainLookup561()[B

    move-result-object p1

    invoke-interface {v4, v5, v6, p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->terrain561(J[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-interface {v4, v5, v6}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->enableSubtile565(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    return-object v3

    .line 154
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor 565 subtile overlay unavailable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v5    # "token":J
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .end local v11    # "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    .end local p0    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    throw p1

    .line 152
    .restart local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v5    # "token":J
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    .restart local v11    # "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    .restart local p0    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor 561 terrain source profile rejected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v5    # "token":J
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .end local v11    # "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    .end local p0    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .restart local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v5    # "token":J
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    .restart local v11    # "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    .restart local p0    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 158
    .local p1, "failure":Ljava/lang/Throwable;
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw p1

    .line 147
    .end local v3    # "session":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .local p1, "house":I
    .restart local p2    # "mission":I
    .restart local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    :cond_2
    move v9, p1

    move v10, p2

    .end local p1    # "house":I
    .end local p2    # "mission":I
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Native Razor world is busy or rejected"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    .end local v1    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v5    # "token":J
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .end local v11    # "guard":Lcom/ahsim/demulation/RazorCampaignSessionGuard;
    .restart local p1    # "house":I
    .restart local p2    # "mission":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_1
    move v9, p1

    move v10, p2

    move-object v4, p3

    move-object p1, v0

    .line 141
    .end local p2    # "mission":I
    .end local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    .local p1, "e":Ljava/lang/RuntimeException;
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor mission slot is not supported"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 136
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .local p1, "house":I
    .restart local p2    # "mission":I
    .restart local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    :cond_3
    move v9, p1

    move v10, p2

    move-object v4, p3

    .end local p1    # "house":I
    .end local p2    # "mission":I
    .end local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    goto :goto_2

    .line 135
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .restart local p1    # "house":I
    .restart local p2    # "mission":I
    .restart local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    :cond_4
    move v9, p1

    move v10, p2

    move-object v4, p3

    .end local p1    # "house":I
    .end local p2    # "mission":I
    .end local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    goto :goto_2

    .line 133
    .end local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .end local v9    # "house":I
    .end local v10    # "mission":I
    .restart local p1    # "house":I
    .restart local p2    # "mission":I
    .restart local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    :cond_5
    move v9, p1

    move v10, p2

    move-object v4, p3

    .line 137
    .end local p1    # "house":I
    .end local p2    # "mission":I
    .end local p3    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v4    # "access":Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;
    .restart local v9    # "house":I
    .restart local v10    # "mission":I
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor profile must use an authenticated nonplayable bundle"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized bootBirthEvidence567()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 788
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->birth567(J)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    .local v0, "row":[I
    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 791
    :cond_0
    :try_start_1
    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x237

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    aget v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x5

    aget v2, v0, v2

    iget-object v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 793
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sourceHashes()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    aget v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    aget v2, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_1

    .line 796
    monitor-exit p0

    return-object v0

    .line 794
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor native birth replay"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    .end local v0    # "row":[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor boot session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized buildEmc715(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)[I
    .locals 5
    .param p1, "source"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 433
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v0, v1, :cond_2

    .line 437
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->buildingCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x49

    if-le v0, v1, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    .line 439
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedBuildEmcCopy715()[B

    move-result-object v0

    .line 438
    invoke-static {v2, v3, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignBuildEmc715(J[B)[I

    move-result-object v0

    .line 440
    .local v0, "row":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/16 v3, 0x2cb

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    aget v3, v0, v2

    if-ne v3, v2, :cond_1

    const/4 v3, 0x2

    aget v4, v0, v3

    if-ltz v4, :cond_1

    aget v3, v0, v3

    if-gt v3, v1, :cond_1

    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    aget v1, v0, v1

    const v3, 0x15cd40e

    if-ne v1, v3, :cond_1

    const/16 v1, 0xb

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0xc

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0xf

    aget v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    .line 445
    monitor-exit p0

    return-object v0

    .line 444
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor BUILD.EMC 715 attach rejected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    .end local v0    # "row":[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor BUILD.EMC 715 source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    .end local p1    # "source":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized buildEmc715Status()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 448
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_1

    .line 450
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignBuildEmc715(J[B)[I

    move-result-object v0

    .line 451
    .local v0, "row":[I
    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->registeredDynamicBuilds729:I

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorBuildStatus729;->accept([II)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 453
    monitor-exit p0

    return-object v0

    .line 452
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor BUILD.EMC 715 status mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    .end local v0    # "row":[I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor BUILD.EMC 715 session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized buildEmcOwner716(I)[I
    .locals 6
    .param p1, "raw"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 481
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->buildingCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/16 v0, 0x49

    if-ge p1, v0, :cond_1

    .line 483
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v0, v1, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignBuildOwner716(JI)[I

    move-result-object v0

    .line 484
    .local v0, "row":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x2cc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x2

    aget v3, v0, v2

    if-ne v3, p1, :cond_0

    const/4 v3, 0x3

    aget v3, v0, v3

    iget-object v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 485
    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->buildingCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    aget v4, v0, v3

    if-ltz v4, :cond_0

    aget v3, v0, v3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    const/4 v3, 0x5

    aget v5, v0, v3

    if-ltz v5, :cond_0

    aget v5, v0, v3

    if-ge v5, v3, :cond_0

    const/16 v3, 0xa

    aget v5, v0, v3

    if-ltz v5, :cond_0

    aget v3, v0, v3

    if-gt v3, v1, :cond_0

    const/16 v3, 0xb

    aget v5, v0, v3

    if-ltz v5, :cond_0

    aget v3, v0, v3

    if-gt v3, v1, :cond_0

    const/16 v1, 0xc

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v1, v0, v1

    const/16 v3, 0x11

    if-gt v1, v3, :cond_0

    const/16 v1, 0xd

    aget v5, v0, v1

    if-ltz v5, :cond_0

    aget v1, v0, v1

    const/16 v5, 0xf

    if-gt v1, v5, :cond_0

    aget v1, v0, v3

    if-ltz v1, :cond_0

    aget v1, v0, v3

    if-gt v1, v2, :cond_0

    const/16 v1, 0x12

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    aget v1, v0, v4

    if-ltz v1, :cond_0

    aget v1, v0, v4

    const/16 v2, 0x1f6

    if-ge v1, v2, :cond_0

    const/16 v1, 0x1f

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 492
    monitor-exit p0

    return-object v0

    .line 491
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 716 owner integrity check failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    .end local v0    # "row":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 716 owner out of range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    .end local p1    # "raw":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 985
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 986
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    .local v0, "old":J
    iput-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    .line 987
    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    invoke-interface {v2, v0, v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->close(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    .end local v0    # "old":J
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    monitor-exit p0

    return-void

    .line 984
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized command557(IIII)Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;
    .locals 33
    .param p1, "action"    # I
    .param p2, "unit"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    monitor-enter p0

    .line 287
    :try_start_0
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-eqz v0, :cond_13

    .line 288
    const/4 v0, 0x1

    if-lt v5, v0, :cond_12

    const/4 v9, 0x3

    if-gt v5, v9, :cond_12

    if-ltz v6, :cond_12

    if-ltz v7, :cond_12

    if-ltz v8, :cond_12

    const/16 v10, 0x80

    if-ne v5, v0, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v2, :cond_12

    if-ge v7, v10, :cond_12

    if-ge v8, v10, :cond_12

    .line 292
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface/range {v2 .. v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->order(JIIII)[I

    move-result-object v2

    .line 293
    .local v2, "w":[I
    if-eqz v2, :cond_11

    array-length v3, v2

    const/16 v4, 0x14

    if-ne v3, v4, :cond_11

    const/4 v3, 0x0

    aget v4, v2, v3

    const/16 v11, 0x22d

    if-ne v4, v11, :cond_11

    aget v4, v2, v0

    if-ne v4, v5, :cond_11

    const/4 v4, 0x2

    aget v11, v2, v4

    if-ltz v11, :cond_11

    aget v11, v2, v4

    const/4 v12, 0x5

    if-gt v11, v12, :cond_11

    const/16 v11, 0xd

    aget v11, v2, v11

    if-nez v11, :cond_11

    const/16 v11, 0x11

    aget v11, v2, v11

    iget v13, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v11, v13, :cond_11

    iget-object v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    const/16 v13, 0xe

    aget v13, v2, v13

    const/16 v14, 0xf

    aget v14, v2, v14

    const/16 v15, 0x10

    aget v15, v2, v15

    .line 295
    invoke-virtual {v11, v13, v14, v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sameSourceHashes(III)Z

    move-result v11

    if-eqz v11, :cond_11

    const/16 v11, 0xa

    aget v13, v2, v11

    iget v14, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    if-lt v13, v14, :cond_11

    const/16 v13, 0xb

    aget v14, v2, v13

    iget v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    if-lt v14, v15, :cond_11

    aget v14, v2, v11

    aget v15, v2, v13

    if-gt v14, v15, :cond_11

    const/16 v14, 0xc

    aget v15, v2, v14

    if-eqz v15, :cond_1

    aget v15, v2, v14

    if-ne v15, v0, :cond_11

    :cond_1
    const/4 v15, 0x4

    if-ne v5, v0, :cond_2

    aget v16, v2, v4

    if-eqz v16, :cond_2

    aget v3, v2, v4

    if-eq v3, v0, :cond_2

    aget v3, v2, v4

    if-eq v3, v9, :cond_2

    aget v3, v2, v4

    if-ne v3, v15, :cond_11

    :cond_2
    if-ne v5, v4, :cond_3

    aget v3, v2, v4

    if-eqz v3, :cond_3

    aget v3, v2, v4

    if-eq v3, v4, :cond_3

    aget v3, v2, v4

    if-eq v3, v9, :cond_3

    aget v3, v2, v4

    if-ne v3, v15, :cond_11

    :cond_3
    if-ne v5, v9, :cond_4

    aget v3, v2, v4

    if-eqz v3, :cond_4

    aget v3, v2, v4

    if-ne v3, v12, :cond_11

    :cond_4
    aget v3, v2, v14

    if-ne v3, v0, :cond_5

    aget v3, v2, v4

    if-eq v3, v9, :cond_11

    :cond_5
    aget v3, v2, v9

    move/from16 v17, v11

    const/4 v11, -0x1

    const/16 v18, 0x7

    const/16 v19, 0x6

    if-eq v3, v11, :cond_6

    aget v3, v2, v9

    if-ltz v3, :cond_11

    aget v3, v2, v9

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge v3, v11, :cond_11

    aget v3, v2, v15

    if-ltz v3, :cond_11

    aget v3, v2, v15

    if-ge v3, v10, :cond_11

    aget v3, v2, v12

    if-ltz v3, :cond_11

    aget v3, v2, v12

    if-ge v3, v10, :cond_11

    aget v3, v2, v19

    if-ltz v3, :cond_11

    aget v3, v2, v19

    if-ge v3, v10, :cond_11

    aget v3, v2, v18

    if-ltz v3, :cond_11

    aget v3, v2, v18

    if-ge v3, v10, :cond_11

    :cond_6
    if-eq v5, v0, :cond_7

    aget v3, v2, v4

    if-eq v3, v4, :cond_7

    aget v3, v2, v4

    if-ne v3, v9, :cond_8

    :cond_7
    aget v3, v2, v9

    if-ltz v3, :cond_11

    :cond_8
    const/16 v3, 0x9

    const/16 v10, 0x8

    if-ne v5, v0, :cond_9

    aget v11, v2, v9

    if-ne v11, v6, :cond_11

    aget v11, v2, v10

    if-ne v11, v7, :cond_11

    aget v11, v2, v3

    if-ne v11, v8, :cond_11

    :cond_9
    aget v11, v2, v4

    if-eq v11, v4, :cond_b

    if-ne v5, v4, :cond_a

    aget v11, v2, v4

    if-ne v11, v9, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v20, v3

    goto :goto_1

    :cond_b
    :goto_0
    aget v11, v2, v17

    move/from16 v20, v3

    iget v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    add-int/2addr v3, v0

    if-ne v11, v3, :cond_11

    aget v3, v2, v13

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    add-int/2addr v11, v0

    if-ne v3, v11, :cond_11

    iget-boolean v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v3, :cond_c

    aget v3, v2, v15

    aget v11, v2, v19

    sub-int/2addr v3, v11

    .line 310
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v11, v2, v12

    aget v21, v2, v18

    sub-int v11, v11, v21

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v3, v0, :cond_11

    goto :goto_1

    :cond_c
    aget v3, v2, v15

    aget v11, v2, v19

    sub-int/2addr v3, v11

    .line 311
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v11, v2, v12

    aget v21, v2, v18

    sub-int v11, v11, v21

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v3, v11

    if-ne v3, v0, :cond_11

    :goto_1
    aget v3, v2, v4

    if-eq v3, v4, :cond_e

    if-ne v5, v4, :cond_d

    aget v3, v2, v4

    if-eq v3, v9, :cond_e

    :cond_d
    aget v3, v2, v17

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    if-ne v3, v11, :cond_11

    aget v3, v2, v13

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    if-ne v3, v11, :cond_11

    aget v3, v2, v9

    if-ltz v3, :cond_e

    aget v3, v2, v15

    aget v11, v2, v19

    if-ne v3, v11, :cond_11

    aget v3, v2, v12

    aget v11, v2, v18

    if-ne v3, v11, :cond_11

    :cond_e
    if-ne v5, v9, :cond_f

    aget v3, v2, v14

    if-nez v3, :cond_11

    .line 317
    :cond_f
    aget v3, v2, v17

    iput v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->orderSteps:I

    aget v3, v2, v13

    iput v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    .line 318
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 319
    new-instance v21, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;

    aget v22, v2, v0

    aget v23, v2, v4

    aget v24, v2, v9

    aget v25, v2, v15

    aget v26, v2, v12

    aget v27, v2, v19

    aget v28, v2, v18

    aget v29, v2, v10

    aget v30, v2, v20

    aget v31, v2, v17

    aget v3, v2, v14

    if-eqz v3, :cond_10

    move/from16 v32, v0

    goto :goto_2

    :cond_10
    const/16 v32, 0x0

    :goto_2
    invoke-direct/range {v21 .. v32}, Lcom/ahsim/demulation/RazorCampaignNativeSession$OrderResult;-><init>(IIIIIIIIIIZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v21

    .line 316
    :cond_11
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor movement order failed integrity gate"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "action":I
    .end local p2    # "unit":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .end local v2    # "w":[I
    .restart local p1    # "action":I
    .restart local p2    # "unit":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 290
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid diagnostic command arguments"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor session has already been closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    .end local p1    # "action":I
    .end local p2    # "unit":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized configureUnitInfo669(Lcom/ahsim/demulation/RazorTerrainPreviewSource;)[I
    .locals 6
    .param p1, "verified"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 372
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v0, v1, :cond_3

    .line 374
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    .line 375
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedRomCopy536()[B

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->configureCampaignUnitInfo669(J[B)[I

    move-result-object v0

    .line 376
    .local v0, "out":[I
    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x29d

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    aget v1, v0, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_2

    .line 379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 380
    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x4

    aget v3, v0, v3

    if-ltz v3, :cond_0

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x4

    aget v3, v0, v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    mul-int/lit8 v3, v1, 0x3

    const/4 v4, 0x5

    add-int/2addr v3, v4

    aget v3, v0, v3

    if-ltz v3, :cond_0

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v3, v4

    aget v3, v0, v3

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_0

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x6

    aget v3, v0, v3

    if-ltz v3, :cond_0

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x6

    aget v3, v0, v3

    if-gt v3, v4, :cond_0

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid Razor UnitInfo 669 fields"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 378
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor UnitInfo 669 unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v0    # "out":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor UnitInfo 669 source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    .end local p1    # "verified":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized construction571(III)Lcom/ahsim/demulation/RazorConstruction571;
    .locals 7
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 818
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-gt p1, v0, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 819
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v0, :cond_2

    .line 822
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .local v4, "action":I
    .local v5, "x":I
    .local v6, "y":I
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->construction571(JIII)[I

    move-result-object p1

    iget-object p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 824
    invoke-virtual {p2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result p2

    iget-object p3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {p3}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result p3

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    .line 822
    invoke-static {p1, p2, p3, v0}, Lcom/ahsim/demulation/RazorConstruction571;->parse([IIII)Lcom/ahsim/demulation/RazorConstruction571;

    move-result-object p1

    .line 825
    .local p1, "result":Lcom/ahsim/demulation/RazorConstruction571;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    monitor-exit p0

    return-object p1

    .line 827
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p1    # "result":Lcom/ahsim/demulation/RazorConstruction571;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .local p1, "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 828
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .local p1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw p1

    .line 819
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .local p1, "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_2
    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    goto :goto_3

    .line 818
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_3
    move v4, p1

    move v5, p2

    move v6, p3

    .line 820
    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :goto_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid Razor construction test request"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 817
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized coreCadence668()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 611
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->cadence668(J)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .local v0, "r":[I
    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 614
    :cond_0
    :try_start_1
    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x29c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget v3, v0, v2

    if-ltz v3, :cond_1

    const/4 v3, 0x3

    aget v4, v0, v3

    if-ltz v4, :cond_1

    const/4 v4, 0x4

    aget v5, v0, v4

    if-ltz v5, :cond_1

    aget v2, v0, v2

    aget v5, v0, v1

    if-gt v2, v5, :cond_1

    aget v2, v0, v3

    aget v3, v0, v1

    if-gt v2, v3, :cond_1

    aget v2, v0, v4

    aget v1, v0, v1

    if-gt v2, v1, :cond_1

    const/4 v1, 0x5

    aget v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v1, 0x6

    aget v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v1, 0x7

    aget v1, v0, v1

    if-ltz v1, :cond_1

    const/16 v1, 0x8

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    aget v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 619
    monitor-exit p0

    return-object v0

    .line 618
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 668 recovered cadence"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    .end local v0    # "r":[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor cadence not enabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized corePass667()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 595
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->core667(J)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .local v0, "row":[I
    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 598
    :cond_0
    :try_start_1
    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x29b

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v2, v0, v1

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    aget v3, v0, v2

    aget v4, v0, v1

    iget v5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    mul-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    aget v3, v0, v2

    aget v4, v0, v1

    iget v5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    iget v6, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->registeredDynamicBuilds729:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    const/4 v3, 0x3

    aget v4, v0, v3

    iget v5, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerMoves560:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x4

    aget v5, v0, v4

    aget v1, v0, v1

    rem-int/2addr v1, v4

    if-ne v5, v1, :cond_1

    const/4 v1, 0x5

    aget v1, v0, v1

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v1, v4, :cond_1

    const/4 v1, 0x6

    aget v4, v0, v1

    aget v3, v0, v3

    if-lt v4, v3, :cond_1

    aget v1, v0, v1

    aget v2, v0, v2

    if-gt v1, v2, :cond_1

    const/4 v1, 0x7

    aget v1, v0, v1

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    aget v1, v0, v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    aget v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 606
    monitor-exit p0

    return-object v0

    .line 605
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor recovered C owner-pass evidence"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    .end local v0    # "row":[I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor C core pass not enabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized demoBirth569(IIII)I
    .locals 9
    .param p1, "action"    # I
    .param p2, "handle"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 851
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/4 v1, 0x3

    if-gt p1, v1, :cond_3

    .line 853
    :try_start_1
    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "action":I
    .end local p2    # "handle":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .local v5, "action":I
    .local v6, "handle":I
    .local v7, "x":I
    .local v8, "y":I
    :try_start_2
    invoke-interface/range {v2 .. v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->demo569(JIIII)[I

    move-result-object p1

    .line 854
    .local p1, "row":[I
    if-eqz p1, :cond_1

    array-length p2, p1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/16 p3, 0x239

    if-ne p2, p3, :cond_1

    aget p2, p1, v0

    if-ne p2, v5, :cond_1

    const/4 p2, 0x2

    aget p3, p1, p2

    if-lez p3, :cond_1

    if-eq v5, v0, :cond_0

    aget p3, p1, p2

    if-ne p3, v6, :cond_1

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    aget p3, p1, v1

    if-nez p3, :cond_1

    .line 857
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 858
    aget p2, p1, p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p2

    .line 856
    :cond_1
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor developer lifecycle command rejected"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "action":I
    .end local v6    # "handle":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    throw p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    .end local p1    # "row":[I
    .restart local v5    # "action":I
    .restart local v6    # "handle":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    .end local v5    # "action":I
    .end local v6    # "handle":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    .local p1, "action":I
    .restart local p2    # "handle":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object p1, v0

    .line 862
    .end local p2    # "handle":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .restart local v5    # "action":I
    .restart local v6    # "handle":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    .local p1, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 863
    :cond_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor lifecycle command failed"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 851
    .end local v5    # "action":I
    .end local v6    # "handle":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    .local p1, "action":I
    .restart local p2    # "handle":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    :cond_3
    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "action":I
    .end local p2    # "handle":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    .restart local v5    # "action":I
    .restart local v6    # "handle":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor demo session closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 850
    .end local v5    # "action":I
    .end local v6    # "handle":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized deployMcv726(I)[I
    .locals 5
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 459
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 461
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v2, v3, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignDeploy726(JI)[I

    move-result-object v0

    .line 462
    .local v0, "row":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/16 v3, 0x2d7

    if-ne v2, v3, :cond_0

    aget v2, v0, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x2

    aget v2, v0, v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x3

    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v2, v0, v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    const/4 v2, 0x4

    aget v4, v0, v2

    if-ltz v4, :cond_0

    aget v2, v0, v2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x5

    aget v4, v0, v2

    if-ltz v4, :cond_0

    aget v2, v0, v2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x6

    aget v2, v0, v2

    if-ne v2, v1, :cond_0

    const/4 v2, 0x7

    aget v2, v0, v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    aget v2, v0, v3

    if-ltz v2, :cond_0

    const/16 v2, 0x9

    aget v2, v0, v2

    if-ne v2, v1, :cond_0

    const/16 v2, 0xa

    aget v2, v0, v2

    if-lt v2, v1, :cond_0

    const/16 v2, 0xb

    aget v2, v0, v2

    if-ne v2, v1, :cond_0

    const/16 v2, 0xd

    aget v3, v0, v2

    if-lt v3, v1, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 471
    aget v1, v0, v2

    iput v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->registeredDynamicBuilds729:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-object v0

    .line 467
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "MCV \u043d\u0435\u043b\u044c\u0437\u044f \u0440\u0430\u0437\u0432\u0435\u0440\u043d\u0443\u0442\u044c \u0437\u0434\u0435\u0441\u044c: \u043d\u0435\u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0433\u0440\u0443\u043d\u0442, \u0437\u0430\u043d\u044f\u0442\u0430\u044f \u043a\u043b\u0435\u0442\u043a\u0430 \u0438\u043b\u0438 \u043d\u0435\u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d\u043d\u044b\u0439 \u043f\u0440\u0438\u043a\u0430\u0437"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    .end local v0    # "row":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor MCV deploy 726 is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    .end local p1    # "ordinal":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized dynamicObjects569(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;
    .locals 9
    .param p1, "map"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 868
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->dynamic569(J)[I

    move-result-object v0

    .line 870
    .local v0, "raw":[I
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v1

    const/16 v8, 0x8

    const/16 v2, 0x239

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ahsim/demulation/RazorDynamicObjects569;->parse([ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 872
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    invoke-static {v0, p1}, Lcom/ahsim/demulation/RazorDynamicObjects569;->parse([ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorDynamicObjects569;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 868
    .end local v0    # "raw":[I
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor dynamic session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    .end local p1    # "map":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized emc671(Lcom/ahsim/demulation/RazorTerrainPreviewSource;II)[I
    .locals 7
    .param p1, "source"    # Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .param p2, "action"    # I
    .param p3, "selected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 410
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    const/4 v0, 0x2

    if-gt p2, v0, :cond_4

    const/4 v1, -0x1

    if-lt p3, v1, :cond_4

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p3, v1, :cond_4

    if-nez p2, :cond_0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v2, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->sha256:Ljava/lang/String;

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    .line 413
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v1

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v1, v2, :cond_4

    .line 415
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainPreviewSource;->authenticatedUnitEmcCopy()[B

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 416
    .local v1, "bank":[B
    :goto_0
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v2, v3, v1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignEmc671(J[BII)[I

    move-result-object v2

    .line 417
    .local v2, "row":[I
    if-eqz v2, :cond_3

    array-length v3, v2

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget v3, v2, v3

    const/16 v4, 0x29f

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget v4, v2, v3

    if-ne v4, v3, :cond_3

    const/4 v4, 0x5

    aget v5, v2, v4

    if-ltz v5, :cond_3

    const/4 v5, 0x6

    aget v5, v2, v5

    if-ltz v5, :cond_3

    const/4 v5, 0x7

    aget v6, v2, v5

    if-ltz v6, :cond_3

    aget v5, v2, v5

    if-gt v5, v3, :cond_3

    const/16 v5, 0x8

    aget v6, v2, v5

    if-ltz v6, :cond_3

    aget v5, v2, v5

    if-gt v5, v3, :cond_3

    const/16 v3, 0xb

    aget v5, v2, v3

    if-ltz v5, :cond_3

    aget v3, v2, v3

    if-gt v3, v4, :cond_3

    const/16 v3, 0xc

    aget v4, v2, v3

    if-ltz v4, :cond_3

    aget v3, v2, v3

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    if-gt v3, v4, :cond_3

    const/16 v3, 0x10

    aget v3, v2, v3

    if-nez v3, :cond_3

    const/16 v3, 0x11

    aget v3, v2, v3

    if-nez v3, :cond_3

    const/16 v3, 0x12

    aget v4, v2, v3

    if-ltz v4, :cond_3

    aget v3, v2, v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_3

    const/16 v3, 0x13

    aget v3, v2, v3

    iget v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v3, v4, :cond_3

    if-ltz p3, :cond_2

    aget v0, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p3, :cond_3

    .line 425
    :cond_2
    monitor-exit p0

    return-object v2

    .line 424
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor 671 EMC integrity check failed"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    .end local v1    # "bank":[B
    .end local v2    # "row":[I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 671 EMC session/source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    .end local p1    # "source":Lcom/ahsim/demulation/RazorTerrainPreviewSource;
    .end local p2    # "action":I
    .end local p3    # "selected":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized emc672(II)[I
    .locals 4
    .param p1, "action"    # I
    .param p2, "selected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 511
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p2, v0, :cond_0

    .line 514
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v0, v1, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignEmc672(JII)[I

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptEmc672([II)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 513
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor EMC 672 request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    .end local p1    # "action":I
    .end local p2    # "selected":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized emcOwner673(I)[I
    .locals 5
    .param p1, "selected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 576
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p1, v1, :cond_5

    .line 579
    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v1, v2, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignEmcOwner673(JI)[I

    move-result-object v1

    .line 580
    .local v1, "r":[I
    if-eqz v1, :cond_4

    array-length v2, v1

    const/16 v3, 0x18

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget v2, v1, v2

    const/16 v3, 0x2a1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    aget v3, v1, v2

    if-ne v3, v2, :cond_4

    const/4 v3, 0x2

    aget v3, v1, v3

    .line 581
    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-ne v3, v0, :cond_4

    const/16 v0, 0xe

    aget v0, v1, v0

    if-ltz v0, :cond_4

    const/16 v0, 0x10

    aget v0, v1, v0

    if-nez v0, :cond_4

    const/16 v0, 0x11

    aget v0, v1, v0

    if-nez v0, :cond_4

    const/16 v0, 0x12

    aget v3, v1, v0

    if-eqz v3, :cond_1

    aget v0, v1, v0

    if-ne v0, v2, :cond_4

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    const/16 v0, 0x13

    aget v0, v1, v0

    if-nez v0, :cond_4

    const/16 v0, 0x15

    aget v0, v1, v0

    .line 583
    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v3, v2, :cond_2

    const/16 v3, 0x40

    goto :goto_1

    :cond_2
    const/16 v3, 0x80

    :goto_1
    if-ne v0, v3, :cond_4

    const/16 v0, 0xf

    aget v3, v1, v0

    if-ltz v3, :cond_4

    aget v0, v1, v0

    if-gt v0, v2, :cond_4

    if-ltz p1, :cond_3

    const/4 v0, 0x4

    aget v3, v1, v0

    if-ltz v3, :cond_4

    aget v3, v1, v0

    const/16 v4, 0x20

    if-ge v3, v4, :cond_4

    const/4 v3, 0x6

    aget v3, v1, v3

    if-ltz v3, :cond_4

    const/4 v3, 0x7

    aget v3, v1, v3

    if-ltz v3, :cond_4

    const/16 v3, 0x8

    aget v3, v1, v3

    if-ltz v3, :cond_4

    const/16 v3, 0x9

    aget v3, v1, v3

    if-ltz v3, :cond_4

    const/16 v3, 0xa

    aget v4, v1, v3

    if-ltz v4, :cond_4

    aget v3, v1, v3

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_4

    const/16 v3, 0xb

    aget v3, v1, v3

    if-ltz v3, :cond_4

    const/16 v3, 0xc

    aget v4, v1, v3

    if-lt v4, v2, :cond_4

    aget v3, v1, v3

    if-gt v3, v0, :cond_4

    const/16 v0, 0x14

    aget v0, v1, v0

    if-ltz v0, :cond_4

    const/16 v0, 0x16

    aget v3, v1, v0

    if-ltz v3, :cond_4

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v2, :cond_4

    .line 590
    :cond_3
    monitor-exit p0

    return-object v1

    .line 589
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor 673 owner bridge refused mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    .end local v1    # "r":[I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor 673 owner selection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    .end local p1    # "selected":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized enableRouteMovement665()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 355
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 356
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->enableCampaignRoute665(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    .line 361
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    nop

    .line 365
    monitor-exit p0

    return-void

    .line 359
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 665 route mode rejected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 355
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 665 session is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized facingSnapshot666()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_4

    .line 342
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignFacing666(J)[I

    move-result-object v0

    .line 343
    .local v0, "row":[I
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v3, 0x29a

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    aget v3, v0, v1

    if-ltz v3, :cond_3

    aget v3, v0, v1

    const/16 v4, 0x200

    if-gt v3, v4, :cond_3

    array-length v3, v0

    aget v4, v0, v1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x4

    aget v3, v0, v3

    if-ne v3, v1, :cond_3

    .line 346
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    aget v4, v0, v1

    if-ge v3, v4, :cond_2

    .line 347
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    aget v4, v0, v4

    if-eqz v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    aget v4, v0, v4

    if-ne v4, v1, :cond_1

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x7

    aget v4, v0, v4

    if-ltz v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x7

    aget v4, v0, v4

    const/16 v5, 0xff

    if-gt v4, v5, :cond_1

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 666 invalid orientation"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v3    # "i":I
    :cond_2
    monitor-exit p0

    return-object v0

    .line 345
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 666 heading integrity check failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    .end local v0    # "row":[I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 666 heading session not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized financeCadence575(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;II)Lcom/ahsim/demulation/RazorFinanceCadence575;
    .locals 10
    .param p1, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p2, "action"    # I
    .param p3, "frames"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v0, v1, :cond_4

    if-ltz p2, :cond_4

    const/4 v0, 0x3

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    const/16 v0, 0x258

    if-gt p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v6, p2

    move v7, p3

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    .line 218
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v0

    move-object v2, v0

    .line 219
    .local v2, "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->type:I

    if-ne v0, v1, :cond_3

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 223
    :try_start_1
    iget-object v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    iget v8, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v9, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    move v6, p2

    move v7, p3

    .end local p2    # "action":I
    .end local p3    # "frames":I
    .local v6, "action":I
    .local v7, "frames":I
    :try_start_2
    invoke-interface/range {v3 .. v9}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->finance575(JIIII)[I

    move-result-object p2

    iget p3, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    .line 223
    invoke-static {p2, p3, v0}, Lcom/ahsim/demulation/RazorFinanceCadence575;->parse([III)Lcom/ahsim/demulation/RazorFinanceCadence575;

    move-result-object p2

    .line 226
    .local p2, "state":Lcom/ahsim/demulation/RazorFinanceCadence575;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    monitor-exit p0

    return-object p2

    .line 228
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p2    # "state":Lcom/ahsim/demulation/RazorFinanceCadence575;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object p2, v0

    goto :goto_3

    .end local v6    # "action":I
    .end local v7    # "frames":I
    .local p2, "action":I
    .restart local p3    # "frames":I
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_2
    move v6, p2

    move v7, p3

    move-object p2, v0

    .line 229
    .end local p3    # "frames":I
    .restart local v6    # "action":I
    .restart local v7    # "frames":I
    .local p2, "ex":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    instance-of p3, p2, Ljava/io/IOException;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Ljava/io/IOException;

    goto :goto_4

    .line 230
    :cond_2
    new-instance p3, Ljava/io/IOException;

    const-string v0, "Native 575 finance cadence rejected"

    invoke-direct {p3, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    throw p3

    .line 219
    .end local v6    # "action":I
    .end local v7    # "frames":I
    .local p2, "action":I
    .restart local p3    # "frames":I
    :cond_3
    move v6, p2

    move v7, p3

    .line 221
    .end local p2    # "action":I
    .end local p3    # "frames":I
    .restart local v6    # "action":I
    .restart local v7    # "frames":I
    new-instance p2, Ljava/io/IOException;

    const-string p3, "575 finance reference supports the traced Razor variant only"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    .end local v2    # "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .end local v6    # "action":I
    .end local v7    # "frames":I
    .restart local p2    # "action":I
    .restart local p3    # "frames":I
    :cond_4
    move v6, p2

    move v7, p3

    .line 216
    .end local p2    # "action":I
    .end local p3    # "frames":I
    .restart local v6    # "action":I
    .restart local v7    # "frames":I
    :goto_5
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Unverified finance cadence source"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 212
    .end local v6    # "action":I
    .end local v7    # "frames":I
    .end local p1    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized financeLive576(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;I)Lcom/ahsim/demulation/RazorFinanceLive576;
    .locals 9
    .param p1, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v0, v1, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    .line 244
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v0

    move-object v2, v0

    .line 245
    .local v2, "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->type:I

    if-ne v0, v1, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 248
    :try_start_1
    iget-object v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    iget v7, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v8, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    move v6, p2

    .end local p2    # "action":I
    .local v6, "action":I
    :try_start_2
    invoke-interface/range {v3 .. v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->finance576(JIII)[I

    move-result-object p2

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v1, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    .line 248
    invoke-static {p2, v0, v1}, Lcom/ahsim/demulation/RazorFinanceLive576;->parse([III)Lcom/ahsim/demulation/RazorFinanceLive576;

    move-result-object p2

    .line 251
    .local p2, "result":Lcom/ahsim/demulation/RazorFinanceLive576;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    monitor-exit p0

    return-object p2

    .line 253
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p2    # "result":Lcom/ahsim/demulation/RazorFinanceLive576;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_2

    .end local v6    # "action":I
    .local p2, "action":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v6, p2

    move-object p2, v0

    .line 254
    .restart local v6    # "action":I
    .local p2, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/io/IOException;

    goto :goto_3

    .line 255
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native 576 live finance refused"

    invoke-direct {v0, v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    .line 245
    .end local v6    # "action":I
    .local p2, "action":I
    :cond_1
    move v6, p2

    .line 246
    .end local p2    # "action":I
    .restart local v6    # "action":I
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unsupported Razor 576 finance source stats"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    .end local v2    # "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .end local v6    # "action":I
    .restart local p2    # "action":I
    :cond_2
    move v6, p2

    .line 242
    .end local p2    # "action":I
    .restart local v6    # "action":I
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unverified 576 native finance source"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    .end local v6    # "action":I
    .end local p1    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized financeReference574(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;I)Lcom/ahsim/demulation/RazorFinanceReference574;
    .locals 9
    .param p1, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    if-ne v0, v1, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->buildingData572:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    .line 191
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v0

    move-object v2, v0

    .line 192
    .local v2, "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->type:I

    if-ne v0, v1, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    if-lez v0, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const v1, 0xffff

    if-gt v0, v1, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    if-lez v0, :cond_1

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 196
    :try_start_1
    iget-object v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v4, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    iget v7, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v8, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    move v6, p2

    .end local p2    # "action":I
    .local v6, "action":I
    :try_start_2
    invoke-interface/range {v3 .. v8}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->finance574(JIII)[I

    move-result-object p2

    iget v0, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    iget v1, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    .line 196
    invoke-static {p2, v0, v1}, Lcom/ahsim/demulation/RazorFinanceReference574;->parse([III)Lcom/ahsim/demulation/RazorFinanceReference574;

    move-result-object p2

    .line 199
    .local p2, "result":Lcom/ahsim/demulation/RazorFinanceReference574;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    monitor-exit p0

    return-object p2

    .line 201
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p2    # "result":Lcom/ahsim/demulation/RazorFinanceReference574;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_2

    .end local v6    # "action":I
    .local p2, "action":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v6, p2

    move-object p2, v0

    .line 202
    .restart local v6    # "action":I
    .local p2, "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    nop

    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native Razor finance reference rejected"

    invoke-direct {v0, v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 192
    .end local v6    # "action":I
    .local p2, "action":I
    :cond_1
    move v6, p2

    .line 194
    .end local p2    # "action":I
    .restart local v6    # "action":I
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unsupported Razor refinery reference parameters"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 186
    .end local v2    # "refinery":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .end local v6    # "action":I
    .restart local p2    # "action":I
    :cond_2
    move v6, p2

    .line 189
    .end local p2    # "action":I
    .restart local v6    # "action":I
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Unverified Razor reference-finance source"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 185
    .end local v6    # "action":I
    .end local p1    # "source":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized frameIngress634(IJ)[I
    .locals 7
    .param p1, "action"    # I
    .param p2, "frameTimeNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 961
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 962
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    move v4, p1

    move-wide v5, p2

    .end local p1    # "action":I
    .end local p2    # "frameTimeNs":J
    .local v4, "action":I
    .local v5, "frameTimeNs":J
    invoke-interface/range {v1 .. v6}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->frameIngress634(JIJ)[I

    move-result-object p1

    .line 963
    .local p1, "data":[I
    if-eqz p1, :cond_1

    array-length p2, p1

    const/16 p3, 0x19

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/16 p3, 0x27a

    if-ne p2, p3, :cond_1

    const/16 p2, 0x18

    aget p2, p1, p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const/16 p2, 0x11

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x12

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x13

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x14

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x15

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x16

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/16 p2, 0x17

    aget p2, p1, p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    if-eq v4, p2, :cond_0

    const/4 p2, 0x2

    aget p2, p1, p2

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    aget p2, p1, p2

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne p2, v0, :cond_1

    const/16 p2, 0xf

    aget p2, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p3, :cond_1

    .line 968
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    monitor-exit p0

    return-object p1

    .line 967
    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor frame source 634 rejected or tick gate changed"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 961
    .end local v4    # "action":I
    .end local v5    # "frameTimeNs":J
    .local p1, "action":I
    .restart local p2    # "frameTimeNs":J
    :cond_2
    move v4, p1

    move-wide v5, p2

    .end local p1    # "action":I
    .end local p2    # "frameTimeNs":J
    .restart local v4    # "action":I
    .restart local v5    # "frameTimeNs":J
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor mission session closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 960
    .end local v4    # "action":I
    .end local v5    # "frameTimeNs":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized hud743(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I
    .locals 8
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    monitor-enter p0

    .line 691
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    .line 693
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->hud743(J)[I

    move-result-object v0

    .line 694
    .local v0, "a":[I
    if-eqz v0, :cond_6

    array-length v2, v0

    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    aget v2, v0, v2

    const/16 v3, 0x2e7

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    aget v3, v0, v2

    iget-object v4, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v4, v4

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 696
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 697
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v0, v4

    .local v4, "moving":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x3

    aget v5, v0, v5

    .local v5, "hp":I
    mul-int/lit8 v6, v3, 0x3

    add-int/lit8 v6, v6, 0x4

    aget v6, v0, v6

    .line 698
    .local v6, "max":I
    if-ltz v4, :cond_4

    if-gt v4, v2, :cond_4

    if-ltz v5, :cond_4

    if-ltz v6, :cond_4

    if-gt v5, v6, :cond_4

    if-nez v6, :cond_2

    if-nez v5, :cond_4

    :cond_2
    iget-object v7, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    goto :goto_1

    .line 696
    .end local v4    # "moving":I
    .end local v5    # "hp":I
    .end local v6    # "max":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 700
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local v4    # "moving":I
    .restart local v5    # "hp":I
    .restart local v6    # "max":I
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    .line 702
    .end local v3    # "i":I
    .end local v4    # "moving":I
    .end local v5    # "hp":I
    .end local v6    # "max":I
    :cond_5
    monitor-exit p0

    return-object v0

    .line 695
    :cond_6
    :goto_2
    monitor-exit p0

    return-object v1

    .line 703
    .end local v0    # "a":[I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 705
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_3
    monitor-exit p0

    return-object v1

    .line 691
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_7
    :goto_4
    monitor-exit p0

    return-object v1

    .line 690
    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized integratedStep694()Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 536
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->integrated694(J)[I

    move-result-object v0

    .line 537
    .local v0, "both":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 539
    const/16 v1, 0x10

    new-array v2, v1, [I

    .local v2, "sched":[I
    const/16 v3, 0x18

    new-array v4, v3, [I

    .line 540
    .local v4, "emc":[I
    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    invoke-static {v0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptEmc672([II)[I

    .line 543
    new-instance v1, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptScheduler560([I)Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    move-result-object v3

    invoke-direct {v1, v3, v4}, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;-><init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;[I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 538
    .end local v2    # "sched":[I
    .end local v4    # "emc":[I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 694 integrated result"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    .end local v0    # "both":[I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 545
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 534
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor integrated session unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized integratedStep729()Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 553
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 556
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->tick729(J)[I

    move-result-object v0

    .line 557
    .local v0, "all":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x38

    if-ne v1, v2, :cond_0

    .line 559
    const/16 v1, 0x10

    new-array v2, v1, [I

    .local v2, "sched":[I
    const/16 v3, 0x18

    new-array v4, v3, [I

    .line 560
    .local v4, "emc":[I
    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    invoke-static {v0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 562
    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptEmc672([II)[I

    .line 563
    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->lastProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    invoke-static {v0, v1, v3}, Lcom/ahsim/demulation/RazorTickEvidence729;->validate([IILcom/ahsim/demulation/RazorTickEvidence729;)Lcom/ahsim/demulation/RazorTickEvidence729;

    move-result-object v1

    .line 565
    .local v1, "proof":Lcom/ahsim/demulation/RazorTickEvidence729;
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptScheduler560([I)Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    move-result-object v3

    .line 566
    .local v3, "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    iput-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->lastProof729:Lcom/ahsim/demulation/RazorTickEvidence729;

    .line 567
    new-instance v5, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;

    invoke-direct {v5, v3, v4, v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$IntegratedStep694;-><init>(Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;[ILcom/ahsim/demulation/RazorTickEvidence729;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    .line 558
    .end local v1    # "proof":Lcom/ahsim/demulation/RazorTickEvidence729;
    .end local v2    # "sched":[I
    .end local v3    # "tick":Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .end local v4    # "emc":[I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing Razor 729 native tick report"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 568
    .end local v0    # "all":[I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 569
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 554
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 729 tick session unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 4

    monitor-enter p0

    .line 983
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 983
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized mapSnapshot559()Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 876
    :try_start_0
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 878
    :try_start_1
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 879
    iget-object v0, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sourceHashes()[I

    move-result-object v0

    .line 880
    .local v0, "hash":[I
    if-eqz v0, :cond_0

    .line 881
    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v3, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    .line 882
    invoke-interface {v2, v3, v4}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->map(J)[I

    move-result-object v5

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    iget v7, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    iget v8, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 883
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->buildingCount()I

    move-result v9

    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v10

    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v11

    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 884
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldStride()I

    move-result v12

    const/4 v2, 0x0

    aget v13, v0, v2

    const/4 v2, 0x1

    aget v14, v0, v2

    const/4 v2, 0x2

    aget v15, v0, v2

    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->lastMap559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    .line 881
    move-object/from16 v16, v2

    invoke-static/range {v5 .. v16}, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->parse([IIIIIIIIIIILcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;

    move-result-object v2

    .line 885
    .local v2, "result":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    iput-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->lastMap559:Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    monitor-exit p0

    return-object v2

    .line 880
    .end local v2    # "result":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor map has no source guard"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 887
    .end local v0    # "hash":[I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 888
    .local v0, "failure":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 876
    .end local v0    # "failure":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor map session closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized movementTrace562()Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 894
    :try_start_0
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 896
    :try_start_1
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 897
    iget-object v0, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->trace562(J)[I

    move-result-object v0

    .line 898
    .local v0, "w":[I
    iget-object v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sourceHashes()[I

    move-result-object v2

    .line 899
    .local v2, "hashes":[I
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    array-length v3, v0

    const/16 v4, 0xc

    if-lt v3, v4, :cond_6

    const/4 v3, 0x0

    aget v5, v0, v3

    const/16 v6, 0x232

    if-ne v5, v6, :cond_6

    const/4 v5, 0x1

    aget v6, v0, v5

    if-ltz v6, :cond_6

    aget v6, v0, v5

    const/16 v7, 0x40

    if-gt v6, v7, :cond_6

    const/4 v6, 0x2

    aget v7, v0, v6

    const/16 v8, 0xa

    if-ne v7, v8, :cond_6

    array-length v7, v0

    aget v9, v0, v5

    mul-int/2addr v9, v8

    add-int/2addr v9, v4

    if-ne v7, v9, :cond_6

    const/4 v7, 0x3

    aget v9, v0, v7

    if-ltz v9, :cond_6

    aget v9, v0, v7

    const v10, 0xf4240

    if-gt v9, v10, :cond_6

    const/4 v9, 0x4

    aget v11, v0, v9

    if-ltz v11, :cond_6

    aget v11, v0, v9

    if-gt v11, v10, :cond_6

    const/4 v10, 0x5

    aget v10, v0, v10

    if-nez v10, :cond_6

    const/4 v10, 0x6

    aget v10, v0, v10

    aget v3, v2, v3

    if-ne v10, v3, :cond_6

    const/4 v3, 0x7

    aget v3, v0, v3

    aget v10, v2, v5

    if-ne v3, v10, :cond_6

    const/16 v3, 0x8

    aget v3, v0, v3

    aget v6, v2, v6

    if-ne v3, v6, :cond_6

    const/16 v3, 0x9

    aget v6, v0, v3

    iget v10, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v6, v10, :cond_6

    aget v6, v0, v8

    iget-object v10, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 904
    invoke-virtual {v10}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldStride()I

    move-result v10

    if-ne v6, v10, :cond_6

    const/16 v6, 0xb

    aget v6, v0, v6

    if-ne v6, v5, :cond_6

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x1770

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 907
    .local v6, "t":Ljava/lang/StringBuilder;
    const-string v10, "demulation.razor.sandbox-movement.v562\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "rom_sha256="

    .line 908
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "house="

    .line 909
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mission="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " variant="

    .line 910
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " game_ticks=0 (NOT verified Razor)\n"

    .line 911
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sandbox_steps="

    .line 912
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v0, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sandbox_calls="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v0, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " captured_movements="

    .line 913
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "step\tsandbox_clock_before_step\tunit\tfrom_x\tfrom_y\tto_x\tto_y\ttarget_x\ttarget_y\tdestination_class_or_unknown\n"

    .line 914
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    const/4 v10, 0x0

    .line 916
    .local v10, "last":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    aget v12, v0, v5

    if-ge v11, v12, :cond_5

    .line 917
    mul-int/lit8 v12, v11, 0xa

    add-int/2addr v12, v4

    .local v12, "base":I
    aget v13, v0, v12

    .line 918
    .local v13, "step":I
    if-le v13, v10, :cond_4

    aget v14, v0, v7

    if-gt v13, v14, :cond_4

    add-int/lit8 v14, v12, 0x1

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x1

    aget v14, v0, v14

    aget v15, v0, v9

    if-gt v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x2

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x2

    aget v14, v0, v14

    iget v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x3

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x3

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 920
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x4

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x4

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 921
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x5

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x5

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 922
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x6

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x6

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 923
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x3

    aget v14, v0, v14

    add-int/lit8 v15, v12, 0x5

    aget v15, v0, v15

    sub-int/2addr v14, v15

    .line 924
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/lit8 v15, v12, 0x4

    aget v15, v0, v15

    add-int/lit8 v16, v12, 0x6

    aget v16, v0, v16

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v14, v15

    if-ne v14, v5, :cond_4

    add-int/lit8 v14, v12, 0x7

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x7

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 925
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x8

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x8

    aget v14, v0, v14

    iget-object v15, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 926
    invoke-virtual {v15}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v14, v12, 0x9

    aget v14, v0, v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    add-int/lit8 v14, v12, 0x9

    aget v14, v0, v14

    if-ltz v14, :cond_4

    add-int/lit8 v14, v12, 0x9

    aget v14, v0, v14

    const/16 v4, 0xff

    if-gt v14, v4, :cond_4

    .line 929
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    move v10, v13

    .line 930
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 931
    if-lez v4, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 932
    :cond_1
    if-ne v4, v3, :cond_2

    add-int v14, v12, v4

    aget v14, v0, v14

    if-ne v14, v15, :cond_2

    const-string v14, "unknown"

    goto :goto_2

    :cond_2
    add-int v14, v12, v4

    aget v14, v0, v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    :goto_2
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 934
    .end local v4    # "k":I
    :cond_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 916
    nop

    .end local v12    # "base":I
    .end local v13    # "step":I
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0xc

    goto/16 :goto_0

    .line 928
    .restart local v12    # "base":I
    .restart local v13    # "step":I
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid Razor movement trace event"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 936
    .end local v11    # "i":I
    .end local v12    # "base":I
    .end local v13    # "step":I
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 905
    .end local v6    # "t":Ljava/lang/StringBuilder;
    .end local v10    # "last":I
    :cond_6
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid Razor movement trace metadata"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    .end local v0    # "w":[I
    .end local v2    # "hashes":[I
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 938
    .local v0, "failure":Ljava/lang/Throwable;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 894
    .end local v0    # "failure":Ljava/lang/Throwable;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor trace session closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v1, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->read(J)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->accept([I)Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 165
    .local v0, "failure":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 162
    .end local v0    # "failure":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor session has already been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized probeObjectStep556()Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 263
    :try_start_0
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 265
    :try_start_1
    iget-object v0, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->probe(J)[I

    move-result-object v0

    .line 266
    .local v0, "w":[I
    if-eqz v0, :cond_5

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget v3, v0, v2

    const/16 v4, 0x22c

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    aget v4, v0, v3

    if-eqz v4, :cond_0

    aget v4, v0, v3

    if-ne v4, v3, :cond_5

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    const/4 v4, 0x7

    aget v5, v0, v4

    if-ltz v5, :cond_5

    const/16 v5, 0x8

    aget v5, v0, v5

    if-nez v5, :cond_5

    const/16 v5, 0xe

    aget v5, v0, v5

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    const/16 v6, 0x9

    aget v6, v0, v6

    const/16 v7, 0xa

    aget v7, v0, v7

    const/16 v8, 0xf

    aget v8, v0, v8

    .line 268
    invoke-virtual {v5, v6, v7, v8}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->sameSourceHashes(III)Z

    move-result v5

    if-eqz v5, :cond_5

    aget v5, v0, v3

    if-ne v5, v3, :cond_1

    aget v5, v0, v4

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    add-int/2addr v6, v3

    if-ne v5, v6, :cond_5

    :cond_1
    aget v5, v0, v3

    if-nez v5, :cond_2

    aget v5, v0, v4

    iget v6, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    if-ne v5, v6, :cond_5

    :cond_2
    aget v5, v0, v3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne v5, v3, :cond_3

    aget v5, v0, v6

    if-ltz v5, :cond_5

    aget v5, v0, v6

    iget v11, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge v5, v11, :cond_5

    aget v5, v0, v10

    if-ltz v5, :cond_5

    aget v5, v0, v9

    if-ltz v5, :cond_5

    aget v5, v0, v8

    if-ltz v5, :cond_5

    aget v5, v0, v7

    if-ltz v5, :cond_5

    aget v5, v0, v10

    const/16 v11, 0x80

    if-ge v5, v11, :cond_5

    aget v5, v0, v9

    if-ge v5, v11, :cond_5

    aget v5, v0, v8

    if-ge v5, v11, :cond_5

    aget v5, v0, v7

    if-ge v5, v11, :cond_5

    aget v5, v0, v10

    aget v11, v0, v8

    sub-int/2addr v5, v11

    .line 274
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v11, v0, v9

    aget v12, v0, v7

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v5, v11

    if-ne v5, v3, :cond_5

    .line 276
    :cond_3
    aget v5, v0, v4

    iput v5, v1, Lcom/ahsim/demulation/RazorCampaignNativeSession;->probeSteps:I

    .line 278
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;

    .line 279
    new-instance v11, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;

    aget v5, v0, v3

    if-ne v5, v3, :cond_4

    move v12, v3

    goto :goto_0

    :cond_4
    move v12, v2

    :goto_0
    aget v13, v0, v6

    aget v14, v0, v10

    aget v15, v0, v9

    aget v16, v0, v8

    aget v17, v0, v7

    aget v18, v0, v4

    invoke-direct/range {v11 .. v18}, Lcom/ahsim/demulation/RazorCampaignNativeSession$ExperimentalStep;-><init>(ZIIIIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v11

    .line 275
    :cond_5
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Native diagnostic object update failed integrity gate"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v0    # "w":[I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 263
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor session has already been closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized refinery570(III)Lcom/ahsim/demulation/RazorRefinery570;
    .locals 7
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 833
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x3

    if-gt p1, v0, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 834
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v0

    if-gt p2, v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v0

    if-gt p3, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 836
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p3, v0, :cond_2

    .line 839
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .local v4, "action":I
    .local v5, "x":I
    .local v6, "y":I
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->refinery570(JIII)[I

    move-result-object p1

    .line 840
    .local p1, "row":[I
    iget-object p2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 841
    invoke-virtual {p2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result p2

    iget-object p3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    invoke-virtual {p3}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result p3

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    .line 840
    invoke-static {p1, p2, p3, v0}, Lcom/ahsim/demulation/RazorRefinery570;->parse([IIII)Lcom/ahsim/demulation/RazorRefinery570;

    move-result-object p2

    .line 842
    .local p2, "value":Lcom/ahsim/demulation/RazorRefinery570;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 843
    monitor-exit p0

    return-object p2

    .line 844
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .end local p1    # "row":[I
    .end local p2    # "value":Lcom/ahsim/demulation/RazorRefinery570;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .local p1, "action":I
    .local p2, "x":I
    .restart local p3    # "y":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v4, p1

    move v5, p2

    move v6, p3

    move-object p1, v0

    .line 845
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .local p1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw p1

    .line 836
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .local p1, "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_2
    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    goto :goto_3

    .line 834
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_3
    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    goto :goto_3

    .line 833
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .restart local p1    # "action":I
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :cond_4
    move v4, p1

    move v5, p2

    move v6, p3

    .line 837
    .end local p1    # "action":I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .restart local v4    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :goto_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid Razor refinery experiment request"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    .end local v4    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized routeWitness664(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;III)Lcom/ahsim/demulation/RazorCoreRoute664;
    .locals 4
    .param p1, "snapshot"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .param p2, "unit"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->house:I

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->mission:I

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    if-ge p3, v0, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    if-ge p4, v0, :cond_0

    .line 336
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignCoreRoute664(JIII)[I

    move-result-object v0

    .line 337
    .local v0, "raw":[I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorCoreRoute664;->parse([ILcom/ahsim/demulation/RazorCampaignMapSnapshot559;III)Lcom/ahsim/demulation/RazorCoreRoute664;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 335
    .end local v0    # "raw":[I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor 664 route context"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    .end local p1    # "snapshot":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .end local p2    # "unit":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized schedulerStep560()Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 658
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->scheduler(J)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->acceptScheduler560([I)Lcom/ahsim/demulation/RazorCampaignNativeSession$SandboxTick560;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 659
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 656
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor scheduler session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized selectedUnitIdentity566(I)[I
    .locals 4
    .param p1, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 801
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p1, v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2, p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->identity566(JI)[I

    move-result-object v0

    .line 804
    .local v0, "d":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x236

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p1, :cond_0

    const/4 v2, 0x2

    aget v2, v0, v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x3

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    const/4 v1, 0x4

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    aget v1, v0, v2

    if-ltz v1, :cond_0

    aget v1, v0, v2

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/4 v1, 0x6

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_0

    const/4 v1, 0x7

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 807
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v1, 0x8

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guard:Lcom/ahsim/demulation/RazorCampaignSessionGuard;

    .line 808
    invoke-virtual {v2}, Lcom/ahsim/demulation/RazorCampaignSessionGuard;->worldHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v1, 0x9

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 810
    monitor-exit p0

    return-object v0

    .line 809
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 566 identity"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    .end local v0    # "d":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor unit identity request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    .end local p1    # "ordinal":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized simulationStep635()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 972
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->simulationStep635(J)[I

    move-result-object v0

    .line 974
    .local v0, "r":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x27b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x2

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->house:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget v2, v0, v2

    iget v3, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->mission:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v2

    if-gt v3, v1, :cond_0

    const/16 v3, 0x8

    aget v3, v0, v3

    const/16 v4, 0x9

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0xa

    aget v3, v0, v3

    const/16 v4, 0xb

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0xd

    aget v3, v0, v3

    const/16 v4, 0xe

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0xf

    aget v3, v0, v3

    const/16 v4, 0x10

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0x11

    aget v3, v0, v3

    const/16 v4, 0x12

    aget v4, v0, v4

    if-ne v3, v4, :cond_0

    const/16 v3, 0x14

    aget v3, v0, v3

    aget v2, v0, v2

    if-ne v3, v2, :cond_0

    const/16 v2, 0x18

    aget v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x19

    aget v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x1a

    aget v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x1b

    aget v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x1c

    aget v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0x1d

    aget v2, v0, v2

    if-ne v2, v1, :cond_0

    const/16 v1, 0x1e

    aget v1, v0, v1

    if-nez v1, :cond_0

    const/16 v1, 0x1f

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 981
    monitor-exit p0

    return-object v0

    .line 980
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 635 detached checkpoint rejected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    .end local v0    # "r":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor mission session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized sourceEconomy573(Lcom/ahsim/demulation/RazorScenarioEconomy573;)Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .locals 4
    .param p1, "expected"    # Lcom/ahsim/demulation/RazorScenarioEconomy573;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->economy573(J)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RazorScenarioEconomy573;->verifyNative([I)V

    .line 174
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->poll()Lcom/ahsim/demulation/RazorCampaignSessionGuard$Snapshot;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-object p1

    .line 176
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 177
    .local v0, "failure":Ljava/lang/Throwable;
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 171
    .end local v0    # "failure":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed Razor economy session"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local p1    # "expected":Lcom/ahsim/demulation/RazorScenarioEconomy573;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized speedMode670(II)[I
    .locals 7
    .param p1, "action"    # I
    .param p2, "selected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->routeMode665:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_3

    const/4 v1, 0x1

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_3

    iget v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->guardUnitCount:I

    if-ge p2, v2, :cond_3

    .line 395
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-static {v2, v3, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->campaignSpeed670(JII)[I

    move-result-object v2

    .line 396
    .local v2, "row":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/16 v4, 0x29e

    if-ne v3, v4, :cond_2

    aget v3, v2, v1

    if-ltz v3, :cond_2

    aget v3, v2, v1

    if-gt v3, v1, :cond_2

    if-ltz p1, :cond_0

    aget v1, v2, v1

    if-ne v1, p1, :cond_2

    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    const/4 v1, 0x2

    aget v3, v2, v1

    if-ltz v3, :cond_2

    aget v1, v2, v1

    const/16 v3, 0xff

    if-gt v1, v3, :cond_2

    const/4 v1, 0x3

    aget v4, v2, v1

    if-ltz v4, :cond_2

    const/4 v4, 0x4

    aget v5, v2, v4

    if-ltz v5, :cond_2

    const/4 v5, 0x5

    aget v6, v2, v5

    if-ltz v6, :cond_2

    aget v4, v2, v4

    aget v5, v2, v5

    add-int/2addr v4, v5

    aget v1, v2, v1

    if-ne v4, v1, :cond_2

    const/4 v1, 0x6

    aget v4, v2, v1

    if-gez v4, :cond_1

    aget v4, v2, v1

    if-ne v4, v0, :cond_2

    :cond_1
    aget v0, v2, v1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    const/4 v0, 0x7

    aget v1, v2, v0

    if-ltz v1, :cond_2

    aget v0, v2, v0

    if-gt v0, v3, :cond_2

    const/16 v0, 0x8

    aget v1, v2, v0

    if-ltz v1, :cond_2

    aget v0, v2, v0

    if-gt v0, v3, :cond_2

    const/16 v0, 0x9

    aget v1, v2, v0

    if-ltz v1, :cond_2

    aget v0, v2, v0

    if-gt v0, v3, :cond_2

    const/16 v0, 0xa

    aget v0, v2, v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    aget v0, v2, v0

    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->variant:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 403
    monitor-exit p0

    return-object v2

    .line 402
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 670 speed model integrity failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    .end local v2    # "row":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor speed model request"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    .end local p1    # "action":I
    .end local p2    # "selected":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized subtileSnapshot565(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I
    .locals 9
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 665
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 667
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->subtile565(J)[I

    move-result-object v0

    .line 668
    .local v0, "data":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x235

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget v2, v0, v1

    if-ltz v2, :cond_1

    aget v1, v0, v1

    const v2, 0xf4240

    if-gt v1, v2, :cond_1

    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_1

    .line 675
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 676
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v2, v2, v1

    .line 677
    .local v2, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v1, 0x4

    aget v4, v0, v4

    iget v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget v7, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    iget v8, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/ahsim/demulation/RazorPresentationCoordinates750;->boundedRawOrCentre(IIIII)I

    move-result v4

    aput v4, v0, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    .end local v2    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 671
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor subtile native snapshot"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    .end local v0    # "data":[I
    .restart local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 685
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor 565 presentation snapshot failed"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 665
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor subtile session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized visualSnapshot738(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I
    .locals 12
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 763
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 765
    :try_start_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v0, v1, v2}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->visual738(J)[I

    move-result-object v0

    .line 766
    .local v0, "data":[I
    if-eqz v0, :cond_3

    array-length v1, v0

    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    aget v1, v0, v1

    const/16 v2, 0x2e2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    aget v2, v0, v1

    if-ltz v2, :cond_3

    aget v1, v0, v1

    const v2, 0xf4240

    if-gt v1, v2, :cond_3

    const/4 v1, 0x3

    aget v1, v0, v1

    if-nez v1, :cond_3

    .line 769
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 770
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v2, v2, v1

    .line 771
    .local v2, "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v3, v1, 0x4

    aget v3, v0, v3

    .line 772
    .local v3, "raw":I
    const v4, 0xffff

    and-int v5, v3, v4

    .local v5, "rx":I
    ushr-int/lit8 v6, v3, 0x10

    and-int/2addr v4, v6

    .line 773
    .local v4, "ry":I
    iget v6, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    mul-int/lit16 v6, v6, 0x100

    add-int/lit16 v6, v6, 0x80

    .local v6, "centerX":I
    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    mul-int/lit16 v7, v7, 0x100

    add-int/lit16 v7, v7, 0x80

    .line 774
    .local v7, "centerY":I
    sub-int v8, v5, v6

    .local v8, "ddx":I
    sub-int v9, v4, v7

    .line 775
    .local v9, "ddy":I
    iget v10, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    mul-int/lit16 v10, v10, 0x100

    if-ge v5, v10, :cond_1

    iget v10, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    mul-int/lit16 v10, v10, 0x100

    if-ge v4, v10, :cond_1

    .line 776
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0xff

    if-gt v10, v11, :cond_1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v11, :cond_1

    iget-boolean v10, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-eqz v10, :cond_0

    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 769
    .end local v2    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v3    # "raw":I
    .end local v4    # "ry":I
    .end local v5    # "rx":I
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v8    # "ddx":I
    .end local v9    # "ddy":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    .restart local v2    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .restart local v3    # "raw":I
    .restart local v4    # "ry":I
    .restart local v5    # "rx":I
    .restart local v6    # "centerX":I
    .restart local v7    # "centerY":I
    .restart local v8    # "ddx":I
    .restart local v9    # "ddy":I
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Razor 738 visual offset violates map authority"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    .end local v1    # "i":I
    .end local v2    # "unit":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v3    # "raw":I
    .end local v4    # "ry":I
    .end local v5    # "rx":I
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v8    # "ddx":I
    .end local v9    # "ddy":I
    .restart local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :cond_2
    monitor-exit p0

    return-object v0

    .line 768
    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Razor 738 visual snapshot"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    .end local v0    # "data":[I
    .restart local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->close()V

    throw v0

    .line 763
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor visual session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized waypointVisual739(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I
    .locals 8
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 744
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 745
    iget-object v0, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 746
    .local v0, "out":[I
    const/16 v1, 0x235

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 747
    iget-object v1, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 748
    iget v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->schedulerTicks560:I

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 749
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 750
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 751
    iget-object v2, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v2, v2, v1

    .line 753
    .local v2, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v3, v1, 0x4

    iget v4, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget v6, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    iget v7, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    invoke-static {v4, v5, v6, v7}, Lcom/ahsim/demulation/RazorWaypointVisual739;->committedCentre740(IIII)I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .end local v2    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 744
    .end local v0    # "out":[I
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor waypoint session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized waypointVisual742(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I
    .locals 11
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 714
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RazorCampaignNativeSession;->waypointVisual739(Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    .local v0, "centres":[I
    :try_start_1
    iget-object v1, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->access:Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorCampaignNativeSession;->token:J

    invoke-interface {v1, v2, v3}, Lcom/ahsim/demulation/RazorCampaignNativeSession$NativeAccess;->visual738(J)[I

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .local v1, "fractional":[I
    nop

    .line 718
    if-eqz v1, :cond_4

    :try_start_2
    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget v2, v1, v2

    const/16 v3, 0x2e2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    aget v2, v1, v2

    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x3

    aget v2, v1, v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 721
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 722
    iget-object v3, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v3, v3, v2

    .line 723
    .local v3, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget-boolean v4, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->retired:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 724
    :cond_1
    add-int/lit8 v4, v2, 0x4

    aget v4, v1, v4

    .line 725
    .local v4, "raw":I
    const v5, 0xffff

    and-int v6, v4, v5

    .local v6, "x":I
    ushr-int/lit8 v7, v4, 0x10

    and-int/2addr v5, v7

    .line 726
    .local v5, "y":I
    iget v7, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    const/16 v8, 0x100

    mul-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x80

    .local v7, "centreX":I
    iget v9, v3, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    mul-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x80

    .line 729
    .local v9, "centreY":I
    if-ltz v6, :cond_2

    iget v10, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    mul-int/2addr v10, v8

    if-ge v6, v10, :cond_2

    if-ltz v5, :cond_2

    iget v10, p1, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    mul-int/2addr v10, v8

    if-ge v5, v10, :cond_2

    sub-int v10, v6, v7

    .line 730
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v8, :cond_2

    sub-int v10, v5, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v8, :cond_2

    .line 731
    add-int/lit8 v8, v2, 0x4

    aput v4, v0, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    .end local v3    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v4    # "raw":I
    .end local v5    # "y":I
    .end local v6    # "x":I
    .end local v7    # "centreX":I
    .end local v9    # "centreY":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorCampaignNativeSession;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    return-object v0

    .line 720
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v0

    .line 717
    .end local v1    # "fractional":[I
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/Throwable;
    :goto_3
    monitor-exit p0

    return-object v0

    .line 713
    .end local v0    # "centres":[I
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local p1    # "frame":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
