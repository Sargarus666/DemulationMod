.class public final enum Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
.super Ljava/lang/Enum;
.source "RomGraphicsMediaOverlayInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum BASE_FALLBACK_POLICY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

.field public static final enum OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 6

    .line 39
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v3, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v4, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    sget-object v5, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_POLICY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    filled-new-array/range {v0 .. v5}, [Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "OVERLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 41
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "OVERLAY_PARTIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->OVERLAY_PARTIAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 42
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "BASE_FALLBACK_IDENTICAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_IDENTICAL:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 43
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "BASE_FALLBACK_UNSUPPORTED_LAYOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_UNSUPPORTED_LAYOUT:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 44
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "BASE_FALLBACK_STRUCTURAL_MISMATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_STRUCTURAL_MISMATCH:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 45
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    const-string v1, "BASE_FALLBACK_POLICY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->BASE_FALLBACK_POLICY:Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    .line 39
    invoke-static {}, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->$values()[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->$VALUES:[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;
    .locals 1

    .line 39
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->$VALUES:[Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomGraphicsMediaOverlayInstaller$GroupState;

    return-object v0
.end method
