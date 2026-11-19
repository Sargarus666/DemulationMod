.class public final enum Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;
.super Ljava/lang/Enum;
.source "DuneHackR82CampaignLinkProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Confidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

.field public static final enum AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

.field public static final enum STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

.field public static final enum UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;


# direct methods
.method private static synthetic $values()[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;
    .locals 3

    .line 18
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    filled-new-array {v0, v1, v2}, [Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const-string v1, "STRUCTURAL_CANDIDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    new-instance v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const-string v1, "AUDITED_REFERENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    invoke-static {}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->$values()[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    return-object v0
.end method

.method public static values()[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;
    .locals 1

    .line 18
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->$VALUES:[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    return-object v0
.end method
