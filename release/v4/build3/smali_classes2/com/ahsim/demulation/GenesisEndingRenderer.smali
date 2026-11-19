.class final Lcom/ahsim/demulation/GenesisEndingRenderer;
.super Ljava/lang/Object;
.source "GenesisEndingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    }
.end annotation


# static fields
.field private static final CREDIT_TEXT:I = 0x1193e

.field private static final FONT_STREAM:I = 0x506c8

.field static final HEIGHT:I = 0xe0

.field private static final HOUSE_PALETTE_GRADIENTS:I = 0x6c714

.field private static final INTRO_TEXT:I = 0x11930

.field private static final MAP_BYTES:I = 0xe00

.field private static final MAP_COLUMNS:I = 0x40

.field static final MUSIC_REQUEST:I = 0x21

.field private static final PALETTE_STEP_TICKS:I = 0x4

.field private static final POST_FLASH_HOLD_TICKS:I = 0x32

.field static final PRE_FLASH_TICKS:I = 0x96

.field private static final RESOURCE_MAP_DESCRIPTOR:I = 0xc7244

.field private static final RESOURCE_PALETTE:I = 0xa6d18

.field private static final RESOURCE_PATTERN_TABLE:I = 0xc1216

.field private static final WHITE_PALETTE:I = 0x6c700

.field static final WIDTH:I = 0x140


# instance fields
.field private final creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

