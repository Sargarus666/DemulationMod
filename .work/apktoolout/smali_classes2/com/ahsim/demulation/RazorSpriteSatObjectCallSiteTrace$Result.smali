.class public final Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;
.super Ljava/lang/Object;
.source "RazorSpriteSatObjectCallSiteTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final edition:I

.field public final gameplaySpritesMayBeDrawn:Z

.field public final layoutDataAndFlagsReadVerified:Z

.field public final lowThreeBitOffsetTableVerified:Z

.field public final nodeEntryToSatWriterVerified:Z

.field public final nodeRegistrationCallSites:I

.field public final nodeRegistrationEntry:I

.field public final satProducerCallSites:I

.field public final satProducerEntry:I

.field public final sourceIsUnitBodyFacingVerified:Z

.field public final sourceOffset:I

.field public final unitToSatSlotVerified:Z

.field public final unitTypeToCfgFrameVerified:Z


# direct methods
.method private constructor <init>(III)V
    .locals 1
    .param p1, "e"    # I
    .param p2, "nodes"    # I
    .param p3, "writers"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x68

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->sourceOffset:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->nodeEntryToSatWriterVerified:Z

    .line 39
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->layoutDataAndFlagsReadVerified:Z

    .line 40
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->lowThreeBitOffsetTableVerified:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->sourceIsUnitBodyFacingVerified:Z

    .line 42
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->unitTypeToCfgFrameVerified:Z

    .line 43
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->unitToSatSlotVerified:Z

    .line 44
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->gameplaySpritesMayBeDrawn:Z

    .line 46
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->edition:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->-$$Nest$sfgetENQUEUE()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->nodeRegistrationEntry:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->-$$Nest$sfgetPRODUCE()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->satProducerEntry:I

    .line 47
    iput p2, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->nodeRegistrationCallSites:I

    iput p3, p0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->satProducerCallSites:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(IIILcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;-><init>(III)V

    return-void
.end method


# virtual methods
.method public cfgFrameForUnit(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "facing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unit->CFG frame and H/V reflection have not been established"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public displayOffsetForIndex(I)[I
    .locals 3
    .param p1, "index"    # I

    .line 51
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 52
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->-$$Nest$sfgetXY_OFFSETS()[I

    move-result-object v0

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->-$$Nest$sfgetXY_OFFSETS()[I

    move-result-object v1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be 0..7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public satSlotForUnit(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "facing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unit->display node->SAT slot has not been established by ROM execution"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
