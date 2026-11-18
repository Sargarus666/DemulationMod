.class public final Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;
.super Ljava/lang/Object;
.source "RazorNativeRenderSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeRenderSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field public final compactPending:I

.field public final directMaps:I

.field public final gameplayReady:Z

.field public final grids128:I

.field public final missions:I

.field public final objects:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "d"    # I
    .param p3, "c"    # I
    .param p4, "e"    # I
    .param p5, "o"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->gameplayReady:Z

    .line 114
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->missions:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->directMaps:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->compactPending:I

    iput p4, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->grids128:I

    iput p5, p0, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;->objects:I

    .line 115
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/ahsim/demulation/RazorNativeRenderSnapshot-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeRenderSnapshot$Summary;-><init>(IIIII)V

    return-void
.end method
