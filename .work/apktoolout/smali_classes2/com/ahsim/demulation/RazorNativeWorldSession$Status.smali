.class public final Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
.super Ljava/lang/Object;
.source "RazorNativeWorldSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeWorldSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# instance fields
.field public final buildings:I

.field public final executedTicks:I

.field public final fullTerrainKnown:Z

.field public final gameplayReady:Z

.field public final gridSide:I

.field public final house:I

.field public final knownCells:I

.field public final missingCapabilityBits:I

.field public final mission:I

.field public final prerequisiteBits:I

.field public final readSequence:I

.field public final sourceSha256:Ljava/lang/String;

.field public final terrainMarkers:I

.field public final units:I

.field public final unknownCells:I

.field public final variant:I

.field public final worldRetained:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;[I)V
    .locals 4
    .param p1, "variant"    # I
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "words"    # [I

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->variant:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->sourceSha256:Ljava/lang/String;

    .line 801
    const/4 v0, 0x2

    aget v0, p3, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->house:I

    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->mission:I

    const/4 v0, 0x4

    aget v1, p3, v0

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->gridSide:I

    .line 802
    const/4 v1, 0x7

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->units:I

    const/16 v1, 0x8

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->buildings:I

    const/16 v1, 0x9

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->terrainMarkers:I

    .line 803
    const/16 v1, 0x12

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->knownCells:I

    const/16 v1, 0x13

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->unknownCells:I

    .line 804
    const/16 v1, 0x1b

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->readSequence:I

    const/16 v1, 0x1c

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->prerequisiteBits:I

    .line 805
    const/16 v1, 0x1d

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->missingCapabilityBits:I

    const/16 v1, 0x1e

    aget v1, p3, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->executedTicks:I

    .line 806
    const/16 v1, 0x1a

    aget v1, p3, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->worldRetained:Z

    .line 807
    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->prerequisiteBits:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->fullTerrainKnown:Z

    .line 808
    const/16 v0, 0x1f

    aget v0, p3, v0

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;->gameplayReady:Z

    .line 809
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;[ILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;-><init>(ILjava/lang/String;[I)V

    return-void
.end method
