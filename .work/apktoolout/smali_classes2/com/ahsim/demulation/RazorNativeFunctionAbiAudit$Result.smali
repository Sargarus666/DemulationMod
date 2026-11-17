.class public final Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
.super Ljava/lang/Object;
.source "RazorNativeFunctionAbiAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final codeOperandSites:[I

.field public final emcBankOffsets:[I

.field public final executablePointerLoadsVerified:Z

.field public final gameplayTickAuthorized:Z

.field public final nativeFunctionAbiVerified:Z

.field public final pointerTableAddress:I

.field public final schedulerCadenceVerified:Z

.field public final variant:I


# direct methods
.method private constructor <init>(I[I[I)V
    .locals 1
    .param p1, "v"    # I
    .param p2, "offsets"    # [I
    .param p3, "sites"    # [I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->nativeFunctionAbiVerified:Z

    .line 37
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->schedulerCadenceVerified:Z

    .line 38
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->gameplayTickAuthorized:Z

    .line 40
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->variant:I

    const v0, 0x841ec

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->pointerTableAddress:I

    .line 41
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->emcBankOffsets:[I

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->codeOperandSites:[I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->executablePointerLoadsVerified:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(I[I[ILcom/ahsim/demulation/RazorNativeFunctionAbiAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;-><init>(I[I[I)V

    return-void
.end method


# virtual methods
.method public bankOffset(I)I
    .locals 2
    .param p1, "bank"    # I

    .line 45
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->emcBankOffsets:[I

    aget v0, v0, p1

    return v0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public referenceOperandAddress(I)I
    .locals 2
    .param p1, "bank"    # I

    .line 49
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->codeOperandSites:[I

    aget v0, v0, p1

    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
