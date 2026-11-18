.class public final Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
.super Ljava/lang/Object;
.source "RazorNativeFunctionDispatcherAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final cNativeAbiVerified:Z

.field public final dispatcherAddress:I

.field public final gameplayTickAuthorized:Z

.field public final indirectJsrAddress:I

.field public final nativeTables:[I

.field public final originalHandlerSemanticsVerified:Z

.field public final originalPointerRoutingVerified:Z

.field public final originalTickSchedulerVerified:Z

.field public final runtimeDescriptorAddresses:[I

.field public final team14CppReplacementAuthorized:Z

.field public final team14GuardAndEffectOpcodesVerified:Z

.field public final usedFunctionIds:[I

.field public final variant:I


# direct methods
.method private constructor <init>(I[I[I)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "tables"    # [I
    .param p3, "counts"    # [I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->originalPointerRoutingVerified:Z

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->originalHandlerSemanticsVerified:Z

    .line 108
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->team14GuardAndEffectOpcodesVerified:Z

    .line 109
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->team14CppReplacementAuthorized:Z

    .line 110
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->cNativeAbiVerified:Z

    .line 111
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->originalTickSchedulerVerified:Z

    .line 112
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->gameplayTickAuthorized:Z

    .line 114
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->variant:I

    invoke-static {}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->-$$Nest$sfgetDISPATCH()[I

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->dispatcherAddress:I

    invoke-static {}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->-$$Nest$sfgetINDIRECT_JSR()[I

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->indirectJsrAddress:I

    .line 115
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->nativeTables:[I

    sget-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->RAM_DESCRIPTOR_ADDRESSES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->runtimeDescriptorAddresses:[I

    .line 116
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->usedFunctionIds:[I

    .line 117
    return-void
.end method

.method synthetic constructor <init>(I[I[ILcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;-><init>(I[I[I)V

    return-void
.end method


# virtual methods
.method public activeIds(I)I
    .locals 2
    .param p1, "bank"    # I

    .line 123
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->usedFunctionIds:[I

    aget v0, v0, p1

    return v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pointerTable(I)I
    .locals 2
    .param p1, "bank"    # I

    .line 119
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;->nativeTables:[I

    aget v0, v0, p1

    return v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
