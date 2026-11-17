.class public final Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
.super Ljava/lang/Object;
.source "RazorNativeObjectFrameBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marker"
.end annotation


# instance fields
.field public final kind:I

.field public final owner:I

.field public final packedLocation:I

.field public final sourceIndex:I

.field public final type:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>([II)V
    .locals 1
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    aget v0, p1, p2

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->kind:I

    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->sourceIndex:I

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->owner:I

    .line 84
    add-int/lit8 v0, p2, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->type:I

    add-int/lit8 v0, p2, 0x4

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->x:I

    add-int/lit8 v0, p2, 0x5

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->y:I

    .line 85
    add-int/lit8 v0, p2, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;->packedLocation:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>([IILcom/ahsim/demulation/RazorNativeObjectFrameBridge-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;-><init>([II)V

    return-void
.end method
