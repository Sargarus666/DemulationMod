.class public final Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;
.super Ljava/lang/Object;
.source "RazorSpriteNodeRegistrationSourceTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathEvidence"
.end annotation


# instance fields
.field public final callerOffset:I

.field public final descriptorTableAddress:I

.field public final entryOffset:I

.field public final existingNodeReusesHandle:Z

.field public final newNodeHandleStoredBack:Z

.field public final nodeFieldOffset:I

.field public final nodeRegistrationEntry:I

.field public final recordHandleOffset:I

.field public final registerFlags:I

.field public final registrationD1:J

.field public final selector:I

.field public final sourceCoordinateOffset:I


# direct methods
.method private constructor <init>(II)V
    .locals 4
    .param p1, "e"    # I
    .param p2, "s"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x8

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->nodeFieldOffset:I

    .line 39
    const/16 v0, 0x10

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->recordHandleOffset:I

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->sourceCoordinateOffset:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->existingNodeReusesHandle:Z

    .line 44
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->newNodeHandleStoredBack:Z

    .line 46
    iput p2, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->selector:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$sfgetENTRY()[[I

    move-result-object v1

    aget-object v1, v1, p1

    aget v1, v1, p2

    iput v1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->entryOffset:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$sfgetPARENT_CALL()[[I

    move-result-object v1

    aget-object v1, v1, p1

    aget v1, v1, p2

    iput v1, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->callerOffset:I

    .line 47
    if-nez p2, :cond_0

    const v0, 0x842ee

    goto :goto_0

    .line 48
    :cond_0
    if-ne p2, v0, :cond_1

    const v0, 0x84286

    goto :goto_0

    :cond_1
    const v0, 0x842d2

    :goto_0
    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->descriptorTableAddress:I

    .line 49
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$sfgetREGISTRAR()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->nodeRegistrationEntry:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$sfgetFLAGS()[I

    move-result-object v0

    aget v0, v0, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->registerFlags:I

    .line 50
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->-$$Nest$sfgetREGISTRATION_D1()[I

    move-result-object v0

    aget v0, v0, p2

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;->registrationD1:J

    .line 51
    return-void
.end method

.method synthetic constructor <init>(IILcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;-><init>(II)V

    return-void
.end method
