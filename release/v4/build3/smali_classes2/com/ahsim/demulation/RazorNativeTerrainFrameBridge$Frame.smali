.class public final Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
.super Ljava/lang/Object;
.source "RazorNativeTerrainFrameBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final height:I

.field public final sequence:I

.field private final surfaces:[I

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(IIIII[I)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "sequence"    # I
    .param p6, "ids"    # [I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->x:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->y:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->width:I

    iput p4, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->height:I

    .line 54
    iput p5, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->sequence:I

    iput-object p6, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->surfaces:[I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(IIIII[ILcom/ahsim/demulation/RazorNativeTerrainFrameBridge-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;-><init>(IIIII[I)V

    return-void
.end method


# virtual methods
.method public metatileIdsCopy()[I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;->surfaces:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
