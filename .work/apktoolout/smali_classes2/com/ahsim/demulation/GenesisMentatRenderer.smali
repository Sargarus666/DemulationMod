.class public final Lcom/ahsim/demulation/GenesisMentatRenderer;
.super Ljava/lang/Object;
.source "GenesisMentatRenderer.java"


# static fields
.field private static final BACKDROP_H:I = 0x70

.field private static final BACKDROP_TILES_H:I = 0xe

.field private static final BACKDROP_TILES_W:I = 0x21

.field private static final BACKDROP_W:I = 0x108

.field private static final BACKDROP_X:I = 0x30

.field private static final BACKDROP_Y:I = 0x48

.field private static final COMMON_PALETTE:I = 0xa2d7e

.field private static final COMPONENT_BYTE_REMAP:I = 0x24082

.field private static final COMPONENT_HEIGHT:I = 0x24062

.field private static final COMPONENT_TILE_COUNT:I = 0x96304

.field private static final COMPONENT_WIDTH:I = 0x24042

.field public static final DEPARTURE_TICKS:I = 0x18

.field private static final EYE_BANK_PTRS:I = 0x25940

.field private static final EYE_FRAME_BYTES:I = 0x240

.field private static final EYE_POSITION_TABLE:I = 0x25958

.field public static final FACE_FRAME_COUNT:I = 0x5

.field private static final FINAL_MISSION_COMMON_PALETTE:I = 0xa2dfe

.field private static final FONT_SIZE_WORD:I = 0x506c8

.field private static final FONT_STREAM:I = 0x506ca

