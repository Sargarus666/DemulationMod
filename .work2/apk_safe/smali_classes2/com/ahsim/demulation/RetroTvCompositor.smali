.class final Lcom/ahsim/demulation/RetroTvCompositor;
.super Ljava/lang/Object;
.source "RetroTvCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;,
        Lcom/ahsim/demulation/RetroTvCompositor$Api33;
    }
.end annotation


# instance fields
.field private final content:Landroid/widget/FrameLayout;

.field private final fallback:Lcom/ahsim/demulation/RetroVideoFilter;

.field private final mask:Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

.field private mode:I

.field private shaderActive:Z

.field private shaderRejected:Z

.field private shaderState:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$sN9vJx6kjE3GnuuHW8LShpjpCPM(Lcom/ahsim/demulation/RetroTvCompositor;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RetroTvCompositor;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetfallback(Lcom/ahsim/demulation/RetroTvCompositor;)Lcom/ahsim/demulation/RetroVideoFilter;
    .locals 0

    iget-object p0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->fallback:Lcom/ahsim/demulation/RetroVideoFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmode(Lcom/ahsim/demulation/RetroTvCompositor;)I
    .locals 0

    iget p0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshaderActive(Lcom/ahsim/demulation/RetroTvCompositor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderActive:Z

    return p0
.end method

.method constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 2
    .param p1, "content"    # Landroid/widget/FrameLayout;
    .param p2, "initialMode"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/ahsim/demulation/RetroVideoFilter;

    invoke-direct {v0}, Lcom/ahsim/demulation/RetroVideoFilter;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->fallback:Lcom/ahsim/demulation/RetroVideoFilter;

    .line 27
    new-instance v0, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;-><init>(Lcom/ahsim/demulation/RetroTvCompositor;Lcom/ahsim/demulation/RetroTvCompositor-IA;)V

    iput-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mask:Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    .line 34
    iput-object p1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    .line 35
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mask:Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v0, Lcom/ahsim/demulation/RetroTvCompositor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ahsim/demulation/RetroTvCompositor$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/RetroTvCompositor;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 49
    invoke-static {p2}, Lcom/ahsim/demulation/RetroVideoFilter;->normalizeMode(I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    .line 50
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RetroTvCompositor;->setMode(I)V

    .line 51
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 38
    sub-int v0, p4, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "w":I
    sub-int v2, p5, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 39
    .local v2, "h":I
    iget-object v3, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mask:Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

    invoke-virtual {v3, v1, v1, v0, v2}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->setBounds(IIII)V

    .line 40
    iget-boolean v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderActive:Z

    const/16 v3, 0x21

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v4, v3}, Lcom/ahsim/demulation/RetroTvCompositor$Api33;->setSize(Ljava/lang/Object;II)V

    goto :goto_0

    .line 42
    :cond_0
    if-lez v0, :cond_1

    if-lez v2, :cond_1

    iget v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderRejected:Z

    if-nez v1, :cond_1

    .line 46
    iget v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RetroTvCompositor;->setMode(I)V

    .line 48
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method setMode(I)V
    .locals 6
    .param p1, "newMode"    # I

    .line 54
    invoke-static {p1}, Lcom/ahsim/demulation/RetroVideoFilter;->normalizeMode(I)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderActive:Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 57
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mode:I

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    .line 58
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderRejected:Z

    if-nez v0, :cond_3

    .line 60
    const/4 v0, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/ahsim/demulation/RetroTvCompositor$Api33;->create()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    iget-object v4, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 61
    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RetroTvCompositor$Api33;->setSize(Ljava/lang/Object;II)V

    .line 63
    iget-object v3, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RetroTvCompositor$Api33;->attach(Landroid/view/View;Ljava/lang/Object;)V

    .line 64
    iput-boolean v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderActive:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 65
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 68
    .local v3, "unsupportedShader":Ljava/lang/Throwable;
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 69
    :cond_2
    iput-object v1, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderState:Ljava/lang/Object;

    .line 70
    iput-boolean v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderRejected:Z

    .line 73
    .end local v3    # "unsupportedShader":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->mask:Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;

    invoke-virtual {v0}, Lcom/ahsim/demulation/RetroTvCompositor$MaskOverlay;->invalidateSelf()V

    .line 74
    iget-object v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 75
    return-void
.end method

.method usesShader()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/ahsim/demulation/RetroTvCompositor;->shaderActive:Z

    return v0
.end method
