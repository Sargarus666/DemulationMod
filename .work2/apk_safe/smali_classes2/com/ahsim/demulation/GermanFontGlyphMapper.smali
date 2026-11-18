.class final Lcom/ahsim/demulation/GermanFontGlyphMapper;
.super Ljava/lang/Object;
.source "GermanFontGlyphMapper.java"


# static fields
.field private static final GLYPH_AE:I = 0x2

.field private static final GLYPH_OE:I = 0x3

.field private static final GLYPH_UE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mapFixedTileByte(I)I
    .locals 1
    .param p0, "value"    # I

    .line 51
    and-int/lit16 v0, p0, 0xff

    sparse-switch v0, :sswitch_data_0

    .line 62
    and-int/lit8 v0, p0, 0x7f

    return v0

    .line 60
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 57
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 54
    :sswitch_2
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x84 -> :sswitch_1
        0x8e -> :sswitch_1
        0x94 -> :sswitch_0
        0x99 -> :sswitch_0
        0x9a -> :sswitch_2
    .end sparse-switch
.end method

.method static mapFrontendGlyph(C)I
    .locals 4
    .param p0, "ch"    # C

    .line 21
    and-int/lit16 v0, p0, 0xff

    .line 22
    .local v0, "value":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    sparse-switch p0, :sswitch_data_0

    .line 35
    sparse-switch v0, :sswitch_data_1

    .line 46
    and-int/lit8 v1, p0, 0x7f

    return v1

    .line 25
    :sswitch_0
    return v1

    .line 31
    :sswitch_1
    return v2

    .line 28
    :sswitch_2
    return v3

    .line 44
    :sswitch_3
    return v2

    .line 41
    :sswitch_4
    return v3

    .line 38
    :sswitch_5
    return v1

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_2
        0xd6 -> :sswitch_1
        0xdc -> :sswitch_0
        0xe4 -> :sswitch_2
        0xf6 -> :sswitch_1
        0xfc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x81 -> :sswitch_5
        0x84 -> :sswitch_4
        0x8e -> :sswitch_4
        0x94 -> :sswitch_3
        0x99 -> :sswitch_3
        0x9a -> :sswitch_5
    .end sparse-switch
.end method
