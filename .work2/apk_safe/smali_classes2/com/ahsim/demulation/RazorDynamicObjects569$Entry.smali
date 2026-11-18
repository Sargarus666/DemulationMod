.class public final Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;
.super Ljava/lang/Object;
.source "RazorDynamicObjects569.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorDynamicObjects569;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final handle:I

.field public final owner:I

.field public final phase:I

.field public final provenance:I

.field public final slot:I

.field public final type:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>([II)V
    .locals 1
    .param p1, "v"    # [I
    .param p2, "i"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    aget v0, p1, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->handle:I

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->slot:I

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->owner:I

    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->type:I

    .line 16
    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->x:I

    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->y:I

    add-int/lit8 v0, p2, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->phase:I

    add-int/lit8 v0, p2, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorDynamicObjects569$Entry;->provenance:I

    .line 17
    return-void
.end method