.field private final creditsStartTick:[I

.field private final fadePalettes:[[[I

.field private final fadeStepCount:[I

.field private final finalPlanet:[Landroid/graphics/Bitmap;

.field private final font:[B

.field private final houseTargetPaletteWords:[[I

.field private final initialPaletteWords:[I

.field private final introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

.field private final map:[B

.field private final mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

.field private final patterns:[B

.field private final rom:[B

.field private final whitePaletteWords:[I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 6
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "contentAssets"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    .line 56
    const/16 v0, 0x9

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    .line 57
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x3

    aput v4, v2, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    .line 60
    new-array v2, v4, [[[I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    .line 61
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    .line 62
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    .line 63
    new-array v2, v4, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPlanet:[Landroid/graphics/Bitmap;

    .line 89
    if-eqz p1, :cond_2

    .line 90
    if-eqz p2, :cond_1

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    .line 92
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 93
    const-string v2, "ending/planet_patterns.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->patterns:[B

    .line 94
    const-string v2, "ending/planet_map.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    .line 95
    const-string v2, "ending/font.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    .line 96
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    array-length v2, v2

    const/16 v4, 0xe00

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    array-length v2, v2

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_0

    .line 98
    const-string v2, "ending/initial_palette.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadWords([B[I)V

    .line 99
    const-string v2, "ending/fade_white.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 100
    const-string v2, "ending/fade_atreides.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v4, v4, v0

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 101
    const-string v2, "ending/fade_harkonnen.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v3, v4, v3

    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 102
    const-string v2, "ending/fade_ordos.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 104
    :try_start_0
    invoke-virtual {p2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->endingTextData()[B

    move-result-object v1

    .line 105
    .local v1, "exactText":[B
    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    .line 106
    const/16 v0, 0xe

    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "exactText":[B
    nop

    .line 110
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->finishInitialization()V

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Ending READY text is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending provider asset size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending content provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;[B)V
    .locals 6
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "rom"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    .line 56
    const/16 v0, 0x9

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    .line 57
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x3

    aput v4, v2, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    .line 60
    new-array v2, v4, [[[I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    .line 61
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    .line 62
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    .line 63
    new-array v2, v4, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPlanet:[Landroid/graphics/Bitmap;

    .line 117
    if-eqz p1, :cond_2

    .line 118
    if-eqz p2, :cond_1

    array-length v2, p2

    const v4, 0x1195e

    if-lt v2, v4, :cond_1

    .line 120
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    .line 121
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 122
    const-string v2, "ending/planet_patterns.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->patterns:[B

    .line 123
    const-string v2, "ending/planet_map.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    .line 124
    const-string v2, "ending/font.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    .line 125
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    array-length v2, v2

    const/16 v4, 0xe00

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    array-length v2, v2

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_0

    .line 127
    const-string v2, "ending/initial_palette.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadWords([B[I)V

    .line 128
    const-string v2, "ending/fade_white.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    invoke-static {v2, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 129
    const-string v2, "ending/fade_atreides.bin"

    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v0, v4, v0

    invoke-static {v2, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 130
    const-string v0, "ending/fade_harkonnen.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 131
    const-string v0, "ending/fade_ordos.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->readMedia(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadLegacyFadeTarget([B[I)V

    .line 132
    const v0, 0x11930

    invoke-static {p2, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    .line 133
    const v0, 0x1193e

    invoke-static {p2, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    .line 134
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->finishInitialization()V

    .line 135
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending provider asset size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending reference ROM data is missing/truncated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending media provider is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([B)V
    .locals 7
    .param p1, "rom"    # [B

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x40

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    .line 56
    const/16 v1, 0x9

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    .line 57
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x3

    aput v3, v2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    .line 60
    new-array v1, v3, [[[I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    .line 62
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    .line 63
    new-array v1, v3, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPlanet:[Landroid/graphics/Bitmap;

    .line 66
    if-eqz p1, :cond_3

    array-length v1, p1

    const v2, 0xc8000

    if-lt v1, v2, :cond_3

    .line 68
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    .line 70
    const v1, 0xc1216

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadPatternsPersistentScratch([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->patterns:[B

    .line 71
    const v1, 0xc7244

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v1

    const v2, 0x8e00

    if-ne v1, v2, :cond_2

    .line 73
    const v1, 0xc7246

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be32([BI)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    .line 74
    .local v1, "mapPtr":I
    const/16 v2, 0xe00

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    .line 75
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    invoke-static {p1, v1, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decompressInto([BI[B)I

    move-result v3

    .line 76
    .local v3, "mapBytes":I
    if-ne v3, v2, :cond_1

    .line 78
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    mul-int/lit8 v5, v2, 0x2

    const v6, 0xa6d18

    add-int/2addr v5, v6

    invoke-static {p1, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decodeFont()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    .line 80
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadFadeWordsFromRom()V

    .line 81
    const v0, 0x11930

    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    .line 82
    const v0, 0x1193e

    invoke-static {p1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    .line 83
    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->finishInitialization()V

    .line 84
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending map decompressed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    .end local v1    # "mapPtr":I
    .end local v3    # "mapBytes":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected ending map descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM too small for Genesis ending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 467
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->checkRange([BII)V

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 468
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->checkRange([BII)V

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private buildFade(I)V
    .locals 10
    .param p1, "frontendHouse"    # I

    .line 303
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    .line 304
    .local v0, "white":[I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v1, v1, p1

    .line 305
    .local v1, "houseTarget":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, "frames":Ljava/util/List;, "Ljava/util/List<[I>;"
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 307
    .local v3, "current":[I
    :goto_0
    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-static {v3, v4, v0, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->rangeMatches([II[II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 308
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    aget v8, v0, v4

    invoke-static {v7, v8}, Lcom/ahsim/demulation/GenesisEndingRenderer;->stepGenesisColor(II)I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    :goto_2
    invoke-static {v3, v4, v1, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->rangeMatches([II[II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 312
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_2

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v8, v3, v8

    aget v9, v1, v6

    invoke-static {v8, v9}, Lcom/ahsim/demulation/GenesisEndingRenderer;->stepGenesisColor(II)I

    move-result v8

    aput v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 313
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_3
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v4, p1

    .line 318
    const/16 v4, 0x2d

    const/16 v5, 0xee

    aput v5, v3, v4

    .line 319
    const/16 v4, 0x2e

    const/16 v5, 0x66

    aput v5, v3, v4

    .line 320
    const/16 v4, 0x2f

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 321
    const/16 v4, 0x3d

    const/16 v6, 0xeee

    aput v6, v3, v4

    .line 322
    const/16 v4, 0x3e

    const/16 v6, 0x666

    aput v6, v3, v4

    .line 323
    const/16 v4, 0x3f

    aput v5, v3, v4

    .line 324
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    new-array v5, v5, [[I

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v4, p1

    .line 326
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    iget-object v5, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    aget v5, v5, p1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit16 v5, v5, 0x96

    add-int/lit8 v5, v5, 0x32

    aput v5, v4, p1

    .line 328
    return-void
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 469
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ending ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static clampHouse(I)I
    .locals 2
    .param p0, "h"    # I

    .line 466
    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private decodeFont()[B
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    const v1, 0x506c8

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v0

    .line 295
    .local v0, "expected":I
    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 296
    new-array v1, v0, [B

    .line 297
    .local v1, "out":[B
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    const v3, 0x506ca

    invoke-static {v2, v3, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decompressInto([BI[B)I

    move-result v2

    .line 298
    .local v2, "got":I
    if-ne v2, v0, :cond_0

    .line 299
    return-object v1

    .line 298
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Ending font decompression mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    .end local v1    # "out":[B
    .end local v2    # "got":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected ending font size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodePaletteWords([I)[I
    .locals 8
    .param p0, "words"    # [I

    .line 378
    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 379
    .local v0, "out":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 380
    aget v2, p0, v1

    .line 381
    .local v2, "w":I
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 382
    .local v3, "r":I
    ushr-int/lit8 v6, v2, 0x5

    and-int/lit8 v6, v6, 0x7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 383
    .local v6, "g":I
    ushr-int/lit8 v7, v2, 0x9

    and-int/lit8 v7, v7, 0x7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 384
    .local v4, "b":I
    invoke-static {v3, v6, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aput v5, v0, v1

    .line 379
    .end local v2    # "w":I
    .end local v3    # "r":I
    .end local v4    # "b":I
    .end local v6    # "g":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static decompressInto([BI[B)I
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "out"    # [B

    .line 433
    move v0, p1

    .local v0, "src":I
    const/4 v1, 0x0

    .local v1, "dst":I
    const/4 v2, 0x0

    .line 435
    .local v2, "guard":I
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x186a0

    if-gt v2, v4, :cond_c

    .line 436
    invoke-static {p0, v0, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->checkRange([BII)V

    .line 437
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "src":I
    .local v3, "src":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 438
    .local v0, "c":I
    const/16 v4, 0x80

    if-ne v0, v4, :cond_0

    .line 460
    .end local v0    # "c":I
    return v1

    .line 439
    .restart local v0    # "c":I
    :cond_0
    const/16 v4, 0x81

    if-lt v0, v4, :cond_1

    const/16 v4, 0xbf

    if-gt v0, v4, :cond_1

    .line 440
    and-int/lit8 v4, v0, 0x3f

    .local v4, "n":I
    invoke-static {p0, v3, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->checkRange([BII)V

    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->ensure([BII)V

    .line 441
    invoke-static {p0, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/2addr v1, v4

    .line 442
    .end local v4    # "n":I
    move v0, v3

    goto/16 :goto_5

    :cond_1
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_4

    .line 443
    shl-int/lit8 v4, v0, 0x8

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "src":I
    .local v5, "src":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xfff

    .line 444
    .local v3, "back":I
    ushr-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    .restart local v4    # "n":I
    if-lez v3, :cond_3

    if-gt v3, v1, :cond_3

    .line 445
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->ensure([BII)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    sub-int v7, v1, v3

    aget-byte v7, p2, v7

    aput-byte v7, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 446
    .end local v3    # "back":I
    .end local v4    # "n":I
    .end local v6    # "i":I
    :cond_2
    move v0, v5

    goto/16 :goto_5

    .line 444
    .restart local v3    # "back":I
    .restart local v4    # "n":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ending short copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    .end local v4    # "n":I
    .end local v5    # "src":I
    .local v3, "src":I
    :cond_4
    const/16 v4, 0xfd

    if-gt v0, v4, :cond_7

    .line 447
    and-int/lit8 v4, v0, 0x3f

    add-int/lit8 v4, v4, 0x3

    .restart local v4    # "n":I
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v3, v3, 0x2

    .line 448
    if-ltz v5, :cond_6

    if-ge v5, v1, :cond_6

    .line 449
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->ensure([BII)V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v4, :cond_5

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .local v7, "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_2

    .line 450
    .end local v4    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_5
    move v0, v3

    goto :goto_5

    .line 448
    .restart local v4    # "n":I
    .restart local v5    # "from":I
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ending absolute copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 450
    .end local v4    # "n":I
    .end local v5    # "from":I
    :cond_7
    const/16 v4, 0xfe

    if-ne v0, v4, :cond_9

    .line 451
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .restart local v4    # "n":I
    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "value":I
    add-int/lit8 v3, v3, 0x3

    .line 452
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->ensure([BII)V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v4, :cond_8

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    int-to-byte v8, v5

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_3

    .line 453
    .end local v4    # "n":I
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_8
    move v0, v3

    goto :goto_5

    .line 454
    :cond_9
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    .line 455
    .restart local v4    # "n":I
    add-int/lit8 v5, v3, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    .local v5, "from":I
    add-int/lit8 v3, v3, 0x4

    .line 456
    if-ltz v5, :cond_b

    if-ge v5, v1, :cond_b

    .line 457
    invoke-static {p2, v1, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->ensure([BII)V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v4, :cond_a

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dst":I
    .restart local v7    # "dst":I
    add-int v8, v5, v6

    aget-byte v8, p2, v8

    aput-byte v8, p2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v7

    goto :goto_4

    .end local v7    # "dst":I
    .restart local v1    # "dst":I
    :cond_a
    move v0, v3

    .line 459
    .end local v3    # "src":I
    .end local v4    # "n":I
    .end local v5    # "from":I
    .end local v6    # "i":I
    .local v0, "src":I
    :goto_5
    goto/16 :goto_0

    .line 456
    .local v0, "c":I
    .restart local v3    # "src":I
    .restart local v4    # "n":I
    .restart local v5    # "from":I
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ending long copy"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 435
    .end local v3    # "src":I
    .end local v4    # "n":I
    .end local v5    # "from":I
    .local v0, "src":I
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ending decompressor guard"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private drawCreditStream([III[I)V
    .locals 7
    .param p1, "pixels"    # [I
    .param p2, "house"    # I
    .param p3, "scrollPixels"    # I
    .param p4, "paletteWords"    # [I

    .line 227
    add-int/lit16 v0, p3, -0xe0

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 228
    .local v0, "firstIndex":I
    add-int/lit16 v1, p3, 0xe0

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    .line 229
    .local v1, "lastIndex":I
    move v2, v0

    .local v2, "index":I
    :goto_0
    if-gt v2, v1, :cond_3

    .line 230
    invoke-direct {p0, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->streamLine(I)Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    move-result-object v3

    .line 231
    .local v3, "line":Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    if-nez v3, :cond_0

    goto :goto_1

    .line 232
    :cond_0
    mul-int/lit8 v4, v2, 0x8

    const/16 v5, 0xe0

    add-int/2addr v4, v5

    sub-int/2addr v4, p3

    .line 233
    .local v4, "y":I
    const/4 v6, -0x8

    if-le v4, v6, :cond_2

    if-lt v4, v5, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    invoke-direct {p0, p1, v3, v4, p4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->drawTextLine([ILcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;I[I)V

    .line 229
    .end local v3    # "line":Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    .end local v4    # "y":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "index":I
    :cond_3
    return-void
.end method

.method private drawTextLine([ILcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;I[I)V
    .locals 17
    .param p1, "pixels"    # [I
    .param p2, "line"    # Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    .param p3, "y0"    # I
    .param p4, "paletteWords"    # [I

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;->text:Ljava/lang/String;

    .line 246
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    mul-int/2addr v3, v4

    const/16 v5, 0x140

    rsub-int v3, v3, 0x140

    div-int/lit8 v3, v3, 0x2

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    .local v3, "x0":I
    invoke-static/range {p4 .. p4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decodePaletteWords([I)[I

    move-result-object v6

    .line 248
    .local v6, "palette":[I
    const/4 v7, 0x0

    .local v7, "ciChar":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 249
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v8

    .line 250
    .local v8, "ch":I
    mul-int/lit8 v9, v8, 0x20

    .line 251
    .local v9, "glyph":I
    add-int/lit8 v10, v9, 0x20

    iget-object v11, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    array-length v11, v11

    if-le v10, v11, :cond_0

    goto :goto_6

    .line 252
    :cond_0
    mul-int/lit8 v10, v7, 0x8

    add-int/2addr v10, v3

    .line 253
    .local v10, "dstX":I
    const/4 v11, 0x0

    .local v11, "py":I
    :goto_1
    if-ge v11, v4, :cond_7

    .line 254
    add-int v12, p3, v11

    .line 255
    .local v12, "dy":I
    if-ltz v12, :cond_6

    const/16 v13, 0xe0

    if-lt v12, v13, :cond_1

    goto :goto_5

    .line 256
    :cond_1
    const/4 v13, 0x0

    .local v13, "px":I
    :goto_2
    if-ge v13, v4, :cond_6

    .line 257
    iget-object v14, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->font:[B

    mul-int/lit8 v15, v11, 0x4

    add-int/2addr v15, v9

    ushr-int/lit8 v16, v13, 0x1

    add-int v15, v15, v16

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    .line 258
    .local v14, "packed":I
    and-int/lit8 v15, v13, 0x1

    if-nez v15, :cond_2

    ushr-int/lit8 v15, v14, 0x4

    goto :goto_3

    :cond_2
    and-int/lit8 v15, v14, 0xf

    .line 259
    .local v15, "color":I
    :goto_3
    if-nez v15, :cond_3

    goto :goto_4

    .line 260
    :cond_3
    add-int v4, v10, v13

    .line 261
    .local v4, "dx":I
    if-ltz v4, :cond_5

    if-lt v4, v5, :cond_4

    goto :goto_4

    .line 262
    :cond_4
    mul-int/lit16 v5, v12, 0x140

    add-int/2addr v5, v4

    iget v0, v1, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;->paletteLine:I

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v15

    aget v0, v6, v0

    aput v0, p1, v5

    .line 256
    .end local v4    # "dx":I
    .end local v14    # "packed":I
    .end local v15    # "color":I
    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x140

    move-object/from16 v0, p0

    goto :goto_2

    .line 253
    .end local v12    # "dy":I
    .end local v13    # "px":I
    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x140

    move-object/from16 v0, p0

    goto :goto_1

    .line 248
    .end local v8    # "ch":I
    .end local v9    # "glyph":I
    .end local v10    # "dstX":I
    .end local v11    # "py":I
    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0x8

    const/16 v5, 0x140

    move-object/from16 v0, p0

    goto :goto_0

    .line 266
    .end local v7    # "ciChar":I
    :cond_8
    return-void
.end method

.method private static ensure([BII)V
    .locals 2
    .param p0, "out"    # [B
    .param p1, "dst"    # I
    .param p2, "n"    # I

    .line 464
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 465
    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ending output overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finalPalette(I)[I
    .locals 2
    .param p1, "house"    # I

    .line 345
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    aget-object v0, v0, p1

    .line 346
    .local v0, "frames":[[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private finishInitialization()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v0, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v0, v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 140
    const/4 v0, 0x0

    .local v0, "house":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->buildFade(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "house":I
    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending credit text anchors mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadFadeWordsFromRom()V
    .locals 7

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->whitePaletteWords:[I

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v2

    const v2, 0x6c700

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 151
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v2

    const v6, 0x6c728

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v4

    aput v4, v3, v0

    .line 152
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v2

    const v6, 0x6c714

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v4

    aput v4, v3, v0

    .line 153
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->houseTargetPaletteWords:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->rom:[B

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v2

    const v6, 0x6c73c

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v4

    aput v4, v3, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static loadLegacyFadeTarget([B[I)V
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "out"    # [I

    .line 218
    if-eqz p0, :cond_1

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    if-lt v0, v2, :cond_1

    .line 220
    array-length v0, p1

    new-array v0, v0, [I

    .line 221
    .local v0, "raw":[I
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->loadWords([B[I)V

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    array-length v3, p1

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1    # "i":I
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    aput v2, p1, v1

    .line 224
    return-void

    .line 219
    .end local v0    # "raw":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending fade palette asset size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadPatternsPersistentScratch([BI)[B
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I

    .line 408
    move v0, p1

    .local v0, "p":I
    const/4 v1, 0x0

    .line 409
    .local v1, "patterns":I
    :goto_0
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v2

    and-int/lit16 v2, v2, 0x7fff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 410
    :cond_0
    mul-int/lit8 v2, v1, 0x20

    new-array v2, v2, [B

    .line 411
    .local v2, "out":[B
    const/high16 v3, 0x10000

    new-array v3, v3, [B

    .line 412
    .local v3, "scratch":[B
    move v0, p1

    .line 413
    const/4 v4, 0x0

    .line 415
    .local v4, "dst":I
    :goto_1
    invoke-static {p0, v0}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be16([BI)I

    move-result v5

    .line 416
    .local v5, "flags":I
    if-nez v5, :cond_1

    .line 429
    .end local v5    # "flags":I
    return-object v2

    .line 417
    .restart local v5    # "flags":I
    :cond_1
    add-int/lit8 v6, v0, 0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/GenesisEndingRenderer;->be32([BI)I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    .line 418
    .local v6, "ptr":I
    add-int/lit8 v0, v0, 0x6

    .line 419
    and-int/lit16 v7, v5, 0x7fff

    mul-int/lit8 v7, v7, 0x20

    .line 420
    .local v7, "bytes":I
    const v8, 0x8000

    and-int/2addr v8, v5

    if-eqz v8, :cond_2

    .line 421
    invoke-static {p0, v6, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decompressInto([BI[B)I

    .line 422
    const/4 v8, 0x0

    invoke-static {v3, v8, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 424
    :cond_2
    invoke-static {p0, v6, v7}, Lcom/ahsim/demulation/GenesisEndingRenderer;->checkRange([BII)V

    .line 425
    invoke-static {p0, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :goto_2
    add-int/2addr v4, v7

    .line 428
    .end local v5    # "flags":I
    .end local v6    # "ptr":I
    .end local v7    # "bytes":I
    goto :goto_1
.end method

.method private static loadWords([B[I)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "out"    # [I

    .line 205
    if-eqz p0, :cond_1

    array-length v0, p0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 208
    mul-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    aput v1, p1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending palette asset size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private paletteAt(IJ)[I
    .locals 12
    .param p1, "house"    # I
    .param p2, "tick"    # J

    .line 331
    const-wide/16 v0, 0x96

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->initialPaletteWords:[I

    return-object v0

    .line 332
    :cond_0
    sub-long v0, p2, v0

    .line 333
    .local v0, "elapsed":J
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadePalettes:[[[I

    aget-object v2, v2, p1

    .line 334
    .local v2, "frames":[[I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->fadeStepCount:[I

    aget v3, v3, p1

    .line 335
    .local v3, "steps":I
    int-to-long v4, v3

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    .line 336
    .local v4, "fadeTicks":J
    cmp-long v8, v0, v4

    if-gez v8, :cond_1

    .line 337
    int-to-long v8, v3

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    div-long v6, v0, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 338
    .local v6, "i":I
    aget-object v7, v2, v6

    return-object v7

    .line 341
    .end local v6    # "i":I
    :cond_1
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    return-object v6
.end method

.method private static parseCredits([BI)[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    .locals 9
    .param p0, "source"    # [B
    .param p1, "offset"    # I

    .line 269
    if-eqz p0, :cond_6

    if-ltz p1, :cond_6

    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v1, "line":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    .line 274
    .local v2, "palette":I
    move v3, p1

    .line 275
    .local v3, "p":I
    const/4 v4, 0x0

    .line 276
    .local v4, "guard":I
    :goto_0
    array-length v5, p0

    const/4 v6, 0x0

    if-ge v3, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_4

    .line 277
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "p":I
    .local v5, "p":I
    aget-byte v3, p0, v3

    const/16 v7, 0xff

    and-int/2addr v3, v7

    .line 278
    .local v3, "c":I
    if-nez v3, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    if-ne v3, v7, :cond_2

    .line 280
    array-length v7, p0

    if-lt v5, v7, :cond_1

    .line 289
    .end local v3    # "c":I
    :goto_1
    move v3, v5

    goto :goto_4

    .line 281
    .restart local v3    # "c":I
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "p":I
    .local v6, "p":I
    aget-byte v5, p0, v5

    and-int/lit8 v2, v5, 0x3

    move v3, v6

    goto :goto_3

    .line 282
    .end local v6    # "p":I
    .restart local v5    # "p":I
    :cond_2
    const/16 v7, 0xa

    if-ne v3, v7, :cond_3

    .line 283
    new-instance v7, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 286
    :cond_3
    int-to-char v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .end local v3    # "c":I
    :goto_2
    move v3, v5

    .end local v5    # "p":I
    .local v3, "p":I
    :goto_3
    goto :goto_0

    .line 289
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_5
    new-array v5, v6, [Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    return-object v5

    .line 270
    .end local v0    # "lines":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;>;"
    .end local v1    # "line":Ljava/lang/StringBuilder;
    .end local v2    # "palette":I
    .end local v3    # "p":I
    .end local v4    # "guard":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ending text offset outside source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rangeMatches([II[II)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "aOffset"    # I
    .param p2, "b"    # [I
    .param p3, "count"    # I

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p1, v0

    aget v1, p0, v1

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readMedia(Ljava/lang/String;)[B
    .locals 4
    .param p1, "relativePath"    # Ljava/lang/String;

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->mediaAssets:Lcom/ahsim/demulation/RomRuntimeFrontendAssets;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ending media asset unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private renderPlanet([II)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "paletteWords"    # [I
    .param p2, "yShift"    # I

    .line 350
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->decodePaletteWords([I)[I

    move-result-object v1

    .line 351
    .local v1, "palette":[I
    const v2, 0x11800

    new-array v4, v2, [I

    .line 352
    .local v4, "pixels":[I
    const/4 v2, 0x0

    .local v2, "ty":I
    :goto_0
    const/16 v3, 0x1c

    const/16 v5, 0xe0

    if-ge v2, v3, :cond_a

    const/4 v3, 0x0

    .local v3, "tx":I
    :goto_1
    const/16 v6, 0x28

    if-ge v3, v6, :cond_9

    .line 353
    mul-int/lit8 v6, v2, 0x40

    add-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x2

    .line 354
    .local v6, "mo":I
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    iget-object v9, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->map:[B

    add-int/lit8 v10, v6, 0x1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    .line 355
    .local v7, "attr":I
    and-int/lit16 v9, v7, 0x7ff

    .line 356
    .local v9, "pattern":I
    mul-int/lit8 v10, v9, 0x20

    .line 357
    .local v10, "po":I
    add-int/lit8 v11, v10, 0x20

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->patterns:[B

    array-length v12, v12

    if-le v11, v12, :cond_0

    goto/16 :goto_9

    .line 358
    :cond_0
    and-int/lit16 v11, v7, 0x800

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_1

    move v11, v13

    goto :goto_2

    :cond_1
    move v11, v12

    .local v11, "hf":Z
    :goto_2
    and-int/lit16 v14, v7, 0x1000

    if-eqz v14, :cond_2

    move v12, v13

    .line 359
    .local v12, "vf":Z
    :cond_2
    ushr-int/lit8 v13, v7, 0xd

    and-int/lit8 v13, v13, 0x3

    .line 360
    .local v13, "pl":I
    const/4 v14, 0x0

    .local v14, "dy":I
    :goto_3
    if-ge v14, v8, :cond_8

    .line 361
    mul-int/lit8 v15, v2, 0x8

    add-int/2addr v15, v14

    sub-int v15, v15, p2

    .line 362
    .local v15, "yy":I
    if-ltz v15, :cond_7

    if-lt v15, v5, :cond_3

    goto :goto_8

    .line 363
    :cond_3
    if-eqz v12, :cond_4

    rsub-int/lit8 v16, v14, 0x7

    goto :goto_4

    :cond_4
    move/from16 v16, v14

    .line 364
    .local v16, "sy":I
    :goto_4
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "dx":I
    :goto_5
    if-ge v5, v8, :cond_7

    .line 365
    if-eqz v11, :cond_5

    rsub-int/lit8 v17, v5, 0x7

    goto :goto_6

    :cond_5
    move/from16 v17, v5

    .line 366
    .local v17, "sx":I
    :goto_6
    iget-object v8, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->patterns:[B

    mul-int/lit8 v18, v16, 0x4

    add-int v18, v10, v18

    ushr-int/lit8 v19, v17, 0x1

    add-int v18, v18, v19

    aget-byte v8, v8, v18

    and-int/lit16 v8, v8, 0xff

    .line 367
    .local v8, "packed":I
    and-int/lit8 v18, v17, 0x1

    if-nez v18, :cond_6

    ushr-int/lit8 v18, v8, 0x4

    goto :goto_7

    :cond_6
    and-int/lit8 v18, v8, 0xf

    .line 368
    .local v18, "ci":I
    :goto_7
    mul-int/lit16 v0, v15, 0x140

    mul-int/lit8 v19, v3, 0x8

    add-int v0, v0, v19

    add-int/2addr v0, v5

    mul-int/lit8 v19, v13, 0x10

    add-int v19, v19, v18

    aget v19, v1, v19

    aput v19, v4, v0

    .line 364
    .end local v8    # "packed":I
    .end local v17    # "sx":I
    .end local v18    # "ci":I
    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0x8

    move-object/from16 v0, p0

    goto :goto_5

    .line 360
    .end local v5    # "dx":I
    .end local v15    # "yy":I
    .end local v16    # "sy":I
    :cond_7
    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xe0

    const/16 v8, 0x8

    move-object/from16 v0, p0

    goto :goto_3

    .line 352
    .end local v6    # "mo":I
    .end local v7    # "attr":I
    .end local v9    # "pattern":I
    .end local v10    # "po":I
    .end local v11    # "hf":Z
    .end local v12    # "vf":Z
    .end local v13    # "pl":I
    .end local v14    # "dy":I
    :cond_8
    :goto_9
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0xe0

    move-object/from16 v0, p0

    goto/16 :goto_1

    .end local v3    # "tx":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 372
    .end local v2    # "ty":I
    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x140

    const/16 v3, 0xe0

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 373
    .local v3, "out":Landroid/graphics/Bitmap;
    const/16 v9, 0x140

    const/16 v10, 0xe0

    const/4 v5, 0x0

    const/16 v6, 0x140

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 374
    return-object v3
.end method

.method private static stepComponent(III)I
    .locals 1
    .param p0, "current"    # I
    .param p1, "target"    # I
    .param p2, "step"    # I

    .line 397
    if-ge p0, p1, :cond_0

    add-int v0, p0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 398
    :cond_0
    if-le p0, p1, :cond_1

    sub-int v0, p0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 399
    :cond_1
    return p0
.end method

.method private static stepGenesisColor(II)I
    .locals 5
    .param p0, "current"    # I
    .param p1, "target"    # I

    .line 390
    and-int/lit8 v0, p0, 0xe

    and-int/lit8 v1, p1, 0xe

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->stepComponent(III)I

    move-result v0

    .line 391
    .local v0, "r":I
    and-int/lit16 v1, p0, 0xe0

    and-int/lit16 v2, p1, 0xe0

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->stepComponent(III)I

    move-result v1

    .line 392
    .local v1, "g":I
    and-int/lit16 v2, p0, 0xe00

    and-int/lit16 v3, p1, 0xe00

    const/16 v4, 0x200

    invoke-static {v2, v3, v4}, Lcom/ahsim/demulation/GenesisEndingRenderer;->stepComponent(III)I

    move-result v2

    .line 393
    .local v2, "b":I
    or-int v3, v0, v1

    or-int/2addr v3, v2

    return v3
.end method

.method private streamLine(I)Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
    .locals 3
    .param p1, "index"    # I

    .line 239
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    aget-object v0, v0, p1

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v1, v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method canExit(JI)Z
    .locals 9
    .param p1, "tick"    # J
    .param p3, "frontendHouse"    # I

    .line 162
    invoke-virtual {p0, p3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick(I)I

    move-result v0

    .line 163
    .local v0, "start":I
    int-to-long v1, v0

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 164
    :cond_0
    int-to-long v3, v0

    sub-long v3, p1, v3

    .line 165
    .local v3, "creditTick":J
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->introLines:[Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;

    array-length v1, v1

    int-to-long v5, v1

    const-wide/16 v7, 0x18

    mul-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method creditsStartTick(I)I
    .locals 2
    .param p1, "frontendHouse"    # I

    .line 158
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    invoke-static {p1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->clampHouse(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method render(IJ)Landroid/graphics/Bitmap;
    .locals 25
    .param p1, "frontendHouse"    # I
    .param p2, "rawTick"    # J

    .line 169
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->clampHouse(I)I

    move-result v1

    .line 170
    .local v1, "house":I
    const-wide/16 v2, 0x0

    move-wide/from16 v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 171
    .local v2, "tick":J
    invoke-direct {v0, v1, v2, v3}, Lcom/ahsim/demulation/GenesisEndingRenderer;->paletteAt(IJ)[I

    move-result-object v6

    .line 172
    .local v6, "paletteWords":[I
    iget-object v7, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->creditsStartTick:[I

    aget v7, v7, v1

    .line 173
    .local v7, "creditStart":I
    int-to-long v8, v7

    cmp-long v8, v2, v8

    const/4 v9, 0x0

    if-gez v8, :cond_0

    invoke-direct {v0, v6, v9}, Lcom/ahsim/demulation/GenesisEndingRenderer;->renderPlanet([II)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8

    .line 175
    :cond_0
    int-to-long v10, v7

    sub-long v10, v2, v10

    .line 176
    .local v10, "creditTick":J
    const-wide/16 v12, 0x3

    div-long v12, v10, v12

    const-wide/32 v14, 0x7fffffff

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v8, v12

    .line 177
    .local v8, "scrollPixels":I
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPlanet:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v1

    .line 178
    .local v12, "base":Landroid/graphics/Bitmap;
    if-nez v12, :cond_1

    .line 179
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPalette(I)[I

    move-result-object v13

    invoke-direct {v0, v13, v9}, Lcom/ahsim/demulation/GenesisEndingRenderer;->renderPlanet([II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 180
    iget-object v9, v0, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPlanet:[Landroid/graphics/Bitmap;

    aput-object v12, v9, v1

    move-object v13, v12

    goto :goto_0

    .line 178
    :cond_1
    move-object v13, v12

    .line 182
    .end local v12    # "base":Landroid/graphics/Bitmap;
    .local v13, "base":Landroid/graphics/Bitmap;
    :goto_0
    const v9, 0x11800

    new-array v12, v9, [I

    .line 183
    .local v12, "pixels":[I
    const/16 v14, 0xe0

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 184
    .local v15, "shift":I
    if-ge v15, v14, :cond_2

    .line 185
    const v14, 0x11800

    new-array v14, v14, [I

    .line 186
    .local v14, "src":[I
    const/16 v19, 0x140

    const/16 v20, 0xe0

    move/from16 v16, v15

    .end local v15    # "shift":I
    .local v16, "shift":I
    const/4 v15, 0x0

    move/from16 v18, v16

    .end local v16    # "shift":I
    .local v18, "shift":I
    const/16 v16, 0x140

    const/16 v21, 0xe0

    const/16 v17, 0x0

    move/from16 v22, v18

    .end local v18    # "shift":I
    .local v22, "shift":I
    const/16 v18, 0x0

    move-wide/from16 v23, v2

    move/from16 v2, v21

    move/from16 v9, v22

    .end local v2    # "tick":J
    .end local v22    # "shift":I
    .local v9, "shift":I
    .local v23, "tick":J
    invoke-virtual/range {v13 .. v20}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 187
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    rsub-int v15, v9, 0xe0

    if-ge v3, v15, :cond_3

    .line 188
    add-int v15, v3, v9

    const/16 v2, 0x140

    mul-int/2addr v15, v2

    mul-int/lit16 v4, v3, 0x140

    invoke-static {v14, v15, v12, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v4, p2

    const/16 v2, 0xe0

    goto :goto_1

    .line 184
    .end local v3    # "y":I
    .end local v9    # "shift":I
    .end local v14    # "src":[I
    .end local v23    # "tick":J
    .restart local v2    # "tick":J
    .restart local v15    # "shift":I
    :cond_2
    move-wide/from16 v23, v2

    move v9, v15

    .line 190
    .end local v2    # "tick":J
    .end local v15    # "shift":I
    .restart local v9    # "shift":I
    .restart local v23    # "tick":J
    :cond_3
    invoke-direct {v0, v1}, Lcom/ahsim/demulation/GenesisEndingRenderer;->finalPalette(I)[I

    move-result-object v2

    invoke-direct {v0, v12, v1, v8, v2}, Lcom/ahsim/demulation/GenesisEndingRenderer;->drawCreditStream([III[I)V

    .line 191
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x140

    const/16 v4, 0xe0

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 192
    .local v14, "out":Landroid/graphics/Bitmap;
    const/16 v20, 0x140

    const/16 v21, 0xe0

    const/16 v16, 0x0

    const/16 v17, 0x140

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v15, v12

    .end local v12    # "pixels":[I
    .local v15, "pixels":[I
    invoke-virtual/range {v14 .. v21}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 193
    return-object v14
.end method
