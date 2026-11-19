.class public final Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;
.super Ljava/lang/Object;
.source "RazorPrototypeView663.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorPrototypeView663;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Overlay"
.end annotation


# instance fields
.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;->x:I

    iput p2, p0, Lcom/ahsim/demulation/RazorPrototypeView663$Overlay;->y:I

    return-void
.end method
