.class public final Lcom/ahsim/demulation/RazorNativeWorldPreview;
.super Ljava/lang/Object;
.source "RazorNativeWorldPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    }
.end annotation


# static fields
.field public static final MAP_64_PREPARED:I = 0x1

.field public static final REQUIRES_128_WORLD:I = 0x2

.field private static final RESULT_WORDS:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
    .locals 13
    .param p0, "audited"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    if-eqz p0, :cond_7

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    .local v0, "native64":I
    const/4 v1, 0x0

    .local v1, "expanded":I
    const/4 v2, 0x0

    .line 40
    .local v2, "invalid":I
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->allMissions()Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "missions":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 42
    .local v5, "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v6

    invoke-virtual {v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v7

    iget v8, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v11, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v12, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static/range {v6 .. v12}, Lcom/ahsim/demulation/RazorNativeWorldPreview;->nativeInspect([B[BIIIII)[I

    move-result-object v6

    .line 44
    .local v6, "words":[I
    if-eqz v6, :cond_4

    array-length v7, v6

    const/16 v8, 0xd

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    aget v8, v6, v7

    iget v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ne v8, v9, :cond_4

    const/4 v8, 0x2

    aget v9, v6, v8

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    if-ne v9, v10, :cond_4

    const/4 v9, 0x3

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-ne v9, v10, :cond_4

    const/4 v9, 0x4

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    shl-int/lit8 v10, v10, 0x10

    iget v11, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    or-int/2addr v10, v11

    if-ne v9, v10, :cond_4

    const/4 v9, 0x5

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioRecordCount:I

    if-ne v9, v10, :cond_4

    const/4 v9, 0x6

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    if-ne v9, v10, :cond_4

    const/4 v9, 0x7

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->structureCount:I

    if-ne v9, v10, :cond_4

    const/16 v9, 0x8

    aget v9, v6, v9

    iget v10, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->teamCount:I

    if-ne v9, v10, :cond_4

    .line 51
    iget-boolean v9, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->needsExpandedMapRuntime:Z

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v7

    .line 52
    .local v9, "required":I
    :goto_1
    const/4 v10, 0x0

    aget v11, v6, v10

    if-ne v11, v9, :cond_3

    .line 53
    aget v11, v6, v10

    if-ne v11, v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    :cond_1
    aget v7, v6, v10

    if-ne v7, v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    .end local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "words":[I
    .end local v9    # "required":I
    :goto_2
    goto/16 :goto_0

    .line 52
    .restart local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v6    # "words":[I
    .restart local v9    # "required":I
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Razor map ABI mismatch"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    .end local v9    # "required":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Native Razor world preflight disagrees with Java scenario: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v5    # "m":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v6    # "words":[I
    :cond_5
    add-int v4, v0, v1

    add-int/2addr v4, v2

    iget v5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    if-ne v4, v5, :cond_6

    .line 59
    new-instance v4, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;

    invoke-direct {v4, v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;-><init>(III)V

    return-object v4

    .line 58
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor mission slot count changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 38
    .end local v0    # "native64":I
    .end local v1    # "expanded":I
    .end local v2    # "invalid":I
    .end local v3    # "missions":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;>;"
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Razor audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeInspect([B[BIIIII)[I
.end method
