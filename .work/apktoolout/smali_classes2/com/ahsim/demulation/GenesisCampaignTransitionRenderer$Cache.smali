.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# instance fields
.field completionTick:I

.field focusPalette:[I

.field focusSource:[B

.field focusStartTick:I

.field frontendHouse:I

.field houseComponentStream:I

.field housePieces:[[[B

.field houseX:[I

.field houseY:[I

.field missionOneBased:I

.field palette:[I

.field romHouse:I

.field selectedPiece:I

.field staticPieces:[[[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$Cache;-><init>()V

    return-void
.end method
