.class public final Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;
.super Ljava/lang/Object;
.source "RazorNativeObjectFrameBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeObjectFrameBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final height:I

.field private final objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

.field public final sequence:I

.field public final sourceBuildings:I

.field public final sourceTerrainMarkers:I

.field public final sourceUnits:I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(IIIIIIII[I)V
    .locals 5
    .param p1, "xx"    # I
    .param p2, "yy"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "number"    # I
    .param p6, "units"    # I
    .param p7, "buildings"    # I
    .param p8, "ground"    # I
    .param p9, "array"    # [I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->x:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->y:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->width:I

    iput p4, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->height:I

    iput p5, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sequence:I

    .line 95
    iput p6, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceUnits:I

    iput p7, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceBuildings:I

    iput p8, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->sourceTerrainMarkers:I

    .line 96
    array-length v0, p9

    div-int/lit8 v0, v0, 0x7

    new-array v0, v0, [Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    new-instance v2, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    mul-int/lit8 v3, v0, 0x7

    const/4 v4, 0x0

    invoke-direct {v2, p9, v3, v4}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;-><init>([IILcom/ahsim/demulation/RazorNativeObjectFrameBridge-IA;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(IIIIIIII[ILcom/ahsim/demulation/RazorNativeObjectFrameBridge-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;-><init>(IIIIIIII[I)V

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    array-length v0, v0

    return v0
.end method

.method public marker(I)Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;
    .locals 1
    .param p1, "index"    # I

    .line 100
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Frame;->objects:[Lcom/ahsim/demulation/RazorNativeObjectFrameBridge$Marker;

    aget-object v0, v0, p1

    return-object v0
.end method
