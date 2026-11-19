.class final Lcom/ahsim/demulation/MainActivity$WorldView$Layout;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$WorldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Layout"
.end annotation


# instance fields
.field final hudHeight:F

.field final hudLeft:F

.field final hudScale:F

.field final hudWidth:F

.field final scale:I

.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

.field final totalHeight:F

.field final totalWidth:F

.field final viewLeft:F

.field final viewTop:F

.field final viewportHeight:F

.field final viewportLogicalHeight:I

.field final viewportLogicalWidth:I

.field final viewportWidth:F


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;IFFIIFFFFFFFF)V
    .locals 0
    .param p2, "scale"    # I
    .param p3, "viewLeft"    # F
    .param p4, "viewTop"    # F
    .param p5, "viewportLogicalWidth"    # I
    .param p6, "viewportLogicalHeight"    # I
    .param p7, "viewportWidth"    # F
    .param p8, "viewportHeight"    # F
    .param p9, "hudLeft"    # F
    .param p10, "hudWidth"    # F
    .param p11, "hudHeight"    # F
    .param p12, "hudScale"    # F
    .param p13, "totalWidth"    # F
    .param p14, "totalHeight"    # F

    .line 21010
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21011
    iput p2, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->scale:I

    .line 21012
    iput p3, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewLeft:F

    .line 21013
    iput p4, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewTop:F

    .line 21014
    iput p5, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportLogicalWidth:I

    .line 21015
    iput p6, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportLogicalHeight:I

    .line 21016
    iput p7, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportWidth:F

    .line 21017
    iput p8, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->viewportHeight:F

    .line 21018
    iput p9, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudLeft:F

    .line 21019
    iput p10, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudWidth:F

    .line 21020
    iput p11, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudHeight:F

    .line 21021
    iput p12, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->hudScale:F

    .line 21022
    iput p13, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->totalWidth:F

    .line 21023
    iput p14, p0, Lcom/ahsim/demulation/MainActivity$WorldView$Layout;->totalHeight:F

    .line 21024
    return-void
.end method
