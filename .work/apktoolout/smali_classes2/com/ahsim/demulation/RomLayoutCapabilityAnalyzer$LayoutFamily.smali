.class public final enum Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
.super Ljava/lang/Enum;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum ORIGINAL_USA:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public static final enum UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .locals 11

    .line 21
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_USA:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v4, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v8, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v9, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    sget-object v10, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    filled-new-array/range {v0 .. v10}, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "ORIGINAL_USA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_USA:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "ORIGINAL_LAYOUT_PATCHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R79"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 25
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R80B"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 26
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R81B"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 27
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R81C"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 28
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R82B"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 29
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R82C"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 30
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_R82C_PLUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 31
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "DUNEHACK_UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 32
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 21
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->$values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->$VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .locals 1

    .line 21
    sget-object v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->$VALUES:[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    return-object v0
.end method
