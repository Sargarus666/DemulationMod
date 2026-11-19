.class public final Lcom/ahsim/demulation/DemulationGameRegistry;
.super Ljava/lang/Object;
.source "DemulationGameRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DemulationGameRegistry$Game;,
        Lcom/ahsim/demulation/DemulationGameRegistry$Engine;
    }
.end annotation


# static fields
.field public static final CLASSIC:Ljava/lang/String; = "dune_battle_for_arrakis_genesis"

.field private static final CLASSIC_GAME:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

.field public static final RAZOR:Ljava/lang/String; = "dune_razor_missions_native"

.field private static final RAZOR_ENGINE:Lcom/ahsim/demulation/DemulationGameRegistry$Game;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    sget-object v3, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->CLASSIC_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v1, "dune_battle_for_arrakis_genesis"

    const-string v2, "Dune: The Battle for Arrakis"

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/DemulationGameRegistry$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DemulationGameRegistry$Engine;ZLcom/ahsim/demulation/DemulationGameRegistry-IA;)V

    sput-object v0, Lcom/ahsim/demulation/DemulationGameRegistry;->CLASSIC_GAME:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    .line 20
    new-instance v1, Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    sget-object v4, Lcom/ahsim/demulation/DemulationGameRegistry$Engine;->DUNEHACK_NATIVE:Lcom/ahsim/demulation/DemulationGameRegistry$Engine;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "dune_razor_missions_native"

    const-string v3, "Dune: Razor Missions"

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/DemulationGameRegistry$Game;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DemulationGameRegistry$Engine;ZLcom/ahsim/demulation/DemulationGameRegistry-IA;)V

    sput-object v1, Lcom/ahsim/demulation/DemulationGameRegistry;->RAZOR_ENGINE:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()[Lcom/ahsim/demulation/DemulationGameRegistry$Game;
    .locals 3

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    const/4 v1, 0x0

    sget-object v2, Lcom/ahsim/demulation/DemulationGameRegistry;->CLASSIC_GAME:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/DemulationGameRegistry$Game;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 24
    const-string v0, "dune_battle_for_arrakis_genesis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/DemulationGameRegistry;->CLASSIC_GAME:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    return-object v0

    .line 25
    :cond_0
    const-string v0, "dune_razor_missions_native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/DemulationGameRegistry;->RAZOR_ENGINE:Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isPlayable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/ahsim/demulation/DemulationGameRegistry;->find(Ljava/lang/String;)Lcom/ahsim/demulation/DemulationGameRegistry$Game;

    move-result-object v0

    .line 33
    .local v0, "g":Lcom/ahsim/demulation/DemulationGameRegistry$Game;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ahsim/demulation/DemulationGameRegistry$Game;->playable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
