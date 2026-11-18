.class public final enum Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
.super Ljava/lang/Enum;
.source "RomSourceAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomSourceAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum BASE_READY_BUNDLE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum EXECUTABLE_ROM_CODE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum GAMEPLAY_PARAMETERS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum NATIVE_PURE_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

.field public static final enum SCENARIO_WORLD_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    .locals 9

    .line 17
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->BASE_READY_BUNDLE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v2, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v3, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v4, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v5, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->SCENARIO_WORLD_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v6, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->GAMEPLAY_PARAMETERS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v7, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->NATIVE_PURE_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    sget-object v8, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->EXECUTABLE_ROM_CODE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    filled-new-array/range {v0 .. v8}, [Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "BASE_READY_BUNDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->BASE_READY_BUNDLE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 19
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "MEDIA_GRAPHICS_NEUTRAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 20
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "MEDIA_AUDIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 21
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "LOCALIZATION_TEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "LOCALIZATION_GLYPHS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "SCENARIO_WORLD_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->SCENARIO_WORLD_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "GAMEPLAY_PARAMETERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->GAMEPLAY_PARAMETERS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 25
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "NATIVE_PURE_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->NATIVE_PURE_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 26
    new-instance v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    const-string v1, "EXECUTABLE_ROM_CODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->EXECUTABLE_ROM_CODE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 17
    invoke-static {}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->$values()[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->$VALUES:[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    .locals 1

    .line 17
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->$VALUES:[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    return-object v0
.end method