.field private static final FRONTEND_TO_ROM_HOUSE:[I

.field private static final HOUSE_COMPONENT_PTRS:I = 0x95f6c

.field private static final HOUSE_DESCRIPTOR_PTRS:I = 0x962dc

.field private static final HOUSE_JOIN_POINTER_TABLE:I = 0x87d7c

.field private static final HOUSE_PALETTES:I = 0xa2c3e

.field private static final HOUSE_PATTERN_BYTES:I = 0x986e6

.field private static final MOUTH_BANK_PTRS:I = 0x2594c

.field private static final MOUTH_FRAME_BYTES:I = 0x460

.field private static final MOUTH_POSITION_TABLE:I = 0x25964

.field private static final PORTRAIT_BANK_PTRS:I = 0x25934

.field public static final SCREEN_HEIGHT:I = 0xe0

.field public static final SCREEN_WIDTH:I = 0x140

.field private static final SELECTOR_BRIEFING_STREAM:I = 0xa2818

.field private static final SELECTOR_COMMON_BYTES:I = 0x280

.field private static final SELECTOR_COMMON_STREAM:I = 0xa27fc

.field private static final SELECTOR_COMMON_VRAM:I = 0xb120

.field private static final SELECTOR_JOIN_STREAM:I = 0xa2a44

.field private static final SELECTOR_LABEL_BYTES:I = 0x500

.field private static final SELECTOR_LABEL_VRAM:I = 0xb3a0

.field private static final SPRITE_COUNT:I = 0x28

.field private static final SPRITE_TEMPLATE:I = 0x257ec

.field private static final STATIC_COMPONENT_STREAM:I = 0x95d00

.field private static final STATIC_DESCRIPTOR_PTRS:I = 0x96158

.field private static final STATIC_PATTERN_BYTES:I = 0x96324

.field public static final TEXT_COLUMNS:I = 0x24

.field public static final TEXT_X:I = 0x10

.field public static final TEXT_Y:I = 0x28

.field private static final VRAM_BYTES:I = 0x10000


# instance fields
.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private cachedEye:I

.field private cachedFrontHouse:I

.field private cachedMission:I

.field private cachedMouth:I

.field private cachedSelectorChoice:I

.field private cachedSelectorHighlightVisible:Z

.field private cachedSelectorMode:I

.field private cachedText:Ljava/lang/String;

.field private final eyeBanks:[[B

.field private final fontPatterns:[B

.field private final mouthBanks:[[B

.field private final portraitBanks:[[B

.field private final providerBackdrops:[[B

.field private final providerCommonPalette:[B

.field private final providerEyePositions:[B

.field private final providerFinalCommonPalette:[B

.field private final providerHousePalettes:[[B

.field private final providerJoinTexts:[[B

.field private final providerMouthPositions:[B

.field private final providerSpriteTemplate:[B

.field private final rom:[B

.field private final selectorBriefing:[B

.field private final selectorCommon:[B

.field private final selectorJoin:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;)V
    .locals 1
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMentatRenderer;-><init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;)V
    .locals 9
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .param p2, "content"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x3

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    .line 89
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    .line 90
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedFrontHouse:I

    .line 105
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMission:I

    .line 106
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedEye:I

    .line 107
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMouth:I

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedText:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorMode:I

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorChoice:I

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorHighlightVisible:Z

    .line 160
    if-eqz p1, :cond_7

    .line 161
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    .line 162
    const-string v2, "frontend/direct/title_font.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    .line 163
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    array-length v2, v2

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_6

    .line 164
    const-string v2, "frontend/mentat/selector_common.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorCommon:[B

    .line 165
    const-string v2, "frontend/mentat/selector_briefing.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorBriefing:[B

    .line 166
    const-string v2, "frontend/mentat/selector_join.bin"

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorJoin:[B

    .line 167
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorCommon:[B

    array-length v2, v2

    const/16 v4, 0x280

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorBriefing:[B

    array-length v2, v2

    const/16 v4, 0x500

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorJoin:[B

    array-length v2, v2

    if-ne v2, v4, :cond_5

    .line 171
    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "radnor_harkonnen"

    aput-object v4, v2, v1

    const-string v1, "cyril_atreides"

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v4, "ammon_ordos"

    aput-object v4, v2, v1

    .line 172
    .local v2, "tags":[Ljava/lang/String;
    const/16 v1, 0x1b

    new-array v1, v1, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerBackdrops:[[B

    .line 173
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    .line 174
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerJoinTexts:[[B

    .line 175
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 176
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frontend/mentat/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_portrait.bin"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 177
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_eyes.bin"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 178
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_mouth.bin"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 179
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    const/16 v5, 0x2880

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    const/16 v5, 0xb40

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    const/16 v5, 0x15e0

    if-lt v4, v5, :cond_2

    .line 183
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_palette.bin"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v1

    .line 184
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerJoinTexts:[[B

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p2, v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->houseJoinTextBytes(I)[B

    move-result-object v5

    goto :goto_1

    .line 186
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_join_text.bin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v5

    :goto_1
    aput-object v5, v4, v1

    .line 187
    const/4 v4, 0x1

    .local v4, "mission":I
    :goto_2
    const/16 v5, 0x9

    if-gt v4, v5, :cond_1

    .line 188
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-object v6, v2, v1

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 188
    const-string v7, "frontend/mentat/backdrop_%s_m%02d_layers.bin"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerBackdrops:[[B

    mul-int/lit8 v7, v1, 0x9

    add-int/2addr v7, v4

    sub-int/2addr v7, v3

    invoke-virtual {p1, v5}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v6, v7

    .line 187
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 175
    .end local v4    # "mission":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 181
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installed Mentat House pattern bank is incomplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    .end local v1    # "h":I
    :cond_3
    const-string v0, "frontend/mentat/common_palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerCommonPalette:[B

    .line 194
    const-string v0, "frontend/mentat/final_mission_common_palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerFinalCommonPalette:[B

    .line 195
    const-string v0, "frontend/mentat/sprite_template.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerSpriteTemplate:[B

    .line 196
    const-string v0, "frontend/mentat/eye_positions.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    .line 197
    const-string v0, "frontend/mentat/mouth_positions.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    .line 198
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerSpriteTemplate:[B

    array-length v0, v0

    const/16 v1, 0x140

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    array-length v0, v0

    if-ne v0, v1, :cond_4

    .line 202
    return-void

    .line 200
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed Mentat sprite metadata size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    .end local v2    # "tags":[Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed Mentat selector pattern size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed Mentat font size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Frontend READY asset source is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 8
    .param p1, "rom"    # [B

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x3

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    .line 89
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    .line 90
    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedFrontHouse:I

    .line 105
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMission:I

    .line 106
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedEye:I

    .line 107
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMouth:I

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedText:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 110
    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorMode:I

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorChoice:I

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorHighlightVisible:Z

    .line 115
    if-eqz p1, :cond_5

    array-length v1, p1

    const v3, 0xa4000

    if-lt v1, v3, :cond_5

    .line 118
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    .line 119
    const v1, 0x506c8

    invoke-static {p1, v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v1

    .line 120
    .local v1, "fontSize":I
    const/16 v3, 0x1000

    if-ne v1, v3, :cond_4

    .line 123
    const v4, 0x506ca

    const/high16 v5, 0x10000

    invoke-static {p1, v4, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v4

    iput-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    .line 124
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    array-length v4, v4

    if-ne v4, v3, :cond_3

    .line 127
    const v3, 0xa27fc

    invoke-static {p1, v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorCommon:[B

    .line 128
    const v3, 0xa2818

    invoke-static {p1, v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorBriefing:[B

    .line 129
    const v3, 0xa2a44

    invoke-static {p1, v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorJoin:[B

    .line 130
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorCommon:[B

    array-length v3, v3

    const/16 v4, 0x280

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorBriefing:[B

    array-length v3, v3

    const/16 v4, 0x500

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorJoin:[B

    array-length v3, v3

    if-ne v3, v4, :cond_2

    .line 134
    const/4 v3, 0x0

    .local v3, "h":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 135
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    mul-int/lit8 v6, v3, 0x4

    const v7, 0x25934

    add-int/2addr v6, v7

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v6

    invoke-static {p1, v6, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v6

    aput-object v6, v4, v3

    .line 136
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    mul-int/lit8 v6, v3, 0x4

    const v7, 0x25940

    add-int/2addr v6, v7

    invoke-static {p1, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v6

    invoke-static {p1, v6, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v6

    aput-object v6, v4, v3

    .line 137
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    const v6, 0x2594c

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v6

    invoke-static {p1, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v6

    invoke-static {p1, v6, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decompress([BII)[B

    move-result-object v6

    aput-object v6, v4, v3

    .line 138
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    aget-object v4, v4, v3

    array-length v4, v4

    const/16 v6, 0x2880

    if-lt v4, v6, :cond_0

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    aget-object v4, v4, v3

    array-length v4, v4

    const/16 v6, 0xb40

    if-lt v4, v6, :cond_0

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    aget-object v4, v4, v3

    array-length v4, v4

    const/16 v6, 0x15e0

    if-lt v4, v6, :cond_0

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incomplete Genesis Mentat House pattern bank "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    .end local v3    # "h":I
    :cond_1
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerBackdrops:[[B

    .line 144
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerCommonPalette:[B

    .line 145
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerFinalCommonPalette:[B

    .line 146
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    .line 147
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerSpriteTemplate:[B

    .line 148
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    .line 149
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    .line 150
    iput-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerJoinTexts:[[B

    .line 151
    return-void

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incomplete Genesis Mentat selector patterns"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Genesis Mentat font did not decode to 4096 bytes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Genesis Mentat font size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    .end local v1    # "fontSize":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM is missing or too small for Genesis Mentat renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addBe16([BII)V
    .locals 3
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "delta"    # I

    .line 797
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v0

    add-int/2addr v0, p2

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 798
    .local v0, "v":I
    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 799
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 800
    return-void
.end method

.method private adjustedSpriteTable(I)[B
    .locals 7
    .param p1, "romHouse"    # I

    .line 592
    const/16 v0, 0x140

    new-array v0, v0, [B

    .line 593
    .local v0, "sprites":[B
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerSpriteTemplate:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerSpriteTemplate:[B

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    const v3, 0x257ec

    array-length v4, v0

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    const v2, 0x25958

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    mul-int/lit8 v3, p1, 0x4

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v1

    goto :goto_1

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v1

    :goto_1
    nop

    .line 597
    .local v1, "eyeDx":I
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerEyePositions:[B

    mul-int/lit8 v3, p1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v2

    goto :goto_2

    .line 598
    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v4, p1, 0x4

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v2

    :goto_2
    nop

    .line 599
    .local v2, "eyeDy":I
    const/16 v3, 0x9

    .local v3, "e":I
    :goto_3
    const/16 v4, 0xa

    if-gt v3, v4, :cond_3

    .line 600
    mul-int/lit8 v4, v3, 0x8

    invoke-static {v0, v4, v2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 601
    mul-int/lit8 v4, v3, 0x8

    add-int/lit8 v4, v4, 0x6

    invoke-static {v0, v4, v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 603
    .end local v3    # "e":I
    :cond_3
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    const v4, 0x25964

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    mul-int/lit8 v5, p1, 0x4

    invoke-static {v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v3

    goto :goto_4

    .line 604
    :cond_4
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v3

    :goto_4
    nop

    .line 605
    .local v3, "mouthDx":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerMouthPositions:[B

    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v4

    goto :goto_5

    .line 606
    :cond_5
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v6, p1, 0x4

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v4

    :goto_5
    nop

    .line 607
    .local v4, "mouthDy":I
    const/16 v5, 0xb

    .local v5, "e":I
    :goto_6
    const/16 v6, 0xe

    if-gt v5, v6, :cond_6

    .line 608
    mul-int/lit8 v6, v5, 0x8

    invoke-static {v0, v6, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 609
    mul-int/lit8 v6, v5, 0x8

    add-int/lit8 v6, v6, 0x6

    invoke-static {v0, v6, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 607
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 611
    .end local v5    # "e":I
    :cond_6
    return-object v0
.end method

.method private applyDeparturePortraitFade([III)V
    .locals 5
    .param p1, "palette"    # [I
    .param p2, "romHouse"    # I
    .param p3, "steps"    # I

    .line 635
    mul-int/lit16 v0, p2, 0x80

    const v1, 0xa2c3e

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    .line 636
    .local v0, "base":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_5

    .line 637
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    aget-object v2, v2, p2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x20

    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v2

    goto :goto_1

    .line 638
    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v2

    :goto_1
    nop

    .line 639
    .local v2, "word":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2
    if-ge v3, p3, :cond_4

    .line 640
    and-int/lit16 v4, v2, 0xe00

    if-eqz v4, :cond_1

    add-int/lit16 v2, v2, -0x200

    .line 641
    :cond_1
    and-int/lit16 v4, v2, 0xe0

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, -0x20

    .line 642
    :cond_2
    and-int/lit8 v4, v2, 0xe

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, -0x2

    .line 639
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 644
    .end local v3    # "n":I
    :cond_4
    add-int/lit8 v3, v1, 0x30

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->genesisColor(I)I

    move-result v4

    aput v4, p1, v3

    .line 636
    .end local v2    # "word":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 808
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 809
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

    .line 813
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 814
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

.method private blitComponent([[IIIIIII)V
    .locals 20
    .param p1, "layers"    # [[I
    .param p2, "sourceBase"    # I
    .param p3, "firstTile"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "code"    # I
    .param p7, "mode"    # I

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, p7

    const/4 v2, 0x0

    .line 500
    .local v2, "layer":I
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 501
    const/4 v2, 0x1

    .line 502
    add-int/lit8 v1, v1, -0x2

    .line 504
    .end local p7    # "mode":I
    .local v1, "mode":I
    :cond_0
    iget-object v4, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v5, p6, 0x2

    const v6, 0x24042

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v4

    add-int/2addr v4, v3

    .line 505
    .local v4, "tilesWide":I
    iget-object v5, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v6, p6, 0x2

    const v7, 0x24062

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v5

    add-int/2addr v5, v3

    .line 506
    .local v5, "tilesHigh":I
    add-int/lit8 v6, p4, -0x18

    .line 507
    .local v6, "dx0":I
    add-int/lit8 v7, p5, -0x30

    .line 508
    .local v7, "dy0":I
    move/from16 v8, p3

    .line 509
    .local v8, "tile":I
    const/4 v9, 0x0

    .local v9, "cx":I
    :goto_0
    if-ge v9, v4, :cond_a

    .line 510
    const/4 v10, 0x0

    .local v10, "cy":I
    :goto_1
    if-ge v10, v5, :cond_9

    .line 511
    mul-int/lit8 v11, v8, 0x20

    add-int v11, p2, v11

    .line 512
    .local v11, "tileOffset":I
    iget-object v12, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    const/16 v13, 0x20

    invoke-static {v12, v11, v13}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 513
    const/4 v12, 0x0

    .local v12, "py":I
    :goto_2
    const/16 v13, 0x8

    if-ge v12, v13, :cond_8

    .line 514
    const/4 v13, 0x0

    .local v13, "pair":I
    :goto_3
    const/4 v14, 0x4

    if-ge v13, v14, :cond_7

    .line 515
    iget-object v14, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v15, v12, 0x4

    add-int/2addr v15, v11

    add-int/2addr v15, v13

    aget-byte v14, v14, v15

    and-int/lit16 v14, v14, 0xff

    .line 516
    .local v14, "packed":I
    if-eqz v1, :cond_1

    iget-object v15, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    const v16, 0x24082

    add-int v16, v14, v16

    aget-byte v15, v15, v16

    and-int/lit16 v14, v15, 0xff

    .line 517
    :cond_1
    ushr-int/lit8 v15, v14, 0x4

    .line 518
    .local v15, "hi":I
    and-int/lit8 v16, v14, 0xf

    .line 519
    .local v16, "lo":I
    mul-int/lit8 v17, v9, 0x8

    add-int v17, v6, v17

    mul-int/lit8 v18, v13, 0x2

    move/from16 v19, v3

    add-int v3, v17, v18

    .line 520
    .local v3, "px":I
    mul-int/lit8 v17, v10, 0x8

    add-int v17, v7, v17

    add-int v0, v17, v12

    .line 521
    .local v0, "yy":I
    if-ltz v0, :cond_5

    move/from16 p7, v1

    .end local v1    # "mode":I
    .restart local p7    # "mode":I
    const/16 v1, 0x70

    if-ge v0, v1, :cond_4

    .line 522
    const/16 v1, 0x108

    if-eqz v15, :cond_2

    if-ltz v3, :cond_2

    if-ge v3, v1, :cond_2

    aget-object v17, p1, v2

    mul-int/lit16 v1, v0, 0x108

    add-int/2addr v1, v3

    aput v15, v17, v1

    .line 523
    :cond_2
    if-eqz v16, :cond_3

    add-int/lit8 v1, v3, 0x1

    if-ltz v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    move/from16 v17, v2

    const/16 v2, 0x108

    .end local v2    # "layer":I
    .local v17, "layer":I
    if-ge v1, v2, :cond_6

    aget-object v1, p1, v17

    mul-int/lit16 v2, v0, 0x108

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v16, v1, v2

    goto :goto_4

    .end local v17    # "layer":I
    .restart local v2    # "layer":I
    :cond_3
    move/from16 v17, v2

    .end local v2    # "layer":I
    .restart local v17    # "layer":I
    goto :goto_4

    .line 521
    .end local v17    # "layer":I
    .restart local v2    # "layer":I
    :cond_4
    move/from16 v17, v2

    .end local v2    # "layer":I
    .restart local v17    # "layer":I
    goto :goto_4

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_5
    move/from16 p7, v1

    move/from16 v17, v2

    .line 514
    .end local v0    # "yy":I
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v3    # "px":I
    .end local v14    # "packed":I
    .end local v15    # "hi":I
    .end local v16    # "lo":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v17

    move/from16 v3, v19

    goto :goto_3

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_7
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v19, v3

    .line 513
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v13    # "pair":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_8
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v19, v3

    .line 527
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v12    # "py":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    nop

    .end local v11    # "tileOffset":I
    add-int/lit8 v8, v8, 0x1

    .line 510
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_9
    move/from16 p7, v1

    move/from16 v17, v2

    move/from16 v19, v3

    .line 509
    .end local v1    # "mode":I
    .end local v2    # "layer":I
    .end local v10    # "cy":I
    .restart local v17    # "layer":I
    .restart local p7    # "mode":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 530
    .end local v9    # "cx":I
    .end local v17    # "layer":I
    .end local p7    # "mode":I
    .restart local v1    # "mode":I
    .restart local v2    # "layer":I
    :cond_a
    return-void
.end method

.method private buildBackdropLayers(II)[[I
    .locals 7
    .param p1, "romHouse"    # I
    .param p2, "missionZero"    # I

    .line 447
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerBackdrops:[[B

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerBackdrops:[[B

    mul-int/lit8 v1, p1, 0x9

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 449
    .local v0, "packed":[B
    const/16 v1, 0x7380

    .line 450
    .local v1, "layerBytes":I
    if-eqz v0, :cond_1

    array-length v2, v0

    mul-int/lit8 v3, v1, 0x2

    if-ne v2, v3, :cond_1

    .line 452
    new-array v2, v1, [I

    new-array v3, v1, [I

    filled-new-array {v2, v3}, [[I

    move-result-object v2

    .line 453
    .local v2, "layers":[[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 454
    const/4 v4, 0x0

    aget-object v4, v2, v4

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v3

    .line 455
    const/4 v4, 0x1

    aget-object v4, v2, v4

    add-int v5, v1, v3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v3

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 451
    .end local v2    # "layers":[[I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Installed Mentat backdrop size mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    .end local v0    # "packed":[B
    .end local v1    # "layerBytes":I
    :cond_2
    const v0, 0x95d00

    const v1, 0x96324

    const v2, 0x96158

    invoke-direct {p0, v2, v0, v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawDescriptorCall(III)[[I

    move-result-object v0

    .line 460
    .local v0, "a":[[I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v2, p1, 0x4

    const v3, 0x95f6c

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v1

    mul-int/lit8 v2, p2, 0x14

    add-int/2addr v1, v2

    .line 461
    .local v1, "houseComponents":I
    const v2, 0x962dc

    const v3, 0x986e6

    invoke-direct {p0, v2, v1, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawDescriptorCall(III)[[I

    move-result-object v2

    .line 462
    .local v2, "b":[[I
    const/4 v3, 0x0

    .local v3, "layer":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 463
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    aget-object v5, v2, v3

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 464
    aget-object v5, v2, v3

    aget v5, v5, v4

    if-eqz v5, :cond_3

    aget-object v5, v0, v3

    aget-object v6, v2, v3

    aget v6, v6, v4

    aput v6, v5, v4

    .line 463
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 462
    .end local v4    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 467
    .end local v3    # "layer":I
    :cond_5
    return-object v0
.end method

.method private buildPortraitVram(III)[B
    .locals 6
    .param p1, "romHouse"    # I
    .param p2, "eyeFrame"    # I
    .param p3, "mouthFrame"    # I

    .line 554
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 555
    .local v0, "vram":[B
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->portraitBanks:[[B

    aget-object v1, v1, p1

    .line 556
    .local v1, "portrait":[B
    const/4 v2, 0x0

    const v3, 0xd000

    const/16 v4, 0xfc0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    const v2, 0xf000

    invoke-static {v1, v4, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    const v2, 0xa820

    const/16 v3, 0x900

    const/16 v4, 0x1f80

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->eyeBanks:[[B

    aget-object v2, v2, p1

    mul-int/lit16 v3, p2, 0x240

    const v4, 0xb120

    const/16 v5, 0x240

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->mouthBanks:[[B

    aget-object v2, v2, p1

    mul-int/lit16 v3, p3, 0x460

    const v4, 0xb360

    const/16 v5, 0x460

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    return-object v0
.end method

.method private static checkHouseMission(II)V
    .locals 2
    .param p0, "frontendHouse"    # I
    .param p1, "missionOneBased"    # I

    .line 792
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 794
    return-void

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Genesis Mentat House/mission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 822
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 823
    return-void

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis Mentat ROM range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodePalette(II)[I
    .locals 8
    .param p1, "romHouse"    # I
    .param p2, "missionZero"    # I

    .line 533
    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 534
    .local v1, "out":[I
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    const/16 v3, 0x8

    const/16 v4, 0x20

    if-eqz v2, :cond_4

    .line 535
    if-ne p2, v3, :cond_0

    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerFinalCommonPalette:[B

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerCommonPalette:[B

    .line 536
    .local v2, "common":[B
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerHousePalettes:[[B

    aget-object v3, v3, p1

    .line 537
    .local v3, "house":[B
    array-length v5, v2

    if-ne v5, v0, :cond_3

    array-length v5, v3

    if-ne v5, v0, :cond_3

    .line 539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v2, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0x666

    invoke-static {v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->genesisColor(I)I

    move-result v5

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_2

    add-int/lit8 v5, v0, 0x20

    mul-int/lit8 v6, v0, 0x2

    invoke-static {v3, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 541
    .end local v0    # "i":I
    :cond_2
    return-object v1

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Installed Mentat palette size mismatch"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    .end local v2    # "common":[B
    .end local v3    # "house":[B
    :cond_4
    if-ne p2, v3, :cond_5

    const v0, 0xa2dfe

    goto :goto_3

    :cond_5
    const v0, 0xa2d7e

    .line 544
    .local v0, "common":I
    :goto_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v4, :cond_6

    .line 545
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0x666

    .line 546
    .local v3, "word":I
    invoke-static {v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->genesisColor(I)I

    move-result v5

    aput v5, v1, v2

    .line 544
    .end local v3    # "word":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 548
    .end local v2    # "i":I
    :cond_6
    mul-int/lit16 v2, p1, 0x80

    const v3, 0xa2c3e

    add-int/2addr v2, v3

    .line 549
    .local v2, "house":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v4, :cond_7

    add-int/lit8 v5, v3, 0x20

    iget-object v6, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v6

    invoke-static {v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->genesisColor(I)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 550
    .end local v3    # "i":I
    :cond_7
    return-object v1
.end method

.method private static decodeZeroTerminatedText([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 785
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static decompress([BII)[B
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "maxOutput"    # I

    .line 728
    new-array v0, p2, [B

    .line 729
    .local v0, "out":[B
    move v1, p1

    .line 730
    .local v1, "src":I
    const/4 v2, 0x0

    .line 731
    .local v2, "dst":I
    const/4 v3, 0x0

    .line 733
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0x186a0

    if-gt v3, v5, :cond_c

    .line 734
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 735
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 736
    .local v1, "c":I
    const/16 v6, 0x80

    if-ne v1, v6, :cond_0

    .line 779
    .end local v1    # "c":I
    new-array v1, v2, [B

    .line 780
    .local v1, "exact":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    return-object v1

    .line 737
    .local v1, "c":I
    :cond_0
    const/16 v6, 0x81

    if-lt v1, v6, :cond_1

    const/16 v6, 0xbf

    if-gt v1, v6, :cond_1

    .line 738
    and-int/lit8 v4, v1, 0x3f

    .line 739
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 740
    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->ensureOutput([BII)V

    .line 741
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    add-int/2addr v5, v4

    .line 743
    add-int/2addr v2, v4

    .line 744
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    :cond_1
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v1, v6, :cond_4

    .line 745
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 746
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "src":I
    .local v6, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 747
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v7

    .line 748
    .local v5, "n":I
    if-lez v4, :cond_3

    if-gt v4, v2, :cond_3

    .line 749
    invoke-static {v0, v2, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->ensureOutput([BII)V

    .line 750
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_2

    .line 751
    sub-int v8, v2, v4

    aget-byte v8, v0, v8

    aput-byte v8, v0, v2

    .line 752
    add-int/lit8 v2, v2, 0x1

    .line 750
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 754
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v7    # "i":I
    :cond_2
    move v1, v6

    goto/16 :goto_5

    .line 748
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis Mentat short-copy range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 754
    .end local v4    # "back":I
    .end local v6    # "src":I
    .local v5, "src":I
    :cond_4
    const/16 v4, 0xfd

    if-gt v1, v4, :cond_7

    .line 755
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 756
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v7

    .line 757
    .local v4, "n":I
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 758
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 759
    if-ltz v6, :cond_6

    if-ge v6, v2, :cond_6

    .line 760
    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->ensureOutput([BII)V

    .line 761
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_5

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 762
    .end local v4    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_5
    move v1, v5

    goto/16 :goto_5

    .line 759
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis Mentat absolute-copy range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 762
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_7
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_9

    .line 763
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 764
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 765
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 766
    .local v6, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 767
    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->ensureOutput([BII)V

    .line 768
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v4, :cond_8

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    int-to-byte v9, v6

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    .line 769
    .end local v4    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_8
    move v1, v5

    goto :goto_5

    .line 770
    :cond_9
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkRange([BII)V

    .line 771
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 772
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .line 773
    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 774
    if-ltz v6, :cond_b

    if-ge v6, v2, :cond_b

    .line 775
    invoke-static {v0, v2, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->ensureOutput([BII)V

    .line 776
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v4, :cond_a

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_4

    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v5

    .line 778
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 774
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_b
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Genesis Mentat long-copy range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 733
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Genesis Mentat decompressor guard"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static drawBackdrop([I[I[[I)V
    .locals 2
    .param p0, "pixels"    # [I
    .param p1, "palette"    # [I
    .param p2, "layers"    # [[I

    .line 615
    const/16 v0, 0x30

    const/16 v1, 0x48

    invoke-static {p0, p1, p2, v0, v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawBackdropAt([I[I[[III)V

    .line 616
    return-void
.end method

.method private static drawBackdropAt([I[I[[III)V
    .locals 9
    .param p0, "pixels"    # [I
    .param p1, "palette"    # [I
    .param p2, "layers"    # [[I
    .param p3, "originX"    # I
    .param p4, "originY"    # I

    .line 619
    const/4 v0, 0x0

    .local v0, "layer":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 620
    mul-int/lit8 v1, v0, 0x10

    .line 621
    .local v1, "paletteBase":I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    const/16 v3, 0x70

    if-ge v2, v3, :cond_4

    .line 622
    add-int v3, p4, v2

    .line 623
    .local v3, "sy":I
    if-ltz v3, :cond_3

    const/16 v4, 0xe0

    if-lt v3, v4, :cond_0

    goto :goto_4

    .line 624
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    const/16 v5, 0x108

    if-ge v4, v5, :cond_3

    .line 625
    aget-object v5, p2, v0

    mul-int/lit16 v6, v2, 0x108

    add-int/2addr v6, v4

    aget v5, v5, v6

    .line 626
    .local v5, "ci":I
    if-nez v5, :cond_1

    goto :goto_3

    .line 627
    :cond_1
    add-int v6, p3, v4

    .line 628
    .local v6, "sx":I
    if-ltz v6, :cond_2

    const/16 v7, 0x140

    if-ge v6, v7, :cond_2

    mul-int/lit16 v7, v3, 0x140

    add-int/2addr v7, v6

    add-int v8, v1, v5

    aget v8, p1, v8

    aput v8, p0, v7

    .line 624
    .end local v5    # "ci":I
    .end local v6    # "sx":I
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 621
    .end local v3    # "sy":I
    .end local v4    # "x":I
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 619
    .end local v1    # "paletteBase":I
    .end local v2    # "y":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "layer":I
    :cond_5
    return-void
.end method

.method private drawDescriptorCall(III)[[I
    .locals 13
    .param p1, "descriptorPointerTable"    # I
    .param p2, "componentStream"    # I
    .param p3, "patternBytes"    # I

    .line 471
    const/16 v0, 0x7380

    new-array v1, v0, [I

    new-array v0, v0, [I

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    move-object v2, v0

    .line 472
    .local v2, "layers":[[I
    const/4 v0, 0x0

    .line 473
    .local v0, "tileIndex":I
    move v1, p2

    .line 474
    .local v1, "components":I
    const/4 v3, 0x0

    move v9, v3

    .local v9, "slot":I
    :goto_0
    const/16 v3, 0xa

    if-ge v9, v3, :cond_1

    .line 475
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v4, v9, 0x4

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v3

    .line 476
    .local v3, "descriptor":I
    iget-object v4, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    invoke-static {v4, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v4

    .line 477
    .local v4, "x":I
    iget-object v5, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v5

    .line 478
    .local v5, "y":I
    iget-object v6, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    add-int/lit8 v7, v3, 0x4

    invoke-static {v6, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v6

    .line 479
    .local v6, "code":I
    add-int/lit8 v3, v3, 0x6

    .line 482
    iget-object v7, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    invoke-static {v7, v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v8

    .line 483
    .local v8, "mode":I
    add-int/lit8 v10, v1, 0x2

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v0

    move v0, v3

    .line 485
    .end local v1    # "components":I
    .end local v3    # "descriptor":I
    .local v0, "descriptor":I
    .local v4, "tileIndex":I
    .local v5, "x":I
    .local v6, "y":I
    .local v7, "code":I
    .local v10, "components":I
    :goto_1
    move-object v1, p0

    move/from16 v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/GenesisMentatRenderer;->blitComponent([[IIIIIII)V

    .line 486
    move-object v3, v2

    .end local v2    # "layers":[[I
    .local v3, "layers":[[I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v11, v7, 0x2

    const v12, 0x96304

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v1

    add-int/2addr v4, v1

    .line 487
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v1

    if-nez v1, :cond_0

    .line 474
    .end local v0    # "descriptor":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "code":I
    .end local v8    # "mode":I
    add-int/lit8 v9, v9, 0x1

    move-object v2, v3

    move v0, v4

    move v1, v10

    goto :goto_0

    .line 488
    .restart local v0    # "descriptor":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "code":I
    .restart local v8    # "mode":I
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    invoke-static {v1, v0}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v5, v1

    .line 489
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    add-int/lit8 v11, v0, 0x2

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisMentatRenderer;->s16([BI)I

    move-result v1

    add-int/2addr v6, v1

    .line 490
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    add-int/lit8 v11, v0, 0x4

    invoke-static {v1, v11}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v7

    .line 491
    add-int/lit8 v0, v0, 0x6

    move-object v2, v3

    goto :goto_1

    .line 474
    .end local v3    # "layers":[[I
    .end local v4    # "tileIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "code":I
    .end local v8    # "mode":I
    .end local v10    # "components":I
    .local v0, "tileIndex":I
    .restart local v1    # "components":I
    .restart local v2    # "layers":[[I
    :cond_1
    move-object v3, v2

    .line 494
    .end local v2    # "layers":[[I
    .end local v9    # "slot":I
    .restart local v3    # "layers":[[I
    return-object v3
.end method

.method private static drawSprites([I[I[B[B)V
    .locals 29
    .param p0, "pixels"    # [I
    .param p1, "palette"    # [I
    .param p2, "vram"    # [B
    .param p3, "sprites"    # [B

    .line 650
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/16 v2, 0x27

    .local v2, "entry":I
    :goto_0
    if-ltz v2, :cond_11

    .line 651
    mul-int/lit8 v3, v2, 0x8

    .line 652
    .local v3, "o":I
    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v4

    add-int/lit8 v4, v4, -0x80

    .line 653
    .local v4, "y":I
    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v5

    .line 654
    .local v5, "sizeLink":I
    add-int/lit8 v6, v3, 0x4

    invoke-static {v1, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v6

    .line 655
    .local v6, "attr":I
    add-int/lit8 v7, v3, 0x6

    invoke-static {v1, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v7

    add-int/lit8 v7, v7, -0x80

    .line 656
    .local v7, "x":I
    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0xf

    .line 657
    .local v8, "size":I
    ushr-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 658
    .local v9, "tilesWide":I
    and-int/lit8 v11, v8, 0x3

    add-int/2addr v11, v10

    .line 659
    .local v11, "tilesHigh":I
    and-int/lit16 v12, v6, 0x7ff

    .line 660
    .local v12, "pattern":I
    ushr-int/lit8 v13, v6, 0xd

    and-int/lit8 v13, v13, 0x3

    .line 661
    .local v13, "paletteLine":I
    and-int/lit16 v14, v6, 0x800

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    move v14, v10

    goto :goto_1

    :cond_0
    move v14, v15

    .line 662
    .local v14, "hFlip":Z
    :goto_1
    and-int/lit16 v10, v6, 0x1000

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    move v10, v15

    .line 663
    .local v10, "vFlip":Z
    :goto_2
    const/4 v15, 0x0

    .line 664
    .local v15, "tile":I
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "cx":I
    :goto_3
    if-ge v1, v9, :cond_10

    .line 665
    const/16 v16, 0x0

    move/from16 v28, v16

    move/from16 v16, v1

    move/from16 v1, v28

    .local v1, "cy":I
    .local v16, "cx":I
    :goto_4
    if-ge v1, v11, :cond_f

    .line 666
    add-int/lit8 v17, v15, 0x1

    .end local v15    # "tile":I
    .local v17, "tile":I
    add-int/2addr v15, v12

    mul-int/lit8 v15, v15, 0x20

    .line 667
    .local v15, "po":I
    if-ltz v15, :cond_e

    move/from16 v18, v1

    .end local v1    # "cy":I
    .local v18, "cy":I
    add-int/lit8 v1, v15, 0x20

    move/from16 v19, v2

    .end local v2    # "entry":I
    .local v19, "entry":I
    array-length v2, v0

    if-le v1, v2, :cond_2

    goto/16 :goto_c

    .line 668
    :cond_2
    const/4 v1, 0x0

    .local v1, "py":I
    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_d

    .line 669
    mul-int/lit8 v2, v18, 0x8

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    .line 670
    .local v2, "sy":I
    if-ltz v2, :cond_c

    const/16 v0, 0xe0

    if-lt v2, v0, :cond_3

    move/from16 v20, v1

    goto/16 :goto_b

    .line 671
    :cond_3
    if-eqz v10, :cond_4

    rsub-int/lit8 v0, v1, 0x7

    goto :goto_6

    :cond_4
    move v0, v1

    .line 672
    .local v0, "srcY":I
    :goto_6
    const/16 v20, 0x0

    move/from16 v21, v0

    move/from16 v0, v20

    .local v0, "pair":I
    .local v21, "srcY":I
    :goto_7
    move/from16 v20, v1

    .end local v1    # "py":I
    .local v20, "py":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    .line 673
    mul-int/lit8 v1, v21, 0x4

    add-int/2addr v1, v15

    add-int/2addr v1, v0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 674
    .local v1, "packed":I
    const/16 v22, 0x0

    move/from16 v23, v0

    move/from16 v0, v22

    .local v0, "nibble":I
    .local v23, "pair":I
    :goto_8
    move/from16 v22, v1

    .end local v1    # "packed":I
    .local v22, "packed":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 675
    if-nez v0, :cond_5

    ushr-int/lit8 v1, v22, 0x4

    goto :goto_9

    :cond_5
    and-int/lit8 v1, v22, 0xf

    .line 676
    .local v1, "ci":I
    :goto_9
    if-nez v1, :cond_6

    move/from16 v26, v0

    goto :goto_a

    .line 677
    :cond_6
    mul-int/lit8 v24, v23, 0x2

    add-int v24, v24, v0

    .line 678
    .local v24, "within":I
    if-eqz v14, :cond_7

    rsub-int/lit8 v24, v24, 0x7

    .line 679
    :cond_7
    mul-int/lit8 v25, v16, 0x8

    add-int v25, v7, v25

    move/from16 v26, v0

    .end local v0    # "nibble":I
    .local v26, "nibble":I
    add-int v0, v25, v24

    .line 680
    .local v0, "sx":I
    if-ltz v0, :cond_8

    move/from16 v25, v1

    .end local v1    # "ci":I
    .local v25, "ci":I
    const/16 v1, 0x140

    if-ge v0, v1, :cond_9

    mul-int/lit16 v1, v2, 0x140

    add-int/2addr v1, v0

    mul-int/lit8 v27, v13, 0x10

    add-int v27, v27, v25

    aget v27, p1, v27

    aput v27, p0, v1

    goto :goto_a

    .end local v25    # "ci":I
    .restart local v1    # "ci":I
    :cond_8
    move/from16 v25, v1

    .line 674
    .end local v0    # "sx":I
    .end local v1    # "ci":I
    .end local v24    # "within":I
    :cond_9
    :goto_a
    add-int/lit8 v0, v26, 0x1

    move/from16 v1, v22

    .end local v26    # "nibble":I
    .local v0, "nibble":I
    goto :goto_8

    :cond_a
    move/from16 v26, v0

    .line 672
    .end local v0    # "nibble":I
    .end local v22    # "packed":I
    add-int/lit8 v0, v23, 0x1

    move/from16 v1, v20

    .end local v23    # "pair":I
    .local v0, "pair":I
    goto :goto_7

    :cond_b
    move/from16 v23, v0

    .end local v0    # "pair":I
    .restart local v23    # "pair":I
    goto :goto_b

    .line 670
    .end local v20    # "py":I
    .end local v21    # "srcY":I
    .end local v23    # "pair":I
    .local v1, "py":I
    :cond_c
    move/from16 v20, v1

    .line 668
    .end local v1    # "py":I
    .end local v2    # "sy":I
    .restart local v20    # "py":I
    :goto_b
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v0, p2

    .end local v20    # "py":I
    .restart local v1    # "py":I
    goto :goto_5

    :cond_d
    move/from16 v20, v1

    .end local v1    # "py":I
    .restart local v20    # "py":I
    goto :goto_c

    .line 667
    .end local v18    # "cy":I
    .end local v19    # "entry":I
    .end local v20    # "py":I
    .local v1, "cy":I
    .local v2, "entry":I
    :cond_e
    move/from16 v18, v1

    move/from16 v19, v2

    .line 665
    .end local v1    # "cy":I
    .end local v2    # "entry":I
    .end local v15    # "po":I
    .restart local v18    # "cy":I
    .restart local v19    # "entry":I
    :goto_c
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v0, p2

    move/from16 v15, v17

    move/from16 v2, v19

    .end local v18    # "cy":I
    .restart local v1    # "cy":I
    goto/16 :goto_4

    .end local v17    # "tile":I
    .end local v19    # "entry":I
    .restart local v2    # "entry":I
    .local v15, "tile":I
    :cond_f
    move/from16 v18, v1

    move/from16 v19, v2

    .line 664
    .end local v1    # "cy":I
    .end local v2    # "entry":I
    .restart local v19    # "entry":I
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p2

    .end local v16    # "cx":I
    .local v1, "cx":I
    goto/16 :goto_3

    .end local v19    # "entry":I
    .restart local v2    # "entry":I
    :cond_10
    move/from16 v16, v1

    move/from16 v19, v2

    .line 650
    .end local v1    # "cx":I
    .end local v2    # "entry":I
    .end local v3    # "o":I
    .end local v4    # "y":I
    .end local v5    # "sizeLink":I
    .end local v6    # "attr":I
    .end local v7    # "x":I
    .end local v8    # "size":I
    .end local v9    # "tilesWide":I
    .end local v10    # "vFlip":Z
    .end local v11    # "tilesHigh":I
    .end local v12    # "pattern":I
    .end local v13    # "paletteLine":I
    .end local v14    # "hFlip":Z
    .end local v15    # "tile":I
    .restart local v19    # "entry":I
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .end local v19    # "entry":I
    .restart local v2    # "entry":I
    goto/16 :goto_0

    .line 687
    .end local v2    # "entry":I
    :cond_11
    return-void
.end method

.method private drawText([I[ILjava/lang/String;)V
    .locals 17
    .param p1, "pixels"    # [I
    .param p2, "palette"    # [I
    .param p3, "phrase"    # Ljava/lang/String;

    .line 691
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 692
    .local v1, "column":I
    const/4 v2, 0x0

    .line 693
    .local v2, "row":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 694
    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 695
    .local v5, "ch":C
    const/16 v6, 0xd

    if-eq v5, v6, :cond_7

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    goto/16 :goto_4

    .line 700
    :cond_0
    invoke-static {v5}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v6

    .line 701
    .local v6, "glyph":I
    mul-int/lit8 v7, v6, 0x20

    .line 702
    .local v7, "po":I
    add-int/lit8 v8, v7, 0x20

    iget-object v9, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    array-length v9, v9

    if-le v8, v9, :cond_1

    goto :goto_5

    .line 703
    :cond_1
    const/4 v8, 0x0

    .local v8, "py":I
    :goto_1
    const/16 v9, 0x8

    if-ge v8, v9, :cond_6

    .line 704
    mul-int/lit8 v9, v2, 0x8

    add-int/lit8 v9, v9, 0x28

    add-int/2addr v9, v8

    .line 705
    .local v9, "sy":I
    if-ltz v9, :cond_5

    const/16 v10, 0xe0

    if-lt v9, v10, :cond_2

    goto :goto_3

    .line 706
    :cond_2
    const/4 v10, 0x0

    .local v10, "pair":I
    :goto_2
    const/4 v11, 0x4

    if-ge v10, v11, :cond_5

    .line 707
    iget-object v11, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    mul-int/lit8 v12, v8, 0x4

    add-int/2addr v12, v7

    add-int/2addr v12, v10

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    .line 708
    .local v11, "packed":I
    ushr-int/lit8 v12, v11, 0x4

    .line 709
    .local v12, "hi":I
    and-int/lit8 v13, v11, 0xf

    .line 710
    .local v13, "lo":I
    mul-int/lit8 v14, v1, 0x8

    add-int/lit8 v14, v14, 0x10

    mul-int/lit8 v15, v10, 0x2

    add-int/2addr v14, v15

    .line 711
    .local v14, "sx":I
    const/16 v15, 0x140

    if-eqz v12, :cond_3

    if-ltz v14, :cond_3

    if-ge v14, v15, :cond_3

    mul-int/lit16 v15, v9, 0x140

    add-int/2addr v15, v14

    add-int/lit8 v16, v12, 0x20

    aget v16, p2, v16

    aput v16, p1, v15

    .line 712
    :cond_3
    if-eqz v13, :cond_4

    add-int/lit8 v15, v14, 0x1

    if-ltz v15, :cond_4

    add-int/lit8 v15, v14, 0x1

    const/16 v0, 0x140

    if-ge v15, v0, :cond_4

    mul-int/lit16 v0, v9, 0x140

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v15, v13, 0x20

    aget v15, p2, v15

    aput v15, p1, v0

    .line 706
    .end local v11    # "packed":I
    .end local v12    # "hi":I
    .end local v13    # "lo":I
    .end local v14    # "sx":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 703
    .end local v9    # "sy":I
    .end local v10    # "pair":I
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 715
    .end local v8    # "py":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 696
    .end local v6    # "glyph":I
    .end local v7    # "po":I
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 697
    const/4 v0, 0x0

    .line 698
    .end local v1    # "column":I
    .local v0, "column":I
    move v1, v0

    .line 693
    .end local v0    # "column":I
    .end local v5    # "ch":C
    .restart local v1    # "column":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v4, p3

    .line 717
    .end local v3    # "i":I
    return-void
.end method

.method private static ensureOutput([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I
    .param p2, "n"    # I

    .line 818
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 819
    return-void

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Genesis Mentat decompressor overrun"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static genesisColor(I)I
    .locals 8
    .param p0, "word"    # I

    .line 720
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v0, v0, 0x7

    .line 721
    .local v0, "r":I
    ushr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x7

    .line 722
    .local v1, "g":I
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v2, v2, 0x7

    .line 723
    .local v2, "b":I
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

.method private installSelector([B[BIIZ)V
    .locals 5
    .param p1, "vram"    # [B
    .param p2, "sprites"    # [B
    .param p3, "selectorMode"    # I
    .param p4, "selectorChoice"    # I
    .param p5, "highlightVisible"    # Z

    .line 565
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorCommon:[B

    const v1, 0xb120

    const/16 v2, 0x280

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorJoin:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->selectorBriefing:[B

    .line 567
    .local v0, "labels":[B
    :goto_0
    const v1, 0xb3a0

    const/16 v2, 0x500

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    const/16 v1, 0x9

    .local v1, "e":I
    :goto_1
    const/16 v2, 0xe

    if-gt v1, v2, :cond_1

    .line 573
    mul-int/lit8 v2, v1, 0x8

    const/16 v3, -0x80

    invoke-static {p2, v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 574
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x6

    invoke-static {p2, v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    .end local v1    # "e":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "e":I
    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_2

    .line 577
    mul-int/lit8 v2, v1, 0x8

    const/16 v3, 0x80

    invoke-static {p2, v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 578
    mul-int/lit8 v2, v1, 0x8

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x140

    invoke-static {p2, v2, v3}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 580
    .end local v1    # "e":I
    :cond_2
    const/4 v1, 0x2

    if-eqz p4, :cond_3

    .line 581
    const/4 v2, 0x0

    .local v2, "e":I
    :goto_3
    if-gt v2, v1, :cond_3

    mul-int/lit8 v3, v2, 0x8

    const/16 v4, 0x18

    invoke-static {p2, v3, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 583
    .end local v2    # "e":I
    :cond_3
    if-nez p5, :cond_4

    .line 584
    const/4 v2, 0x0

    .restart local v2    # "e":I
    :goto_4
    if-gt v2, v1, :cond_4

    .line 585
    mul-int/lit8 v3, v2, 0x8

    const/16 v4, -0x100

    invoke-static {p2, v3, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 586
    mul-int/lit8 v3, v2, 0x8

    add-int/lit8 v3, v3, 0x6

    invoke-static {p2, v3, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 589
    .end local v2    # "e":I
    :cond_4
    return-void
.end method

.method private renderInternal(IIIILjava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "eyeFrame"    # I
    .param p4, "mouthFrame"    # I
    .param p5, "phrase"    # Ljava/lang/String;
    .param p6, "selectorMode"    # I
    .param p7, "selectorChoice"    # I
    .param p8, "selectorHighlightVisible"    # Z

    .line 358
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkHouseMission(II)V

    .line 359
    const/4 v1, 0x5

    move/from16 v2, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    .line 360
    .end local p3    # "eyeFrame":I
    .local v8, "eyeFrame":I
    move/from16 v2, p4

    invoke-static {v2, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v9

    .line 361
    .end local p4    # "mouthFrame":I
    .local v9, "mouthFrame":I
    if-nez p5, :cond_0

    const-string v1, ""

    move-object v10, v1

    .end local p5    # "phrase":Ljava/lang/String;
    .local v1, "phrase":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "phrase":Ljava/lang/String;
    .restart local p5    # "phrase":Ljava/lang/String;
    :cond_0
    move-object/from16 v10, p5

    .line 362
    .end local p5    # "phrase":Ljava/lang/String;
    .local v10, "phrase":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedFrontHouse:I

    if-ne v1, v6, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMission:I

    if-ne v1, v7, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedEye:I

    if-ne v1, v8, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMouth:I

    if-ne v1, v9, :cond_1

    iget-object v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedText:Ljava/lang/String;

    .line 363
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorMode:I

    if-ne v1, v3, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorChoice:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorHighlightVisible:Z

    if-ne v1, v5, :cond_1

    .line 366
    iget-object v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 369
    :cond_1
    sget-object v1, Lcom/ahsim/demulation/GenesisMentatRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v11, v1, v6

    .line 370
    .local v11, "romHouse":I
    add-int/lit8 v12, v7, -0x1

    .line 371
    .local v12, "missionZero":I
    invoke-direct {v0, v11, v12}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decodePalette(II)[I

    move-result-object v13

    .line 372
    .local v13, "palette":[I
    invoke-direct {v0, v11, v12}, Lcom/ahsim/demulation/GenesisMentatRenderer;->buildBackdropLayers(II)[[I

    move-result-object v14

    .line 373
    .local v14, "layers":[[I
    invoke-direct {v0, v11, v8, v9}, Lcom/ahsim/demulation/GenesisMentatRenderer;->buildPortraitVram(III)[B

    move-result-object v1

    .line 374
    .local v1, "vram":[B
    invoke-direct {v0, v11}, Lcom/ahsim/demulation/GenesisMentatRenderer;->adjustedSpriteTable(I)[B

    move-result-object v2

    .line 375
    .local v2, "sprites":[B
    if-ltz v3, :cond_2

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/GenesisMentatRenderer;->installSelector([B[BIIZ)V

    .line 377
    :cond_2
    const v15, 0x11800

    new-array v15, v15, [I

    .line 378
    .local v15, "pixels":[I
    const/16 v16, 0x0

    move/from16 p3, v11

    move/from16 v11, v16

    .local v11, "i":I
    .local p3, "romHouse":I
    :goto_1
    move/from16 p4, v12

    .end local v12    # "missionZero":I
    .local p4, "missionZero":I
    array-length v12, v15

    if-ge v11, v12, :cond_3

    const/4 v12, 0x0

    aget v12, v13, v12

    aput v12, v15, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v12, p4

    goto :goto_1

    .line 379
    .end local v11    # "i":I
    :cond_3
    invoke-static {v15, v13, v14}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawBackdrop([I[I[[I)V

    .line 380
    invoke-static {v15, v13, v1, v2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawSprites([I[I[B[B)V

    .line 381
    invoke-direct {v0, v15, v13, v10}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawText([I[ILjava/lang/String;)V

    .line 383
    const/16 v11, 0xe0

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v1

    .end local v1    # "vram":[B
    .local v16, "vram":[B
    const/16 v1, 0x140

    invoke-static {v15, v1, v11, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 384
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput v6, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedFrontHouse:I

    .line 385
    iput v7, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMission:I

    .line 386
    iput v8, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedEye:I

    .line 387
    iput v9, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedMouth:I

    .line 388
    iput-object v10, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedText:Ljava/lang/String;

    .line 389
    iput v3, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorMode:I

    .line 390
    iput v4, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorChoice:I

    .line 391
    iput-boolean v5, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedSelectorHighlightVisible:Z

    .line 392
    iput-object v1, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 393
    return-object v1
.end method

.method private static s16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "o"    # I

    .line 803
    invoke-static {p0, p1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be16([BI)I

    move-result v0

    .line 804
    .local v0, "v":I
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    sub-int v1, v0, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private static wrapPhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phrase"    # Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 426
    .local v1, "p":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 427
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_3

    .line 429
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 430
    .local v2, "remaining":I
    const/16 v4, 0xd

    const/16 v5, 0x24

    if-gt v2, v5, :cond_3

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 433
    goto :goto_3

    .line 435
    :cond_3
    add-int/lit8 v5, v1, 0x24

    .line 436
    .local v5, "limit":I
    move v6, v5

    .line 437
    .local v6, "split":I
    :goto_2
    if-le v6, v1, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v3, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 438
    :cond_4
    if-ne v6, v1, :cond_5

    move v6, v5

    .line 439
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    :cond_6
    invoke-virtual {v0, p0, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 441
    move v1, v6

    .line 442
    .end local v2    # "remaining":I
    .end local v5    # "limit":I
    .end local v6    # "split":I
    goto :goto_0

    .line 443
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public fadeFromBlack(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "fadeTick"    # J

    .line 216
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    const-wide/16 v0, 0x0

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x3

    div-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v4, 0x7

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 218
    .local v0, "step":I
    if-lt v0, v4, :cond_1

    return-object p1

    .line 219
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 220
    .local v12, "height":I
    mul-int v1, v8, v12

    new-array v6, v1, [I

    .line 221
    .local v6, "pixels":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move v11, v8

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v6

    if-ge v1, v4, :cond_3

    .line 223
    aget v4, v6, v1

    .line 224
    .local v4, "c":I
    ushr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 225
    .local v5, "a":I
    if-nez v5, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    ushr-int/lit8 v7, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v7, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 227
    .local v7, "r3":I
    ushr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    mul-float/2addr v11, v9

    div-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 228
    .local v11, "g3":I
    and-int/lit16 v13, v4, 0xff

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 229
    .local v13, "b3":I
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    div-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 230
    .local v14, "r":I
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v10

    div-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 231
    .local v15, "g":I
    move/from16 v16, v9

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    div-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 232
    .local v9, "b":I
    shl-int/lit8 v10, v5, 0x18

    shl-int/lit8 v16, v14, 0x10

    or-int v10, v10, v16

    shl-int/lit8 v16, v15, 0x8

    or-int v10, v10, v16

    or-int/2addr v10, v9

    aput v10, v6, v1

    .line 222
    .end local v4    # "c":I
    .end local v5    # "a":I
    .end local v7    # "r3":I
    .end local v9    # "b":I
    .end local v11    # "g3":I
    .end local v13    # "b3":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v12, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public fadeToBlack(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "fadeTick"    # J

    .line 240
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    const-wide/16 v0, 0x0

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x3

    div-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v4, 0x7

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 242
    .local v0, "step":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 243
    .local v11, "height":I
    mul-int v1, v7, v11

    new-array v5, v1, [I

    .line 244
    .local v5, "pixels":[I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v10, v7

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v5

    if-ge v1, v4, :cond_2

    .line 246
    aget v4, v5, v1

    .line 247
    .local v4, "c":I
    ushr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    .line 248
    .local v6, "a":I
    if-nez v6, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v8, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 250
    .local v8, "r3":I
    ushr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    mul-float/2addr v12, v9

    div-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 251
    .local v12, "g3":I
    and-int/lit16 v13, v4, 0xff

    int-to-float v13, v13

    mul-float/2addr v13, v9

    div-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 252
    .local v13, "b3":I
    sub-int v14, v8, v0

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v10

    div-float/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 253
    .local v14, "r":I
    move/from16 v16, v9

    sub-int v9, v12, v0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    div-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 254
    .local v9, "g":I
    move/from16 v17, v10

    sub-int v10, v13, v0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v17

    div-float v10, v10, v16

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 255
    .local v10, "b":I
    shl-int/lit8 v15, v6, 0x18

    shl-int/lit8 v16, v14, 0x10

    or-int v15, v15, v16

    shl-int/lit8 v16, v9, 0x8

    or-int v15, v15, v16

    or-int/2addr v15, v10

    aput v15, v5, v1

    .line 245
    .end local v4    # "c":I
    .end local v6    # "a":I
    .end local v8    # "r3":I
    .end local v9    # "g":I
    .end local v10    # "b":I
    .end local v12    # "g3":I
    .end local v13    # "b3":I
    .end local v14    # "r":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v11, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public houseJoinText(I)Ljava/lang/String;
    .locals 5
    .param p1, "frontendHouse"    # I

    .line 341
    if-ltz p1, :cond_3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    .line 343
    sget-object v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v0, v0, p1

    .line 344
    .local v0, "romHouse":I
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerJoinTexts:[[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->providerJoinTexts:[[B

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decodeZeroTerminatedText([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    mul-int/lit8 v2, v0, 0x4

    const v3, 0x87d7c

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->be32([BI)I

    move-result v1

    .line 346
    .local v1, "pointer":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v2, "out":Ljava/lang/StringBuilder;
    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisMentatRenderer;->rom:[B

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pointer":I
    .local v4, "pointer":I
    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 349
    .local v1, "c":I
    if-nez v1, :cond_1

    move v1, v4

    goto :goto_1

    .line 350
    :cond_1
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    .end local v1    # "c":I
    move v1, v4

    goto :goto_0

    .line 352
    .end local v4    # "pointer":I
    .local v1, "pointer":I
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 342
    .end local v0    # "romHouse":I
    .end local v1    # "pointer":I
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Genesis Mentat House"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public paginate(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;

    .line 401
    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 402
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v3, "phrases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 404
    .local v4, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 405
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 406
    .local v6, "c":C
    const/16 v7, 0x2e

    const/16 v8, 0xa

    const/16 v9, 0xd

    if-eq v6, v7, :cond_1

    const/16 v7, 0x21

    if-eq v6, v7, :cond_1

    const/16 v7, 0x3f

    if-eq v6, v7, :cond_1

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_7

    .line 407
    :cond_1
    if-eq v6, v9, :cond_3

    if-ne v6, v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v1

    :goto_2
    add-int/2addr v7, v5

    .line 408
    .local v7, "end":I
    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "part":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Lcom/ahsim/demulation/GenesisMentatRenderer;->wrapPhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .line 411
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 412
    :cond_6
    add-int/lit8 v5, v4, -0x1

    .line 404
    .end local v6    # "c":C
    .end local v7    # "end":I
    .end local v10    # "part":Ljava/lang/String;
    :cond_7
    add-int/2addr v5, v2

    goto :goto_0

    .line 415
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_9

    .line 416
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "part":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisMentatRenderer;->wrapPhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v1    # "part":Ljava/lang/String;
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 401
    .end local v3    # "phrases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "start":I
    :cond_b
    :goto_4
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    return-object v2
.end method

.method public render(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "eyeFrame"    # I
    .param p4, "mouthFrame"    # I
    .param p5, "phrase"    # Ljava/lang/String;

    .line 206
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "frontendHouse":I
    .end local p2    # "missionOneBased":I
    .end local p3    # "eyeFrame":I
    .end local p4    # "mouthFrame":I
    .end local p5    # "phrase":Ljava/lang/String;
    .local v1, "frontendHouse":I
    .local v2, "missionOneBased":I
    .local v3, "eyeFrame":I
    .local v4, "mouthFrame":I
    .local v5, "phrase":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/GenesisMentatRenderer;->renderInternal(IIIILjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public renderDeparture(IIIII)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "eyeFrame"    # I
    .param p4, "mouthFrame"    # I
    .param p5, "tick"    # I

    .line 316
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkHouseMission(II)V

    .line 317
    const/16 v1, 0x18

    move/from16 v2, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 318
    .local v1, "step":I
    const/4 v4, 0x5

    move/from16 v5, p3

    invoke-static {v5, v4}, Ljava/lang/Math;->floorMod(II)I

    move-result v5

    .line 319
    .end local p3    # "eyeFrame":I
    .local v5, "eyeFrame":I
    move/from16 v6, p4

    invoke-static {v6, v4}, Ljava/lang/Math;->floorMod(II)I

    move-result v4

    .line 321
    .end local p4    # "mouthFrame":I
    .local v4, "mouthFrame":I
    sget-object v6, Lcom/ahsim/demulation/GenesisMentatRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v6, v6, p1

    .line 322
    .local v6, "romHouse":I
    add-int/lit8 v7, p2, -0x1

    .line 323
    .local v7, "missionZero":I
    invoke-direct {v0, v6, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decodePalette(II)[I

    move-result-object v8

    .line 324
    .local v8, "palette":[I
    add-int/lit8 v9, v1, -0xf

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 325
    .local v9, "fadeSteps":I
    if-eqz v9, :cond_0

    invoke-direct {v0, v8, v6, v9}, Lcom/ahsim/demulation/GenesisMentatRenderer;->applyDeparturePortraitFade([III)V

    .line 327
    :cond_0
    invoke-direct {v0, v6, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->buildBackdropLayers(II)[[I

    move-result-object v10

    .line 328
    .local v10, "layers":[[I
    invoke-direct {v0, v6, v5, v4}, Lcom/ahsim/demulation/GenesisMentatRenderer;->buildPortraitVram(III)[B

    move-result-object v11

    .line 329
    .local v11, "vram":[B
    invoke-direct {v0, v6}, Lcom/ahsim/demulation/GenesisMentatRenderer;->adjustedSpriteTable(I)[B

    move-result-object v12

    .line 330
    .local v12, "sprites":[B
    const/16 v13, 0x9

    .local v13, "entry":I
    :goto_0
    const/16 v14, 0x28

    if-ge v13, v14, :cond_1

    mul-int/lit8 v14, v13, 0x8

    add-int/lit8 v14, v14, 0x6

    mul-int/lit8 v15, v1, -0x4

    invoke-static {v12, v14, v15}, Lcom/ahsim/demulation/GenesisMentatRenderer;->addBe16([BII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 332
    .end local v13    # "entry":I
    :cond_1
    const v13, 0x11800

    new-array v13, v13, [I

    .line 333
    .local v13, "pixels":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v15, v13

    if-ge v14, v15, :cond_2

    aget v15, v8, v3

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 334
    .end local v14    # "i":I
    :cond_2
    rsub-int/lit8 v3, v1, 0x30

    const/16 v14, 0x48

    invoke-static {v13, v8, v10, v3, v14}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawBackdropAt([I[I[[III)V

    .line 335
    invoke-static {v13, v8, v11, v12}, Lcom/ahsim/demulation/GenesisMentatRenderer;->drawSprites([I[I[B[B)V

    .line 336
    const/16 v3, 0xe0

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v15, 0x140

    invoke-static {v13, v15, v3, v14}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public renderUiLabel(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/GenesisMentatRenderer;->checkHouseMission(II)V

    .line 285
    if-nez p3, :cond_0

    const-string v1, ""

    .end local p3    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "text":Ljava/lang/String;
    .restart local p3    # "text":Ljava/lang/String;
    :cond_0
    move-object/from16 v1, p3

    .line 286
    .end local p3    # "text":Ljava/lang/String;
    .restart local v1    # "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 287
    .local v2, "width":I
    mul-int/lit8 v5, v2, 0x8

    new-array v5, v5, [I

    .line 288
    .local v5, "pixels":[I
    sget-object v6, Lcom/ahsim/demulation/GenesisMentatRenderer;->FRONTEND_TO_ROM_HOUSE:[I

    aget v6, v6, p1

    .line 289
    .local v6, "romHouse":I
    add-int/lit8 v7, p2, -0x1

    invoke-direct {v0, v6, v7}, Lcom/ahsim/demulation/GenesisMentatRenderer;->decodePalette(II)[I

    move-result-object v7

    .line 290
    .local v7, "palette":[I
    const/4 v8, 0x0

    .local v8, "column":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 291
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lcom/ahsim/demulation/GermanFontGlyphMapper;->mapFrontendGlyph(C)I

    move-result v9

    .line 292
    .local v9, "glyph":I
    mul-int/lit8 v10, v9, 0x20

    .line 293
    .local v10, "po":I
    if-ltz v10, :cond_5

    add-int/lit8 v11, v10, 0x20

    iget-object v12, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    array-length v12, v12

    if-le v11, v12, :cond_1

    goto :goto_4

    .line 294
    :cond_1
    const/4 v11, 0x0

    .local v11, "py":I
    :goto_2
    if-ge v11, v3, :cond_5

    .line 295
    const/4 v12, 0x0

    .local v12, "pair":I
    :goto_3
    const/4 v13, 0x4

    if-ge v12, v13, :cond_4

    .line 296
    iget-object v13, v0, Lcom/ahsim/demulation/GenesisMentatRenderer;->fontPatterns:[B

    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v10

    add-int/2addr v14, v12

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    .line 297
    .local v13, "packed":I
    ushr-int/lit8 v14, v13, 0x4

    .line 298
    .local v14, "hi":I
    and-int/lit8 v15, v13, 0xf

    .line 299
    .local v15, "lo":I
    mul-int/lit8 v16, v8, 0x8

    mul-int/lit8 v17, v12, 0x2

    add-int v16, v16, v17

    .line 300
    .local v16, "sx":I
    if-eqz v14, :cond_2

    mul-int v17, v11, v2

    add-int v17, v17, v16

    add-int/lit8 v18, v14, 0x20

    aget v18, v7, v18

    aput v18, v5, v17

    .line 301
    :cond_2
    if-eqz v15, :cond_3

    mul-int v17, v11, v2

    add-int v17, v17, v16

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v15, 0x20

    aget v18, v7, v18

    aput v18, v5, v17

    .line 295
    .end local v13    # "packed":I
    .end local v14    # "hi":I
    .end local v15    # "lo":I
    .end local v16    # "sx":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 294
    .end local v12    # "pair":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 290
    .end local v9    # "glyph":I
    .end local v10    # "po":I
    .end local v11    # "py":I
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 305
    .end local v8    # "column":I
    :cond_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public renderWithSelector(IIIILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "eyeFrame"    # I
    .param p4, "mouthFrame"    # I
    .param p5, "phrase"    # Ljava/lang/String;
    .param p6, "selectorMode"    # I
    .param p7, "selectorChoice"    # I

    .line 267
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ahsim/demulation/GenesisMentatRenderer;->renderWithSelector(IIIILjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public renderWithSelector(IIIILjava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "frontendHouse"    # I
    .param p2, "missionOneBased"    # I
    .param p3, "eyeFrame"    # I
    .param p4, "mouthFrame"    # I
    .param p5, "phrase"    # Ljava/lang/String;
    .param p6, "selectorMode"    # I
    .param p7, "selectorChoice"    # I
    .param p8, "highlightVisible"    # Z

    .line 274
    if-ltz p6, :cond_1

    const/4 v0, 0x1

    if-gt p6, v0, :cond_1

    .line 276
    nop

    .line 277
    if-nez p7, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v7, v0

    .line 276
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/GenesisMentatRenderer;->renderInternal(IIIILjava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Genesis Mentat selector mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
