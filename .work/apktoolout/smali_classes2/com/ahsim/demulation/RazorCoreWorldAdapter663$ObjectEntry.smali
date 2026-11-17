.class public final Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
.super Ljava/lang/Object;
.source "RazorCoreWorldAdapter663.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCoreWorldAdapter663;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectEntry"
.end annotation


# instance fields
.field public final identity:I

.field public final kind:I

.field public final ordinal:I

.field public final owner:I

.field public final type:I

.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "k"    # I
    .param p2, "n"    # I
    .param p3, "h"    # I
    .param p4, "t"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "identity"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->kind:I

    iput p2, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->ordinal:I

    iput p3, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->owner:I

    iput p4, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->type:I

    iput p5, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->x:I

    iput p6, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->y:I

    iput p7, p0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->identity:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILcom/ahsim/demulation/RazorCoreWorldAdapter663-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;-><init>(IIIIIII)V

    return-void
.end method
