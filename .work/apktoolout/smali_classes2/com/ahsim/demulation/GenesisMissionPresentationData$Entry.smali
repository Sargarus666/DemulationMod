.class public final Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;
.super Ljava/lang/Object;
.source "GenesisMissionPresentationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisMissionPresentationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final advice:Ljava/lang/String;

.field public final briefing:Ljava/lang/String;

.field public final defeat:Ljava/lang/String;

.field public final victory:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "briefing"    # Ljava/lang/String;
    .param p2, "victory"    # Ljava/lang/String;
    .param p3, "defeat"    # Ljava/lang/String;
    .param p4, "advice"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;->briefing:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;->victory:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;->defeat:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;->advice:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/GenesisMissionPresentationData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/GenesisMissionPresentationData$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
