.class public final Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
.super Ljava/lang/Object;
.source "RazorEmcTickDependencyAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bank"
.end annotation


# instance fields
.field public final bytes:I

.field public final dataWords:I

.field public final distinctNativeIds:I

.field public final entries:I

.field public final instructionCount:I

.field public final name:Ljava/lang/String;

.field public final nativeCalls:I

.field private final nativeCounts:[I

.field public final nativeIdMask:J

.field public final romOffset:I

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(IIIIIJ[I)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "offset"    # I
    .param p3, "words"    # I
    .param p4, "count"    # I
    .param p5, "calls"    # I
    .param p6, "mask"    # J
    .param p8, "counts"    # [I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetNAMES()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->name:Ljava/lang/String;

    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetBANK_SHA()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->sha256:Ljava/lang/String;

    iput p2, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->romOffset:I

    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetLENGTHS()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->bytes:I

    .line 62
    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetENTRIES()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->entries:I

    iput p3, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->dataWords:I

    iput p4, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->instructionCount:I

    .line 63
    iput p5, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCalls:I

    iput-wide p6, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeIdMask:J

    invoke-static {p6, p7}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->distinctNativeIds:I

    .line 64
    invoke-virtual {p8}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCounts:[I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(IIIIIJ[ILcom/ahsim/demulation/RazorEmcTickDependencyAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;-><init>(IIIIIJ[I)V

    return-void
.end method


# virtual methods
.method public countNativeId(I)I
    .locals 2
    .param p1, "id"    # I

    .line 67
    if-ltz p1, :cond_0

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCounts:[I

    aget v0, v0, p1

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid native ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
