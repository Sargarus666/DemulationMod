.class public final Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;
.super Ljava/lang/Object;
.source "RazorSpriteNodeRegistrationSourceTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final edition:I

.field public final existingNodeDescriptorRewriteVerified:Z

.field public final gameplaySpritesMayBeDrawn:Z

.field public final parentPassesRecordPointerVerified:Z

.field private final paths:[Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

.field public final recordToNodeRegistrationVerified:Z

.field private final rom:[B

.field public final unitRecordIdentityVerified:Z

.field public final unitToPoseCfgVerified:Z


# direct methods
.method private constructor <init>(I[B)V
    .locals 5
    .param p1, "e"    # I
    .param p2, "data"    # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->recordToNodeRegistrationVerified:Z

    .line 57
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->existingNodeDescriptorRewriteVerified:Z

    .line 58
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->parentPassesRecordPointerVerified:Z

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->unitRecordIdentityVerified:Z

    .line 60
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->unitToPoseCfgVerified:Z

    .line 61
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->gameplaySpritesMayBeDrawn:Z

    .line 65
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->edition:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->rom:[B

    .line 66
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;-><init>(IILcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V

    aput-object v3, v2, v1

    new-instance v1, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    invoke-direct {v1, p1, v0, v4}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;-><init>(IILcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V

    aput-object v1, v2, v0

    new-instance v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, v4}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;-><init>(IILcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->paths:[Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(I[BLcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;-><init>(I[B)V

    return-void
.end method


# virtual methods
.method public path(I)Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;
    .locals 2
    .param p1, "selector"    # I

    .line 70
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->paths:[Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->paths:[Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    aget-object v0, v0, p1

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selector 0..2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawDescriptorPointer(II)J
    .locals 4
    .param p1, "selector"    # I
    .param p2, "index"    # I

    .line 75
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->path(I)Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;

    move-result-object v0

    .line 76
    .local v0, "p":Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;
    if-ltz p2, :cond_1

    const/4 v1, 0x7

    if-gt p2, v1, :cond_1

    .line 77
    iget v1, v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->descriptorTableAddress:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, p2, 0x4

    :goto_0
    add-int/2addr v1, v2

    .line 78
    .local v1, "position":I
    iget-object v2, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;->rom:[B

    invoke-static {v2, v1}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$smread32([BI)J

    move-result-wide v2

    return-wide v2

    .line 76
    .end local v1    # "position":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "audit sample index 0..7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public satSlotForUnit(I)I
    .locals 2
    .param p1, "rawUnitIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SAT slot is dynamically allocated; no per-unit slot map proved"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spriteFrameForUnit(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "rawFacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unit->graphic record->CFG frame has not been demonstrated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
