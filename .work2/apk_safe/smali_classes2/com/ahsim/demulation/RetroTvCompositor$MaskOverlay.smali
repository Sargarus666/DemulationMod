.class final Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;
.super Landroid/graphics/drawable/Drawable;
.source "RetroTvCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RetroTvCompositor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MaskOverlay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/RetroTvCompositor;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RetroTvCompositor;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->this$0:Lcom/ahsim/demulation/RetroTvCompositor;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RetroTvCompositor;Lcom/ahsim/demulation/RetroTvCompositor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;-><init>(Lcom/ahsim/demulation/RetroTvCompositor;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 81
    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->this$0:Lcom/ahsim/demulation/RetroTvCompositor;

    invoke-static {v0}, Lcom/ahsim/demulation/RetroTvCompositor;->-$$Nest$fgetmode(Lcom/ahsim/demulation/RetroTvCompositor;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->this$0:Lcom/ahsim/demulation/RetroTvCompositor;

    invoke-static {v0}, Lcom/ahsim/demulation/RetroTvCompositor;->-$$Nest$fgetshaderActive(Lcom/ahsim/demulation/RetroTvCompositor;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->this$0:Lcom/ahsim/demulation/RetroTvCompositor;

    invoke-static {v0}, Lcom/ahsim/demulation/RetroTvCompositor;->-$$Nest$fgetfallback(Lcom/ahsim/demulation/RetroTvCompositor;)Lcom/ahsim/demulation/RetroVideoFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/ahsim/demulation/RetroVideoFilter;->drawOverlay(Landroid/graphics/Canvas;II)V

    .line 84
    return-void

    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 87
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 85
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 86
    return-void
.end method
