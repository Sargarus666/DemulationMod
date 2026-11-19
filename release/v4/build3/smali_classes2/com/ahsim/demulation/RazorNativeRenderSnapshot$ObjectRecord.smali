.class public final Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;
.super Ljava/lang/Object;
.source "RazorNativeRenderSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeRenderSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectRecord"
.end annotation


# instance fields
.field public final owner:I

.field public final sourceIndex:I

.field public final type:I

.field public final unit:Z

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "p"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    aget v0, p1, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->unit:Z

    .line 23
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->owner:I

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->type:I

    .line 24
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    ushr-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->x:I

    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->y:I

    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;->sourceIndex:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>([IILcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$ObjectRecord;-><init>([II)V

    return-void
.end method
