.class final Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;
.super Ljava/lang/Object;
.source "GenesisOriginalTutorialRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;
    }
.end annotation


# static fields
.field private static final CURSOR_DESCRIPTOR_TABLE:I = 0x1321a

.field private static final CURSOR_PATTERN_TABLE:I = 0x13876

.field static final HEIGHT:I = 0xe0

.field static final MUSIC_SEQUENCE:I = 0x5

.field private static final PATTERN_BYTES:I = 0x20

.field private static final PLANE_BYTES:I = 0xe00

.field private static final PLANE_COLUMNS:I = 0x40

.field private static final SCENE_TABLE:I = 0x416e2

.field private static final TEXT_CHAR_MAP:I = 0x42ad0

.field private static final TEXT_DESCRIPTOR:I = 0x42b50

.field private static final TEXT_FONT:I = 0x42d02

.field private static final TUTORIAL_SCRIPT:[I

.field private static final VISIBLE_COLUMNS:I = 0x28

.field static final WIDTH:I = 0x140


# instance fields
.field private aborted:Z

.field private complete:Z

.field private cursorMotionDy:I

.field private cursorMotionTicks:I

.field private cursorPatterns:[B

.field private cursorType:I

.field private cursorX:I

.field private cursorY:I

.field private dirty:Z

.field private final frame:Landroid/graphics/Bitmap;

.field private loopCount:I

.field private loopPc:I

.field private final mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

.field private final palette:[I

.field private paletteFadeActive:Z

.field private paletteFadeReachedBlack:Z

.field private paletteFadeTicks:I

.field private final paletteWords:[I

.field private pc:I

.field private pendingHead:I

.field private final pendingSequences:[I

.field private pendingTail:I

.field private final pixels:[I

.field private planeResult:I

.field private final providerCursorLayouts:[[B

.field private final providerSceneFlags:[[Z

.field private final providerTextFont:[B

.field private final providerTextLayout:[B

.field private final rom:[B

.field private scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

.field private scriptIndex:I

.field private final tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

.field private tutorialText:[B

.field private waitTicks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->TUTORIAL_SCRIPT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x41b48
        0x41b82
        0x41bd0
        0x41fd6
        0x423cc
        0x42936
    .end array-data
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 3
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "contentAssets"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->frame:Landroid/graphics/Bitmap;

    .line 47
    const v0, 0x11800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    .line 48
    const/16 v0, 0x40

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 105
    if-eqz p1, :cond_1

    .line 106
    if-eqz p2, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    .line 108
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 109
    invoke-static {p2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readTutorialContent(Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    .line 110
    const-string v0, "tutorial/scenes/index.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->parseProviderSceneIndex([B)[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerSceneFlags:[[Z

    .line 111
    const-string v0, "tutorial/cursor/layouts.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->parseProviderCursorLayouts([B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerCursorLayouts:[[B

    .line 112
    const-string v0, "tutorial/text/layout.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextLayout:[B

    .line 113
    const-string v0, "tutorial/text/font.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextFont:[B

    .line 114
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->initializeState()V

    .line 115
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial content provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;[B)V
    .locals 3
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "legacyRom"    # [B

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->frame:Landroid/graphics/Bitmap;

    .line 47
    const v0, 0x11800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    .line 48
    const/16 v0, 0x40

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 119
    if-eqz p1, :cond_1

    .line 120
    if-eqz p2, :cond_0

    array-length v0, p2

    const v1, 0x42b80

    if-lt v0, v1, :cond_0

    .line 122
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    .line 123
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    .line 125
    const-string v0, "tutorial/scenes/index.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->parseProviderSceneIndex([B)[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerSceneFlags:[[Z

    .line 126
    const-string v0, "tutorial/cursor/layouts.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->parseProviderCursorLayouts([B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerCursorLayouts:[[B

    .line 127
    const-string v0, "tutorial/text/layout.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextLayout:[B

    .line 128
    const-string v0, "tutorial/text/font.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextFont:[B

    .line 129
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->verifyRomAnchors()V

    .line 130
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->initializeState()V

    .line 131
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original tutorial ROM is missing/truncated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "rom"    # [B

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->frame:Landroid/graphics/Bitmap;

    .line 47
    const v0, 0x11800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    .line 48
    const/16 v0, 0x40

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 86
    if-eqz p1, :cond_0

    array-length v0, p1

    const v1, 0x42b80

    if-lt v0, v1, :cond_0

    .line 88
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 90
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    .line 91
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerSceneFlags:[[Z

    .line 92
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerCursorLayouts:[[B

    .line 93
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextLayout:[B

    .line 94
    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextFont:[B

    .line 95
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->verifyRomAnchors()V

    .line 96
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->initializeState()V

    .line 97
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original tutorial ROM is missing/truncated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private advancePlane(I)I
    .locals 5
    .param p1, "plane"    # I

    .line 411
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 413
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 414
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0:[B

    if-nez v2, :cond_1

    return v1

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0:[B

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget v3, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0Offset:I

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane0:[B

    invoke-direct {p0, v2, v3, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->applyPlaneDelta([BI[B)I

    move-result v2

    .line 416
    .local v2, "used":I
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget v4, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0Offset:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0Offset:I

    goto :goto_0

    .line 417
    .end local v2    # "used":I
    :cond_2
    if-ne p1, v0, :cond_6

    .line 418
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1:[B

    if-nez v2, :cond_3

    return v1

    .line 419
    :cond_3
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1:[B

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget v3, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1Offset:I

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane1:[B

    invoke-direct {p0, v2, v3, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->applyPlaneDelta([BI[B)I

    move-result v2

    .line 420
    .restart local v2    # "used":I
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget v4, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1Offset:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1Offset:I

    .line 424
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 425
    if-gez v2, :cond_5

    const/4 v1, -0x1

    :cond_5
    return v1

    .line 422
    .end local v2    # "used":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tutorial plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applyPlaneDelta([BI[B)I
    .locals 16
    .param p1, "src"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "dst"    # [B

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ltz p2, :cond_e

    add-int/lit8 v2, p2, 0x2

    array-length v3, v1

    if-gt v2, v3, :cond_e

    .line 501
    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v2

    .line 502
    .local v2, "encodedBytes":I
    const v3, 0xffff

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    return v3

    .line 503
    :cond_0
    add-int/lit8 v3, p2, 0x2

    .line 504
    .local v3, "p":I
    move v4, v2

    .line 505
    .local v4, "remain":I
    const/4 v5, 0x0

    .line 506
    .local v5, "visibleColumn":I
    const/4 v6, 0x0

    .line 507
    .local v6, "out":I
    :goto_0
    if-lez v4, :cond_d

    .line 508
    array-length v7, v1

    if-ge v3, v7, :cond_c

    .line 509
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "p":I
    .local v7, "p":I
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    .line 510
    .local v3, "control":I
    add-int/lit8 v4, v4, -0x1

    .line 511
    const/16 v8, 0x80

    const/16 v9, 0x28

    const/4 v10, 0x2

    if-ne v3, v8, :cond_3

    .line 512
    array-length v8, v1

    if-ge v7, v8, :cond_2

    .line 513
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "p":I
    .local v8, "p":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 514
    .local v7, "skip":I
    add-int/lit8 v4, v4, -0x1

    .line 515
    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v6, v11

    .line 516
    add-int/2addr v5, v7

    .line 517
    if-lt v5, v9, :cond_1

    .line 518
    div-int/lit8 v9, v5, 0x28

    .line 519
    .local v9, "rows":I
    mul-int/lit8 v11, v9, 0x18

    mul-int/2addr v11, v10

    add-int/2addr v6, v11

    .line 520
    rem-int/lit8 v5, v5, 0x28

    .line 522
    .end local v9    # "rows":I
    :cond_1
    const/4 v9, 0x0

    invoke-direct {v0, v6, v9}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkPlaneOutput(II)V

    .line 523
    .end local v7    # "skip":I
    move v12, v8

    goto/16 :goto_3

    .line 512
    .end local v8    # "p":I
    .local v7, "p":I
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Tutorial plane skip overrun"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 523
    :cond_3
    if-le v3, v8, :cond_7

    .line 524
    and-int/lit8 v8, v3, 0x7f

    .line 525
    .local v8, "count":I
    mul-int/lit8 v11, v8, 0x2

    sub-int/2addr v4, v11

    .line 526
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_6

    .line 527
    add-int/lit8 v12, v7, 0x2

    array-length v13, v1

    if-gt v12, v13, :cond_5

    .line 528
    invoke-direct {v0, v6, v10}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkPlaneOutput(II)V

    .line 529
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "out":I
    .local v12, "out":I
    add-int/lit8 v13, v7, 0x1

    .end local v7    # "p":I
    .local v13, "p":I
    aget-byte v7, v1, v7

    aput-byte v7, p3, v6

    .line 530
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "out":I
    .restart local v6    # "out":I
    add-int/lit8 v7, v13, 0x1

    .end local v13    # "p":I
    .restart local v7    # "p":I
    aget-byte v13, v1, v13

    aput-byte v13, p3, v12

    .line 531
    add-int/lit8 v5, v5, 0x1

    .line 532
    if-lt v5, v9, :cond_4

    .line 533
    add-int/lit8 v6, v6, 0x30

    .line 534
    const/4 v5, 0x0

    .line 526
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 527
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Tutorial literal overrun"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 537
    .end local v8    # "count":I
    .end local v11    # "i":I
    :cond_6
    move v12, v7

    goto :goto_3

    .line 538
    :cond_7
    move v8, v3

    .line 539
    .restart local v8    # "count":I
    add-int/lit8 v11, v7, 0x2

    array-length v12, v1

    if-gt v11, v12, :cond_b

    .line 540
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "p":I
    .local v11, "p":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 541
    .local v7, "hi":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "p":I
    .local v12, "p":I
    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    .line 542
    .local v11, "lo":I
    add-int/lit8 v4, v4, -0x2

    .line 543
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_9

    .line 544
    invoke-direct {v0, v6, v10}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkPlaneOutput(II)V

    .line 545
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "out":I
    .local v14, "out":I
    int-to-byte v15, v7

    aput-byte v15, p3, v6

    .line 546
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "out":I
    .restart local v6    # "out":I
    int-to-byte v15, v11

    aput-byte v15, p3, v14

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 548
    if-lt v5, v9, :cond_8

    .line 549
    add-int/lit8 v6, v6, 0x30

    .line 550
    const/4 v5, 0x0

    .line 543
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 554
    .end local v7    # "hi":I
    .end local v8    # "count":I
    .end local v11    # "lo":I
    .end local v13    # "i":I
    :cond_9
    :goto_3
    if-ltz v4, :cond_a

    .line 555
    .end local v3    # "control":I
    move v3, v12

    goto/16 :goto_0

    .line 554
    .restart local v3    # "control":I
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Tutorial plane encoded-size mismatch"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 539
    .end local v12    # "p":I
    .local v7, "p":I
    .restart local v8    # "count":I
    :cond_b
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Tutorial repeat overrun"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 508
    .end local v7    # "p":I
    .end local v8    # "count":I
    .local v3, "p":I
    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Tutorial plane command overrun"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 556
    :cond_d
    add-int/lit8 v7, v2, 0x2

    return v7

    .line 500
    .end local v2    # "encodedBytes":I
    .end local v3    # "p":I
    .end local v4    # "remain":I
    .end local v5    # "visibleColumn":I
    .end local v6    # "out":I
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tutorial plane stream overrun"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private be16(I)I
    .locals 2
    .param p1, "off"    # I

    .line 982
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private be32(I)I
    .locals 2
    .param p1, "off"    # I

    .line 986
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 987
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 986
    return v0
.end method

.method private checkPlaneOutput(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "bytes"    # I

    .line 560
    if-ltz p1, :cond_0

    rsub-int v0, p2, 0xe00

    if-gt p1, v0, :cond_0

    .line 562
    return-void

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tutorial plane output overrun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRange(II)V
    .locals 2
    .param p1, "off"    # I
    .param p2, "n"    # I

    .line 996
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    array-length v0, v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 998
    return-void

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial legacy ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearVisiblePlaneB()V
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    if-nez v0, :cond_0

    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_0
    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 570
    mul-int/lit8 v1, v0, 0x40

    mul-int/lit8 v1, v1, 0x2

    .line 571
    .local v1, "start":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane1:[B

    add-int/lit8 v3, v1, 0x50

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 569
    .end local v1    # "start":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    .end local v0    # "row":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 574
    return-void
.end method

.method private controlByte(I)I
    .locals 5
    .param p1, "off"    # I

    .line 971
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 973
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 975
    :cond_0
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->byteAt(I)I

    move-result v0

    .line 976
    .local v0, "recovered":I
    if-ltz v0, :cond_1

    return v0

    .line 977
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 978
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 977
    const-string v4, "Tutorial recovered-control range %06X"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decompressExact(II)[B
    .locals 3
    .param p1, "source"    # I
    .param p2, "maxOutput"    # I

    .line 895
    new-array v0, p2, [B

    .line 896
    .local v0, "scratch":[B
    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->decompressInto(I[B)I

    move-result v1

    .line 897
    .local v1, "n":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method private decompressInto(I[B)I
    .locals 9
    .param p1, "source"    # I
    .param p2, "out"    # [B

    .line 902
    move v0, p1

    .line 903
    .local v0, "src":I
    const/4 v1, 0x0

    .line 904
    .local v1, "dst":I
    const/4 v2, 0x0

    .line 906
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 907
    invoke-direct {p0, v0, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 908
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "src":I
    .local v5, "src":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 909
    .local v0, "c":I
    const/16 v4, 0x80

    if-ne v0, v4, :cond_0

    .line 943
    .end local v0    # "c":I
    return v1

    .line 910
    .restart local v0    # "c":I
    :cond_0
    const/16 v4, 0x81

    if-lt v0, v4, :cond_1

    const/16 v4, 0xbf

    if-gt v0, v4, :cond_1

    .line 911
    and-int/lit8 v3, v0, 0x3f

    .line 912
    .local v3, "n":I
    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->ensureOutput([BII)V

    .line 913
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    invoke-static {v4, v5, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    add-int/2addr v1, v3

    .line 914
    .end local v3    # "n":I
    move v0, v5

    goto/16 :goto_5

    :cond_1
    const/16 v4, 0x7f

    const/4 v6, 0x3

    if-gt v0, v4, :cond_4

    .line 915
    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 916
    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "src":I
    .local v7, "src":I
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 917
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 918
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 919
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->ensureOutput([BII)V

    .line 920
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    sub-int v6, v1, v3

    aget-byte v6, p2, v6

    aput-byte v6, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 921
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v5    # "i":I
    :cond_2
    move v0, v7

    goto/16 :goto_5

    .line 918
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Tutorial short-copy range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 921
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v7    # "src":I
    .local v5, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 922
    const/4 v3, 0x2

    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 923
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 924
    .local v3, "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .local v4, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 925
    if-ltz v4, :cond_6

    if-ge v4, v1, :cond_6

    .line 926
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->ensureOutput([BII)V

    .line 927
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_5

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .local v7, "dst":I
    add-int v8, v4, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_2

    .line 928
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v5

    goto/16 :goto_5

    .line 925
    .restart local v3    # "n":I
    .restart local v4    # "from":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tutorial absolute-copy range"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 928
    .end local v3    # "n":I
    .end local v4    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 929
    invoke-direct {p0, v5, v6}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 930
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 931
    .restart local v3    # "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x2

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .local v4, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 932
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->ensureOutput([BII)V

    .line 933
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v3, :cond_8

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    int-to-byte v8, v4

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_3

    .line 934
    .end local v3    # "n":I
    .end local v4    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v5

    goto :goto_5

    .line 935
    :cond_9
    const/4 v3, 0x4

    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 936
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 937
    .restart local v3    # "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x2

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .local v4, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 938
    if-ltz v4, :cond_b

    if-ge v4, v1, :cond_b

    .line 939
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->ensureOutput([BII)V

    .line 940
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v3, :cond_a

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    add-int v8, v4, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_4

    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_a
    move v0, v5

    .line 942
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v5    # "src":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 938
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "from":I
    .restart local v5    # "src":I
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tutorial long-copy range"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 906
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v5    # "src":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tutorial decompressor guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private drawPlane([BI)V
    .locals 24
    .param p1, "plane"    # [B
    .param p2, "priority"    # I

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v1, v1, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    if-nez v1, :cond_0

    move-object/from16 v4, p1

    move/from16 v8, p2

    goto/16 :goto_b

    .line 643
    :cond_0
    const/4 v1, 0x0

    .local v1, "ty":I
    :goto_0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_d

    .line 644
    const/4 v2, 0x0

    .local v2, "tx":I
    :goto_1
    const/16 v3, 0x28

    if-ge v2, v3, :cond_c

    .line 645
    mul-int/lit8 v3, v1, 0x40

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    .line 646
    .local v3, "mo":I
    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v5

    .line 647
    .local v5, "attr":I
    ushr-int/lit8 v6, v5, 0xf

    const/4 v7, 0x1

    and-int/2addr v6, v7

    move/from16 v8, p2

    if-eq v6, v8, :cond_1

    move/from16 v18, v1

    move/from16 v16, v2

    goto/16 :goto_a

    .line 648
    :cond_1
    and-int/lit16 v6, v5, 0x7ff

    .line 649
    .local v6, "pattern":I
    mul-int/lit8 v9, v6, 0x20

    .line 650
    .local v9, "po":I
    if-ltz v9, :cond_b

    add-int/lit8 v10, v9, 0x20

    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v11, v11, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    array-length v11, v11

    if-le v10, v11, :cond_2

    move/from16 v18, v1

    move/from16 v16, v2

    goto/16 :goto_a

    .line 651
    :cond_2
    and-int/lit16 v10, v5, 0x800

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    move v10, v11

    .line 652
    .local v10, "hFlip":Z
    :goto_2
    and-int/lit16 v12, v5, 0x1000

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move v7, v11

    .line 653
    .local v7, "vFlip":Z
    :goto_3
    ushr-int/lit8 v11, v5, 0xd

    and-int/lit8 v11, v11, 0x3

    .line 654
    .local v11, "paletteLine":I
    const/4 v12, 0x0

    .local v12, "py":I
    :goto_4
    const/16 v13, 0x8

    if-ge v12, v13, :cond_a

    .line 655
    if-eqz v7, :cond_5

    rsub-int/lit8 v14, v12, 0x7

    goto :goto_5

    :cond_5
    move v14, v12

    .line 656
    .local v14, "sy":I
    :goto_5
    mul-int/lit8 v15, v14, 0x4

    add-int/2addr v15, v9

    .line 657
    .local v15, "row":I
    mul-int/lit8 v16, v1, 0x8

    add-int v13, v16, v12

    .line 658
    .local v13, "dy":I
    const/16 v16, 0x0

    move/from16 v18, v1

    move/from16 v1, v16

    .local v1, "px":I
    .local v18, "ty":I
    :goto_6
    move/from16 v16, v2

    const/16 v2, 0x8

    .end local v2    # "tx":I
    .local v16, "tx":I
    if-ge v1, v2, :cond_9

    .line 659
    if-eqz v10, :cond_6

    rsub-int/lit8 v17, v1, 0x7

    goto :goto_7

    :cond_6
    move/from16 v17, v1

    .line 660
    .local v17, "sx":I
    :goto_7
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    ushr-int/lit8 v19, v17, 0x1

    add-int v19, v15, v19

    aget-byte v2, v2, v19

    and-int/lit16 v2, v2, 0xff

    .line 661
    .local v2, "packed":I
    and-int/lit8 v19, v17, 0x1

    if-nez v19, :cond_7

    ushr-int/lit8 v19, v2, 0x4

    goto :goto_8

    :cond_7
    and-int/lit8 v19, v2, 0xf

    .line 662
    .local v19, "ci":I
    :goto_8
    if-nez v19, :cond_8

    move/from16 v20, v1

    goto :goto_9

    .line 663
    :cond_8
    move/from16 v20, v1

    .end local v1    # "px":I
    .local v20, "px":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    move-object/from16 v21, v1

    mul-int/lit16 v1, v13, 0x140

    mul-int/lit8 v22, v16, 0x8

    add-int v1, v1, v22

    add-int v1, v1, v20

    move/from16 v22, v1

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    mul-int/lit8 v23, v11, 0x10

    add-int v23, v23, v19

    aget v1, v1, v23

    aput v1, v21, v22

    .line 658
    .end local v2    # "packed":I
    .end local v17    # "sx":I
    .end local v19    # "ci":I
    :goto_9
    add-int/lit8 v1, v20, 0x1

    move/from16 v2, v16

    .end local v20    # "px":I
    .restart local v1    # "px":I
    goto :goto_6

    :cond_9
    move/from16 v20, v1

    .line 654
    .end local v1    # "px":I
    .end local v13    # "dy":I
    .end local v14    # "sy":I
    .end local v15    # "row":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    move/from16 v1, v18

    goto :goto_4

    .end local v16    # "tx":I
    .end local v18    # "ty":I
    .local v1, "ty":I
    .local v2, "tx":I
    :cond_a
    move/from16 v18, v1

    move/from16 v16, v2

    .end local v1    # "ty":I
    .end local v2    # "tx":I
    .restart local v16    # "tx":I
    .restart local v18    # "ty":I
    goto :goto_a

    .line 650
    .end local v7    # "vFlip":Z
    .end local v10    # "hFlip":Z
    .end local v11    # "paletteLine":I
    .end local v12    # "py":I
    .end local v16    # "tx":I
    .end local v18    # "ty":I
    .restart local v1    # "ty":I
    .restart local v2    # "tx":I
    :cond_b
    move/from16 v18, v1

    move/from16 v16, v2

    .line 644
    .end local v1    # "ty":I
    .end local v2    # "tx":I
    .end local v3    # "mo":I
    .end local v5    # "attr":I
    .end local v6    # "pattern":I
    .end local v9    # "po":I
    .restart local v16    # "tx":I
    .restart local v18    # "ty":I
    :goto_a
    add-int/lit8 v2, v16, 0x1

    move/from16 v1, v18

    .end local v16    # "tx":I
    .restart local v2    # "tx":I
    goto/16 :goto_1

    .end local v18    # "ty":I
    .restart local v1    # "ty":I
    :cond_c
    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v18, v1

    move/from16 v16, v2

    .line 643
    .end local v1    # "ty":I
    .end local v2    # "tx":I
    .restart local v18    # "ty":I
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "ty":I
    .restart local v1    # "ty":I
    goto/16 :goto_0

    .line 668
    .end local v1    # "ty":I
    :cond_d
    return-void

    .line 642
    :cond_e
    move-object/from16 v4, p1

    move/from16 v8, p2

    :goto_b
    return-void
.end method

.method private drawSpriteDescriptor([BIIZ)V
    .locals 25
    .param p1, "descriptor"    # [B
    .param p2, "baseX"    # I
    .param p3, "baseY"    # I
    .param p4, "cursor"    # Z

    .line 684
    move-object/from16 v0, p1

    if-eqz v0, :cond_9

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_7

    .line 685
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 686
    .local v3, "pieces":I
    const/4 v5, 0x2

    .line 687
    .local v5, "p":I
    array-length v6, v0

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v7, v2

    if-lt v6, v7, :cond_8

    .line 689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 690
    add-int/lit8 v6, v5, 0x4

    invoke-static {v0, v6}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v6

    .line 691
    .local v6, "yOff":I
    add-int/lit8 v7, v5, 0x6

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v7

    .line 692
    .local v7, "sizeWord":I
    add-int/lit8 v8, v5, 0x8

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v11

    .line 693
    .local v11, "attr":I
    add-int/lit8 v8, v5, 0xa

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v8

    invoke-static {v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v8

    .line 694
    .local v8, "xOff":I
    ushr-int/lit8 v9, v7, 0x8

    and-int/lit8 v15, v9, 0xf

    .line 695
    .local v15, "size":I
    ushr-int/lit8 v9, v15, 0x2

    and-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v4

    .line 696
    .local v9, "tilesWide":I
    and-int/lit8 v10, v15, 0x3

    add-int/2addr v10, v4

    .line 697
    .local v10, "tilesHigh":I
    and-int/lit16 v12, v11, 0x7ff

    .line 698
    .local v12, "firstPattern":I
    and-int/lit16 v13, v11, 0x800

    if-eqz v13, :cond_1

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v1

    :goto_1
    move/from16 v16, v13

    .line 699
    .local v16, "hFlip":Z
    and-int/lit16 v13, v11, 0x1000

    if-eqz v13, :cond_2

    move v13, v4

    goto :goto_2

    :cond_2
    move v13, v1

    :goto_2
    move/from16 v17, v13

    .line 700
    .local v17, "vFlip":Z
    const/4 v13, 0x0

    .local v13, "tx":I
    :goto_3
    if-ge v13, v9, :cond_6

    .line 701
    const/4 v14, 0x0

    .local v14, "ty":I
    :goto_4
    if-ge v14, v10, :cond_5

    .line 702
    if-eqz v16, :cond_3

    add-int/lit8 v18, v9, -0x1

    sub-int v18, v18, v13

    goto :goto_5

    :cond_3
    move/from16 v18, v13

    .line 703
    .local v18, "srcTx":I
    :goto_5
    if-eqz v17, :cond_4

    add-int/lit8 v19, v10, -0x1

    sub-int v19, v19, v14

    goto :goto_6

    :cond_4
    move/from16 v19, v14

    .line 704
    .local v19, "srcTy":I
    :goto_6
    mul-int v20, v18, v10

    add-int v20, v12, v20

    add-int v20, v20, v19

    .line 705
    .local v20, "pattern":I
    add-int v21, p2, v8

    mul-int/lit8 v22, v13, 0x8

    add-int v21, v21, v22

    add-int v22, p3, v6

    mul-int/lit8 v23, v14, 0x8

    add-int v22, v22, v23

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v13, v22

    move/from16 v14, p4

    move/from16 v22, v12

    move/from16 v12, v21

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v9

    move-object/from16 v9, p0

    .end local v9    # "tilesWide":I
    .end local v12    # "firstPattern":I
    .end local v13    # "tx":I
    .end local v14    # "ty":I
    .local v10, "pattern":I
    .local v20, "tilesWide":I
    .local v21, "tilesHigh":I
    .local v22, "firstPattern":I
    .local v23, "tx":I
    .local v24, "ty":I
    invoke-direct/range {v9 .. v14}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawSpriteTile(IIIIZ)V

    .line 701
    .end local v10    # "pattern":I
    .end local v18    # "srcTx":I
    .end local v19    # "srcTy":I
    add-int/lit8 v14, v24, 0x1

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v12, v22

    move/from16 v13, v23

    .end local v24    # "ty":I
    .restart local v14    # "ty":I
    goto :goto_4

    .end local v20    # "tilesWide":I
    .end local v21    # "tilesHigh":I
    .end local v22    # "firstPattern":I
    .end local v23    # "tx":I
    .restart local v9    # "tilesWide":I
    .local v10, "tilesHigh":I
    .restart local v12    # "firstPattern":I
    .restart local v13    # "tx":I
    :cond_5
    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    .line 700
    .end local v9    # "tilesWide":I
    .end local v10    # "tilesHigh":I
    .end local v12    # "firstPattern":I
    .end local v13    # "tx":I
    .end local v14    # "ty":I
    .restart local v20    # "tilesWide":I
    .restart local v21    # "tilesHigh":I
    .restart local v22    # "firstPattern":I
    .restart local v23    # "tx":I
    add-int/lit8 v13, v23, 0x1

    .end local v23    # "tx":I
    .restart local v13    # "tx":I
    goto :goto_3

    .end local v20    # "tilesWide":I
    .end local v21    # "tilesHigh":I
    .end local v22    # "firstPattern":I
    .restart local v9    # "tilesWide":I
    .restart local v10    # "tilesHigh":I
    .restart local v12    # "firstPattern":I
    :cond_6
    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v13

    .line 689
    .end local v6    # "yOff":I
    .end local v7    # "sizeWord":I
    .end local v8    # "xOff":I
    .end local v9    # "tilesWide":I
    .end local v10    # "tilesHigh":I
    .end local v11    # "attr":I
    .end local v12    # "firstPattern":I
    .end local v13    # "tx":I
    .end local v15    # "size":I
    .end local v16    # "hFlip":Z
    .end local v17    # "vFlip":Z
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0xc

    goto/16 :goto_0

    .line 710
    .end local v2    # "i":I
    :cond_7
    return-void

    .line 688
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial sprite descriptor truncated"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    .end local v3    # "pieces":I
    .end local v5    # "p":I
    :cond_9
    :goto_7
    return-void
.end method

.method private drawSpriteTile(IIIIZ)V
    .locals 20
    .param p1, "pattern"    # I
    .param p2, "attr"    # I
    .param p3, "x0"    # I
    .param p4, "y0"    # I
    .param p5, "cursor"    # Z

    .line 713
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 714
    .local v2, "tile":[B
    const/4 v3, 0x0

    .line 715
    .local v3, "tileOffset":I
    if-eqz p5, :cond_3

    .line 716
    move/from16 v4, p1

    add-int/lit16 v5, v4, -0x2cb

    .line 717
    .local v5, "local":I
    if-gez v5, :cond_0

    return-void

    .line 718
    :cond_0
    mul-int/lit8 v3, v5, 0x20

    .line 719
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, 0x20

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    array-length v7, v7

    if-le v6, v7, :cond_1

    goto :goto_0

    .line 720
    :cond_1
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    .line 721
    .end local v5    # "local":I
    goto :goto_1

    .line 719
    .restart local v5    # "local":I
    :cond_2
    :goto_0
    return-void

    .line 722
    .end local v5    # "local":I
    :cond_3
    move/from16 v4, p1

    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->resolveTextPattern(I)[B

    move-result-object v2

    .line 723
    if-nez v2, :cond_4

    return-void

    .line 725
    :cond_4
    :goto_1
    and-int/lit16 v5, v1, 0x800

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    move v5, v7

    goto :goto_2

    :cond_5
    move v5, v6

    .line 726
    .local v5, "hFlip":Z
    :goto_2
    and-int/lit16 v8, v1, 0x1000

    if-eqz v8, :cond_6

    move v6, v7

    .line 727
    .local v6, "vFlip":Z
    :cond_6
    ushr-int/lit8 v7, v1, 0xd

    and-int/lit8 v7, v7, 0x3

    .line 728
    .local v7, "paletteLine":I
    const/4 v8, 0x0

    .local v8, "py":I
    :goto_3
    const/16 v9, 0x8

    if-ge v8, v9, :cond_f

    .line 729
    if-eqz v6, :cond_7

    rsub-int/lit8 v10, v8, 0x7

    goto :goto_4

    :cond_7
    move v10, v8

    .line 730
    .local v10, "sy":I
    :goto_4
    mul-int/lit8 v11, v10, 0x4

    add-int/2addr v11, v3

    .line 731
    .local v11, "row":I
    add-int v12, p4, v8

    .line 732
    .local v12, "dy":I
    if-ltz v12, :cond_e

    const/16 v13, 0xe0

    if-lt v12, v13, :cond_8

    goto :goto_9

    .line 733
    :cond_8
    const/4 v13, 0x0

    .local v13, "px":I
    :goto_5
    if-ge v13, v9, :cond_e

    .line 734
    if-eqz v5, :cond_9

    rsub-int/lit8 v14, v13, 0x7

    goto :goto_6

    :cond_9
    move v14, v13

    .line 735
    .local v14, "sx":I
    :goto_6
    add-int v15, p3, v13

    .line 736
    .local v15, "dx":I
    if-ltz v15, :cond_d

    const/16 v9, 0x140

    if-lt v15, v9, :cond_a

    goto :goto_8

    .line 737
    :cond_a
    ushr-int/lit8 v9, v14, 0x1

    add-int/2addr v9, v11

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    .line 738
    .local v9, "packed":I
    and-int/lit8 v16, v14, 0x1

    if-nez v16, :cond_b

    ushr-int/lit8 v16, v9, 0x4

    goto :goto_7

    :cond_b
    and-int/lit8 v16, v9, 0xf

    .line 739
    .local v16, "ci":I
    :goto_7
    if-nez v16, :cond_c

    goto :goto_8

    .line 740
    :cond_c
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    move-object/from16 v17, v1

    mul-int/lit16 v1, v12, 0x140

    add-int/2addr v1, v15

    move/from16 v18, v1

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    mul-int/lit8 v19, v7, 0x10

    add-int v19, v19, v16

    aget v1, v1, v19

    aput v1, v17, v18

    .line 733
    .end local v9    # "packed":I
    .end local v14    # "sx":I
    .end local v15    # "dx":I
    .end local v16    # "ci":I
    :cond_d
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    const/16 v9, 0x8

    goto :goto_5

    .line 728
    .end local v10    # "sy":I
    .end local v11    # "row":I
    .end local v12    # "dy":I
    .end local v13    # "px":I
    :cond_e
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    goto :goto_3

    .line 743
    .end local v8    # "py":I
    :cond_f
    return-void
.end method

.method private drawTutorialCursor()V
    .locals 4

    .line 671
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerCursorLayouts:[[B

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorX:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawSpriteDescriptor([BIIZ)V

    goto :goto_0

    .line 673
    :cond_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    mul-int/lit8 v0, v0, 0x8

    const v2, 0x1321a

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->romDescriptor(I)[B

    move-result-object v0

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorX:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawSpriteDescriptor([BIIZ)V

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_2
    :goto_1
    return-void
.end method

.method private drawTutorialText()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    if-nez v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/16 v3, 0x1c

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextLayout:[B

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawSpriteDescriptor([BIIZ)V

    goto :goto_0

    .line 679
    :cond_1
    const v0, 0x42b50

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->romDescriptor(I)[B

    move-result-object v0

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawSpriteDescriptor([BIIZ)V

    .line 680
    :goto_0
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "off"    # I
    .param p2, "n"    # I

    .line 1001
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 1002
    return-void

    .line 1001
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial output overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeUntilWait()V
    .locals 6

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "guard":I
    :goto_0
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    if-nez v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeActive:Z

    if-nez v1, :cond_5

    .line 243
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_4

    .line 244
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v1

    .local v1, "op":I
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 245
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 246
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scriptIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scriptIndex:I

    .line 247
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scriptIndex:I

    sget-object v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->TUTORIAL_SCRIPT:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 248
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    .line 249
    return-void

    .line 251
    :cond_0
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scriptIndex:I

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->scriptStart(I)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 252
    goto :goto_0

    .line 254
    :cond_1
    const/16 v3, 0x20

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    .line 370
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 370
    const-string v4, "Original tutorial opcode %04X not in Stage 04.209 tutorial core"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :pswitch_1
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->clearVisiblePlaneB()V

    .line 367
    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 368
    goto/16 :goto_2

    .line 362
    :pswitch_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    .line 363
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 364
    goto/16 :goto_2

    .line 359
    :pswitch_3
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadInlineText()V

    .line 360
    goto/16 :goto_2

    .line 356
    :pswitch_4
    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 357
    goto/16 :goto_2

    .line 351
    :pswitch_5
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v2

    .local v2, "patternPtr":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 352
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->uploadDynamicPalette(I)V

    .line 353
    goto/16 :goto_2

    .line 348
    .end local v2    # "patternPtr":I
    :pswitch_6
    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionDy:I

    .line 349
    goto/16 :goto_2

    .line 345
    :pswitch_7
    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    const/4 v2, -0x3

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionDy:I

    .line 346
    goto/16 :goto_2

    .line 338
    :pswitch_8
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v3

    .line 339
    .local v3, "y":I
    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v4, v4, 0x2

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v4

    .line 340
    .local v4, "x":I
    iget v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 341
    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorX:I

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 342
    goto/16 :goto_2

    .line 334
    .end local v3    # "y":I
    .end local v4    # "x":I
    :pswitch_9
    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 335
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 336
    goto/16 :goto_2

    .line 326
    :pswitch_a
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v2

    .line 327
    .local v2, "y":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->signed16(I)I

    move-result v3

    .line 328
    .local v3, "x":I
    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v4

    .line 329
    .local v4, "type":I
    iget v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v5, v5, 0x6

    iput v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 330
    invoke-direct {p0, v3, v2, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->setCursor(III)V

    .line 331
    goto/16 :goto_2

    .line 321
    .end local v2    # "y":I
    .end local v3    # "x":I
    .end local v4    # "type":I
    :pswitch_b
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadCursorPatterns()[B

    move-result-object v3

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    .line 322
    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 323
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 324
    goto/16 :goto_2

    .line 318
    :pswitch_c
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->resetPlaneOffset(I)V

    .line 319
    goto/16 :goto_2

    .line 315
    :pswitch_d
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->resetPlaneOffset(I)V

    .line 316
    goto/16 :goto_2

    .line 311
    :pswitch_e
    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->resetPlaneOffset(I)V

    .line 312
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->resetPlaneOffset(I)V

    .line 313
    goto/16 :goto_2

    .line 306
    :pswitch_f
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .local v2, "sequence":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 307
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->queueSequence(I)V

    .line 308
    goto/16 :goto_2

    .line 298
    .end local v2    # "sequence":I
    :pswitch_10
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .line 299
    .local v2, "plane":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v3

    .line 300
    .local v3, "count":I
    iget v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 301
    iput v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->planeResult:I

    .line 302
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->advancePlane(I)I

    move-result v5

    iput v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->planeResult:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 303
    .end local v4    # "i":I
    :cond_2
    goto/16 :goto_2

    .line 294
    .end local v2    # "plane":I
    .end local v3    # "count":I
    :pswitch_11
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopCount:I

    .line 295
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopCount:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopPc:I

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    goto/16 :goto_2

    .line 290
    :pswitch_12
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopCount:I

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 291
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopPc:I

    .line 292
    goto/16 :goto_2

    .line 285
    :pswitch_13
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v2

    .local v2, "palettePtr":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 286
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadPalette(I)V

    .line 287
    goto :goto_2

    .line 282
    .end local v2    # "palettePtr":I
    :pswitch_14
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->startPaletteFadeToBlack()V

    .line 283
    goto :goto_2

    .line 279
    :pswitch_15
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 280
    goto :goto_2

    .line 274
    :pswitch_16
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .local v2, "value":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 275
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->planeResult:I

    const v4, 0xffff

    and-int/2addr v3, v4

    if-eq v3, v2, :cond_3

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopPc:I

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    goto :goto_2

    .line 271
    .end local v2    # "value":I
    :pswitch_17
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopPc:I

    .line 272
    goto :goto_2

    .line 266
    :pswitch_18
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .local v2, "plane":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 267
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->advancePlane(I)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->planeResult:I

    .line 268
    goto :goto_2

    .line 261
    .end local v2    # "plane":I
    :pswitch_19
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .local v2, "sceneId":I
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 262
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadScene(I)V

    .line 263
    goto :goto_2

    .line 256
    .end local v2    # "sceneId":I
    :pswitch_1a
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 257
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    if-gtz v3, :cond_3

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 373
    .end local v1    # "op":I
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 243
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Original tutorial script guard"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fadePaletteOneGenesisStep()Z
    .locals 9

    .line 586
    const/4 v0, 0x1

    .line 587
    .local v0, "black":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 588
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    aget v2, v2, v1

    .line 589
    .local v2, "word":I
    and-int/lit8 v3, v2, 0xe

    .line 590
    .local v3, "r":I
    and-int/lit16 v4, v2, 0xe0

    .line 591
    .local v4, "g":I
    and-int/lit16 v5, v2, 0xe00

    .line 592
    .local v5, "b":I
    if-eqz v3, :cond_0

    add-int/lit8 v3, v3, -0x2

    .line 593
    :cond_0
    if-eqz v4, :cond_1

    add-int/lit8 v4, v4, -0x20

    .line 594
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit16 v5, v5, -0x200

    .line 595
    :cond_2
    and-int/lit16 v6, v2, -0xeef

    or-int/2addr v6, v3

    or-int/2addr v6, v4

    or-int/2addr v6, v5

    .line 596
    .local v6, "faded":I
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    aput v6, v7, v1

    .line 597
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->genesisColor(I)I

    move-result v8

    aput v8, v7, v1

    .line 598
    and-int/lit16 v7, v6, 0xeee

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    .line 587
    .end local v2    # "word":I
    .end local v3    # "r":I
    .end local v4    # "g":I
    .end local v5    # "b":I
    .end local v6    # "faded":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 601
    return v0
.end method

.method private static genesisColor(I)I
    .locals 8
    .param p0, "word"    # I

    .line 947
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 948
    .local v0, "r3":I
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x7

    .line 949
    .local v1, "g3":I
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v2, v2, 0x7

    .line 950
    .local v2, "b3":I
    int-to-float v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v1

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v2

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method private initializeState()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 144
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    .line 146
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 147
    return-void
.end method

.method private loadCursorPatterns()[B
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    if-eqz v0, :cond_0

    const-string v0, "tutorial/cursor/patterns.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x13876

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadPatternTable(I)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private loadInlineText()V
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 475
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->messageIndexAt(I)I

    move-result v0

    .line 476
    .local v0, "messageIndex":I
    if-ltz v0, :cond_2

    .line 477
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    invoke-virtual {v2, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->message(I)[B

    move-result-object v2

    .line 481
    .local v2, "message":[B
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    invoke-virtual {v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMapSize()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    array-length v3, v2

    .line 482
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->messageLength(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tutorial message length mismatch"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    .line 485
    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->nextPcAfterMessage(I)I

    move-result v3

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 486
    .end local v0    # "messageIndex":I
    .end local v2    # "message":[B
    goto :goto_1

    .line 476
    .restart local v0    # "messageIndex":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial message PC mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    .end local v0    # "messageIndex":I
    :cond_3
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 489
    .local v0, "start":I
    :cond_4
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 491
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    sub-int/2addr v3, v1

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    .line 492
    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    add-int/2addr v2, v1

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 494
    .end local v0    # "start":I
    :goto_1
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 495
    return-void
.end method

.method private loadPalette(I)V
    .locals 7
    .param p1, "offset"    # I

    .line 605
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    .line 606
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteSceneForOffset(I)I

    move-result v0

    .line 607
    .local v0, "sceneId":I
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 608
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 607
    const-string v4, "tutorial/palettes/scene%02d.bin"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    .line 609
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 610
    mul-int/lit8 v4, v3, 0x2

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v4

    .line 611
    .local v4, "word":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    aput v4, v5, v3

    .line 612
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v5, v3

    .line 609
    .end local v4    # "word":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "sceneId":I
    .end local v2    # "data":[B
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    .line 615
    :cond_1
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 617
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v2

    .line 618
    .local v2, "word":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    aput v2, v3, v0

    .line 619
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->genesisColor(I)I

    move-result v4

    aput v4, v3, v0

    .line 616
    .end local v2    # "word":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    .end local v0    # "i":I
    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 623
    return-void
.end method

.method private loadPatternTable(I)[B
    .locals 12
    .param p1, "tableOffset"    # I

    .line 861
    move v0, p1

    .line 862
    .local v0, "p":I
    const/4 v1, 0x0

    .line 863
    .local v1, "bytes":I
    const/4 v2, 0x0

    .line 865
    .local v2, "guard":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x100

    if-gt v2, v3, :cond_4

    .line 866
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v3

    .line 867
    .local v3, "flags":I
    if-nez v3, :cond_3

    .line 871
    .end local v3    # "flags":I
    new-array v4, v1, [B

    .line 872
    .local v4, "out":[B
    const/high16 v3, 0x10000

    new-array v5, v3, [B

    .line 873
    .local v5, "scratch":[B
    move v0, p1

    .line 874
    const/4 v3, 0x0

    .line 876
    .local v3, "dst":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v6

    .line 877
    .local v6, "flags":I
    if-nez v6, :cond_0

    .line 891
    .end local v6    # "flags":I
    return-object v4

    .line 878
    .restart local v6    # "flags":I
    :cond_0
    add-int/lit8 v7, v0, 0x2

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v7

    .line 879
    .local v7, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 880
    and-int/lit16 v8, v6, 0x7fff

    mul-int/lit8 v8, v8, 0x20

    .line 881
    .local v8, "n":I
    const v9, 0x8000

    and-int/2addr v9, v6

    if-eqz v9, :cond_2

    .line 882
    invoke-direct {p0, v7, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->decompressInto(I[B)I

    move-result v9

    .line 883
    .local v9, "produced":I
    if-lez v9, :cond_1

    .line 884
    const/4 v10, 0x0

    invoke-static {v5, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 885
    .end local v9    # "produced":I
    goto :goto_2

    .line 883
    .restart local v9    # "produced":I
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Tutorial pattern decode empty"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 886
    .end local v9    # "produced":I
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 887
    iget-object v9, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    invoke-static {v9, v7, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    :goto_2
    add-int/2addr v3, v8

    .line 890
    .end local v6    # "flags":I
    .end local v7    # "pointer":I
    .end local v8    # "n":I
    goto :goto_1

    .line 868
    .end local v4    # "out":[B
    .end local v5    # "scratch":[B
    .local v3, "flags":I
    :cond_3
    and-int/lit16 v4, v3, 0x7fff

    mul-int/lit8 v4, v4, 0x20

    add-int/2addr v1, v4

    .line 869
    nop

    .end local v3    # "flags":I
    add-int/lit8 v0, v0, 0x6

    .line 870
    goto :goto_0

    .line 865
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tutorial pattern table guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private loadScene(I)V
    .locals 10
    .param p1, "sceneId"    # I

    .line 384
    if-ltz p1, :cond_a

    const/16 v0, 0xb

    if-gt p1, v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;-><init>(Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer-IA;)V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerSceneFlags:[[Z

    aget-object v0, v0, p1

    .line 391
    .local v0, "flags":[Z
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    const-string v5, "_patterns.bin"

    invoke-static {p1, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scenePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    goto :goto_0

    .line 392
    :cond_1
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v4, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    new-array v5, v3, [B

    iput-object v5, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    .line 393
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    aget-boolean v5, v0, v2

    if-eqz v5, :cond_3

    const-string v5, "_plane0.delta"

    invoke-static {p1, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scenePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    iput-object v5, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0:[B

    .line 394
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    const/4 v5, 0x2

    aget-boolean v5, v0, v5

    if-eqz v5, :cond_4

    const-string v1, "_plane1.delta"

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scenePath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v1

    :cond_4
    iput-object v1, v4, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1:[B

    .line 395
    .end local v0    # "flags":[Z
    goto :goto_5

    .line 396
    :cond_5
    mul-int/lit8 v0, p1, 0xc

    const v4, 0x416e2

    add-int/2addr v0, v4

    .line 397
    .local v0, "e":I
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v4

    .line 398
    .local v4, "patternTable":I
    add-int/lit8 v5, v0, 0x4

    invoke-direct {p0, v5}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v5

    .line 399
    .local v5, "stream0":I
    add-int/lit8 v6, v0, 0x8

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v6

    .line 400
    .local v6, "stream1":I
    if-eqz v4, :cond_6

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadPatternTable(I)[B

    move-result-object v8

    iput-object v8, v7, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    goto :goto_2

    .line 401
    :cond_6
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v7, v7, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    new-array v8, v3, [B

    iput-object v8, v7, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->patterns:[B

    .line 402
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    const/high16 v8, 0x10000

    if-nez v5, :cond_8

    move-object v9, v1

    goto :goto_3

    :cond_8
    invoke-direct {p0, v5, v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->decompressExact(II)[B

    move-result-object v9

    :goto_3
    iput-object v9, v7, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0:[B

    .line 403
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    invoke-direct {p0, v6, v8}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->decompressExact(II)[B

    move-result-object v1

    :goto_4
    iput-object v1, v7, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1:[B

    .line 405
    .end local v0    # "e":I
    .end local v4    # "patternTable":I
    .end local v5    # "stream0":I
    .end local v6    # "stream1":I
    :goto_5
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iput v3, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0Offset:I

    .line 406
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iput v3, v0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1Offset:I

    .line 407
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 408
    return-void

    .line 384
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tutorial scene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static paletteSceneForOffset(I)I
    .locals 2
    .param p0, "offset"    # I

    .line 805
    sparse-switch p0, :sswitch_data_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected tutorial palette source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :sswitch_0
    const/16 v0, 0xb

    return v0

    .line 811
    :sswitch_1
    const/16 v0, 0x9

    return v0

    .line 810
    :sswitch_2
    const/4 v0, 0x6

    return v0

    .line 809
    :sswitch_3
    const/4 v0, 0x4

    return v0

    .line 808
    :sswitch_4
    const/4 v0, 0x3

    return v0

    .line 807
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 806
    :sswitch_6
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x307fc -> :sswitch_6
        0x331b4 -> :sswitch_5
        0x36df2 -> :sswitch_4
        0x39176 -> :sswitch_3
        0x3c988 -> :sswitch_2
        0x3f4ee -> :sswitch_1
        0x412fe -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseProviderCursorLayouts([B)[[B
    .locals 6
    .param p0, "data"    # [B

    .line 841
    array-length v0, p0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    aget-byte v2, p0, v1

    const/16 v3, 0x55

    if-ne v2, v3, :cond_4

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    .line 842
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v2

    if-ne v2, v0, :cond_4

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 844
    new-array v0, v0, [[B

    .line 845
    .local v0, "out":[[B
    const/16 v2, 0x8

    .line 846
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 847
    add-int/lit8 v4, v2, 0x2

    array-length v5, p0

    if-gt v4, v5, :cond_1

    .line 848
    invoke-static {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v4

    .local v4, "n":I
    add-int/lit8 v2, v2, 0x2

    .line 849
    if-lt v4, v1, :cond_0

    array-length v5, p0

    sub-int/2addr v5, v4

    if-gt v2, v5, :cond_0

    .line 850
    add-int v5, v2, v4

    invoke-static {p0, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aput-object v5, v0, v3

    .line 851
    add-int/2addr v2, v4

    .line 846
    .end local v4    # "n":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 849
    .restart local v4    # "n":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "Tutorial cursor layout range"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    .end local v4    # "n":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tutorial cursor layout truncated"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    .end local v3    # "i":I
    :cond_2
    array-length v1, p0

    if-ne v2, v1, :cond_3

    .line 854
    return-object v0

    .line 853
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tutorial cursor layout trailing bytes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .end local v0    # "out":[[B
    .end local v2    # "p":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial provider cursor layout header mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseProviderSceneIndex([B)[[Z
    .locals 10
    .param p0, "data"    # [B

    .line 825
    array-length v0, p0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/16 v3, 0x54

    if-ne v2, v3, :cond_5

    const/4 v2, 0x2

    aget-byte v3, p0, v2

    const/16 v4, 0x53

    if-ne v3, v4, :cond_5

    const/4 v3, 0x3

    aget-byte v4, p0, v3

    const/16 v5, 0x43

    if-ne v4, v5, :cond_5

    .line 826
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v4

    if-ne v4, v1, :cond_5

    const/4 v4, 0x6

    invoke-static {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    .line 828
    new-array v4, v2, [I

    aput v3, v4, v1

    aput v5, v4, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 829
    .local v3, "flags":[[Z
    const/16 v4, 0x8

    .line 830
    .local v4, "p":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 831
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    .line 832
    .local v7, "scene":I
    if-ne v7, v6, :cond_3

    .line 833
    aget-object v8, v3, v6

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    if-eqz v9, :cond_0

    move v9, v1

    goto :goto_1

    :cond_0
    move v9, v0

    :goto_1
    aput-boolean v9, v8, v0

    .line 834
    aget-object v8, v3, v6

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, p0, v9

    if-eqz v9, :cond_1

    move v9, v1

    goto :goto_2

    :cond_1
    move v9, v0

    :goto_2
    aput-boolean v9, v8, v1

    .line 835
    aget-object v8, v3, v6

    add-int/lit8 v9, v4, 0x3

    aget-byte v9, p0, v9

    if-eqz v9, :cond_2

    move v9, v1

    goto :goto_3

    :cond_2
    move v9, v0

    :goto_3
    aput-boolean v9, v8, v2

    .line 830
    .end local v7    # "scene":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 832
    .restart local v7    # "scene":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial provider scene order mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    .end local v6    # "i":I
    .end local v7    # "scene":I
    :cond_4
    return-object v3

    .line 827
    .end local v3    # "flags":[[Z
    .end local v4    # "p":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial provider scene index mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private queueSequence(I)V
    .locals 3
    .param p1, "sequence"    # I

    .line 377
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingTail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 378
    .local v0, "next":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    if-ne v0, v1, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    iget v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingTail:I

    aput p1, v1, v2

    .line 380
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingTail:I

    .line 381
    return-void
.end method

.method private readMedia(Ljava/lang/String;)[B
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tutorial media asset unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readTutorialContent(Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;
    .locals 3
    .param p0, "contentAssets"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->tutorialExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial exact content is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private renderFrame()V
    .locals 11

    .line 626
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 627
    .local v0, "backdrop":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 628
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    if-eqz v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane1:[B

    invoke-direct {p0, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawPlane([BI)V

    .line 632
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane0:[B

    invoke-direct {p0, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawPlane([BI)V

    .line 633
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawTutorialText()V

    .line 634
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v1, v1, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane1:[B

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawPlane([BI)V

    .line 635
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iget-object v1, v1, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->plane0:[B

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawPlane([BI)V

    .line 636
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->drawTutorialCursor()V

    .line 638
    :cond_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->frame:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pixels:[I

    const/16 v9, 0x140

    const/16 v10, 0xe0

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 639
    return-void
.end method

.method private resetPlaneOffset(I)V
    .locals 3
    .param p1, "plane"    # I

    .line 429
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream0Offset:I

    goto :goto_0

    .line 431
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    iput v0, v1, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;->stream1Offset:I

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tutorial plane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveTextPattern(I)[B
    .locals 6
    .param p1, "pattern"    # I

    .line 748
    const/16 v0, 0x670

    const/16 v1, 0x20

    if-ne p1, v0, :cond_0

    const/16 v0, 0x120

    .local v0, "fontOffset":I
    goto :goto_3

    .line 749
    .end local v0    # "fontOffset":I
    :cond_0
    const/16 v0, 0x671

    if-ne p1, v0, :cond_1

    const/16 v0, 0x160

    .restart local v0    # "fontOffset":I
    goto :goto_3

    .line 750
    .end local v0    # "fontOffset":I
    :cond_1
    const/16 v0, 0x672

    if-lt p1, v0, :cond_2

    const/16 v0, 0x675

    if-gt p1, v0, :cond_2

    const/16 v0, 0x140

    .restart local v0    # "fontOffset":I
    goto :goto_3

    .line 751
    .end local v0    # "fontOffset":I
    :cond_2
    const/16 v0, 0x676

    const/16 v2, 0x696

    if-lt p1, v0, :cond_3

    const/16 v3, 0x695

    if-le p1, v3, :cond_4

    :cond_3
    if-lt p1, v2, :cond_b

    const/16 v3, 0x6b5

    if-gt p1, v3, :cond_b

    .line 753
    :cond_4
    if-lt p1, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 754
    .local v3, "line":I
    :goto_0
    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    sub-int v0, p1, v0

    .line 755
    .local v0, "column":I
    invoke-direct {p0, v3, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->textCharacterAt(II)I

    move-result v2

    .line 756
    .local v2, "ch":I
    if-gez v2, :cond_7

    .line 757
    new-array v1, v1, [B

    .line 758
    .local v1, "blank":[B
    const/4 v4, -0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 759
    return-object v1

    .line 761
    .end local v1    # "blank":[B
    :cond_7
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    if-eqz v4, :cond_8

    .line 762
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialContent:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    and-int/lit16 v5, v2, 0xff

    invoke-virtual {v4, v5}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMapValue(I)I

    move-result v4

    goto :goto_2

    .line 763
    :cond_8
    and-int/lit16 v4, v2, 0xff

    const v5, 0x42ad0

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->controlByte(I)I

    move-result v4

    :goto_2
    nop

    .line 764
    .local v4, "glyph":I
    mul-int/lit8 v0, v4, 0x20

    .line 765
    .end local v2    # "ch":I
    .end local v3    # "line":I
    .end local v4    # "glyph":I
    .local v0, "fontOffset":I
    nop

    .line 766
    :goto_3
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    if-eqz v2, :cond_a

    .line 767
    if-ltz v0, :cond_9

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextFont:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_9

    .line 769
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->providerTextFont:[B

    add-int/lit8 v2, v0, 0x20

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 768
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial provider font range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_a
    const v2, 0x42d02

    add-int v3, v0, v2

    invoke-direct {p0, v3, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 772
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int v4, v0, v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-static {v3, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 765
    .end local v0    # "fontOffset":I
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private romDescriptor(I)[B
    .locals 4
    .param p1, "offset"    # I

    .line 818
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 819
    .local v0, "pieces":I
    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0x2

    .line 820
    .local v1, "length":I
    invoke-direct {p0, p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 821
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int v3, p1, v1

    invoke-static {v2, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private static scenePath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sceneId"    # I
    .param p1, "suffix"    # Ljava/lang/String;

    .line 801
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "tutorial/scenes/scene%02d%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setCursor(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "type"    # I

    .line 436
    if-ltz p3, :cond_0

    const/4 v0, 0x5

    if-gt p3, v0, :cond_0

    .line 437
    iput p1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorX:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    iput p3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 438
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tutorial cursor type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static signed16(I)I
    .locals 1
    .param p0, "v"    # I

    .line 857
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private startPaletteFadeToBlack()V
    .locals 2

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeActive:Z

    .line 581
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeReachedBlack:Z

    .line 582
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    .line 583
    return-void
.end method

.method private textCharacterAt(II)I
    .locals 9
    .param p1, "wantedLine"    # I
    .param p2, "wantedColumn"    # I

    .line 776
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 777
    :cond_0
    const/4 v0, 0x0

    .local v0, "line":I
    const/4 v2, 0x0

    .line 778
    .local v2, "column":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-byte v6, v3, v5

    .line 779
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xff

    .line 780
    .local v7, "c":I
    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    goto :goto_1

    .line 781
    :cond_1
    if-ne v0, p1, :cond_2

    if-ne v2, p2, :cond_2

    return v7

    .line 782
    :cond_2
    if-ne v0, p1, :cond_3

    if-le v2, p2, :cond_3

    return v1

    .line 783
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 778
    .end local v6    # "b":B
    .end local v7    # "c":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 785
    :cond_4
    return v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I

    .line 991
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 992
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 991
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial u16 range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uploadDynamicPalette(I)V
    .locals 5
    .param p1, "palettePtr"    # I

    .line 453
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    const/16 v1, 0x80

    if-eqz v0, :cond_1

    .line 454
    const v0, 0x41f56

    if-ne p1, v0, :cond_0

    .line 456
    const-string v0, "tutorial/dynamic/dynamic00_patterns.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "dynamic":[B
    goto :goto_0

    .line 455
    .end local v0    # "dynamic":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected tutorial dynamic-palette source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->checkRange(II)V

    .line 459
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->rom:[B

    add-int/lit16 v2, p1, 0x80

    invoke-static {v0, p1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 461
    .restart local v0    # "dynamic":[B
    :goto_0
    array-length v2, v0

    if-ne v2, v1, :cond_4

    .line 463
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x40

    if-ge v1, v2, :cond_3

    .line 464
    mul-int/lit8 v2, v1, 0x2

    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->u16([BI)I

    move-result v2

    .line 465
    .local v2, "word":I
    and-int/lit16 v3, v2, -0xeef

    if-nez v3, :cond_2

    .line 467
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    aput v2, v3, v1

    .line 468
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->genesisColor(I)I

    move-result v4

    aput v4, v3, v1

    .line 463
    .end local v2    # "word":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .restart local v2    # "word":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Tutorial dynamic palette word mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    .end local v1    # "i":I
    .end local v2    # "word":I
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 471
    return-void

    .line 462
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial dynamic palette size mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private verifyRomAnchors()V
    .locals 3

    .line 954
    const v0, 0x416e2

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v1, 0x3087c

    if-ne v0, v1, :cond_1

    const v0, 0x416e6

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v1, 0x32472

    if-ne v0, v1, :cond_1

    .line 955
    const v0, 0x416ea

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v1, 0x32e5e

    if-ne v0, v1, :cond_1

    .line 957
    const v0, 0x41b48

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x41b82

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 958
    const v0, 0x41b56

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v2, 0x307fc

    if-ne v0, v2, :cond_0

    const v0, 0x41b90

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v2, 0x331b4

    if-ne v0, v2, :cond_0

    .line 959
    const v0, 0x41bd0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x41bf2

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_0

    .line 960
    const v0, 0x41d5c

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v2, 0x41f56

    if-ne v0, v2, :cond_0

    .line 961
    const v0, 0x41fd6

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x41fd8

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 962
    const v0, 0x4231c

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x4231e

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 963
    const v0, 0x423cc

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x423ce

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 964
    const v0, 0x4270c

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x4270e

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 965
    const v0, 0x42936

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x42938

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 966
    const v0, 0x4293a

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be16(I)I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const v0, 0x42942

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->be32(I)I

    move-result v0

    const v1, 0x412fe

    if-ne v0, v1, :cond_0

    .line 968
    return-void

    .line 967
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original tutorial scripts changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original tutorial scene table changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method frame()Landroid/graphics/Bitmap;
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->renderFrame()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->frame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method isComplete()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    return v0
.end method

.method pollSequence()I
    .locals 3

    .line 226
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    aget v0, v0, v1

    .line 228
    .local v0, "v":I
    iget v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingSequences:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    .line 229
    return v0
.end method

.method resetIntro()V
    .locals 3

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scriptIndex:I

    .line 151
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->scriptStart(I)I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pc:I

    .line 152
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 153
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopCount:I

    .line 154
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loopPc:I

    .line 155
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->planeResult:I

    .line 156
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorX:I

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorType:I

    .line 158
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    .line 159
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionDy:I

    .line 160
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeActive:Z

    .line 161
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeReachedBlack:Z

    .line 162
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    .line 163
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->loadCursorPatterns()[B

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorPatterns:[B

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tutorialText:[B

    .line 165
    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingTail:I

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->pendingHead:I

    .line 166
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    .line 167
    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->aborted:Z

    .line 168
    iput-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->scene:Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer$Scene;

    .line 169
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->palette:[I

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 170
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteWords:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 172
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->executeUntilWait()V

    .line 173
    return-void
.end method

.method tick(Z)Z
    .locals 1
    .param p1, "confirmPressed"    # Z

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->tick(ZZ)Z

    move-result v0

    return v0
.end method

.method tick(ZZ)Z
    .locals 4
    .param p1, "confirmPressed"    # Z
    .param p2, "abortPressed"    # Z

    .line 185
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeActive:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 187
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    .line 188
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    if-gtz v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeReachedBlack:Z

    if-eqz v0, :cond_1

    .line 190
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeActive:Z

    .line 191
    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeReachedBlack:Z

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->fadePaletteOneGenesisStep()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeReachedBlack:Z

    .line 194
    const/4 v0, 0x5

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->paletteFadeTicks:I

    .line 195
    return v2

    .line 198
    :cond_2
    return v2

    .line 201
    :cond_3
    :goto_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    if-lez v0, :cond_4

    .line 202
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionDy:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorY:I

    .line 203
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    .line 204
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->dirty:Z

    .line 205
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->cursorMotionTicks:I

    if-lez v0, :cond_4

    return v2

    .line 207
    :cond_4
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    if-lez v0, :cond_7

    .line 208
    if-eqz p2, :cond_5

    .line 209
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->aborted:Z

    .line 210
    iput-boolean v2, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    .line 211
    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 212
    return v1

    .line 214
    :cond_5
    if-eqz p1, :cond_6

    iput v1, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    goto :goto_1

    .line 215
    :cond_6
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    .line 216
    :goto_1
    iget v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->waitTicks:I

    if-lez v0, :cond_7

    return v2

    .line 218
    :cond_7
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->executeUntilWait()V

    .line 219
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->complete:Z

    xor-int/2addr v0, v2

    return v0
.end method

.method wasAborted()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTutorialRenderer;->aborted:Z

    return v0
.end method
