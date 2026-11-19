.class final Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;
.super Ljava/lang/Object;
.source "GenesisOriginalTitleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;,
        Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    }
.end annotation


# static fields
.field private static final BASE_PALETTE:I = 0xa6d98

.field private static final FONT_SIZE_WORD:I = 0x506c8

.field private static final FONT_STREAM:I = 0x506ca

.field static final HEIGHT:I = 0xe0

.field private static final HOUSE_CURSOR_LAYOUT:I = 0x6434e

.field private static final HOUSE_CURSOR_PATTERN_DATA:I = 0x6424e

.field private static final HOUSE_CURSOR_VRAM_PATTERN:I = 0x7bc

.field private static final HOUSE_CURSOR_X:[I

.field private static final HOUSE_CURSOR_Y:I = 0x88

.field private static final HOUSE_RESOURCE:I = 0x0

.field static final LEVEL_SELECT_LEFT:I = 0x7c

.field static final LEVEL_SELECT_RIGHT:I = 0x138

.field static final LEVEL_SELECT_ROW_HEIGHT:I = 0x17

.field static final LEVEL_SELECT_TOP:I = 0x8

.field static final LOGO_CLEAR_TICK:I = 0x21e

.field static final LOGO_FADE_IN_START_TICK:I = 0xc8

.field static final LOGO_FADE_OUT_START_TICK:I = 0x209

.field static final LOGO_HOLD_START_TICK:I = 0xdd

.field private static final MAP_COLUMNS:I = 0x80

.field private static final MAP_ROWS:I = 0x20

.field static final MENU_START_TICK:I = 0x6e4

.field private static final MUSIC_TEST_TABLE:I = 0x87f44

.field private static final OPTIONS_FONT:I = 0x50c34

.field private static final OPTIONS_PALETTE:I = 0xa6b98

.field private static final OPTIONS_RESOURCE:I = 0x1

.field static final PALETTE_FADE_TICKS:I = 0x15

.field private static final PASSWORD_RESOURCE:I = 0xa

.field private static final PATTERN_BYTES:I = 0x20

.field private static final PATTERN_TABLE:I = 0xb293e

.field static final PLANET_REACHED_TICK:I = 0x41d

.field private static final PLANE_H:I = 0x100

.field private static final PLANE_W:I = 0x400

.field static final PRESENT_HOLD_END_TICK:I = 0x2fc

.field static final PRESENT_HOLD_START_TICK:I = 0x234

.field static final PRESENT_START_TICK:I = 0x21f

.field private static final RESOURCE12_MAP_DESCRIPTOR:I = 0xc5e0c

.field private static final RESOURCE13_MAP_DESCRIPTOR:I = 0xc627c

.field private static final RESOURCE13_REPLACEMENT_PALETTE:I = 0xa6e38

.field private static final RESOURCE_TABLE:I = 0xc7c72

.field static final SCROLL_RELEASE_TICK:I = 0x311

.field private static final SEGA_BASE_PALETTE:I = 0x1da4

.field private static final SEGA_GRADIENT:I = 0x18d6

.field private static final SEGA_MAP_STREAM:I = 0x1d2a

.field private static final SEGA_PATTERN_TABLE:I = 0x18ce

.field static final SEGA_TICKS:I = 0xc6

.field static final SHIP1_START_TICK:I = 0x45a

.field static final SHIP2_START_TICK:I = 0x4b4

.field static final SHIP3_START_TICK:I = 0x50e

.field static final SHIPS_END_TICK:I = 0x568

.field private static final SHIP_LAYOUT_TABLE:I = 0x1957a

.field private static final SHIP_PATTERN_TABLE:I = 0x17f2e

.field static final SHIP_PREP_TICKS:I = 0x3d

.field private static final SHIP_REPLACEMENT_PALETTE:I = 0xa6e98

.field private static final SHIP_SCRIPT_TABLE:I = 0x1963a

.field static final SHIP_TICKS:I = 0x5a

.field private static final SHIP_VRAM_OFFSET:I = 0x6200

.field static final SHIP_WAIT_TICKS:I = 0xb4

.field private static final SOUND_TEST_TABLE:I = 0x87fdc

.field static final TITLE_HOLD_TICKS:I = 0xc8

.field static final TITLE_START_TICK:I = 0x61c

.field private static final TITLE_TEXT:I = 0x173f4

.field private static final TITLE_TEXT_BYTES:I = 0x24

.field static final WIDTH:I = 0x140


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private cachedMusicTest:I

.field private cachedMusicVolume:I

.field private cachedPasswordCursor:I

.field private cachedPasswordText:Ljava/lang/String;

.field private cachedRadar:I

.field private cachedSoundTest:I

.field private cachedSoundVolume:I

.field private final campaignHousePanels:[Landroid/graphics/Bitmap;

.field private final campaignLevelFrame:Landroid/graphics/Bitmap;

.field private final campaignLevelWorkPixels:[I

.field private final dstRect:Landroid/graphics/Rect;

.field private final fontPatterns:[B

.field private final frame:Landroid/graphics/Bitmap;

.field private final frameCanvas:Landroid/graphics/Canvas;

.field private final germanLocalization:Z

.field private final houseAnimatedCursorPatterns:[B

.field private final houseBasePixels:[I

.field private final houseCursorLayout:[B

.field private final houseCursorPatterns:[B

.field private final houseFrame:Landroid/graphics/Bitmap;

.field private final housePalette:[I

.field private final houseWorkPixels:[I

.field private introOnlyFramesReleased:Z

.field private final logoFadeFrames:[Landroid/graphics/Bitmap;

.field private final logoTitlePlane:Landroid/graphics/Bitmap;

.field private final musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

.field private final optionsBasePixels:[I

.field private final optionsFontPatterns:[B

.field private final optionsFrame:Landroid/graphics/Bitmap;

.field private final optionsPalette:[I

.field private final optionsWorkPixels:[I

.field private final passwordBasePixels:[I

.field private final passwordFrame:Landroid/graphics/Bitmap;

.field private final passwordWorkPixels:[I

.field private final presentFadeFrames:[Landroid/graphics/Bitmap;

.field private final rom:[B

.field private final rootMenuLabels:[Ljava/lang/String;

.field private final rootMenuOverlay:Landroid/graphics/Bitmap;

.field private final russianLocalization:Z

.field private final segaFrames:[Landroid/graphics/Bitmap;

.field private final sharedPatterns:[B

.field private final shipFrames:[[Landroid/graphics/Bitmap;

.field private final shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

.field private final shipVram:[B

.field private final soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

.field private final srcRect:Landroid/graphics/Rect;

.field private final starPlane:Landroid/graphics/Bitmap;

.field private final startMenuLabels:[Ljava/lang/String;

.field private final startMenuOverlay:Landroid/graphics/Bitmap;

.field private final titlePalette:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    const/16 v0, 0x78

    const/16 v1, 0xd0

    const/16 v2, 0x20

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->HOUSE_CURSOR_X:[I

    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/GenesisFrontendAudioTestData;)V
    .locals 1
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "audioTestData"    # Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;-><init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/GenesisFrontendAudioTestData;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V

    .line 308
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/GenesisFrontendAudioTestData;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 30
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "audioTestData"    # Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
    .param p3, "content"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v1, 0x8

    new-array v2, v1, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    .line 121
    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    .line 134
    const v1, 0x11800

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    .line 135
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    const/16 v4, 0xe0

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseFrame:Landroid/graphics/Bitmap;

    .line 136
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    .line 137
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelFrame:Landroid/graphics/Bitmap;

    .line 138
    const/4 v8, 0x3

    new-array v2, v8, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignHousePanels:[Landroid/graphics/Bitmap;

    .line 140
    const/16 v2, 0x100

    new-array v5, v2, [B

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    .line 142
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseAnimatedCursorPatterns:[B

    .line 145
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    .line 146
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    .line 147
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFrame:Landroid/graphics/Bitmap;

    .line 148
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordFrame:Landroid/graphics/Bitmap;

    .line 153
    const/4 v1, -0x1

    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicVolume:I

    .line 154
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundVolume:I

    .line 155
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedRadar:I

    .line 156
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicTest:I

    .line 157
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundTest:I

    .line 159
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordCursor:I

    .line 164
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v10, 0x1

    const/16 v11, 0xf

    aput v11, v1, v10

    const/4 v12, 0x0

    aput v8, v1, v12

    const-class v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    .line 165
    new-array v1, v8, [[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .line 168
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    .line 169
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    .line 170
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->srcRect:Landroid/graphics/Rect;

    .line 172
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->dstRect:Landroid/graphics/Rect;

    .line 313
    if-eqz v6, :cond_12

    .line 314
    if-eqz v7, :cond_11

    .line 315
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    .line 316
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->russianLocalizationActive()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    goto :goto_0

    :cond_0
    move v1, v12

    :goto_0
    iput-boolean v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->russianLocalization:Z

    .line 317
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    iput-boolean v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->germanLocalization:Z

    .line 318
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 319
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 320
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 322
    const-string v1, "frontend/title_shared_patterns.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    .line 323
    const-string v1, "frontend/intro_arrakis_map.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v13

    .line 324
    .local v13, "map12":[B
    const-string v1, "frontend/logo_title_map.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    .line 325
    .local v2, "map13":[B
    const-string v1, "frontend/title_palette.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64Bytes([B)[I

    move-result-object v14

    .line 326
    .local v14, "basePalette":[I
    nop

    .line 327
    const-string v1, "frontend/direct/title_logo_replacement_palette.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 326
    invoke-static {v14, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->replacementPaletteBytes([I[B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    .line 328
    nop

    .line 329
    const-string v1, "frontend/direct/ship_palette.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 328
    invoke-static {v14, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->replacementPaletteBytes([I[B)[I

    move-result-object v15

    .line 331
    .local v15, "shipPalette":[I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    invoke-direct {v0, v1, v13, v14, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlane([B[B[IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->starPlane:Landroid/graphics/Bitmap;

    .line 332
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlane([B[B[IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoTitlePlane:Landroid/graphics/Bitmap;

    .line 333
    const/4 v1, 0x0

    .local v1, "level":I
    :goto_2
    const/4 v3, 0x7

    if-gt v1, v3, :cond_2

    .line 334
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-static {v14, v3, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisPaletteFade([I[II)[I

    move-result-object v3

    .line 335
    .local v3, "fade":[I
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    move v5, v1

    .end local v1    # "level":I
    .local v5, "level":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    move-object/from16 v16, v4

    const/4 v4, 0x0

    move/from16 v17, v5

    .end local v5    # "level":I
    .local v17, "level":I
    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlaneViewport([B[B[IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v16, v17

    .line 333
    .end local v3    # "fade":[I
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "level":I
    .restart local v1    # "level":I
    goto :goto_2

    :cond_2
    move/from16 v17, v1

    .line 338
    .end local v1    # "level":I
    const-string v1, "frontend/direct/title_font.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    .line 339
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    array-length v1, v1

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_10

    .line 340
    if-eqz p3, :cond_3

    .line 341
    invoke-virtual/range {p3 .. p3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->titleStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 342
    :cond_3
    const-string v1, "frontend/direct/title_strings.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodeTitleStrings([B)[Ljava/lang/String;

    move-result-object v1

    :goto_3
    nop

    .line 343
    .local v1, "originalTitleText":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "level":I
    :goto_4
    const/16 v16, 0x3d

    move/from16 v17, v9

    const/16 v9, 0x80

    if-gt v5, v3, :cond_4

    .line 344
    const/16 v3, 0x40

    new-array v3, v3, [I

    .line 345
    .local v3, "presentPalette":[I
    mul-int/lit16 v11, v5, 0x222

    invoke-static {v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v11

    aput v11, v3, v16

    .line 346
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    move/from16 v19, v12

    new-array v12, v10, [Ljava/lang/String;

    aget-object v16, v1, v19

    aput-object v16, v12, v19

    filled-new-array {v9}, [I

    move-result-object v9

    const/16 v16, 0x70

    move/from16 v20, v10

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v10

    invoke-direct {v0, v12, v9, v10, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v11, v5

    .line 343
    .end local v3    # "presentPalette":[I
    add-int/lit8 v5, v5, 0x1

    move/from16 v9, v17

    move/from16 v12, v19

    move/from16 v10, v20

    const/4 v3, 0x7

    const/16 v11, 0xf

    goto :goto_4

    :cond_4
    move/from16 v20, v10

    move/from16 v19, v12

    .line 349
    .end local v5    # "level":I
    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 350
    .local v3, "menuPalette":[I
    const/16 v5, 0xeee

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v5

    aput v5, v3, v16

    .line 351
    new-array v5, v8, [Ljava/lang/String;

    aget-object v10, v1, v20

    aput-object v10, v5, v19

    aget-object v10, v1, v17

    aput-object v10, v5, v20

    aget-object v10, v1, v8

    aput-object v10, v5, v17

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuLabels:[Ljava/lang/String;

    .line 352
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startSubmenuLabels()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuLabels:[Ljava/lang/String;

    .line 353
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuLabels:[Ljava/lang/String;

    filled-new-array {v9, v9, v9}, [I

    move-result-object v10

    const/16 v11, 0x98

    const/16 v12, 0xa8

    const/16 v8, 0xb8

    filled-new-array {v11, v12, v8}, [I

    move-result-object v4

    invoke-direct {v0, v5, v10, v4, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuOverlay:Landroid/graphics/Bitmap;

    .line 355
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuLabels:[Ljava/lang/String;

    filled-new-array {v9, v9, v9}, [I

    move-result-object v5

    filled-new-array {v11, v12, v8}, [I

    move-result-object v8

    invoke-direct {v0, v4, v5, v8, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuOverlay:Landroid/graphics/Bitmap;

    .line 358
    const-string v4, "frontend/direct/options_font.bin"

    invoke-virtual {v6, v4}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    .line 359
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    array-length v4, v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_f

    .line 360
    const-string v4, "frontend/direct/options_palette.bin"

    invoke-virtual {v6, v4}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64Bytes([B)[I

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    .line 362
    const-string v4, "frontend/house_selector_patterns.bin"

    invoke-virtual {v6, v4}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    .line 363
    .local v4, "housePatterns":[B
    const-string v5, "frontend/house_selector_map.bin"

    invoke-virtual {v6, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    .line 364
    .local v5, "houseMap":[B
    const-string v8, "frontend/house_selector_palette.bin"

    invoke-virtual {v6, v8}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64Bytes([B)[I

    move-result-object v8

    iput-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->housePalette:[I

    .line 365
    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->housePalette:[I

    invoke-direct {v0, v4, v5, v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels([B[B[I)[I

    move-result-object v8

    iput-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    .line 366
    const-string v8, "frontend/direct/house_cursor_patterns.bin"

    invoke-virtual {v6, v8}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v8

    .line 367
    .local v8, "cursorPatterns":[B
    array-length v9, v8

    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    array-length v10, v10

    if-ne v9, v10, :cond_e

    .line 368
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    array-length v10, v8

    move/from16 v11, v19

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    const-string v9, "frontend/direct/house_cursor_layout.bin"

    invoke-virtual {v6, v9}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    .line 371
    const-string v9, "frontend/options_patterns.bin"

    invoke-virtual {v6, v9}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v9

    .line 372
    .local v9, "optionsPatterns":[B
    const-string v10, "frontend/options_map.bin"

    invoke-virtual {v6, v10}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v10

    .line 373
    .local v10, "optionsMap":[B
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    invoke-direct {v0, v9, v10, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels([B[B[I)[I

    move-result-object v11

    iput-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsBasePixels:[I

    .line 374
    const-string v11, "frontend/password_patterns.bin"

    invoke-virtual {v6, v11}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v11

    .line 375
    .local v11, "passwordPatterns":[B
    const-string v12, "frontend/password_map.bin"

    invoke-virtual {v6, v12}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v12

    .line 376
    .local v12, "passwordMap":[B
    move-object/from16 v18, v1

    .end local v1    # "originalTitleText":[Ljava/lang/String;
    .local v18, "originalTitleText":[Ljava/lang/String;
    const-string v1, "frontend/password_palette.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64Bytes([B)[I

    move-result-object v1

    .line 377
    .local v1, "passwordPalette":[I
    move-object/from16 v21, v2

    .end local v2    # "map13":[B
    .local v21, "map13":[B
    invoke-direct {v0, v11, v12, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels([B[B[I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordBasePixels:[I

    .line 379
    iget-object v2, v7, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->music:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->convertAudioEntries([Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 380
    iget-object v2, v7, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->sound:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->convertAudioEntries([Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 381
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v2, v2

    move-object/from16 v22, v1

    .end local v1    # "passwordPalette":[I
    .local v22, "passwordPalette":[I
    const/16 v1, 0x12

    if-ne v2, v1, :cond_d

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_d

    .line 385
    nop

    .line 386
    const-string v1, "frontend/direct/sega_patterns.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 387
    const-string v2, "frontend/direct/sega_map.bin"

    invoke-virtual {v6, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    .line 388
    move-object/from16 v23, v3

    .end local v3    # "menuPalette":[I
    .local v23, "menuPalette":[I
    const-string v3, "frontend/direct/sega_palette.bin"

    invoke-virtual {v6, v3}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v3

    .line 389
    move-object/from16 v24, v4

    .end local v4    # "housePatterns":[B
    .local v24, "housePatterns":[B
    const-string v4, "frontend/direct/sega_gradient.bin"

    invoke-virtual {v6, v4}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v4

    .line 385
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodeSegaFrames([B[B[B[B)[Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    .line 391
    const/high16 v1, 0x10000

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    .line 392
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    array-length v3, v3

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    const-string v1, "frontend/direct/ship_patterns.bin"

    invoke-virtual {v6, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 394
    .local v1, "shipPatterns":[B
    array-length v2, v1

    const/16 v3, 0x6200

    add-int/2addr v2, v3

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    array-length v4, v4

    if-gt v2, v4, :cond_c

    .line 395
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    array-length v4, v1

    move-object/from16 v25, v5

    const/4 v5, 0x0

    .end local v5    # "houseMap":[B
    .local v25, "houseMap":[B
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_5
    const/4 v3, 0x3

    if-ge v2, v3, :cond_b

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frontend/direct/ship"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "_layouts.bin"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v3

    .line 398
    .local v3, "layouts":[B
    const/4 v4, 0x0

    .line 399
    .local v4, "p":I
    const/16 v19, 0x0

    move/from16 v29, v19

    move-object/from16 v19, v1

    move/from16 v1, v29

    .local v1, "frameIndex":I
    .local v19, "shipPatterns":[B
    :goto_6
    const/16 v7, 0xf

    if-ge v1, v7, :cond_8

    .line 400
    add-int/lit8 v7, v4, 0x2

    move/from16 v26, v1

    .end local v1    # "frameIndex":I
    .local v26, "frameIndex":I
    array-length v1, v3

    if-gt v7, v1, :cond_7

    .line 401
    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 402
    .local v1, "count":I
    mul-int/lit8 v7, v1, 0xc

    add-int/lit8 v7, v7, 0x2

    .line 403
    .local v7, "bytes":I
    if-lez v1, :cond_5

    move/from16 v27, v1

    .end local v1    # "count":I
    .local v27, "count":I
    add-int v1, v4, v7

    move/from16 v28, v7

    .end local v7    # "bytes":I
    .local v28, "bytes":I
    array-length v7, v3

    if-gt v1, v7, :cond_6

    .line 404
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v1, v1, v2

    invoke-direct {v0, v3, v4, v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderShipLayout([BI[I)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v1, v26

    .line 405
    add-int v4, v4, v28

    .line 399
    .end local v27    # "count":I
    .end local v28    # "bytes":I
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v7, p2

    .end local v26    # "frameIndex":I
    .local v1, "frameIndex":I
    goto :goto_6

    .line 403
    .local v1, "count":I
    .restart local v7    # "bytes":I
    .restart local v26    # "frameIndex":I
    :cond_5
    move/from16 v27, v1

    move/from16 v28, v7

    .end local v1    # "count":I
    .end local v7    # "bytes":I
    .restart local v27    # "count":I
    .restart local v28    # "bytes":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Installed ship layout record is invalid"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .end local v27    # "count":I
    .end local v28    # "bytes":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Installed ship layout blob is truncated"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    .end local v26    # "frameIndex":I
    .local v1, "frameIndex":I
    :cond_8
    move/from16 v26, v1

    .line 407
    .end local v1    # "frameIndex":I
    array-length v1, v3

    if-ne v4, v1, :cond_a

    .line 408
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_script.bin"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->parseShipScript([B)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    move-result-object v5

    aput-object v5, v1, v2

    .line 409
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    aget-object v1, v1, v2

    array-length v1, v1

    const/16 v5, 0x1e

    if-ne v1, v5, :cond_9

    .line 396
    .end local v3    # "layouts":[B
    .end local v4    # "p":I
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, p2

    move-object/from16 v1, v19

    goto/16 :goto_5

    .line 409
    .restart local v3    # "layouts":[B
    .restart local v4    # "p":I
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Installed ship pose count mismatch"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Installed ship layout blob has trailing data"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    .end local v2    # "type":I
    .end local v3    # "layouts":[B
    .end local v4    # "p":I
    .end local v19    # "shipPatterns":[B
    .local v1, "shipPatterns":[B
    :cond_b
    return-void

    .line 394
    .end local v25    # "houseMap":[B
    .restart local v5    # "houseMap":[B
    :cond_c
    move-object/from16 v19, v1

    .end local v1    # "shipPatterns":[B
    .restart local v19    # "shipPatterns":[B
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed ship pattern bank is too large"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    .end local v19    # "shipPatterns":[B
    .end local v23    # "menuPalette":[I
    .end local v24    # "housePatterns":[B
    .local v3, "menuPalette":[I
    .local v4, "housePatterns":[B
    :cond_d
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 382
    .end local v3    # "menuPalette":[I
    .end local v4    # "housePatterns":[B
    .end local v5    # "houseMap":[B
    .restart local v23    # "menuPalette":[I
    .restart local v24    # "housePatterns":[B
    .restart local v25    # "houseMap":[B
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed frontend OPTIONS audio-test metadata count mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v9    # "optionsPatterns":[B
    .end local v10    # "optionsMap":[B
    .end local v11    # "passwordPatterns":[B
    .end local v12    # "passwordMap":[B
    .end local v18    # "originalTitleText":[Ljava/lang/String;
    .end local v21    # "map13":[B
    .end local v22    # "passwordPalette":[I
    .end local v23    # "menuPalette":[I
    .end local v24    # "housePatterns":[B
    .end local v25    # "houseMap":[B
    .local v1, "originalTitleText":[Ljava/lang/String;
    .local v2, "map13":[B
    .restart local v3    # "menuPalette":[I
    .restart local v4    # "housePatterns":[B
    .restart local v5    # "houseMap":[B
    :cond_e
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    .end local v1    # "originalTitleText":[Ljava/lang/String;
    .end local v2    # "map13":[B
    .restart local v18    # "originalTitleText":[Ljava/lang/String;
    .restart local v21    # "map13":[B
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed House cursor pattern size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    .end local v4    # "housePatterns":[B
    .end local v5    # "houseMap":[B
    .end local v8    # "cursorPatterns":[B
    .end local v18    # "originalTitleText":[Ljava/lang/String;
    .end local v21    # "map13":[B
    .restart local v1    # "originalTitleText":[Ljava/lang/String;
    .restart local v2    # "map13":[B
    :cond_f
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    .end local v1    # "originalTitleText":[Ljava/lang/String;
    .end local v2    # "map13":[B
    .restart local v18    # "originalTitleText":[Ljava/lang/String;
    .restart local v21    # "map13":[B
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed OPTIONS font size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    .end local v3    # "menuPalette":[I
    .end local v18    # "originalTitleText":[Ljava/lang/String;
    .end local v21    # "map13":[B
    .restart local v2    # "map13":[B
    :cond_10
    move-object/from16 v21, v2

    .end local v2    # "map13":[B
    .restart local v21    # "map13":[B
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Installed title font size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v13    # "map12":[B
    .end local v14    # "basePalette":[I
    .end local v15    # "shipPalette":[I
    .end local v21    # "map13":[B
    :cond_11
    new-instance v1, Ljava/io/IOException;

    const-string v2, "OPTIONS audio-test metadata is unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Frontend READY asset source is unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>([B)V
    .locals 20
    .param p1, "rom"    # [B

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v1, 0x8

    new-array v2, v1, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    .line 121
    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    .line 134
    const v1, 0x11800

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    .line 135
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    const/16 v4, 0xe0

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseFrame:Landroid/graphics/Bitmap;

    .line 136
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    .line 137
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelFrame:Landroid/graphics/Bitmap;

    .line 138
    const/4 v7, 0x3

    new-array v2, v7, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignHousePanels:[Landroid/graphics/Bitmap;

    .line 140
    const/16 v2, 0x100

    new-array v5, v2, [B

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    .line 142
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseAnimatedCursorPatterns:[B

    .line 145
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    .line 146
    new-array v1, v1, [I

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    .line 147
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFrame:Landroid/graphics/Bitmap;

    .line 148
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordFrame:Landroid/graphics/Bitmap;

    .line 153
    const/4 v1, -0x1

    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicVolume:I

    .line 154
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundVolume:I

    .line 155
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedRadar:I

    .line 156
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicTest:I

    .line 157
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundTest:I

    .line 159
    iput v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordCursor:I

    .line 164
    const/4 v8, 0x2

    new-array v1, v8, [I

    const/4 v9, 0x1

    const/16 v10, 0xf

    aput v10, v1, v9

    const/4 v11, 0x0

    aput v7, v1, v11

    const-class v2, Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    .line 165
    new-array v1, v7, [[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .line 168
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    .line 169
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    .line 170
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->srcRect:Landroid/graphics/Rect;

    .line 172
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11, v11, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->dstRect:Landroid/graphics/Rect;

    .line 201
    if-eqz v6, :cond_8

    array-length v1, v6

    const v2, 0xc8000

    if-lt v1, v2, :cond_8

    .line 204
    iput-object v6, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    .line 205
    iput-boolean v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->russianLocalization:Z

    .line 206
    iput-boolean v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->germanLocalization:Z

    .line 207
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 208
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 209
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->verifyRomAnchors()V

    .line 212
    const v1, 0xb293e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v11, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadPatternTable(II[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    .line 213
    const v1, 0xc5e0c

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadMapDescriptor(I)[B

    move-result-object v12

    .line 214
    .local v12, "map12":[B
    const v1, 0xc627c

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadMapDescriptor(I)[B

    move-result-object v2

    .line 215
    .local v2, "map13":[B
    const v1, 0xa6d98

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64(I)[I

    move-result-object v13

    .line 219
    .local v13, "basePalette":[I
    const v1, 0xa6e38

    invoke-direct {v0, v13, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->replacementPalette([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    .line 220
    const v1, 0xa6e98

    invoke-direct {v0, v13, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->replacementPalette([II)[I

    move-result-object v14

    .line 222
    .local v14, "shipPalette":[I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    invoke-direct {v0, v1, v12, v13, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlane([B[B[IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->starPlane:Landroid/graphics/Bitmap;

    .line 223
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlane([B[B[IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoTitlePlane:Landroid/graphics/Bitmap;

    .line 224
    const/4 v1, 0x0

    move v15, v1

    .local v15, "level":I
    :goto_0
    const/4 v1, 0x7

    if-gt v15, v1, :cond_0

    .line 225
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-static {v13, v1, v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisPaletteFade([I[II)[I

    move-result-object v3

    .line 226
    .local v3, "fade":[I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    move-object v4, v1

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    move-object v5, v4

    const/4 v4, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPlaneViewport([B[B[IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v16, v15

    .line 224
    .end local v3    # "fade":[I
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 229
    .end local v15    # "level":I
    :cond_0
    const v3, 0x506c8

    invoke-direct {v0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v3

    .line 230
    .local v3, "fontSize":I
    const/16 v4, 0x1000

    if-ne v3, v4, :cond_7

    .line 231
    const v5, 0x506ca

    const/high16 v15, 0x10000

    invoke-direct {v0, v5, v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressExact(II)[B

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    .line 232
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    array-length v5, v5

    if-ne v5, v4, :cond_6

    .line 233
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->readTitleStringsFromRom()[Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "originalTitleText":[Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v17, v8

    move/from16 v8, v16

    .local v8, "level":I
    :goto_1
    const/16 v16, 0x3d

    const/16 v10, 0x80

    if-gt v8, v1, :cond_1

    .line 235
    const/16 v1, 0x40

    new-array v1, v1, [I

    .line 238
    .local v1, "presentPalette":[I
    mul-int/lit16 v15, v8, 0x222

    invoke-static {v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v15

    aput v15, v1, v16

    .line 239
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    move/from16 v18, v11

    new-array v11, v9, [Ljava/lang/String;

    aget-object v16, v5, v18

    aput-object v16, v11, v18

    filled-new-array {v10}, [I

    move-result-object v10

    const/16 v16, 0x70

    move/from16 v19, v9

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v9

    invoke-direct {v0, v11, v10, v9, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v15, v8

    .line 234
    .end local v1    # "presentPalette":[I
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v18

    move/from16 v9, v19

    const/4 v1, 0x7

    const/16 v10, 0xf

    const/high16 v15, 0x10000

    goto :goto_1

    :cond_1
    move/from16 v19, v9

    move/from16 v18, v11

    .line 242
    .end local v8    # "level":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 243
    .local v1, "menuPalette":[I
    const/16 v8, 0xeee

    invoke-static {v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v8

    aput v8, v1, v16

    .line 249
    new-array v8, v7, [Ljava/lang/String;

    aget-object v9, v5, v19

    aput-object v9, v8, v18

    aget-object v9, v5, v17

    aput-object v9, v8, v19

    aget-object v9, v5, v7

    aput-object v9, v8, v17

    iput-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuLabels:[Ljava/lang/String;

    .line 250
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startSubmenuLabels()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuLabels:[Ljava/lang/String;

    .line 251
    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuLabels:[Ljava/lang/String;

    filled-new-array {v10, v10, v10}, [I

    move-result-object v9

    const/16 v11, 0x98

    const/16 v15, 0xa8

    const/16 v7, 0xb8

    filled-new-array {v11, v15, v7}, [I

    move-result-object v4

    invoke-direct {v0, v8, v9, v4, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuOverlay:Landroid/graphics/Bitmap;

    .line 253
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuLabels:[Ljava/lang/String;

    filled-new-array {v10, v10, v10}, [I

    move-result-object v8

    filled-new-array {v11, v15, v7}, [I

    move-result-object v7

    invoke-direct {v0, v4, v8, v7, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuOverlay:Landroid/graphics/Bitmap;

    .line 260
    const v4, 0x50c34

    const/16 v7, 0x1000

    invoke-direct {v0, v4, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 261
    new-array v7, v7, [B

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    .line 262
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    array-length v8, v8

    move/from16 v9, v18

    invoke-static {v6, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    const v4, 0xa6b98

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64(I)[I

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    .line 270
    invoke-direct {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels(I)[I

    move-result-object v4

    iput-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    .line 271
    const v4, 0xc7c7a

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v4

    const v7, 0xffffff

    and-int/2addr v4, v7

    .line 272
    .local v4, "housePalettePointer":I
    invoke-direct {v0, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64(I)[I

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->housePalette:[I

    .line 273
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    array-length v7, v7

    const v8, 0x6424e

    invoke-direct {v0, v8, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 274
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    array-length v8, v8

    const v9, 0x6424e

    const/4 v10, 0x0

    invoke-static {v6, v9, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    const v7, 0x6434e

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 276
    .local v8, "cursorCount":I
    mul-int/lit8 v9, v8, 0xc

    add-int/lit8 v9, v9, 0x2

    invoke-direct {v0, v7, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 277
    mul-int/lit8 v9, v8, 0xc

    add-int/lit8 v9, v9, 0x2

    new-array v9, v9, [B

    iput-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    .line 278
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-static {v6, v7, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    move/from16 v7, v19

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels(I)[I

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsBasePixels:[I

    .line 281
    const/16 v7, 0xa

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderResource64x28Pixels(I)[I

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordBasePixels:[I

    .line 282
    const v7, 0x87f44

    const/16 v9, 0x20

    invoke-direct {v0, v7, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->readOptionTestTable(II)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 283
    const v7, 0x87fdc

    const/16 v9, 0x40

    invoke-direct {v0, v7, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->readOptionTestTable(II)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 284
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v7, v7

    const/16 v9, 0x12

    if-ne v7, v9, :cond_5

    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v7, v7

    const/16 v9, 0x28

    if-ne v7, v9, :cond_5

    .line 287
    invoke-direct {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodeSegaFrames()[Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    .line 289
    const/high16 v7, 0x10000

    new-array v7, v7, [B

    iput-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    .line 290
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->sharedPatterns:[B

    array-length v10, v10

    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v7, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    const/16 v7, 0x6200

    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    const v10, 0x17f2e

    invoke-direct {v0, v10, v7, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadPatternTable(II[B)[B

    .line 292
    const/4 v7, 0x0

    .local v7, "type":I
    :goto_2
    const/4 v9, 0x3

    if-ge v7, v9, :cond_4

    .line 293
    mul-int/lit8 v10, v7, 0x4

    const v11, 0x1957a

    add-int/2addr v10, v11

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v10

    .line 294
    .local v10, "table":I
    const/4 v11, 0x0

    .local v11, "f":I
    :goto_3
    const/16 v15, 0xf

    if-ge v11, v15, :cond_2

    .line 295
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v9, v9, v7

    mul-int/lit8 v17, v11, 0x4

    add-int v15, v10, v17

    invoke-direct {v0, v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v15

    invoke-direct {v0, v15, v14}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderShipLayout(I[I)Landroid/graphics/Bitmap;

    move-result-object v15

    aput-object v15, v9, v11

    .line 294
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x3

    goto :goto_3

    .line 297
    .end local v11    # "f":I
    :cond_2
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    mul-int/lit8 v11, v7, 0x4

    const v15, 0x1963a

    add-int/2addr v11, v15

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->parseShipScript(I)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    move-result-object v11

    aput-object v11, v9, v7

    .line 298
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    aget-object v9, v9, v7

    array-length v9, v9

    const/16 v11, 0x1e

    if-ne v9, v11, :cond_3

    .line 292
    .end local v10    # "table":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 299
    .restart local v10    # "table":I
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected original ship pose count "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    aget-object v15, v15, v7

    array-length v15, v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 302
    .end local v7    # "type":I
    .end local v10    # "table":I
    :cond_4
    return-void

    .line 285
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Original OPTIONS test table count mismatch"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v1    # "menuPalette":[I
    .end local v4    # "housePalettePointer":I
    .end local v5    # "originalTitleText":[Ljava/lang/String;
    .end local v8    # "cursorCount":I
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Original title font decode size mismatch"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected original title font size"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    .end local v2    # "map13":[B
    .end local v3    # "fontSize":I
    .end local v12    # "map12":[B
    .end local v13    # "basePalette":[I
    .end local v14    # "shipPalette":[I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ROM is missing or too small for original title renderer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private be16(I)I
    .locals 3
    .param p1, "o"    # I

    .line 1662
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 1659
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1660
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original title buffer range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private be32(I)I
    .locals 3
    .param p1, "o"    # I

    .line 1664
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1665
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private checkRange(II)V
    .locals 2
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 1669
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    array-length v0, v0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 1670
    return-void

    .line 1669
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original title ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertAudioEntries([Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    .locals 5
    .param p0, "source"    # [Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 184
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    new-array v0, v0, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 185
    .local v0, "out":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    aget-object v3, p0, v1

    iget-object v3, v3, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;->name:Ljava/lang/String;

    aget-object v4, p0, v1

    iget v4, v4, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;->sequence:I

    invoke-direct {v2, v3, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private decodePalette64(I)[I
    .locals 4
    .param p1, "offset"    # I

    .line 1585
    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 1586
    .local v1, "p":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1587
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static decodePalette64Bytes([B)[I
    .locals 4
    .param p0, "bytes"    # [B

    .line 1571
    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 1572
    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 1573
    .local v1, "p":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1574
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 1571
    .end local v1    # "p":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installed 64-colour palette size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeSegaFrames()[Landroid/graphics/Bitmap;
    .locals 11

    .line 1173
    const/4 v0, 0x0

    const/16 v1, 0x18ce

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadPatternTable(II[B)[B

    move-result-object v0

    .line 1174
    .local v0, "patterns":[B
    const/16 v1, 0x1d2a

    const/high16 v3, 0x10000

    invoke-direct {p0, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressExact(II)[B

    move-result-object v1

    .line 1175
    .local v1, "map":[B
    array-length v3, v1

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_2

    .line 1176
    const/16 v3, 0x1da4

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64(I)[I

    move-result-object v3

    .line 1177
    .local v3, "base":[I
    const/16 v4, 0x16

    new-array v4, v4, [Landroid/graphics/Bitmap;

    .line 1178
    .local v4, "frames":[Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMap64x32Visible([B[B[I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1179
    const/4 v2, 0x0

    .local v2, "step":I
    :goto_0
    const/16 v5, 0x15

    if-ge v2, v5, :cond_1

    .line 1180
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1181
    .local v5, "palette":[I
    mul-int/lit8 v6, v2, 0x2

    rsub-int/lit8 v6, v6, 0x28

    .line 1182
    .local v6, "d2":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v8, 0xb

    if-ge v7, v8, :cond_0

    add-int/lit8 v8, v7, 0x2

    add-int/lit16 v9, v6, 0x18d6

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1183
    .end local v7    # "i":I
    :cond_0
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v0, v1, v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMap64x32Visible([B[B[I)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v4, v7

    .line 1179
    .end local v5    # "palette":[I
    .end local v6    # "d2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1185
    .end local v2    # "step":I
    :cond_1
    return-object v4

    .line 1175
    .end local v3    # "base":[I
    .end local v4    # "frames":[Landroid/graphics/Bitmap;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SEGA tilemap decode size mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private decodeSegaFrames([B[B[B[B)[Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "patterns"    # [B
    .param p2, "map"    # [B
    .param p3, "paletteBytes"    # [B
    .param p4, "gradient"    # [B

    .line 1158
    array-length v0, p2

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_3

    .line 1159
    array-length v0, p4

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2

    .line 1160
    invoke-static {p3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64Bytes([B)[I

    move-result-object v0

    .line 1161
    .local v0, "base":[I
    const/16 v1, 0x16

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 1162
    .local v1, "frames":[Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMap64x32Visible([B[B[I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1163
    const/4 v2, 0x0

    .local v2, "step":I
    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 1164
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1165
    .local v3, "palette":[I
    mul-int/lit8 v4, v2, 0x2

    rsub-int/lit8 v4, v4, 0x28

    .line 1166
    .local v4, "d2":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x2

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v4

    invoke-static {p4, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1167
    .end local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMap64x32Visible([B[B[I)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v5

    .line 1163
    .end local v3    # "palette":[I
    .end local v4    # "d2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v2    # "step":I
    :cond_1
    return-object v1

    .line 1159
    .end local v0    # "base":[I
    .end local v1    # "frames":[Landroid/graphics/Bitmap;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installed SEGA gradient size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installed SEGA tilemap size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeTitleStrings([B)[Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1635
    .local v0, "out":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1636
    .local v1, "p":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1637
    move v3, v1

    .line 1638
    .local v3, "end":I
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-byte v4, p0, v3

    if-eqz v4, :cond_1

    .line 1639
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 1640
    .local v4, "c":I
    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    .line 1641
    nop

    .end local v4    # "c":I
    add-int/lit8 v3, v3, 0x1

    .line 1642
    goto :goto_1

    .line 1640
    .restart local v4    # "c":I
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Title text is not ASCII"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1643
    .end local v4    # "c":I
    :cond_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 1644
    new-instance v4, Ljava/lang/String;

    sub-int v5, v3, v1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v4, v0, v2

    .line 1645
    add-int/lit8 v1, v3, 0x1

    .line 1636
    .end local v3    # "end":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1643
    .restart local v3    # "end":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Title text is unterminated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1647
    .end local v2    # "i":I
    .end local v3    # "end":I
    :cond_3
    array-length v2, p0

    if-ne v1, v2, :cond_4

    .line 1648
    return-object v0

    .line 1647
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Title text block has trailing bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private decompressExact(II)[B
    .locals 4
    .param p1, "source"    # I
    .param p2, "maxOutput"    # I

    .line 1497
    new-array v0, p2, [B

    .line 1498
    .local v0, "scratch":[B
    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressInto(I[B)I

    move-result v1

    .line 1499
    .local v1, "n":I
    new-array v2, v1, [B

    .line 1500
    .local v2, "exact":[B
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1501
    return-object v2
.end method

.method private decompressInto(I[B)I
    .locals 9
    .param p1, "source"    # I
    .param p2, "out"    # [B

    .line 1506
    move v0, p1

    .line 1507
    .local v0, "src":I
    const/4 v1, 0x0

    .line 1508
    .local v1, "dst":I
    const/4 v2, 0x0

    .line 1510
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 1511
    invoke-direct {p0, v0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1512
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "src":I
    .local v5, "src":I
    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 1513
    .local v0, "c":I
    const/16 v4, 0x80

    if-ne v0, v4, :cond_0

    .line 1562
    .end local v0    # "c":I
    return v1

    .line 1514
    .restart local v0    # "c":I
    :cond_0
    const/16 v4, 0x81

    if-lt v0, v4, :cond_1

    const/16 v4, 0xbf

    if-gt v0, v4, :cond_1

    .line 1515
    and-int/lit8 v3, v0, 0x3f

    .line 1516
    .local v3, "n":I
    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1517
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->ensureOutput([BII)V

    .line 1518
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    invoke-static {v4, v5, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1519
    add-int/2addr v5, v3

    .line 1520
    add-int/2addr v1, v3

    .line 1521
    .end local v3    # "n":I
    move v0, v5

    goto/16 :goto_5

    :cond_1
    const/16 v4, 0x7f

    const/4 v6, 0x3

    if-gt v0, v4, :cond_4

    .line 1522
    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1523
    shl-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "src":I
    .local v7, "src":I
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 1524
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v6

    .line 1525
    .local v4, "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 1526
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->ensureOutput([BII)V

    .line 1532
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1533
    sub-int v6, v1, v3

    .line 1534
    .local v6, "from":I
    aget-byte v8, p2, v6

    aput-byte v8, p2, v1

    .line 1535
    nop

    .end local v6    # "from":I
    add-int/lit8 v1, v1, 0x1

    .line 1532
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1537
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v5    # "i":I
    :cond_2
    move v0, v7

    goto/16 :goto_5

    .line 1525
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Original title short-copy range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1537
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v7    # "src":I
    .local v5, "src":I
    :cond_4
    const/16 v3, 0xfd

    if-gt v0, v3, :cond_7

    .line 1538
    const/4 v3, 0x2

    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1539
    and-int/lit8 v3, v0, 0x3f

    add-int/2addr v3, v6

    .line 1540
    .local v3, "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 1541
    .local v4, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 1542
    if-ltz v4, :cond_6

    if-ge v4, v1, :cond_6

    .line 1543
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->ensureOutput([BII)V

    .line 1544
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

    .line 1545
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v5

    goto/16 :goto_5

    .line 1542
    .restart local v3    # "n":I
    .restart local v4    # "from":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Original title absolute-copy range"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1545
    .end local v3    # "n":I
    .end local v4    # "from":I
    :cond_7
    const/16 v3, 0xfe

    if-ne v0, v3, :cond_9

    .line 1546
    invoke-direct {p0, v5, v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1547
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 1548
    .restart local v3    # "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x2

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    .line 1549
    .local v4, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 1550
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->ensureOutput([BII)V

    .line 1551
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

    .line 1552
    .end local v3    # "n":I
    .end local v4    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v5

    goto :goto_5

    .line 1553
    :cond_9
    const/4 v3, 0x4

    invoke-direct {p0, v5, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1554
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 1555
    .restart local v3    # "n":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v6, v5, 0x2

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 1556
    .local v4, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 1557
    if-ltz v4, :cond_b

    if-ge v4, v1, :cond_b

    .line 1558
    invoke-static {p2, v1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->ensureOutput([BII)V

    .line 1559
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

    .line 1561
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v5    # "src":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 1557
    .local v0, "c":I
    .restart local v3    # "n":I
    .restart local v4    # "from":I
    .restart local v5    # "src":I
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Original title long-copy range"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1510
    .end local v3    # "n":I
    .end local v4    # "from":I
    .end local v5    # "src":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Original title decompressor guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static dimFrontendColor(IZ)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "dim"    # Z

    .line 741
    if-nez p1, :cond_0

    return p0

    .line 742
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x8

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private drawFrontendFontText([ILjava/lang/String;IIZ)V
    .locals 18
    .param p1, "pixels"    # [I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "dim"    # Z

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    if-nez v1, :cond_0

    return-void

    .line 718
    :cond_0
    move/from16 v3, p3

    .line 719
    .local v3, "cx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 720
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v5

    .line 721
    .local v5, "glyph":I
    mul-int/lit8 v6, v5, 0x20

    .line 722
    .local v6, "po":I
    add-int/lit8 v7, v6, 0x20

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    array-length v8, v8

    if-le v7, v8, :cond_1

    goto :goto_4

    .line 723
    :cond_1
    const/4 v7, 0x0

    .local v7, "py":I
    :goto_1
    const/16 v8, 0x8

    if-ge v7, v8, :cond_6

    .line 724
    add-int v8, p4, v7

    .line 725
    .local v8, "sy":I
    if-ltz v8, :cond_5

    const/16 v9, 0xe0

    if-lt v8, v9, :cond_2

    goto :goto_3

    .line 726
    :cond_2
    const/4 v9, 0x0

    .local v9, "pair":I
    :goto_2
    const/4 v10, 0x4

    if-ge v9, v10, :cond_5

    .line 727
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    mul-int/lit8 v11, v7, 0x4

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    .line 728
    .local v10, "packed":I
    ushr-int/lit8 v11, v10, 0x4

    .line 729
    .local v11, "hi":I
    and-int/lit8 v12, v10, 0xf

    .line 730
    .local v12, "lo":I
    mul-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v3

    .line 731
    .local v13, "sx":I
    const/16 v14, 0x140

    if-eqz v11, :cond_3

    if-ltz v13, :cond_3

    if-ge v13, v14, :cond_3

    .line 732
    mul-int/lit16 v15, v8, 0x140

    add-int/2addr v15, v13

    iget-object v14, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    add-int/lit8 v17, v11, 0x30

    aget v14, v14, v17

    invoke-static {v14, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->dimFrontendColor(IZ)I

    move-result v14

    aput v14, p1, v15

    .line 733
    :cond_3
    if-eqz v12, :cond_4

    add-int/lit8 v14, v13, 0x1

    if-ltz v14, :cond_4

    add-int/lit8 v14, v13, 0x1

    const/16 v15, 0x140

    if-ge v14, v15, :cond_4

    .line 734
    mul-int/lit16 v14, v8, 0x140

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, 0x1

    iget-object v15, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->titlePalette:[I

    add-int/lit8 v16, v12, 0x30

    aget v15, v15, v16

    invoke-static {v15, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->dimFrontendColor(IZ)I

    move-result v15

    aput v15, p1, v14

    .line 726
    .end local v10    # "packed":I
    .end local v11    # "hi":I
    .end local v12    # "lo":I
    .end local v13    # "sx":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 723
    .end local v8    # "sy":I
    .end local v9    # "pair":I
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 719
    .end local v5    # "glyph":I
    .end local v6    # "po":I
    .end local v7    # "py":I
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 738
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method private drawHouseCursor([IIII)V
    .locals 33
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "tick"    # I

    .line 765
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    ushr-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 766
    .local v3, "phase":I
    mul-int/lit8 v5, v3, 0x11

    .line 767
    .local v5, "fill":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseAnimatedCursorPatterns:[B

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 768
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseAnimatedCursorPatterns:[B

    iget-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorPatterns:[B

    aget-byte v8, v8, v6

    if-nez v8, :cond_0

    move v8, v1

    goto :goto_1

    :cond_0
    int-to-byte v8, v5

    :goto_1
    aput-byte v8, v7, v6

    .line 767
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 770
    .end local v6    # "i":I
    :cond_1
    iget-object v6, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    invoke-static {v6, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v6

    add-int/2addr v6, v4

    .line 771
    .local v6, "count":I
    const/4 v7, 0x2

    .line 772
    .local v7, "p":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_6

    .line 773
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    add-int/lit8 v10, v7, 0x4

    invoke-static {v9, v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v9

    .line 774
    .local v9, "oy":I
    iget-object v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    add-int/lit8 v11, v7, 0x6

    invoke-static {v10, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v10

    .line 775
    .local v10, "size":I
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    add-int/lit8 v12, v7, 0x8

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v11

    .line 776
    .local v11, "attr":I
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseCursorLayout:[B

    add-int/lit8 v13, v7, 0xa

    invoke-static {v12, v13}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v12

    invoke-static {v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v12

    .line 777
    .local v12, "ox":I
    ushr-int/lit8 v13, v10, 0xa

    and-int/lit8 v13, v13, 0x3

    add-int/lit8 v15, v13, 0x1

    .line 778
    .local v15, "wt":I
    ushr-int/lit8 v13, v10, 0x8

    and-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v4

    .line 779
    .local v13, "ht":I
    and-int/lit16 v14, v11, 0x7ff

    add-int/lit16 v14, v14, -0x7bc

    .line 780
    .local v14, "first":I
    and-int/lit16 v1, v11, 0x800

    if-eqz v1, :cond_2

    move/from16 v19, v4

    goto :goto_3

    :cond_2
    const/16 v19, 0x0

    :goto_3
    move/from16 v29, v19

    .line 781
    .local v29, "hFlip":Z
    and-int/lit16 v1, v11, 0x1000

    if-eqz v1, :cond_3

    move/from16 v30, v4

    goto :goto_4

    :cond_3
    const/16 v30, 0x0

    .line 782
    .local v30, "vFlip":Z
    :goto_4
    ushr-int/lit8 v1, v11, 0xd

    and-int/lit8 v28, v1, 0x3

    .line 783
    .local v28, "paletteLine":I
    const/4 v1, 0x0

    .local v1, "tx":I
    :goto_5
    if-ge v1, v15, :cond_5

    .line 784
    const/16 v16, 0x0

    move/from16 v4, v16

    .local v4, "ty":I
    :goto_6
    if-ge v4, v13, :cond_4

    .line 785
    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v16, v13

    move/from16 v19, v29

    move/from16 v20, v30

    .end local v1    # "tx":I
    .end local v4    # "ty":I
    .end local v13    # "ht":I
    .end local v29    # "hFlip":Z
    .end local v30    # "vFlip":Z
    .local v16, "ht":I
    .local v17, "tx":I
    .local v18, "ty":I
    .local v19, "hFlip":Z
    .local v20, "vFlip":Z
    invoke-static/range {v14 .. v20}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPatternIndex(IIIIIZZ)I

    move-result v27

    .line 786
    .end local v19    # "hFlip":Z
    .end local v20    # "vFlip":Z
    .local v27, "pattern":I
    .restart local v29    # "hFlip":Z
    .restart local v30    # "vFlip":Z
    add-int v1, p2, v12

    mul-int/lit8 v4, v17, 0x8

    add-int v24, v1, v4

    add-int v1, p3, v9

    mul-int/lit8 v4, v18, 0x8

    add-int v25, v1, v4

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseAnimatedCursorPatterns:[B

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->housePalette:[I

    const/16 v32, 0x1

    const/16 v22, 0x140

    const/16 v23, 0xe0

    move-object/from16 v21, p1

    move-object/from16 v26, v1

    move-object/from16 v31, v4

    invoke-static/range {v21 .. v32}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 784
    .end local v27    # "pattern":I
    add-int/lit8 v4, v18, 0x1

    move/from16 v1, v17

    .end local v18    # "ty":I
    .restart local v4    # "ty":I
    goto :goto_6

    .end local v16    # "ht":I
    .end local v17    # "tx":I
    .restart local v1    # "tx":I
    .restart local v13    # "ht":I
    :cond_4
    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v16, v13

    .line 783
    .end local v1    # "tx":I
    .end local v4    # "ty":I
    .end local v13    # "ht":I
    .restart local v16    # "ht":I
    .restart local v17    # "tx":I
    add-int/lit8 v1, v17, 0x1

    const/4 v4, 0x1

    .end local v17    # "tx":I
    .restart local v1    # "tx":I
    goto :goto_5

    .end local v16    # "ht":I
    .restart local v13    # "ht":I
    :cond_5
    move/from16 v17, v1

    move/from16 v16, v13

    .line 772
    .end local v1    # "tx":I
    .end local v9    # "oy":I
    .end local v10    # "size":I
    .end local v11    # "attr":I
    .end local v12    # "ox":I
    .end local v13    # "ht":I
    .end local v14    # "first":I
    .end local v15    # "wt":I
    .end local v28    # "paletteLine":I
    .end local v29    # "hFlip":Z
    .end local v30    # "vFlip":Z
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0xc

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 791
    .end local v8    # "i":I
    :cond_6
    return-void
.end method

.method private drawOptionsFontText([ILjava/lang/String;III)V
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "paletteLine"    # I

    .line 1020
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_0

    return-void

    .line 1021
    :cond_0
    move/from16 v2, p3

    .line 1022
    .local v2, "cx":I
    const/4 v3, 0x0

    move v7, v2

    .end local v2    # "cx":I
    .local v3, "i":I
    .local v7, "cx":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 1023
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v10

    .line 1024
    .local v10, "ch":I
    mul-int/lit8 v2, v10, 0x20

    .line 1025
    .local v2, "po":I
    if-ltz v2, :cond_2

    add-int/lit8 v4, v2, 0x20

    iget-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    array-length v5, v5

    if-le v4, v5, :cond_1

    goto :goto_1

    .line 1026
    :cond_1
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    iget-object v14, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    const/4 v15, 0x1

    const/16 v5, 0x140

    const/16 v6, 0xe0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p1

    move/from16 v8, p4

    move/from16 v11, p5

    invoke-static/range {v4 .. v15}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 1022
    .end local v2    # "po":I
    .end local v10    # "ch":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x8

    goto :goto_0

    .line 1029
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private drawOptionsLocalizedValue([IIZIII)V
    .locals 6
    .param p1, "pixels"    # [I
    .param p2, "value"    # I
    .param p3, "steppedVolume"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "paletteLine"    # I

    .line 881
    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->russianLocalization:Z

    if-nez v1, :cond_2

    .line 882
    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->volumeOptionText(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    if-lez p2, :cond_1

    const-string v1, "ON"

    goto :goto_0

    :cond_1
    const-string v1, "OFF"

    goto :goto_0

    .line 883
    .local v2, "text":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 884
    return-void

    .line 886
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    if-lez p2, :cond_3

    const/16 v0, 0x64

    if-ge p2, v0, :cond_3

    .line 891
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 892
    return-void

    .line 894
    :cond_3
    if-lez p2, :cond_4

    .line 897
    const-string v2, "BKq"

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    goto :goto_2

    .line 899
    :cond_4
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRussianOptionsOff([IIII)V

    .line 901
    :goto_2
    return-void
.end method

.method private static drawPixelFrame([IIIIII)V
    .locals 6
    .param p0, "pixels"    # [I
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "color"    # I

    .line 746
    const/16 v0, 0x13f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 747
    .local v1, "l":I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 748
    .local v0, "r":I
    const/16 v3, 0xdf

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 749
    .local v4, "t":I
    invoke-static {v3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 750
    .local v2, "b":I
    if-lt v0, v1, :cond_3

    if-ge v2, v4, :cond_0

    goto :goto_2

    .line 751
    :cond_0
    move v3, v1

    .local v3, "x":I
    :goto_0
    if-gt v3, v0, :cond_1

    .line 752
    mul-int/lit16 v5, v4, 0x140

    add-int/2addr v5, v3

    aput p5, p0, v5

    .line 753
    mul-int/lit16 v5, v2, 0x140

    add-int/2addr v5, v3

    aput p5, p0, v5

    .line 751
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 755
    .end local v3    # "x":I
    :cond_1
    move v3, v4

    .local v3, "y":I
    :goto_1
    if-gt v3, v2, :cond_2

    .line 756
    mul-int/lit16 v5, v3, 0x140

    add-int/2addr v5, v1

    aput p5, p0, v5

    .line 757
    mul-int/lit16 v5, v3, 0x140

    add-int/2addr v5, v0

    aput p5, p0, v5

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 759
    .end local v3    # "y":I
    :cond_2
    return-void

    .line 750
    :cond_3
    :goto_2
    return-void
.end method

.method private drawPlaneViewport(Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "plane"    # Landroid/graphics/Bitmap;
    .param p2, "sourceX"    # I

    .line 597
    const/16 v0, 0x2c0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 598
    .local v0, "x":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->srcRect:Landroid/graphics/Rect;

    add-int/lit16 v3, v0, 0x140

    const/16 v4, 0xe0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 599
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->dstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 600
    return-void
.end method

.method private static drawRawTile([IIIII[BIIZZ[IZ)V
    .locals 16
    .param p0, "pixels"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "patterns"    # [B
    .param p6, "pattern"    # I
    .param p7, "paletteLine"    # I
    .param p8, "hFlip"    # Z
    .param p9, "vFlip"    # Z
    .param p10, "palette"    # [I
    .param p11, "transparentZero"    # Z

    .line 1416
    move/from16 v0, p1

    move-object/from16 v1, p5

    mul-int/lit8 v2, p6, 0x20

    .line 1417
    .local v2, "po":I
    if-ltz v2, :cond_b

    add-int/lit8 v3, v2, 0x20

    array-length v4, v1

    if-le v3, v4, :cond_0

    move/from16 v7, p2

    goto :goto_7

    .line 1418
    :cond_0
    const/4 v3, 0x0

    .local v3, "py":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_a

    .line 1419
    if-eqz p9, :cond_1

    rsub-int/lit8 v5, v3, 0x7

    goto :goto_1

    :cond_1
    move v5, v3

    .line 1420
    .local v5, "sy":I
    :goto_1
    add-int v6, p4, v3

    .line 1421
    .local v6, "yy":I
    if-ltz v6, :cond_8

    move/from16 v7, p2

    if-lt v6, v7, :cond_2

    goto :goto_6

    .line 1422
    :cond_2
    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v2

    .line 1423
    .local v8, "row":I
    const/4 v9, 0x0

    .local v9, "px":I
    :goto_2
    if-ge v9, v4, :cond_9

    .line 1424
    add-int v10, p3, v9

    .line 1425
    .local v10, "xx":I
    if-ltz v10, :cond_7

    if-lt v10, v0, :cond_3

    goto :goto_5

    .line 1426
    :cond_3
    if-eqz p8, :cond_4

    rsub-int/lit8 v11, v9, 0x7

    goto :goto_3

    :cond_4
    move v11, v9

    .line 1427
    .local v11, "sx":I
    :goto_3
    ushr-int/lit8 v12, v11, 0x1

    add-int/2addr v12, v8

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    .line 1428
    .local v12, "packed":I
    and-int/lit8 v13, v11, 0x1

    if-nez v13, :cond_5

    ushr-int/lit8 v13, v12, 0x4

    goto :goto_4

    :cond_5
    and-int/lit8 v13, v12, 0xf

    .line 1429
    .local v13, "ci":I
    :goto_4
    if-eqz p11, :cond_6

    if-nez v13, :cond_6

    goto :goto_5

    .line 1430
    :cond_6
    mul-int v14, v6, v0

    add-int/2addr v14, v10

    mul-int/lit8 v15, p7, 0x10

    add-int/2addr v15, v13

    aget v15, p10, v15

    aput v15, p0, v14

    .line 1423
    .end local v10    # "xx":I
    .end local v11    # "sx":I
    .end local v12    # "packed":I
    .end local v13    # "ci":I
    :cond_7
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1421
    .end local v8    # "row":I
    .end local v9    # "px":I
    :cond_8
    move/from16 v7, p2

    .line 1418
    .end local v5    # "sy":I
    .end local v6    # "yy":I
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    move/from16 v7, p2

    .line 1433
    .end local v3    # "py":I
    return-void

    .line 1417
    :cond_b
    move/from16 v7, p2

    :goto_7
    return-void
.end method

.method private drawRussianOptionsOff([IIII)V
    .locals 9
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paletteLine"    # I

    .line 909
    const-string v2, "B"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "pixels":[I
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "paletteLine":I
    .local v1, "pixels":[I
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "paletteLine":I
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 910
    move p1, v3

    .end local v3    # "x":I
    .local p1, "x":I
    add-int/lit8 p2, p1, 0x8

    invoke-direct {p0, v1, p2, v4, v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRussianYeryGlyph([IIII)V

    .line 911
    add-int/lit8 v6, p1, 0x10

    move v8, v5

    .end local v5    # "paletteLine":I
    .local v8, "paletteLine":I
    const-string v5, "Kq"

    move-object v3, v0

    move v7, v4

    move-object v4, v1

    .end local v1    # "pixels":[I
    .local v4, "pixels":[I
    .local v7, "y":I
    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 912
    move v4, v7

    move v5, v8

    .end local v7    # "y":I
    .end local v8    # "paletteLine":I
    .restart local v1    # "pixels":[I
    .local v4, "y":I
    .restart local v5    # "paletteLine":I
    return-void
.end method

.method private drawRussianYeryGlyph([IIII)V
    .locals 14
    .param p1, "pixels"    # [I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "paletteLine"    # I

    .line 915
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->findRussianYeryGlyph()I

    move-result v6

    .line 916
    .local v6, "exactGlyph":I
    if-ltz v6, :cond_0

    .line 917
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    iget-object v10, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    const/4 v11, 0x1

    const/16 v1, 0x140

    const/16 v2, 0xe0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-static/range {v0 .. v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 919
    return-void

    .line 921
    :cond_0
    const/16 v0, 0x62

    invoke-static {v0}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v0

    .line 922
    .local v0, "softSign":I
    mul-int/lit8 v1, v0, 0x20

    .line 923
    .local v1, "po":I
    if-ltz v1, :cond_8

    add-int/lit8 v2, v1, 0x20

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    goto :goto_4

    .line 924
    :cond_1
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->firstNonZeroGlyphColor(I)I

    move-result v2

    .line 925
    .local v2, "stemIndex":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    shl-int/lit8 v4, p4, 0x4

    add-int/2addr v4, v2

    aget v3, v3, v4

    .line 926
    .local v3, "stemColor":I
    const/4 v4, 0x0

    .local v4, "py":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_7

    .line 927
    add-int v5, p3, v4

    .line 928
    .local v5, "sy":I
    if-ltz v5, :cond_6

    const/16 v7, 0xe0

    if-lt v5, v7, :cond_2

    goto :goto_3

    .line 929
    :cond_2
    const/4 v7, 0x0

    .local v7, "px":I
    :goto_1
    const/4 v8, 0x5

    const/16 v9, 0x140

    if-ge v7, v8, :cond_5

    .line 930
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v1

    shr-int/lit8 v11, v7, 0x1

    add-int/2addr v10, v11

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    .line 931
    .local v8, "packed":I
    and-int/lit8 v10, v7, 0x1

    if-nez v10, :cond_3

    ushr-int/lit8 v10, v8, 0x4

    goto :goto_2

    :cond_3
    and-int/lit8 v10, v8, 0xf

    .line 932
    .local v10, "ci":I
    :goto_2
    if-eqz v10, :cond_4

    .line 933
    add-int v11, p2, v7

    .line 934
    .local v11, "sx":I
    if-ltz v11, :cond_4

    if-ge v11, v9, :cond_4

    mul-int/lit16 v9, v5, 0x140

    add-int/2addr v9, v11

    iget-object v12, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsPalette:[I

    shl-int/lit8 v13, p4, 0x4

    add-int/2addr v13, v10

    aget v12, v12, v13

    aput v12, p1, v9

    .line 929
    .end local v8    # "packed":I
    .end local v10    # "ci":I
    .end local v11    # "sx":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 937
    .end local v7    # "px":I
    :cond_5
    const/4 v7, 0x1

    if-lt v4, v7, :cond_6

    const/4 v7, 0x6

    if-gt v4, v7, :cond_6

    .line 938
    add-int/lit8 v7, p2, 0x6

    .line 939
    .local v7, "sx":I
    if-ltz v7, :cond_6

    if-ge v7, v9, :cond_6

    mul-int/lit16 v8, v5, 0x140

    add-int/2addr v8, v7

    aput v3, p1, v8

    .line 926
    .end local v5    # "sy":I
    .end local v7    # "sx":I
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 942
    .end local v4    # "py":I
    :cond_7
    return-void

    .line 923
    .end local v2    # "stemIndex":I
    .end local v3    # "stemColor":I
    :cond_8
    :goto_4
    return-void
.end method

.method private drawShip(II)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "tick"    # I

    .line 603
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->introOnlyFramesReleased:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    aget-object v0, v0, p1

    .line 605
    .local v0, "poses":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v2, p2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 606
    .local v1, "poseIndex":I
    aget-object v3, v0, v1

    .line 607
    .local v3, "pose":Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, p1

    const/16 v5, 0xe

    iget v6, v3, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->frame:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget-object v2, v4, v2

    .line 608
    .local v2, "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget v5, v3, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->x:I

    int-to-float v5, v5

    iget v6, v3, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;->y:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 609
    return-void

    .line 603
    .end local v0    # "poses":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    .end local v1    # "poseIndex":I
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "pose":Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    :cond_1
    :goto_0
    return-void
.end method

.method private drawTile([IIIII[BI[IZ)V
    .locals 13
    .param p1, "pixels"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "patterns"    # [B
    .param p7, "attr"    # I
    .param p8, "palette"    # [I
    .param p9, "transparentZero"    # Z

    .line 1404
    move/from16 v0, p7

    and-int/lit16 v7, v0, 0x7ff

    .line 1405
    .local v7, "pattern":I
    ushr-int/lit8 v1, v0, 0xd

    and-int/lit8 v8, v1, 0x3

    .line 1406
    .local v8, "paletteLine":I
    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v3

    .line 1407
    .local v9, "hFlip":Z
    :goto_0
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v3

    .line 1408
    .local v10, "vFlip":Z
    :goto_1
    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v1 .. v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 1410
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 1672
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 1673
    return-void

    .line 1672
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original title decompressor overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fadeInLevel(I)I
    .locals 3
    .param p0, "elapsed"    # I

    .line 547
    div-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static fadeOutLevel(I)I
    .locals 2
    .param p0, "elapsed"    # I

    .line 551
    div-int/lit8 v0, p0, 0x3

    const/4 v1, 0x6

    rsub-int/lit8 v0, v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private findRussianYeryGlyph()I
    .locals 18

    .line 961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->findRussianYeryGlyph([Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;)I

    move-result v1

    .line 962
    .local v1, "exact":I
    if-gez v1, :cond_0

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->findRussianYeryGlyph([Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;)I

    move-result v1

    .line 963
    :cond_0
    if-ltz v1, :cond_1

    return v1

    .line 967
    :cond_1
    const/16 v2, 0x62

    invoke-static {v2}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v2

    .line 968
    .local v2, "softSign":I
    const/16 v3, 0x40

    new-array v3, v3, [Z

    .line 969
    .local v3, "target":[Z
    mul-int/lit8 v4, v2, 0x20

    .line 970
    .local v4, "po":I
    const/4 v5, 0x0

    .local v5, "py":I
    :goto_0
    const/16 v7, 0x8

    const/4 v8, 0x1

    if-ge v5, v7, :cond_6

    .line 971
    const/4 v7, 0x0

    .local v7, "px":I
    :goto_1
    const/4 v9, 0x5

    if-ge v7, v9, :cond_4

    .line 972
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v4

    shr-int/lit8 v11, v7, 0x1

    add-int/2addr v10, v11

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    .line 973
    .local v9, "packed":I
    and-int/lit8 v10, v7, 0x1

    if-nez v10, :cond_2

    ushr-int/lit8 v10, v9, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v10, v9, 0xf

    .line 974
    .local v10, "ci":I
    :goto_2
    mul-int/lit8 v11, v5, 0x8

    add-int/2addr v11, v7

    if-eqz v10, :cond_3

    move v12, v8

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    aput-boolean v12, v3, v11

    .line 971
    .end local v9    # "packed":I
    .end local v10    # "ci":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 976
    .end local v7    # "px":I
    :cond_4
    if-lt v5, v8, :cond_5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_5

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v6

    aput-boolean v8, v3, v7

    .line 970
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 978
    .end local v5    # "py":I
    :cond_6
    const/4 v5, -0x1

    .local v5, "bestGlyph":I
    const v9, 0x7fffffff

    .line 979
    .local v9, "bestScore":I
    const/16 v10, 0x20

    .local v10, "glyph":I
    :goto_4
    const/16 v11, 0x7e

    if-gt v10, v11, :cond_f

    .line 980
    if-ne v10, v2, :cond_7

    goto :goto_9

    .line 981
    :cond_7
    const/4 v11, 0x0

    .line 982
    .local v11, "score":I
    mul-int/lit8 v12, v10, 0x20

    .line 983
    .local v12, "gp":I
    if-ltz v12, :cond_e

    add-int/lit8 v13, v12, 0x20

    iget-object v14, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    array-length v14, v14

    if-le v13, v14, :cond_8

    goto :goto_9

    .line 984
    :cond_8
    const/4 v13, 0x0

    .local v13, "py":I
    :goto_5
    if-ge v13, v7, :cond_d

    .line 985
    const/4 v14, 0x0

    .local v14, "px":I
    :goto_6
    if-ge v14, v7, :cond_c

    .line 986
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    mul-int/lit8 v16, v13, 0x4

    add-int v16, v12, v16

    shr-int/lit8 v17, v14, 0x1

    add-int v16, v16, v17

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    .line 987
    .local v15, "packed":I
    and-int/lit8 v16, v14, 0x1

    if-nez v16, :cond_9

    ushr-int/lit8 v16, v15, 0x4

    goto :goto_7

    :cond_9
    and-int/lit8 v16, v15, 0xf

    :goto_7
    if-eqz v16, :cond_a

    move/from16 v16, v8

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    :goto_8
    move/from16 v17, v16

    .line 988
    .local v17, "on":Z
    mul-int/lit8 v16, v13, 0x8

    add-int v16, v16, v14

    aget-boolean v6, v3, v16

    move/from16 v7, v17

    .end local v17    # "on":Z
    .local v7, "on":Z
    if-eq v7, v6, :cond_b

    add-int/lit8 v11, v11, 0x1

    .line 985
    .end local v7    # "on":Z
    .end local v15    # "packed":I
    :cond_b
    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x8

    goto :goto_6

    .line 984
    .end local v14    # "px":I
    :cond_c
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x8

    goto :goto_5

    .line 991
    .end local v13    # "py":I
    :cond_d
    if-ge v11, v9, :cond_e

    move v6, v11

    .end local v9    # "bestScore":I
    .local v6, "bestScore":I
    move v5, v10

    move v9, v6

    .line 979
    .end local v6    # "bestScore":I
    .end local v11    # "score":I
    .end local v12    # "gp":I
    .restart local v9    # "bestScore":I
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x8

    goto :goto_4

    .line 993
    .end local v10    # "glyph":I
    :cond_f
    const/16 v6, 0xc

    if-gt v9, v6, :cond_10

    move v6, v5

    goto :goto_a

    :cond_10
    const/4 v6, -0x1

    :goto_a
    return v6
.end method

.method static findRussianYeryGlyph([Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;)I
    .locals 8
    .param p0, "entries"    # [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 1000
    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1001
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p0, v3

    .line 1002
    .local v4, "entry":Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 1003
    :cond_1
    iget-object v5, v4, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    .line 1004
    .local v5, "raw":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 1005
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_4

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_4

    .line 1006
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_4

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_4

    .line 1007
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_4

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_4

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x48

    if-eq v6, v7, :cond_3

    goto :goto_1

    .line 1008
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v0

    return v0

    .line 1001
    .end local v4    # "entry":Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    .end local v5    # "raw":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1010
    :cond_5
    return v0
.end method

.method private firstNonZeroGlyphColor(I)I
    .locals 5
    .param p1, "glyph"    # I

    .line 945
    mul-int/lit8 v0, p1, 0x20

    .line 946
    .local v0, "po":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 947
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFontPatterns:[B

    add-int v3, v0, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 948
    .local v2, "b":I
    ushr-int/lit8 v3, v2, 0x4

    .local v3, "hi":I
    and-int/lit8 v4, v2, 0xf

    .line 949
    .local v4, "lo":I
    if-eqz v3, :cond_0

    return v3

    .line 950
    :cond_0
    if-eqz v4, :cond_1

    return v4

    .line 946
    .end local v2    # "b":I
    .end local v3    # "hi":I
    .end local v4    # "lo":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method private static genesisColor(I)I
    .locals 8
    .param p0, "word"    # I

    .line 1597
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 1598
    .local v0, "r3":I
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x7

    .line 1599
    .local v1, "g3":I
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v2, v2, 0x7

    .line 1600
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

.method private static genesisPaletteFade([I[II)[I
    .locals 19
    .param p0, "from"    # [I
    .param p1, "to"    # [I
    .param p2, "level"    # I

    .line 1242
    invoke-virtual/range {p0 .. p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1243
    .local v0, "p":[I
    const/4 v1, 0x7

    move/from16 v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1244
    .local v3, "n":I
    const/16 v4, 0x10

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 1245
    aget v5, p0, v4

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisWordFromArgb(I)I

    move-result v5

    .line 1246
    .local v5, "a":I
    aget v6, p1, v4

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisWordFromArgb(I)I

    move-result v6

    .line 1247
    .local v6, "b":I
    ushr-int/lit8 v7, v5, 0x1

    and-int/2addr v7, v1

    .local v7, "ar":I
    ushr-int/lit8 v8, v5, 0x5

    and-int/2addr v8, v1

    .local v8, "ag":I
    ushr-int/lit8 v9, v5, 0x9

    and-int/2addr v9, v1

    .line 1248
    .local v9, "ab":I
    ushr-int/lit8 v10, v6, 0x1

    and-int/2addr v10, v1

    .local v10, "br":I
    ushr-int/lit8 v11, v6, 0x5

    and-int/2addr v11, v1

    .local v11, "bg":I
    ushr-int/lit8 v12, v6, 0x9

    and-int/2addr v12, v1

    .line 1249
    .local v12, "bb":I
    invoke-static {v7, v10, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->step3(III)I

    move-result v13

    .local v13, "r":I
    invoke-static {v8, v11, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->step3(III)I

    move-result v14

    .local v14, "g":I
    invoke-static {v9, v12, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->step3(III)I

    move-result v15

    .line 1250
    .local v15, "bl":I
    int-to-float v1, v13

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v1, v1, v16

    const/high16 v17, 0x40e00000    # 7.0f

    div-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v18, v0

    .end local v0    # "p":[I
    .local v18, "p":[I
    int-to-float v0, v14

    mul-float v0, v0, v16

    div-float v0, v0, v17

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v15

    mul-float v2, v2, v16

    div-float v2, v2, v17

    .line 1251
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1250
    invoke-static {v1, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v18, v4

    .line 1244
    .end local v5    # "a":I
    .end local v6    # "b":I
    .end local v7    # "ar":I
    .end local v8    # "ag":I
    .end local v9    # "ab":I
    .end local v10    # "br":I
    .end local v11    # "bg":I
    .end local v12    # "bb":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    .end local v15    # "bl":I
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p2

    move-object/from16 v0, v18

    const/4 v1, 0x7

    goto :goto_0

    .end local v18    # "p":[I
    .restart local v0    # "p":[I
    :cond_0
    move-object/from16 v18, v0

    .line 1253
    .end local v0    # "p":[I
    .end local v4    # "i":I
    .restart local v18    # "p":[I
    return-object v18
.end method

.method private static genesisWordFromArgb(I)I
    .locals 5
    .param p0, "argb"    # I

    .line 1263
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1264
    .local v0, "r":I
    ushr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1265
    .local v3, "g":I
    and-int/lit16 v4, p0, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1266
    .local v1, "b":I
    shl-int/lit8 v2, v1, 0x9

    shl-int/lit8 v4, v3, 0x5

    or-int/2addr v2, v4

    shl-int/lit8 v4, v0, 0x1

    or-int/2addr v2, v4

    return v2
.end method

.method private loadMapDescriptor(I)[B
    .locals 9
    .param p1, "descriptor"    # I

    .line 1472
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 1473
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 1474
    .local v1, "dst":I
    move v2, p1

    .line 1476
    .local v2, "p":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v3

    .line 1477
    .local v3, "flags":I
    if-nez v3, :cond_1

    .line 1492
    .end local v3    # "flags":I
    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 1493
    return-object v0

    .line 1492
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Original title map size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1478
    .restart local v3    # "flags":I
    :cond_1
    add-int/lit8 v4, v2, 0x2

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v4

    .line 1479
    .local v4, "pointer":I
    add-int/lit8 v2, v2, 0x6

    .line 1481
    const v5, 0x8000

    and-int/2addr v5, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/high16 v5, 0x10000

    invoke-direct {p0, v4, v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressExact(II)[B

    move-result-object v5

    .local v5, "part":[B
    goto :goto_1

    .line 1483
    .end local v5    # "part":[B
    :cond_2
    and-int/lit16 v5, v3, 0x7fff

    mul-int/lit8 v5, v5, 0x2

    .line 1484
    .local v5, "bytes":I
    invoke-direct {p0, v4, v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1485
    new-array v7, v5, [B

    .line 1486
    .local v7, "part":[B
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    invoke-static {v8, v4, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v7

    .line 1488
    .end local v7    # "part":[B
    .local v5, "part":[B
    :goto_1
    array-length v7, v5

    add-int/2addr v7, v1

    array-length v8, v0

    if-gt v7, v8, :cond_3

    .line 1489
    array-length v7, v5

    invoke-static {v5, v6, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1490
    array-length v6, v5

    add-int/2addr v1, v6

    .line 1491
    .end local v3    # "flags":I
    .end local v4    # "pointer":I
    .end local v5    # "part":[B
    goto :goto_0

    .line 1488
    .restart local v3    # "flags":I
    .restart local v4    # "pointer":I
    .restart local v5    # "part":[B
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Original title map overrun"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private loadMapDescriptorVariable(I)[B
    .locals 10
    .param p1, "descriptor"    # I

    .line 1099
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 1100
    .local v1, "scratch":[B
    const/4 v2, 0x0

    .line 1101
    .local v2, "dst":I
    move v3, p1

    .line 1103
    .local v3, "p":I
    :goto_0
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v4

    .line 1104
    .local v4, "flags":I
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1120
    .end local v4    # "flags":I
    new-array v0, v2, [B

    .line 1121
    .local v0, "exact":[B
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    return-object v0

    .line 1105
    .end local v0    # "exact":[B
    .restart local v4    # "flags":I
    :cond_0
    add-int/lit8 v6, v3, 0x2

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v6

    .line 1106
    .local v6, "pointer":I
    add-int/lit8 v3, v3, 0x6

    .line 1108
    const v7, 0x8000

    and-int/2addr v7, v4

    if-eqz v7, :cond_1

    invoke-direct {p0, v6, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressExact(II)[B

    move-result-object v7

    .local v7, "part":[B
    goto :goto_1

    .line 1110
    .end local v7    # "part":[B
    :cond_1
    and-int/lit16 v7, v4, 0x7fff

    mul-int/lit8 v7, v7, 0x2

    .line 1111
    .local v7, "bytes":I
    invoke-direct {p0, v6, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1112
    new-array v8, v7, [B

    .line 1113
    .local v8, "part":[B
    iget-object v9, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    invoke-static {v9, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v8

    .line 1115
    .end local v8    # "part":[B
    .local v7, "part":[B
    :goto_1
    array-length v8, v7

    add-int/2addr v8, v2

    array-length v9, v1

    if-gt v8, v9, :cond_2

    .line 1117
    array-length v8, v7

    invoke-static {v7, v5, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1118
    array-length v5, v7

    add-int/2addr v2, v5

    .line 1119
    .end local v4    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "part":[B
    goto :goto_0

    .line 1116
    .restart local v4    # "flags":I
    .restart local v6    # "pointer":I
    .restart local v7    # "part":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Original OPTIONS map overrun"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadPatternTable(II[B)[B
    .locals 11
    .param p1, "tableOffset"    # I
    .param p2, "destinationOffset"    # I
    .param p3, "destination"    # [B

    .line 1437
    move v0, p1

    .line 1438
    .local v0, "table":I
    const/4 v1, 0x0

    .line 1440
    .local v1, "nominalBytes":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v2

    .line 1441
    .local v2, "flags":I
    const/high16 v3, 0x10000

    if-nez v2, :cond_5

    .line 1446
    .end local v2    # "flags":I
    if-eqz p3, :cond_0

    move-object v2, p3

    goto :goto_1

    :cond_0
    add-int v2, p2, v1

    new-array v2, v2, [B

    .line 1447
    .local v2, "out":[B
    :goto_1
    if-ltz p2, :cond_4

    add-int v4, p2, v1

    array-length v5, v2

    if-gt v4, v5, :cond_4

    .line 1449
    new-array v3, v3, [B

    .line 1450
    .local v3, "scratch":[B
    move v0, p1

    .line 1451
    move v4, p2

    .line 1453
    .local v4, "dst":I
    :goto_2
    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v5

    .line 1454
    .local v5, "flags":I
    if-nez v5, :cond_1

    .line 1468
    .end local v5    # "flags":I
    return-object v2

    .line 1455
    .restart local v5    # "flags":I
    :cond_1
    add-int/lit8 v6, v0, 0x2

    invoke-direct {p0, v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v6

    .line 1456
    .local v6, "pointer":I
    add-int/lit8 v0, v0, 0x6

    .line 1457
    and-int/lit16 v7, v5, 0x7fff

    mul-int/lit8 v7, v7, 0x20

    .line 1458
    .local v7, "bytes":I
    const v8, 0x8000

    and-int/2addr v8, v5

    if-eqz v8, :cond_3

    .line 1459
    invoke-direct {p0, v6, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressInto(I[B)I

    move-result v8

    .line 1460
    .local v8, "produced":I
    if-lez v8, :cond_2

    .line 1461
    const/4 v9, 0x0

    invoke-static {v3, v9, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1462
    .end local v8    # "produced":I
    goto :goto_3

    .line 1460
    .restart local v8    # "produced":I
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Original title pattern decode empty"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1463
    .end local v8    # "produced":I
    :cond_3
    invoke-direct {p0, v6, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1464
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    invoke-static {v8, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1466
    :goto_3
    add-int/2addr v4, v7

    .line 1467
    .end local v5    # "flags":I
    .end local v6    # "pointer":I
    .end local v7    # "bytes":I
    goto :goto_2

    .line 1448
    .end local v3    # "scratch":[B
    .end local v4    # "dst":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Original title pattern VRAM overrun"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1442
    .local v2, "flags":I
    :cond_5
    and-int/lit16 v4, v2, 0x7fff

    mul-int/lit8 v4, v4, 0x20

    add-int/2addr v1, v4

    .line 1443
    add-int/lit8 v0, v0, 0x6

    .line 1444
    if-gt v1, v3, :cond_6

    .line 1445
    .end local v2    # "flags":I
    goto :goto_0

    .line 1444
    .restart local v2    # "flags":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Original title pattern table guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static normalizeVolume(I)I
    .locals 2
    .param p0, "value"    # I

    .line 865
    const/16 v0, 0x64

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 866
    .local v0, "v":I
    add-int/lit8 v1, v0, 0x5

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xa

    return v1
.end method

.method private parseShipScript(I)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    .locals 10
    .param p1, "script"    # I

    .line 1375
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .line 1376
    .local v0, "temp":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    const/4 v1, 0x0

    .line 1377
    .local v1, "count":I
    const/4 v2, 0x0

    .line 1378
    .local v2, "frameIndex":I
    move v3, p1

    .line 1379
    .local v3, "p":I
    const/4 v4, 0x0

    .line 1381
    .local v4, "guard":I
    :goto_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x100

    if-gt v4, v6, :cond_4

    .line 1382
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v6

    .line 1383
    .local v6, "command":I
    add-int/lit8 v3, v3, 0x2

    .line 1384
    if-nez v6, :cond_0

    .line 1397
    .end local v6    # "command":I
    new-array v5, v1, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .line 1398
    .local v5, "exact":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1399
    return-object v5

    .line 1385
    .end local v5    # "exact":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    .restart local v6    # "command":I
    :cond_0
    if-ne v6, v5, :cond_2

    .line 1386
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v5

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v5

    .line 1387
    .local v5, "x":I
    add-int/lit8 v7, v3, 0x2

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v7

    .line 1388
    .local v7, "y":I
    add-int/lit8 v3, v3, 0x4

    .line 1389
    array-length v8, v0

    if-ge v1, v8, :cond_1

    .line 1390
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "count":I
    .local v8, "count":I
    new-instance v9, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    invoke-direct {v9, v2, v5, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;-><init>(III)V

    aput-object v9, v0, v1

    .line 1391
    .end local v5    # "x":I
    .end local v7    # "y":I
    move v1, v8

    goto :goto_1

    .line 1389
    .end local v8    # "count":I
    .restart local v1    # "count":I
    .restart local v5    # "x":I
    .restart local v7    # "y":I
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Original ship script too long"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1391
    .end local v5    # "x":I
    .end local v7    # "y":I
    :cond_2
    const/4 v5, 0x2

    if-ne v6, v5, :cond_3

    .line 1392
    add-int/lit8 v5, v2, 0x1

    const/16 v7, 0xe

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1396
    .end local v6    # "command":I
    :goto_1
    goto :goto_0

    .line 1394
    .restart local v6    # "command":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown original ship script command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1381
    .end local v6    # "command":I
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Original ship script guard"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseShipScript([B)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    .locals 10
    .param p1, "scriptBytes"    # [B

    .line 1355
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .line 1356
    .local v0, "temp":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "frameIndex":I
    const/4 v3, 0x0

    .local v3, "p":I
    const/4 v4, 0x0

    .line 1358
    .local v4, "guard":I
    :goto_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x100

    if-gt v4, v6, :cond_6

    add-int/lit8 v6, v3, 0x2

    array-length v7, p1

    if-gt v6, v7, :cond_6

    .line 1360
    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v6

    .local v6, "command":I
    add-int/lit8 v3, v3, 0x2

    .line 1361
    if-nez v6, :cond_1

    .line 1370
    .end local v6    # "command":I
    array-length v5, p1

    if-ne v3, v5, :cond_0

    .line 1371
    new-array v5, v1, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    .local v5, "exact":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    .line 1370
    .end local v5    # "exact":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Installed ship script has trailing data"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1362
    .restart local v6    # "command":I
    :cond_1
    if-ne v6, v5, :cond_4

    .line 1363
    add-int/lit8 v5, v3, 0x4

    array-length v7, p1

    if-gt v5, v7, :cond_3

    .line 1364
    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v5

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v5

    .local v5, "x":I
    add-int/lit8 v7, v3, 0x2

    invoke-static {p1, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v7

    .local v7, "y":I
    add-int/lit8 v3, v3, 0x4

    .line 1365
    array-length v8, v0

    if-ge v1, v8, :cond_2

    .line 1366
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "count":I
    .local v8, "count":I
    new-instance v9, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    invoke-direct {v9, v2, v5, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;-><init>(III)V

    aput-object v9, v0, v1

    .line 1367
    .end local v5    # "x":I
    .end local v7    # "y":I
    move v1, v8

    goto :goto_1

    .line 1365
    .end local v8    # "count":I
    .restart local v1    # "count":I
    .restart local v5    # "x":I
    .restart local v7    # "y":I
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Installed ship script too long"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1363
    .end local v5    # "x":I
    .end local v7    # "y":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Installed ship script truncated"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1367
    :cond_4
    const/4 v5, 0x2

    if-ne v6, v5, :cond_5

    add-int/lit8 v5, v2, 0x1

    const/16 v7, 0xe

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1369
    .end local v6    # "command":I
    :goto_1
    goto :goto_0

    .line 1368
    .restart local v6    # "command":I
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown installed ship script command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1359
    .end local v6    # "command":I
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Installed ship script guard/range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readCString(I)Ljava/lang/String;
    .locals 4
    .param p1, "offset"    # I

    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    .local v0, "b":Ljava/lang/StringBuilder;
    move v1, p1

    .line 1054
    .local v1, "p":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readOptionTestTable(II)[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    .locals 8
    .param p1, "table"    # I
    .param p2, "maxEntries"    # I

    .line 1032
    new-array v0, p2, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 1033
    .local v0, "tmp":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    const/4 v1, 0x0

    .line 1034
    .local v1, "count":I
    move v2, p1

    .line 1035
    .local v2, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1036
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v3

    .line 1037
    .local v3, "namePtr":I
    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v4

    .line 1038
    .local v4, "seq":I
    add-int/lit8 v2, v2, 0x8

    .line 1039
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    goto :goto_1

    .line 1042
    :cond_0
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->readCString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1043
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    new-instance v7, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    invoke-direct {v7, v5, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;-><init>(Ljava/lang/String;I)V

    aput-object v7, v0, v1

    .line 1044
    .end local v3    # "namePtr":I
    .end local v4    # "seq":I
    .end local v5    # "name":Ljava/lang/String;
    move v1, v6

    goto :goto_0

    .line 1045
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_1
    :goto_1
    new-array v3, v1, [Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    .line 1046
    .local v3, "out":[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    return-object v3
.end method

.method private readTitleStringsFromRom()[Ljava/lang/String;
    .locals 5

    .line 1623
    const/16 v0, 0x24

    new-array v0, v0, [B

    .line 1624
    .local v0, "data":[B
    array-length v1, v0

    const v2, 0x173f4

    invoke-direct {p0, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->checkRange(II)V

    .line 1625
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rom:[B

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1627
    :try_start_0
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodeTitleStrings([B)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1628
    :catch_0
    move-exception v1

    .line 1629
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Original title string table is invalid"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private renderMap64x32Visible([B[B[I)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "patterns"    # [B
    .param p2, "map"    # [B
    .param p3, "palette"    # [I

    .line 1189
    const v0, 0x11800

    new-array v2, v0, [I

    .line 1190
    .local v2, "pixels":[I
    const/4 v0, 0x0

    .local v0, "ty":I
    :goto_0
    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 1191
    const/4 v1, 0x0

    move v11, v1

    .local v11, "tx":I
    :goto_1
    const/16 v1, 0x28

    if-ge v11, v1, :cond_0

    .line 1192
    mul-int/lit8 v1, v0, 0x40

    add-int/2addr v1, v11

    mul-int/lit8 v12, v1, 0x2

    .line 1193
    .local v12, "mo":I
    mul-int/lit8 v5, v11, 0x8

    mul-int/lit8 v6, v0, 0x8

    .line 1194
    move-object/from16 v13, p2

    invoke-static {v13, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v8

    .line 1193
    const/16 v3, 0x140

    const/16 v4, 0xe0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawTile([IIIII[BI[IZ)V

    .line 1191
    .end local v12    # "mo":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v13, p2

    .line 1190
    .end local v11    # "tx":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p2

    .line 1197
    .end local v0    # "ty":I
    const/16 v0, 0xe0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    invoke-static {v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1198
    .local v1, "b":Landroid/graphics/Bitmap;
    const/16 v7, 0x140

    const/16 v8, 0xe0

    const/4 v3, 0x0

    const/16 v4, 0x140

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1199
    return-object v1
.end method

.method private renderMenuFrame(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "showMenu"    # Z

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private renderMenuFrame(ZZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "showMenu"    # Z
    .param p2, "startSubmenu"    # Z

    .line 523
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 526
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->starPlane:Landroid/graphics/Bitmap;

    const/16 v1, 0x2c0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawPlaneViewport(Landroid/graphics/Bitmap;I)V

    .line 527
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoTitlePlane:Landroid/graphics/Bitmap;

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawPlaneViewport(Landroid/graphics/Bitmap;I)V

    .line 528
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuOverlay:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuOverlay:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private renderPlane([B[B[IZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "patterns"    # [B
    .param p2, "map"    # [B
    .param p3, "palette"    # [I
    .param p4, "transparentZero"    # Z

    .line 1203
    move-object/from16 v0, p2

    array-length v1, v0

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_3

    .line 1206
    const/high16 v1, 0x40000

    new-array v3, v1, [I

    .line 1207
    .local v3, "pixels":[I
    if-nez p4, :cond_0

    .line 1208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    aget v2, p3, v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "ty":I
    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    .line 1211
    const/4 v2, 0x0

    move v12, v2

    .local v12, "tx":I
    :goto_2
    const/16 v2, 0x80

    if-ge v12, v2, :cond_1

    .line 1212
    mul-int/lit16 v2, v1, 0x80

    add-int/2addr v2, v12

    mul-int/lit8 v13, v2, 0x2

    .line 1213
    .local v13, "mo":I
    mul-int/lit8 v6, v12, 0x8

    mul-int/lit8 v7, v1, 0x8

    .line 1214
    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    .line 1213
    const/16 v4, 0x400

    const/16 v5, 0x100

    move-object v2, p0

    move-object v8, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawTile([IIIII[BI[IZ)V

    .line 1211
    .end local v13    # "mo":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1210
    .end local v12    # "tx":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1217
    .end local v1    # "ty":I
    :cond_2
    const/16 v1, 0x100

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x400

    invoke-static {v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1218
    .local v2, "b":Landroid/graphics/Bitmap;
    const/16 v8, 0x400

    const/16 v9, 0x100

    const/4 v4, 0x0

    const/16 v5, 0x400

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1219
    return-object v2

    .line 1204
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Original title plane map decode size mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private renderPlaneViewport([B[B[IIZ)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "patterns"    # [B
    .param p2, "map"    # [B
    .param p3, "palette"    # [I
    .param p4, "sourceX"    # I
    .param p5, "transparentZero"    # Z

    .line 1224
    const v0, 0x11800

    new-array v2, v0, [I

    .line 1225
    .local v2, "pixels":[I
    div-int/lit8 v0, p4, 0x8

    const/16 v1, 0x58

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1226
    .local v0, "tileX0":I
    const/4 v1, 0x0

    move v11, v1

    .local v11, "ty":I
    :goto_0
    const/16 v1, 0x1c

    if-ge v11, v1, :cond_1

    .line 1227
    const/4 v1, 0x0

    move v12, v1

    .local v12, "tx":I
    :goto_1
    const/16 v1, 0x28

    if-ge v12, v1, :cond_0

    .line 1228
    mul-int/lit16 v1, v11, 0x80

    add-int/2addr v1, v0

    add-int/2addr v1, v12

    mul-int/lit8 v13, v1, 0x2

    .line 1229
    .local v13, "mo":I
    mul-int/lit8 v5, v12, 0x8

    mul-int/lit8 v6, v11, 0x8

    .line 1230
    move-object/from16 v14, p2

    invoke-static {v14, v13}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v8

    .line 1229
    const/16 v3, 0x140

    const/16 v4, 0xe0

    move-object v1, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawTile([IIIII[BI[IZ)V

    .line 1227
    .end local v13    # "mo":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v14, p2

    .line 1226
    .end local v12    # "tx":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v14, p2

    .line 1233
    .end local v11    # "ty":I
    const/16 v1, 0xe0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x140

    invoke-static {v4, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1234
    .local v1, "b":Landroid/graphics/Bitmap;
    const/16 v7, 0x140

    const/16 v8, 0xe0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1235
    return-object v1
.end method

.method private renderResource64x28Pixels(I)[I
    .locals 19
    .param p1, "resourceIndex"    # I

    .line 1076
    move-object/from16 v0, p0

    move/from16 v10, p1

    mul-int/lit8 v1, v10, 0x10

    const v2, 0xc7c72

    add-int v11, v1, v2

    .line 1077
    .local v11, "entry":I
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v12

    .line 1078
    .local v12, "patternTable":I
    add-int/lit8 v1, v11, 0x4

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v1

    const v2, 0xffffff

    and-int v13, v1, v2

    .line 1079
    .local v13, "mapDescriptor":I
    add-int/lit8 v1, v11, 0x8

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v1

    and-int v14, v1, v2

    .line 1080
    .local v14, "palettePointer":I
    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 1082
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v12, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadPatternTable(II[B)[B

    move-result-object v6

    .line 1083
    .local v6, "patterns":[B
    invoke-direct {v0, v13}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->loadMapDescriptorVariable(I)[B

    move-result-object v15

    .line 1084
    .local v15, "map":[B
    array-length v1, v15

    const/16 v2, 0xe00

    if-ne v1, v2, :cond_2

    .line 1086
    invoke-direct {v0, v14}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decodePalette64(I)[I

    move-result-object v8

    .line 1087
    .local v8, "palette":[I
    const v1, 0x11800

    new-array v1, v1, [I

    .line 1088
    .local v1, "pixels":[I
    const/4 v2, 0x0

    .local v2, "ty":I
    :goto_0
    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 1089
    const/4 v3, 0x0

    .local v3, "tx":I
    :goto_1
    const/16 v4, 0x28

    if-ge v3, v4, :cond_0

    .line 1090
    mul-int/lit8 v4, v2, 0x40

    add-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 1091
    .local v4, "mo":I
    mul-int/lit8 v5, v3, 0x8

    move v7, v5

    mul-int/lit8 v5, v2, 0x8

    .line 1092
    move v9, v7

    invoke-static {v15, v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v7

    .line 1091
    move/from16 v16, v2

    .end local v2    # "ty":I
    .local v16, "ty":I
    const/16 v2, 0x140

    move/from16 v17, v3

    .end local v3    # "tx":I
    .local v17, "tx":I
    const/16 v3, 0xe0

    move/from16 v18, v4

    move v4, v9

    .end local v4    # "mo":I
    .local v18, "mo":I
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawTile([IIIII[BI[IZ)V

    .line 1089
    .end local v18    # "mo":I
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    .end local v17    # "tx":I
    .restart local v3    # "tx":I
    goto :goto_1

    .end local v16    # "ty":I
    .restart local v2    # "ty":I
    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    .line 1088
    .end local v2    # "ty":I
    .end local v3    # "tx":I
    .restart local v16    # "ty":I
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    .end local v16    # "ty":I
    .restart local v2    # "ty":I
    goto :goto_0

    .line 1095
    .end local v2    # "ty":I
    :cond_1
    return-object v1

    .line 1085
    .end local v1    # "pixels":[I
    .end local v8    # "palette":[I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original OPTIONS map size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    .end local v6    # "patterns":[B
    .end local v15    # "map":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original OPTIONS resource missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private renderResource64x28Pixels([B[B[I)[I
    .locals 14
    .param p1, "patterns"    # [B
    .param p2, "map"    # [B
    .param p3, "palette"    # [I

    .line 1062
    move-object/from16 v0, p2

    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0xe00

    if-ne v1, v2, :cond_2

    .line 1064
    const v1, 0x11800

    new-array v3, v1, [I

    .line 1065
    .local v3, "pixels":[I
    const/4 v1, 0x0

    .local v1, "ty":I
    :goto_0
    const/16 v2, 0x1c

    if-ge v1, v2, :cond_1

    .line 1066
    const/4 v2, 0x0

    move v12, v2

    .local v12, "tx":I
    :goto_1
    const/16 v2, 0x28

    if-ge v12, v2, :cond_0

    .line 1067
    mul-int/lit8 v2, v1, 0x40

    add-int/2addr v2, v12

    mul-int/lit8 v13, v2, 0x2

    .line 1068
    .local v13, "mo":I
    mul-int/lit8 v6, v12, 0x8

    mul-int/lit8 v7, v1, 0x8

    .line 1069
    invoke-static {v0, v13}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    .line 1068
    const/16 v4, 0x140

    const/16 v5, 0xe0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v8, p1

    move-object/from16 v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawTile([IIIII[BI[IZ)V

    .line 1066
    .end local v13    # "mo":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1065
    .end local v12    # "tx":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    .end local v1    # "ty":I
    :cond_1
    return-object v3

    .line 1063
    .end local v3    # "pixels":[I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Installed frontend map size mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private renderShipLayout(I[I)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "layout"    # I
    .param p2, "palette"    # [I

    .line 1303
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1304
    .local v1, "count":I
    add-int/lit8 v3, p1, 0x2

    .line 1305
    .local v3, "p":I
    const/4 v4, 0x1

    .line 1306
    .local v4, "maxX":I
    const/4 v5, 0x1

    .line 1307
    .local v5, "maxY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 1308
    add-int/lit8 v7, v3, 0xa

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v7

    .line 1309
    .local v7, "x":I
    add-int/lit8 v8, v3, 0x4

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v8

    invoke-static {v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v8

    .line 1310
    .local v8, "y":I
    add-int/lit8 v9, v3, 0x6

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v9

    .line 1311
    .local v9, "size":I
    ushr-int/lit8 v10, v9, 0xa

    and-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    .line 1312
    .local v10, "wt":I
    ushr-int/lit8 v11, v9, 0x8

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    .line 1313
    .local v11, "ht":I
    mul-int/lit8 v12, v10, 0x8

    add-int/2addr v12, v7

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1314
    mul-int/lit8 v12, v11, 0x8

    add-int/2addr v12, v8

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1307
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "size":I
    .end local v10    # "wt":I
    .end local v11    # "ht":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0xc

    goto :goto_0

    .line 1316
    .end local v6    # "i":I
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1317
    .local v8, "width":I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1318
    .local v14, "height":I
    mul-int v6, v8, v14

    new-array v7, v6, [I

    .line 1319
    .local v7, "pixels":[I
    add-int/lit8 v3, p1, 0x2

    .line 1320
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 1321
    add-int/lit8 v9, v3, 0x4

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v19

    .line 1322
    .local v19, "y":I
    add-int/lit8 v9, v3, 0x6

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v20

    .line 1323
    .local v20, "size":I
    add-int/lit8 v9, v3, 0x8

    invoke-direct {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v9

    .line 1324
    .local v9, "attr":I
    add-int/lit8 v10, v3, 0xa

    invoke-direct {v0, v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v10

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v21

    .line 1325
    .local v21, "x":I
    ushr-int/lit8 v10, v20, 0xa

    and-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    .line 1326
    .restart local v10    # "wt":I
    ushr-int/lit8 v11, v20, 0x8

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    .line 1327
    .restart local v11    # "ht":I
    and-int/lit16 v12, v9, 0x7ff

    .line 1328
    .local v12, "first":I
    and-int/lit16 v13, v9, 0x800

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    move/from16 v27, v2

    goto :goto_2

    :cond_1
    move/from16 v27, v15

    .line 1329
    .local v27, "hFlip":Z
    :goto_2
    and-int/lit16 v13, v9, 0x1000

    if-eqz v13, :cond_2

    move/from16 v16, v2

    goto :goto_3

    :cond_2
    move/from16 v16, v15

    .line 1330
    .local v16, "vFlip":Z
    :goto_3
    ushr-int/lit8 v13, v9, 0xd

    and-int/lit8 v13, v13, 0x3

    .line 1331
    .local v13, "paletteLine":I
    const/4 v15, 0x0

    .local v15, "tx":I
    :goto_4
    if-ge v15, v10, :cond_4

    .line 1332
    const/16 v17, 0x0

    move/from16 v2, v17

    .local v2, "ty":I
    :goto_5
    if-ge v2, v11, :cond_3

    .line 1336
    move/from16 v26, v2

    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move/from16 v28, v16

    move v14, v13

    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v15    # "tx":I
    .end local v16    # "vFlip":Z
    .local v2, "attr":I
    .local v9, "height":I
    .local v14, "paletteLine":I
    .local v22, "first":I
    .local v23, "wt":I
    .local v24, "ht":I
    .local v25, "tx":I
    .local v26, "ty":I
    .local v28, "vFlip":Z
    invoke-static/range {v22 .. v28}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPatternIndex(IIIIIZZ)I

    move-result v13

    .line 1337
    move/from16 v15, v27

    .end local v27    # "hFlip":Z
    .end local v28    # "vFlip":Z
    .local v13, "pattern":I
    .local v15, "hFlip":Z
    .restart local v16    # "vFlip":Z
    mul-int/lit8 v10, v25, 0x8

    add-int v10, v21, v10

    mul-int/lit8 v11, v26, 0x8

    add-int v11, v19, v11

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    const/16 v18, 0x1

    move-object/from16 v17, p2

    invoke-static/range {v7 .. v18}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 1332
    .end local v13    # "pattern":I
    add-int/lit8 v10, v26, 0x1

    move v13, v14

    move/from16 v12, v22

    move/from16 v11, v24

    move/from16 v15, v25

    move v14, v9

    move v9, v2

    move v2, v10

    move/from16 v10, v23

    .end local v26    # "ty":I
    .local v10, "ty":I
    goto :goto_5

    .end local v22    # "first":I
    .end local v23    # "wt":I
    .end local v24    # "ht":I
    .end local v25    # "tx":I
    .local v2, "ty":I
    .local v9, "attr":I
    .local v10, "wt":I
    .restart local v11    # "ht":I
    .restart local v12    # "first":I
    .local v13, "paletteLine":I
    .local v14, "height":I
    .local v15, "tx":I
    .restart local v27    # "hFlip":Z
    :cond_3
    move/from16 v26, v2

    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move/from16 v15, v27

    move v14, v13

    .line 1331
    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v27    # "hFlip":Z
    .local v2, "attr":I
    .local v9, "height":I
    .local v14, "paletteLine":I
    .local v15, "hFlip":Z
    .restart local v22    # "first":I
    .restart local v23    # "wt":I
    .restart local v24    # "ht":I
    .restart local v25    # "tx":I
    add-int/lit8 v10, v25, 0x1

    move v14, v9

    move v15, v10

    move/from16 v10, v23

    move v9, v2

    const/4 v2, 0x1

    .end local v25    # "tx":I
    .local v10, "tx":I
    goto :goto_4

    .end local v2    # "attr":I
    .end local v22    # "first":I
    .end local v23    # "wt":I
    .end local v24    # "ht":I
    .local v9, "attr":I
    .local v10, "wt":I
    .restart local v11    # "ht":I
    .restart local v12    # "first":I
    .restart local v13    # "paletteLine":I
    .local v14, "height":I
    .local v15, "tx":I
    .restart local v27    # "hFlip":Z
    :cond_4
    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move/from16 v15, v27

    move v14, v13

    .line 1320
    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v14    # "height":I
    .end local v15    # "tx":I
    .end local v16    # "vFlip":Z
    .end local v19    # "y":I
    .end local v20    # "size":I
    .end local v21    # "x":I
    .end local v27    # "hFlip":Z
    .local v9, "height":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0xc

    move v14, v9

    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v9    # "height":I
    .restart local v14    # "height":I
    :cond_5
    move v9, v14

    .line 1342
    .end local v6    # "i":I
    .end local v14    # "height":I
    .restart local v9    # "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1343
    .local v2, "b":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v9    # "height":I
    .restart local v14    # "height":I
    const/4 v9, 0x0

    move v13, v8

    move v10, v8

    move-object v8, v7

    move-object v7, v2

    .end local v2    # "b":Landroid/graphics/Bitmap;
    .local v7, "b":Landroid/graphics/Bitmap;
    .local v8, "pixels":[I
    .local v10, "width":I
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1344
    move-object v7, v8

    move v8, v10

    move v9, v14

    .end local v10    # "width":I
    .end local v14    # "height":I
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .local v7, "pixels":[I
    .local v8, "width":I
    .restart local v9    # "height":I
    return-object v2
.end method

.method private renderShipLayout([BI[I)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "layoutBytes"    # [B
    .param p2, "layout"    # I
    .param p3, "palette"    # [I

    .line 1270
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1271
    .local v1, "count":I
    add-int/lit8 v3, p2, 0x2

    .line 1272
    .local v3, "p":I
    const/4 v4, 0x1

    .local v4, "maxX":I
    const/4 v5, 0x1

    .line 1273
    .local v5, "maxY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 1274
    add-int/lit8 v7, v3, 0xa

    invoke-static {v0, v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v7

    invoke-static {v7}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v7

    .line 1275
    .local v7, "x":I
    add-int/lit8 v8, v3, 0x4

    invoke-static {v0, v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v8

    invoke-static {v8}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v8

    .line 1276
    .local v8, "y":I
    add-int/lit8 v9, v3, 0x6

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    .line 1277
    .local v9, "size":I
    ushr-int/lit8 v10, v9, 0xa

    and-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    .local v10, "wt":I
    ushr-int/lit8 v11, v9, 0x8

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    .line 1278
    .local v11, "ht":I
    mul-int/lit8 v12, v10, 0x8

    add-int/2addr v12, v7

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v12, v11, 0x8

    add-int/2addr v12, v8

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1273
    .end local v7    # "x":I
    .end local v8    # "y":I
    .end local v9    # "size":I
    .end local v10    # "wt":I
    .end local v11    # "ht":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0xc

    goto :goto_0

    .line 1280
    .end local v6    # "i":I
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "width":I
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1281
    .local v14, "height":I
    mul-int v6, v8, v14

    new-array v7, v6, [I

    .line 1282
    .local v7, "pixels":[I
    add-int/lit8 v3, p2, 0x2

    .line 1283
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 1284
    add-int/lit8 v9, v3, 0x4

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v19

    .line 1285
    .local v19, "y":I
    add-int/lit8 v9, v3, 0x6

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v20

    .line 1286
    .local v20, "size":I
    add-int/lit8 v9, v3, 0x8

    invoke-static {v0, v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v9

    .line 1287
    .local v9, "attr":I
    add-int/lit8 v10, v3, 0xa

    invoke-static {v0, v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v10

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v21

    .line 1288
    .local v21, "x":I
    ushr-int/lit8 v10, v20, 0xa

    and-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v2

    .restart local v10    # "wt":I
    ushr-int/lit8 v11, v20, 0x8

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    .line 1289
    .restart local v11    # "ht":I
    and-int/lit16 v12, v9, 0x7ff

    .local v12, "first":I
    and-int/lit16 v13, v9, 0x800

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    move/from16 v27, v2

    goto :goto_2

    :cond_1
    move/from16 v27, v15

    .local v27, "hFlip":Z
    :goto_2
    and-int/lit16 v13, v9, 0x1000

    if-eqz v13, :cond_2

    move/from16 v28, v2

    goto :goto_3

    :cond_2
    move/from16 v28, v15

    .line 1290
    .local v28, "vFlip":Z
    :goto_3
    ushr-int/lit8 v13, v9, 0xd

    and-int/lit8 v13, v13, 0x3

    .line 1291
    .local v13, "paletteLine":I
    const/4 v15, 0x0

    .local v15, "tx":I
    :goto_4
    if-ge v15, v10, :cond_4

    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "ty":I
    :goto_5
    if-ge v2, v11, :cond_3

    .line 1292
    move/from16 v26, v2

    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move v14, v13

    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v15    # "tx":I
    .local v2, "attr":I
    .local v9, "height":I
    .local v14, "paletteLine":I
    .local v22, "first":I
    .local v23, "wt":I
    .local v24, "ht":I
    .local v25, "tx":I
    .local v26, "ty":I
    invoke-static/range {v22 .. v28}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPatternIndex(IIIIIZZ)I

    move-result v13

    .line 1293
    move/from16 v15, v27

    .end local v27    # "hFlip":Z
    .local v13, "pattern":I
    .local v15, "hFlip":Z
    mul-int/lit8 v10, v25, 0x8

    add-int v10, v21, v10

    mul-int/lit8 v11, v26, 0x8

    add-int v11, v19, v11

    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipVram:[B

    const/16 v18, 0x1

    move-object/from16 v17, p3

    move-object v12, v0

    move/from16 v16, v28

    .end local v28    # "vFlip":Z
    .local v16, "vFlip":Z
    invoke-static/range {v7 .. v18}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawRawTile([IIIII[BIIZZ[IZ)V

    .line 1291
    .end local v13    # "pattern":I
    .end local v16    # "vFlip":Z
    .restart local v28    # "vFlip":Z
    add-int/lit8 v0, v26, 0x1

    move v13, v14

    move/from16 v12, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v15, v25

    move v14, v9

    move v9, v2

    move v2, v0

    move-object/from16 v0, p1

    .end local v26    # "ty":I
    .local v0, "ty":I
    goto :goto_5

    .end local v0    # "ty":I
    .end local v22    # "first":I
    .end local v23    # "wt":I
    .end local v24    # "ht":I
    .end local v25    # "tx":I
    .local v2, "ty":I
    .local v9, "attr":I
    .restart local v10    # "wt":I
    .restart local v11    # "ht":I
    .restart local v12    # "first":I
    .local v13, "paletteLine":I
    .local v14, "height":I
    .local v15, "tx":I
    .restart local v27    # "hFlip":Z
    :cond_3
    move/from16 v26, v2

    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move/from16 v15, v27

    move v14, v13

    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v27    # "hFlip":Z
    .local v2, "attr":I
    .local v9, "height":I
    .local v14, "paletteLine":I
    .local v15, "hFlip":Z
    .restart local v22    # "first":I
    .restart local v23    # "wt":I
    .restart local v24    # "ht":I
    .restart local v25    # "tx":I
    add-int/lit8 v0, v25, 0x1

    move v15, v0

    move v14, v9

    move-object/from16 v0, p1

    move v9, v2

    const/4 v2, 0x1

    .end local v25    # "tx":I
    .local v0, "tx":I
    goto :goto_4

    .end local v0    # "tx":I
    .end local v2    # "attr":I
    .end local v22    # "first":I
    .end local v23    # "wt":I
    .end local v24    # "ht":I
    .local v9, "attr":I
    .restart local v10    # "wt":I
    .restart local v11    # "ht":I
    .restart local v12    # "first":I
    .restart local v13    # "paletteLine":I
    .local v14, "height":I
    .local v15, "tx":I
    .restart local v27    # "hFlip":Z
    :cond_4
    move v2, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v22, v12

    move v9, v14

    move/from16 v25, v15

    move/from16 v15, v27

    move v14, v13

    .line 1283
    .end local v10    # "wt":I
    .end local v11    # "ht":I
    .end local v12    # "first":I
    .end local v13    # "paletteLine":I
    .end local v14    # "height":I
    .end local v15    # "tx":I
    .end local v19    # "y":I
    .end local v20    # "size":I
    .end local v21    # "x":I
    .end local v27    # "hFlip":Z
    .end local v28    # "vFlip":Z
    .local v9, "height":I
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0xc

    move-object/from16 v0, p1

    move v14, v9

    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v9    # "height":I
    .restart local v14    # "height":I
    :cond_5
    move v9, v14

    .line 1297
    .end local v6    # "i":I
    .end local v14    # "height":I
    .restart local v9    # "height":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1298
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v9    # "height":I
    .restart local v14    # "height":I
    const/4 v9, 0x0

    move v13, v8

    move v10, v8

    move-object v8, v7

    move-object v7, v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .local v7, "b":Landroid/graphics/Bitmap;
    .local v8, "pixels":[I
    .local v10, "width":I
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1299
    move-object v7, v8

    move v8, v10

    move v9, v14

    .end local v10    # "width":I
    .end local v14    # "height":I
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    .local v7, "pixels":[I
    .local v8, "width":I
    .restart local v9    # "height":I
    return-object v0
.end method

.method private renderTextOverlay([Ljava/lang/String;[I[I[I)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "text"    # [Ljava/lang/String;
    .param p2, "xs"    # [I
    .param p3, "ys"    # [I
    .param p4, "palette"    # [I

    .line 1126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x11800

    new-array v4, v2, [I

    .line 1127
    .local v4, "pixels":[I
    const/4 v2, 0x0

    .local v2, "line":I
    :goto_0
    array-length v3, v1

    const/16 v5, 0xe0

    if-ge v2, v3, :cond_6

    .line 1128
    aget v3, p2, v2

    .line 1129
    .local v3, "cx":I
    aget v7, p3, v2

    .line 1130
    .local v7, "cy":I
    aget-object v8, v1, v2

    .line 1131
    .local v8, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 1132
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1133
    .local v10, "ch":C
    invoke-static {v10}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v11

    .line 1134
    .local v11, "glyph":I
    mul-int/lit8 v12, v11, 0x20

    .line 1135
    .local v12, "po":I
    add-int/lit8 v13, v12, 0x20

    iget-object v14, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    array-length v14, v14

    if-gt v13, v14, :cond_4

    .line 1136
    const/4 v13, 0x0

    .local v13, "py":I
    :goto_2
    const/16 v14, 0x8

    if-ge v13, v14, :cond_4

    .line 1137
    add-int v14, v7, v13

    .line 1138
    .local v14, "sy":I
    if-ltz v14, :cond_3

    if-lt v14, v5, :cond_0

    goto :goto_4

    .line 1139
    :cond_0
    const/4 v15, 0x0

    .local v15, "pair":I
    :goto_3
    const/4 v5, 0x4

    if-ge v15, v5, :cond_3

    .line 1140
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fontPatterns:[B

    mul-int/lit8 v16, v13, 0x4

    add-int v16, v12, v16

    add-int v16, v16, v15

    aget-byte v5, v5, v16

    and-int/lit16 v5, v5, 0xff

    .line 1141
    .local v5, "packed":I
    ushr-int/lit8 v16, v5, 0x4

    .line 1142
    .local v16, "hi":I
    and-int/lit8 v17, v5, 0xf

    .line 1143
    .local v17, "lo":I
    mul-int/lit8 v18, v15, 0x2

    add-int v6, v3, v18

    .line 1144
    .local v6, "sx":I
    if-eqz v16, :cond_1

    if-ltz v6, :cond_1

    const/16 v0, 0x140

    if-ge v6, v0, :cond_1

    mul-int/lit16 v0, v14, 0x140

    add-int/2addr v0, v6

    add-int/lit8 v18, v16, 0x30

    aget v18, p4, v18

    aput v18, v4, v0

    .line 1145
    :cond_1
    if-eqz v17, :cond_2

    add-int/lit8 v0, v6, 0x1

    if-ltz v0, :cond_2

    add-int/lit8 v0, v6, 0x1

    const/16 v1, 0x140

    if-ge v0, v1, :cond_2

    mul-int/lit16 v0, v14, 0x140

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v17, 0x30

    aget v1, p4, v1

    aput v1, v4, v0

    .line 1139
    .end local v5    # "packed":I
    .end local v6    # "sx":I
    .end local v16    # "hi":I
    .end local v17    # "lo":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    const/16 v5, 0xe0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    .line 1136
    .end local v14    # "sy":I
    .end local v15    # "pair":I
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0xe0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_2

    .line 1149
    .end local v13    # "py":I
    :cond_4
    nop

    .end local v10    # "ch":C
    .end local v11    # "glyph":I
    .end local v12    # "po":I
    add-int/lit8 v3, v3, 0x8

    .line 1131
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0xe0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 1127
    .end local v3    # "cx":I
    .end local v7    # "cy":I
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 1152
    .end local v2    # "line":I
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0xe0

    const/16 v2, 0x140

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1153
    .local v3, "b":Landroid/graphics/Bitmap;
    const/16 v9, 0x140

    const/16 v10, 0xe0

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1154
    return-object v3
.end method

.method private replacementPalette([II)[I
    .locals 4
    .param p1, "base"    # [I
    .param p2, "source"    # I

    .line 1591
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1592
    .local v0, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x10

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p2

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1593
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static replacementPaletteBytes([I[B)[I
    .locals 4
    .param p0, "base"    # [I
    .param p1, "bytes"    # [B

    .line 1578
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x60

    if-ne v0, v1, :cond_1

    .line 1579
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1580
    .local v0, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x30

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x10

    mul-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16([BI)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->genesisColor(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1581
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 1578
    .end local v0    # "p":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Installed replacement palette size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static s32(J)J
    .locals 4
    .param p0, "v"    # J

    .line 1653
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    .line 1654
    const-wide v0, 0x80000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, 0x100000000L

    sub-long v0, p0, v0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method static scrollSourceXForTick(I)I
    .locals 15
    .param p0, "tick"    # I

    .line 556
    const-wide/32 v0, 0x8000

    .line 557
    .local v0, "velocity":J
    const-wide v2, 0xffffffffL

    .line 558
    .local v2, "position":J
    const-wide v4, 0xfd400000L

    .line 559
    .local v4, "target":J
    const/4 v6, 0x1

    .line 560
    .local v6, "wrap":Z
    const/4 v7, 0x0

    .line 561
    .local v7, "reverse":Z
    const/4 v8, 0x0

    invoke-static {v8, p0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 562
    .local v8, "tMax":I
    const/4 v9, 0x0

    .local v9, "t":I
    :goto_0
    const/16 v10, 0x10

    if-ge v9, v8, :cond_8

    .line 563
    const/16 v11, 0x311

    if-ne v9, v11, :cond_0

    const/4 v6, 0x0

    .line 564
    :cond_0
    ushr-long v10, v2, v10

    long-to-int v10, v10

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v10

    .line 565
    .local v10, "whole":I
    if-nez v7, :cond_2

    const/16 v11, -0x140

    if-ge v10, v11, :cond_2

    .line 566
    if-eqz v6, :cond_1

    .line 567
    const-wide v2, 0xffffffffL

    goto :goto_1

    .line 569
    :cond_1
    const/4 v7, 0x1

    .line 570
    const-wide/32 v0, 0x58800

    .line 573
    :cond_2
    :goto_1
    const-wide/16 v11, 0x800

    const-wide/32 v13, 0x30000

    if-nez v7, :cond_4

    .line 574
    add-long/2addr v11, v0

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v0

    .line 575
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->s32(J)J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    sub-long v11, v2, v13

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v2

    goto :goto_3

    .line 576
    :cond_3
    sub-long v11, v2, v0

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v2

    goto :goto_3

    .line 578
    :cond_4
    sub-long v11, v0, v11

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v0

    .line 579
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->s32(J)J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-ltz v11, :cond_5

    sub-long v11, v2, v13

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v2

    goto :goto_2

    .line 580
    :cond_5
    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->s32(J)J

    move-result-wide v11

    const-wide/32 v13, 0x8000

    cmp-long v11, v11, v13

    if-lez v11, :cond_6

    sub-long v11, v2, v0

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v2

    goto :goto_2

    .line 581
    :cond_6
    sub-long v11, v2, v13

    invoke-static {v11, v12}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->u32(J)J

    move-result-wide v2

    .line 582
    :goto_2
    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->s32(J)J

    move-result-wide v11

    const-wide v13, 0xfd400000L

    invoke-static {v13, v14}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->s32(J)J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_7

    .line 583
    const-wide v2, 0xfd400000L

    .line 584
    const-wide/32 v0, 0x8000

    .line 562
    .end local v10    # "whole":I
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 588
    .end local v9    # "t":I
    :cond_8
    ushr-long v9, v2, v10

    long-to-int v9, v9

    invoke-static {v9}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->signed16(I)I

    move-result v9

    .line 589
    .local v9, "whole":I
    neg-int v10, v9

    .line 590
    .local v10, "x":I
    rem-int/lit16 v10, v10, 0x400

    .line 591
    if-gez v10, :cond_9

    add-int/lit16 v10, v10, 0x400

    .line 592
    :cond_9
    const/16 v11, 0x2c0

    if-le v10, v11, :cond_a

    const/16 v10, 0x2c0

    .line 593
    :cond_a
    return v10
.end method

.method static shipPatternIndex(IIIIIZZ)I
    .locals 3
    .param p0, "first"    # I
    .param p1, "wt"    # I
    .param p2, "ht"    # I
    .param p3, "tx"    # I
    .param p4, "ty"    # I
    .param p5, "hFlip"    # Z
    .param p6, "vFlip"    # Z

    .line 1349
    if-eqz p5, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p3

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1350
    .local v0, "sourceTx":I
    :goto_0
    if-eqz p6, :cond_1

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    .line 1351
    .local v1, "sourceTy":I
    :goto_1
    mul-int v2, v0, p2

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2
.end method

.method private static signed16(I)I
    .locals 1
    .param p0, "v"    # I

    .line 1656
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000

    sub-int v0, p0, v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private startSubmenuLabels()[Ljava/lang/String;
    .locals 5

    .line 711
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->russianLocalization:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "HOBAr lfPA"

    aput-object v4, v0, v3

    const-string v3, "sPOgOqilTb"

    aput-object v3, v0, v2

    const-string v2, "HAjAg"

    aput-object v2, v0, v1

    return-object v0

    .line 712
    :cond_0
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->germanLocalization:Z

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "NEUES SPIEL"

    aput-object v4, v0, v3

    const-string v3, "FORTSETZEN"

    aput-object v3, v0, v2

    const-string v2, "ZUR\u00dcCK"

    aput-object v2, v0, v1

    return-object v0

    .line 713
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "NEW GAME"

    aput-object v4, v0, v3

    const-string v3, "CONTINUE"

    aput-object v3, v0, v2

    const-string v2, "BACK"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static step3(III)I
    .locals 1
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "steps"    # I

    .line 1257
    if-ge p0, p1, :cond_0

    add-int v0, p0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1258
    :cond_0
    if-le p0, p1, :cond_1

    sub-int v0, p0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1259
    :cond_1
    return p0
.end method

.method private static u32(J)J
    .locals 2
    .param p0, "v"    # J

    .line 1651
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    return-wide v0
.end method

.method private verifyRomAnchors()V
    .locals 6

    .line 1604
    const/16 v0, 0x186e

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v0

    const/16 v1, 0x18ce

    if-ne v0, v1, :cond_3

    .line 1605
    const v0, 0x174b8

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v0

    const v1, 0xc7d68

    if-ne v0, v1, :cond_2

    .line 1606
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->readTitleStringsFromRom()[Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, "title":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    aget-object v2, v0, v1

    .line 1608
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1611
    const v2, 0xc7c72

    .line 1612
    .local v2, "houseEntry":I
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    const v5, 0xa8b9a

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v2, 0x4

    .line 1613
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v3

    and-int/2addr v3, v4

    const v5, 0xc3aec

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v2, 0x8

    .line 1614
    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be32(I)I

    move-result v3

    and-int/2addr v3, v4

    const v4, 0xa6a18

    if-ne v3, v4, :cond_0

    .line 1615
    const v3, 0x6434e

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const v1, 0x64356

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v1

    const/16 v3, 0xd00

    if-ne v1, v3, :cond_0

    .line 1616
    const v1, 0x64362

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v1

    const/16 v4, 0x500

    if-ne v1, v4, :cond_0

    .line 1617
    const v1, 0x6436e

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->be16(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1620
    return-void

    .line 1618
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Original house-selection resource changed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1609
    .end local v2    # "houseEntry":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Original title string table is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1605
    .end local v0    # "title":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original title resource loader anchor changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1604
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SEGA pattern anchor changed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static volumeOptionText(I)Ljava/lang/String;
    .locals 1
    .param p0, "volume"    # I

    .line 876
    if-gtz p0, :cond_0

    const-string v0, "OFF"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static wrapIndex(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "count"    # I

    .line 870
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 871
    :cond_0
    rem-int v0, p0, p1

    .line 872
    .local v0, "v":I
    if-gez v0, :cond_1

    add-int v1, v0, p1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method


# virtual methods
.method canSkipToMenu(I)Z
    .locals 5
    .param p1, "introTick"    # I

    .line 539
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 540
    .local v1, "t":I
    const/16 v2, 0x234

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const/16 v2, 0x2fc

    if-ge v1, v2, :cond_0

    return v3

    .line 541
    :cond_0
    const/16 v2, 0x311

    if-lt v1, v2, :cond_1

    const/16 v2, 0x41d

    if-ge v1, v2, :cond_1

    return v3

    .line 542
    :cond_1
    const/16 v2, 0x45a

    const/16 v4, 0x568

    if-lt v1, v2, :cond_2

    if-ge v1, v4, :cond_2

    return v3

    .line 543
    :cond_2
    if-lt v1, v4, :cond_3

    const/16 v2, 0x61c

    if-ge v1, v2, :cond_3

    move v0, v3

    :cond_3
    return v0
.end method

.method isMenuTick(I)Z
    .locals 1
    .param p1, "introTick"    # I

    .line 534
    const/16 v0, 0x6e4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method menuLabelPixelWidth(ZI)I
    .locals 2
    .param p1, "startSubmenu"    # Z
    .param p2, "row"    # I

    .line 1014
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->startMenuLabels:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->rootMenuLabels:[Ljava/lang/String;

    .line 1015
    .local v0, "labels":[Ljava/lang/String;
    :goto_0
    if-ltz p2, :cond_2

    array-length v1, v0

    if-ge p2, v1, :cond_2

    aget-object v1, v0, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 1016
    :cond_1
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    return v1

    .line 1015
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method musicTestCount()I
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v0, v0

    return v0
.end method

.method musicTestName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 861
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method musicTestSequence(I)I
    .locals 2
    .param p1, "index"    # I

    .line 859
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->sequence:I

    return v0
.end method

.method regressionCampaignLevelSelectionPixels(II)[I
    .locals 1
    .param p1, "visualIndex"    # I
    .param p2, "unlockedLevel"    # I

    .line 703
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderCampaignLevelSelectionFrame(II)Landroid/graphics/Bitmap;

    .line 704
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method regressionDecodeStream(I)[B
    .locals 1
    .param p1, "source"    # I

    .line 1567
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->decompressExact(II)[B

    move-result-object v0

    return-object v0
.end method

.method regressionHouseSelectionPixels(II)[I
    .locals 1
    .param p1, "visualIndex"    # I
    .param p2, "tick"    # I

    .line 626
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderHouseSelectionFrame(II)Landroid/graphics/Bitmap;

    .line 627
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method regressionOptionsPixels(IIZIII)[I
    .locals 2
    .param p1, "musicVolume"    # I
    .param p2, "soundVolume"    # I
    .param p3, "radarEnabled"    # Z
    .param p4, "musicTestIndex"    # I
    .param p5, "soundTestIndex"    # I
    .param p6, "autosaveMinutes"    # I

    .line 847
    invoke-virtual/range {p0 .. p6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderOptionsFrame(IIZIII)Landroid/graphics/Bitmap;

    .line 849
    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "musicVolume":I
    .local v0, "autosaveMinutes":I
    .local p2, "musicVolume":I
    .local p3, "soundVolume":I
    .local p4, "radarEnabled":Z
    .local p5, "musicTestIndex":I
    .local p6, "soundTestIndex":I
    iget-object v1, p1, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1
.end method

.method regressionPasswordPixels(Ljava/lang/String;I)[I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cursor"    # I

    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderPasswordFrame(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 854
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method releaseIntroOnlyFrames()J
    .locals 8

    .line 493
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->introOnlyFramesReleased:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 494
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->introOnlyFramesReleased:Z

    .line 495
    const-wide/16 v0, 0x0

    .line 496
    .local v0, "bytes":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    .line 498
    .local v3, "b":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v2

    .line 496
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    .line 502
    .restart local v3    # "b":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v2

    .line 500
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 505
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v2

    .line 506
    .restart local v3    # "b":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v2

    .line 504
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 508
    .end local v2    # "i":I
    :cond_6
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_3
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 509
    const/4 v3, 0x0

    .local v3, "frameIndex":I
    :goto_4
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    array-length v5, v5

    if-ge v3, v5, :cond_8

    .line 510
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    .line 511
    .local v5, "b":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipFrames:[[Landroid/graphics/Bitmap;

    aget-object v6, v6, v2

    aput-object v4, v6, v3

    .line 509
    .end local v5    # "b":Landroid/graphics/Bitmap;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 513
    .end local v3    # "frameIndex":I
    :cond_8
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->shipPoses:[[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$ShipPose;

    aput-object v4, v3, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 515
    .end local v2    # "type":I
    :cond_9
    return-wide v0
.end method

.method renderCampaignHousePanel(I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "visualIndex"    # I

    .line 685
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 686
    .local v0, "vi":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignHousePanels:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    .line 687
    .local v1, "cached":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    return-object v1

    .line 688
    :cond_0
    sget-object v2, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->HOUSE_CURSOR_X:[I

    aget v2, v2, v0

    .line 689
    .local v2, "sourceX":I
    const/16 v3, 0x40

    .line 690
    .local v3, "sourceY":I
    const/16 v4, 0x50

    .line 691
    .local v4, "blockW":I
    const/16 v5, 0x58

    .line 692
    .local v5, "blockH":I
    const/16 v6, 0x1b80

    new-array v6, v6, [I

    .line 693
    .local v6, "pixels":[I
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    const/16 v8, 0x58

    const/16 v9, 0x50

    if-ge v7, v8, :cond_1

    .line 694
    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    add-int/lit8 v10, v7, 0x40

    mul-int/lit16 v10, v10, 0x140

    add-int/2addr v10, v2

    mul-int/lit8 v11, v7, 0x50

    invoke-static {v8, v10, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 693
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 697
    .end local v7    # "y":I
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v9, v8, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 698
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignHousePanels:[Landroid/graphics/Bitmap;

    aput-object v1, v7, v0

    .line 699
    return-object v1
.end method

.method renderCampaignLevelSelectionFrame(II)Landroid/graphics/Bitmap;
    .locals 38
    .param p1, "visualIndex"    # I
    .param p2, "unlockedLevel"    # I

    .line 641
    move-object/from16 v0, p0

    const/4 v6, 0x2

    move/from16 v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 642
    .local v9, "vi":I
    const/16 v10, 0x9

    move/from16 v11, p2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v12, 0x1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 643
    .local v13, "unlocked":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 648
    sget-object v1, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->HOUSE_CURSOR_X:[I

    aget v14, v1, v9

    .line 649
    .local v14, "sourceX":I
    const/16 v15, 0x40

    .line 650
    .local v15, "sourceY":I
    const/16 v16, 0x50

    .line 651
    .local v16, "blockW":I
    const/16 v17, 0x58

    .line 652
    .local v17, "blockH":I
    const/16 v18, 0x18

    .line 653
    .local v18, "destX":I
    const/16 v19, 0x44

    .line 654
    .local v19, "destY":I
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    const/16 v2, 0x58

    if-ge v1, v2, :cond_0

    .line 655
    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    add-int/lit8 v3, v1, 0x40

    mul-int/lit16 v3, v3, 0x140

    add-int/2addr v3, v14

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    add-int/lit8 v5, v1, 0x44

    mul-int/lit16 v5, v5, 0x140

    add-int/lit8 v5, v5, 0x18

    move/from16 v20, v6

    const/16 v6, 0x50

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v20

    goto :goto_0

    :cond_0
    move/from16 v20, v6

    .line 659
    .end local v1    # "y":I
    const/16 v6, 0xda

    .line 660
    .local v6, "textCenterX":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->housePalette:[I

    const/4 v2, 0x4

    aget v26, v1, v2

    .line 661
    .local v26, "gold":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_5

    .line 662
    add-int/lit8 v2, v1, 0x1

    .line 663
    .local v2, "level":I
    mul-int/lit8 v3, v1, 0x17

    add-int/lit8 v27, v3, 0x8

    .line 664
    .local v27, "rowTop":I
    add-int/lit8 v4, v27, 0x8

    .line 665
    .local v4, "labelY":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->russianLocalization:Z

    if-eqz v5, :cond_1

    const-string v5, "uPOBEHb "

    goto :goto_2

    :cond_1
    const-string v5, "LEVEL "

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v5, v5, 0x2

    rsub-int v5, v5, 0xda

    .line 667
    .local v5, "labelX":I
    if-gt v2, v13, :cond_2

    move/from16 v21, v12

    goto :goto_3

    :cond_2
    move/from16 v21, v8

    :goto_3
    move/from16 v28, v21

    .line 668
    .local v28, "enabled":Z
    move/from16 v21, v1

    .end local v1    # "i":I
    .local v21, "i":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    move/from16 v22, v2

    move-object v2, v3

    move v3, v5

    if-nez v28, :cond_3

    move v5, v12

    goto :goto_4

    :cond_3
    move v5, v8

    .end local v5    # "labelX":I
    .local v2, "label":Ljava/lang/String;
    .local v3, "labelX":I
    .local v22, "level":I
    :goto_4
    move/from16 v29, v21

    move/from16 v8, v22

    .end local v21    # "i":I
    .end local v22    # "level":I
    .local v8, "level":I
    .local v29, "i":I
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawFrontendFontText([ILjava/lang/String;IIZ)V

    .line 669
    if-ne v8, v13, :cond_4

    .line 670
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    add-int/lit8 v23, v27, 0x2

    add-int/lit8 v5, v27, 0x17

    add-int/lit8 v25, v5, -0x3

    const/16 v22, 0x86

    const/16 v24, 0x12e

    move-object/from16 v21, v1

    invoke-static/range {v21 .. v26}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawPixelFrame([IIIIII)V

    .line 661
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "labelX":I
    .end local v4    # "labelY":I
    .end local v8    # "level":I
    .end local v27    # "rowTop":I
    .end local v28    # "enabled":Z
    :cond_4
    add-int/lit8 v1, v29, 0x1

    const/4 v8, 0x0

    .end local v29    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_5
    move/from16 v29, v1

    .line 676
    .end local v1    # "i":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelFrame:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelWorkPixels:[I

    const/16 v36, 0x140

    const/16 v37, 0xe0

    const/16 v32, 0x0

    const/16 v33, 0x140

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-virtual/range {v30 .. v37}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 677
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->campaignLevelFrame:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method renderHouseSelectionFrame(II)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "visualIndex"    # I
    .param p2, "tick"    # I

    .line 618
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 619
    .local v0, "vi":I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseBasePixels:[I

    array-length v4, v4

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    sget-object v2, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->HOUSE_CURSOR_X:[I

    aget v2, v2, v0

    const/16 v3, 0x88

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawHouseCursor([IIII)V

    .line 621
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseFrame:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseWorkPixels:[I

    const/16 v10, 0x140

    const/16 v11, 0xe0

    const/4 v6, 0x0

    const/16 v7, 0x140

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 622
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->houseFrame:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method renderIntroTick(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "tick"    # I

    .line 425
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->introOnlyFramesReleased:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 426
    :cond_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 427
    .local v0, "t":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 429
    const/16 v3, 0x61c

    if-ge v0, v3, :cond_a

    .line 430
    const/16 v3, 0x41d

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->scrollSourceXForTick(I)I

    move-result v3

    .line 431
    .local v3, "scrollX":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->starPlane:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v3}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawPlaneViewport(Landroid/graphics/Bitmap;I)V

    .line 436
    const/4 v4, 0x7

    const/16 v5, 0xdd

    const/16 v6, 0xc8

    const/4 v7, 0x0

    if-lt v0, v6, :cond_1

    if-ge v0, v5, :cond_1

    .line 437
    add-int/lit16 v5, v0, -0xc8

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fadeInLevel(I)I

    move-result v5

    .line 438
    .local v5, "level":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    .end local v5    # "level":I
    goto :goto_0

    :cond_1
    const/16 v6, 0x209

    if-lt v0, v5, :cond_2

    if-ge v0, v6, :cond_2

    .line 440
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 441
    :cond_2
    if-lt v0, v6, :cond_3

    const/16 v5, 0x21e

    if-ge v0, v5, :cond_3

    .line 442
    add-int/lit16 v5, v0, -0x209

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fadeOutLevel(I)I

    move-result v5

    .line 443
    .restart local v5    # "level":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->logoFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8, v7, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    .end local v5    # "level":I
    :cond_3
    :goto_0
    const/16 v5, 0x234

    const/16 v6, 0x21f

    if-lt v0, v6, :cond_4

    if-ge v0, v5, :cond_4

    .line 449
    add-int/lit16 v4, v0, -0x21f

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fadeInLevel(I)I

    move-result v4

    .line 450
    .local v4, "level":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 451
    .end local v4    # "level":I
    goto :goto_1

    :cond_4
    const/16 v6, 0x2fc

    if-lt v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    .line 452
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v4, v6, v4

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 453
    :cond_5
    if-lt v0, v6, :cond_6

    const/16 v4, 0x311

    if-ge v0, v4, :cond_6

    .line 454
    add-int/lit16 v4, v0, -0x2fc

    invoke-static {v4}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->fadeOutLevel(I)I

    move-result v4

    .line 455
    .restart local v4    # "level":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frameCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->presentFadeFrames:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 458
    .end local v4    # "level":I
    :cond_6
    :goto_1
    const/16 v4, 0x45a

    if-lt v0, v4, :cond_9

    const/16 v4, 0x568

    if-ge v0, v4, :cond_9

    .line 459
    const/16 v4, 0x4b4

    if-ge v0, v4, :cond_7

    add-int/lit16 v2, v0, -0x45a

    invoke-direct {p0, v1, v2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawShip(II)V

    goto :goto_2

    .line 460
    :cond_7
    const/16 v1, 0x50e

    if-ge v0, v1, :cond_8

    add-int/lit16 v1, v0, -0x4b4

    invoke-direct {p0, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawShip(II)V

    goto :goto_2

    .line 461
    :cond_8
    add-int/lit16 v1, v0, -0x50e

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawShip(II)V

    .line 463
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->frame:Landroid/graphics/Bitmap;

    return-object v1

    .line 466
    .end local v3    # "scrollX":I
    :cond_a
    const/16 v3, 0x6e4

    if-lt v0, v3, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method renderIntroTick(IZ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "tick"    # I
    .param p2, "startSubmenu"    # Z

    .line 481
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 482
    .local v0, "t":I
    const/16 v1, 0x6e4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderIntroTick(I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 483
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method renderOptionsFrame(IIZIII)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "musicVolume"    # I
    .param p2, "soundVolume"    # I
    .param p3, "radarEnabled"    # Z
    .param p4, "musicTestIndex"    # I
    .param p5, "soundTestIndex"    # I
    .param p6, "autosaveMinutes"    # I

    .line 798
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->normalizeVolume(I)I

    move-result v2

    .line 799
    .local v2, "mv":I
    invoke-static/range {p2 .. p2}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->normalizeVolume(I)I

    move-result v7

    .line 800
    .local v7, "sv":I
    move/from16 v8, p3

    .line 801
    .local v8, "radar":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    move/from16 v9, p4

    invoke-static {v9, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v10

    .line 802
    .local v10, "mi":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    move/from16 v11, p5

    invoke-static {v11, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v12

    .line 803
    .local v12, "si":I
    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicVolume:I

    if-ne v2, v1, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundVolume:I

    if-ne v7, v1, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedRadar:I

    if-ne v8, v1, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicTest:I

    if-ne v10, v1, :cond_0

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundTest:I

    if-ne v12, v1, :cond_0

    .line 805
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFrame:Landroid/graphics/Bitmap;

    return-object v1

    .line 807
    :cond_0
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsBasePixels:[I

    iget-object v3, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsBasePixels:[I

    array-length v4, v4

    const/4 v13, 0x0

    invoke-static {v1, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    const/16 v5, 0x28

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xb0

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsLocalizedValue([IIZIII)V

    .line 809
    move v14, v2

    .end local v2    # "mv":I
    .local v14, "mv":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    const/16 v5, 0x38

    move v2, v7

    .end local v7    # "sv":I
    .local v2, "sv":I
    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsLocalizedValue([IIZIII)V

    .line 810
    .end local v2    # "sv":I
    .restart local v7    # "sv":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    if-eqz p3, :cond_1

    const/16 v13, 0x64

    :cond_1
    move v2, v13

    const/16 v5, 0x48

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xb0

    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsLocalizedValue([IIZIII)V

    .line 811
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->musicTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    aget-object v2, v2, v10

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    const/16 v4, 0x58

    const/4 v5, 0x2

    const/16 v3, 0xb0

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 812
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    const/16 v4, 0x68

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 813
    iget-object v15, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFrame:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsWorkPixels:[I

    const/16 v21, 0x140

    const/16 v22, 0xe0

    const/16 v17, 0x0

    const/16 v18, 0x140

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v22}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 814
    iput v14, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicVolume:I

    .line 815
    iput v7, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundVolume:I

    .line 816
    iput v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedRadar:I

    .line 817
    iput v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedMusicTest:I

    .line 818
    iput v12, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedSoundTest:I

    .line 819
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->optionsFrame:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method renderPasswordFrame(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "cursor"    # I

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    if-nez v6, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v7, 0xa

    if-le v2, v7, :cond_1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v8, v1

    .line 826
    .end local v1    # "text":Ljava/lang/String;
    .local v8, "text":Ljava/lang/String;
    move/from16 v9, p2

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 827
    .local v10, "c":I
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordText:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordCursor:I

    if-ne v10, v1, :cond_2

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordFrame:Landroid/graphics/Bitmap;

    return-object v1

    .line 828
    :cond_2
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordBasePixels:[I

    iget-object v2, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    iget-object v4, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordBasePixels:[I

    array-length v4, v4

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_4

    if-ge v11, v7, :cond_4

    .line 832
    if-ne v11, v10, :cond_3

    goto :goto_2

    .line 833
    :cond_3
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v11, 0x8

    add-int/lit8 v3, v3, 0x78

    const/16 v4, 0x6e

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 829
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 835
    .end local v11    # "i":I
    :cond_4
    if-ge v10, v7, :cond_5

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    mul-int/lit8 v2, v10, 0x8

    add-int/lit8 v3, v2, 0x78

    const/16 v4, 0x6e

    const/4 v5, 0x3

    const-string v2, "_"

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->drawOptionsFontText([ILjava/lang/String;III)V

    .line 836
    :cond_5
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordFrame:Landroid/graphics/Bitmap;

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordWorkPixels:[I

    const/16 v17, 0x140

    const/16 v18, 0xe0

    const/4 v13, 0x0

    const/16 v14, 0x140

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 837
    iput-object v8, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordText:Ljava/lang/String;

    .line 838
    iput v10, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->cachedPasswordCursor:I

    .line 839
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->passwordFrame:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method renderSegaTick(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "tick"    # I

    .line 415
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->introOnlyFramesReleased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    const/16 v0, 0xc5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 417
    .local v0, "t":I
    rem-int/lit8 v2, v0, 0x42

    .line 418
    .local v2, "inPass":I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    aget-object v1, v3, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    const/16 v3, 0x15

    aget-object v1, v1, v3

    :goto_0
    return-object v1

    .line 419
    :cond_2
    add-int/lit8 v1, v2, -0x3

    div-int/2addr v1, v3

    const/16 v3, 0x14

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 420
    .local v1, "step":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->segaFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method renderSkippedMenuFrame()Landroid/graphics/Bitmap;
    .locals 2

    .line 473
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method renderSkippedMenuFrame(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "startSubmenu"    # Z

    .line 477
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->renderMenuFrame(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method soundTestCount()I
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v0, v0

    return v0
.end method

.method soundTestName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 862
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method soundTestSequence(I)I
    .locals 2
    .param p1, "index"    # I

    .line 860
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->soundTestEntries:[Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;

    array-length v1, v1

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;->wrapIndex(II)I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->sequence:I

    return v0
.end method
