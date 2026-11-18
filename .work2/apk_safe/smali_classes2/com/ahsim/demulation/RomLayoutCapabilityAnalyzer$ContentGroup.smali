.class public final enum Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
.super Ljava/lang/Enum;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum AUDIO_MUSIC_SFX:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum ENDING_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum FRONTEND_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum MENTAT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum MISSION_PRESENTATION_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum RESULT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum TUTORIAL_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

.field public static final enum WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    .locals 11

    .line 36
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->FRONTEND_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MENTAT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MISSION_PRESENTATION_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TUTORIAL_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v4, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->RESULT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->ENDING_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v8, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->AUDIO_MUSIC_SFX:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v9, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v10, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    filled-new-array/range {v0 .. v10}, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "FRONTEND_GRAPHICS_MIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->FRONTEND_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 38
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "MENTAT_GRAPHICS_MIXED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MENTAT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 39
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "MISSION_PRESENTATION_GRAPHICS_MIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MISSION_PRESENTATION_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 40
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "TUTORIAL_GRAPHICS_MIXED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TUTORIAL_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 41
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "RESULT_GRAPHICS_MIXED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->RESULT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 42
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "ENDING_GRAPHICS_MIXED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->ENDING_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 43
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "WORLD_TERRAIN_RADAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 44
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "TACTICAL_SPRITES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 45
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "AUDIO_MUSIC_SFX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->AUDIO_MUSIC_SFX:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 46
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "LOCALIZATION_TEXT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 47
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    const-string v1, "LOCALIZATION_GLYPHS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 36
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->$values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->$VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    .locals 1

    .line 36
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->$VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    return-object v0
.end method
