.class public final enum Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;
.super Ljava/lang/Enum;
.source "DuneHackR82cRazorCallRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourcePattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field public static final enum FRAME_LOCAL_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field public static final enum HP_DELTA_SHIFTED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field public static final enum HP_RELATIVE_CAPPED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field public static final enum REGISTER_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field public static final enum TABLE_LOOKUP_BYTE:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;
    .locals 5

    .line 20
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->FRAME_LOCAL_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->TABLE_LOOKUP_BYTE:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_DELTA_SHIFTED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->REGISTER_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_RELATIVE_CAPPED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    const-string v1, "FRAME_LOCAL_WORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->FRAME_LOCAL_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    const-string v1, "TABLE_LOOKUP_BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->TABLE_LOOKUP_BYTE:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    const-string v1, "HP_DELTA_SHIFTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_DELTA_SHIFTED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    .line 22
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    const-string v1, "REGISTER_WORD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->REGISTER_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    const-string v1, "HP_RELATIVE_CAPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_RELATIVE_CAPPED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    .line 20
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->$values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;
    .locals 1

    .line 20
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    return-object v0
.end method
