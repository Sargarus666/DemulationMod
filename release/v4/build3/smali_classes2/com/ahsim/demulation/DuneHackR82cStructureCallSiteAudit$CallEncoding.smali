.class public final enum Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
.super Ljava/lang/Enum;
.source "DuneHackR82cStructureCallSiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

.field public static final enum JSR_ABSOLUTE_LONG:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

.field public static final enum JSR_ABSOLUTE_SHORT:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

.field public static final enum JSR_PC_RELATIVE_WORD:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    .locals 3

    .line 55
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_LONG:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_SHORT:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_PC_RELATIVE_WORD:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    const-string v1, "JSR_ABSOLUTE_LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_LONG:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    const-string v1, "JSR_ABSOLUTE_SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_ABSOLUTE_SHORT:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    const-string v1, "JSR_PC_RELATIVE_WORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->JSR_PC_RELATIVE_WORD:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    .line 55
    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->$values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;
    .locals 1

    .line 55
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallEncoding;

    return-object v0
.end method
