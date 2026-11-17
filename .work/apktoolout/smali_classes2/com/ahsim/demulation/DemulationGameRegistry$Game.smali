.class public final Lcom/ahsim/demulation/DemulationGameRegistry$Game;
.super Ljava/lang/Object;
.source "DemulationGameRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DemulationGameRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Game"
.end annotation


# instance fields
.field public final engine:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

.field public final id:Ljava/lang/String;

.field public final playable:Z

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DemulationGameRegistry$Engine;Z)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
    .param p4, "playable"    # Z

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;->engine:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    iput-boolean p4, p0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;->playable:Z

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DemulationGameRegistry$Engine;ZLcom/ahsim/demulation/DemulationGameRegistry-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DemulationGameRegistry$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DemulationGameRegistry$Engine;Z)V

    return-void
.end method
