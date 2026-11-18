.class final Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$WorldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompactPurchaseInfo"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final price:I

.field final stock:I

.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

.field final type:I

.field final unit:Z

.field final upgrade:Z


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;ZILjava/lang/String;IZI)V
    .locals 0
    .param p2, "unit"    # Z
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "price"    # I
    .param p6, "upgrade"    # Z
    .param p7, "stock"    # I

    .line 18202
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18203
    iput-boolean p2, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->unit:Z

    iput p3, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->type:I

    iput-object p4, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->name:Ljava/lang/String;

    .line 18204
    iput p5, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->price:I

    iput-boolean p6, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->upgrade:Z

    iput p7, p0, Lcom/ahsim/demulation/MainActivity$WorldView$CompactPurchaseInfo;->stock:I

    .line 18205
    return-void
.end method
