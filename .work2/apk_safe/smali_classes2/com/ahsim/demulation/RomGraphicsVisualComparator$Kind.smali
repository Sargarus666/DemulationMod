.class public final enum Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
.super Ljava/lang/Enum;
.source "RomGraphicsVisualComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsVisualComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

.field public static final enum COLORS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

.field public static final enum METATILE_ATTRIBUTES:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

.field public static final enum PIXELS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

.field public static final enum UNDECODED:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
    .locals 4

    .line 12
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->COLORS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    sget-object v1, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->PIXELS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    sget-object v2, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->METATILE_ATTRIBUTES:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    sget-object v3, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->UNDECODED:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    const-string v1, "COLORS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->COLORS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    const-string v1, "PIXELS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->PIXELS:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    const-string v1, "METATILE_ATTRIBUTES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->METATILE_ATTRIBUTES:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    new-instance v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    const-string v1, "UNDECODED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->UNDECODED:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    invoke-static {}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->$values()[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->$VALUES:[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 12
    const-class v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
    .locals 1

    .line 12
    sget-object v0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->$VALUES:[Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    return-object v0
.end method
