.class public final Lcom/ahsim/demulation/RazorFinanceTrace579;
.super Ljava/lang/Object;
.source "RazorFinanceTrace579.java"


# static fields
.field public static final BUILDING_TYPE_OFFSET:I = 0x6f80

.field public static final PAID_OFFSET:I = 0x6f88

.field public static final REMAINING_OFFSET:I = 0x6f84

.field public static final STATE_OFFSET:I = 0x6f8a


# instance fields
.field public final buildingType:I

.field public final paidTotal:I

.field public final paymentIndex:I

.field public final productionState:I

.field public final remainingFixed88:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "index"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ahsim/demulation/RazorFinanceTrace579;->paymentIndex:I

    .line 15
    const/16 v0, 0xc

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceTrace579;->buildingType:I

    .line 16
    rsub-int/lit8 v0, p1, 0x14

    mul-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceTrace579;->remainingFixed88:I

    .line 17
    mul-int/lit8 v0, p1, 0x32

    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceTrace579;->paidTotal:I

    .line 18
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/ahsim/demulation/RazorFinanceTrace579;->productionState:I

    .line 19
    return-void
.end method

.method public static expectedAfterManualPayment(Lcom/ahsim/demulation/RazorFinanceLive576;)Lcom/ahsim/demulation/RazorFinanceTrace579;
    .locals 5
    .param p0, "f"    # Lcom/ahsim/demulation/RazorFinanceLive576;

    .line 22
    if-eqz p0, :cond_4

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    const/16 v2, 0x14

    if-gt v0, v2, :cond_4

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    const/4 v3, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    if-ne v0, v3, :cond_4

    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    iget v4, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    mul-int/lit8 v4, v4, 0x32

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->remaining:I

    iget v4, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->paid:I

    rsub-int v4, v4, 0x3e8

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->phase:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget v3, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    new-instance v0, Lcom/ahsim/demulation/RazorFinanceTrace579;

    iget v1, p0, Lcom/ahsim/demulation/RazorFinanceLive576;->payments:I

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorFinanceTrace579;-><init>(I)V

    return-object v0

    .line 26
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
