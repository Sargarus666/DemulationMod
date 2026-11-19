.class final Lcom/ahsim/demulation/ClassicHudScale762;
.super Ljava/lang/Object;
.source "ClassicHudScale762.java"


# static fields
.field static final DEFAULT:I = 0x0

.field private static final LABELS:[Ljava/lang/String;

.field private static final MAX_HUD_SCREEN_FRACTION:F = 0.42f

.field private static final MIN_RADAR_LOGICAL_H:F = 36.0f

.field static final PRESET_COUNT:I = 0x3

.field private static final RATIOS:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ahsim/demulation/ClassicHudScale762;->RATIOS:[F

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "100%"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "115%"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "130%"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ahsim/demulation/ClassicHudScale762;->LABELS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static label(I)Ljava/lang/String;
    .locals 2
    .param p0, "preset"    # I

    .line 30
    sget-object v0, Lcom/ahsim/demulation/ClassicHudScale762;->LABELS:[Ljava/lang/String;

    invoke-static {p0}, Lcom/ahsim/demulation/ClassicHudScale762;->normalize(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static next(I)I
    .locals 1
    .param p0, "preset"    # I

    .line 26
    invoke-static {p0}, Lcom/ahsim/demulation/ClassicHudScale762;->normalize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static normalize(I)I
    .locals 1
    .param p0, "preset"    # I

    .line 22
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static resolve(IFFFFF)F
    .locals 6
    .param p0, "preset"    # I
    .param p1, "worldScale"    # F
    .param p2, "screenW"    # F
    .param p3, "screenH"    # F
    .param p4, "hudLogicalW"    # F
    .param p5, "hudMenuBottom"    # F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 36
    .local v1, "base":F
    invoke-static {p0}, Lcom/ahsim/demulation/ClassicHudScale762;->normalize(I)I

    move-result v2

    .line 37
    .local v2, "level":I
    if-nez v2, :cond_0

    return v1

    .line 38
    :cond_0
    sget-object v3, Lcom/ahsim/demulation/ClassicHudScale762;->RATIOS:[F

    aget v3, v3, v2

    mul-float/2addr v3, v1

    .line 40
    .local v3, "wanted":F
    const/high16 v4, 0x42100000    # 36.0f

    add-float/2addr v4, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v4, p3, v4

    .line 41
    .local v4, "capHeight":F
    const v5, 0x3ed70a3d    # 0.42f

    mul-float/2addr v5, p2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v5, v0

    .line 42
    .local v5, "capWidth":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
