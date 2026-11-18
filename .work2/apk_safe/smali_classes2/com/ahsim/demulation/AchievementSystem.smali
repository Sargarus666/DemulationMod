.class final Lcom/ahsim/demulation/AchievementSystem;
.super Ljava/lang/Object;
.source "AchievementSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/AchievementSystem$Store;,
        Lcom/ahsim/demulation/AchievementSystem$CloudBridge;,
        Lcom/ahsim/demulation/AchievementSystem$Listener;,
        Lcom/ahsim/demulation/AchievementSystem$Definition;
    }
.end annotation


# static fields
.field private static final CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

.field static final NO_CLOUD:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;


# instance fields
.field private final cloudBridge:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

.field private final listener:Lcom/ahsim/demulation/AchievementSystem$Listener;

.field private final store:Lcom/ahsim/demulation/AchievementSystem$Store;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 57
    new-instance v0, Lcom/ahsim/demulation/AchievementSystem$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ahsim/demulation/AchievementSystem$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/ahsim/demulation/AchievementSystem;->NO_CLOUD:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

    .line 62
    const/16 v0, 0x33

    new-array v1, v0, [Lcom/ahsim/demulation/AchievementSystem$Definition;

    .line 63
    const/4 v2, 0x1

    const-string v3, "Sand Snake"

    const-string v4, "Win mission 1 with any house."

    const-string v5, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 1 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v6, "Gewinne Mission 1 mit einem beliebigen Haus."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 67
    const/4 v3, 0x2

    const-string v4, "Desert Mongoose"

    const-string v5, "Win mission 2 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 2 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 2 mit einem beliebigen Haus."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 71
    const/4 v2, 0x3

    const-string v4, "Sand Warrior"

    const-string v5, "Win mission 3 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 3 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 3 mit einem beliebigen Haus."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 75
    const/4 v3, 0x4

    const-string v4, "Dune Trooper"

    const-string v5, "Win mission 4 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 4 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 4 mit einem beliebigen Haus."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 79
    const/4 v2, 0x5

    const-string v4, "Squad Leader"

    const-string v5, "Win mission 5 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 5 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 5 mit einem beliebigen Haus."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 83
    const/4 v3, 0x6

    const-string v4, "Outpost Commander"

    const-string v5, "Win mission 6 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 6 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 6 mit einem beliebigen Haus."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 87
    const/4 v2, 0x7

    const-string v4, "Base Commander"

    const-string v5, "Win mission 7 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 7 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 7 mit einem beliebigen Haus."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 91
    const/16 v3, 0x8

    const-string v4, "Scourge of Dune"

    const-string v5, "Win mission 8 with any house."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 8 \u0437\u0430 \u043b\u044e\u0431\u043e\u0439 \u0434\u043e\u043c."

    const-string v7, "Gewinne Mission 8 mit einem beliebigen Haus."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 95
    const/16 v2, 0x9

    const-string v4, "Blue Planet"

    const-string v5, "Win mission 9 as Atreides."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9 \u0437\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441."

    const-string v7, "Gewinne Mission 9 als Atreides."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 99
    const/16 v3, 0xa

    const-string v4, "Green Planet"

    const-string v5, "Win mission 9 as Ordos."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9 \u0437\u0430 \u041e\u0440\u0434\u043e\u0441."

    const-string v7, "Gewinne Mission 9 als Ordos."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 103
    const/16 v2, 0xb

    const-string v4, "Red Planet"

    const-string v5, "Win mission 9 as Harkonnen."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9 \u0437\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d."

    const-string v7, "Gewinne Mission 9 als Harkonnen."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 107
    const/16 v3, 0xc

    const-string v4, "Level 1 Challenge - Harmageddon"

    const-string v5, "Win mission 1 after destroying at least 13 enemy units, without losing any of your units or structures."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 1, \u0443\u043d\u0438\u0447\u0442\u043e\u0436\u0438\u0432 \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 13 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0445 \u044e\u043d\u0438\u0442\u043e\u0432 \u0438 \u043d\u0435 \u043f\u043e\u0442\u0435\u0440\u044f\u0432 \u043d\u0438 \u043e\u0434\u043d\u043e\u0433\u043e \u0441\u0432\u043e\u0435\u0433\u043e \u044e\u043d\u0438\u0442\u0430 \u0438\u043b\u0438 \u0437\u0434\u0430\u043d\u0438\u044f."

    const-string v7, "Gewinne Mission 1, nachdem du mindestens 13 feindliche Einheiten zerst\u00f6rt hast, ohne eine eigene Einheit oder ein Geb\u00e4ude zu verlieren."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 111
    const/16 v2, 0xd

    const-string v4, "Level 2 Challenge - We want to destroy"

    const-string v5, "Win mission 2 without ever owning more than two Refineries and Spice Silos in total."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 2, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0431\u043e\u043b\u0435\u0435 \u0434\u0432\u0443\u0445 \u043e\u0431\u044a\u0435\u043a\u0442\u043e\u0432 \u0441\u0443\u043c\u043c\u0430\u0440\u043d\u043e: \u041d\u041f\u0417 \u0438 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449 \u0441\u043f\u0430\u0439\u0441\u0430."

    const-string v7, "Gewinne Mission 2, ohne jemals insgesamt mehr als zwei Raffinerien und Spice-Silos gleichzeitig zu besitzen."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 115
    const/16 v3, 0xe

    const-string v4, "Level 3 Challenge - Forever alone"

    const-string v5, "Win mission 3 without ever owning more than one Harvester."

    const-string v6, "\u041f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 3, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0431\u043e\u043b\u0435\u0435 \u043e\u0434\u043d\u043e\u0433\u043e \u0445\u0430\u0440\u0432\u0435\u0441\u0442\u0435\u0440\u0430."

    const-string v7, "Gewinne Mission 3, ohne jemals mehr als einen Harvester gleichzeitig zu besitzen."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 119
    const/16 v2, 0xf

    const-string v4, "4 - Atreides Challenge - I lost my wrench"

    const-string v5, "As Atreides, win mission 4 without using structure repair."

    const-string v6, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 4, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0440\u0435\u043c\u043e\u043d\u0442\u0438\u0440\u0443\u044f \u0437\u0434\u0430\u043d\u0438\u044f."

    const-string v7, "Gewinne als Atreides Mission 4, ohne Geb\u00e4ude zu reparieren."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 123
    const/16 v3, 0x10

    const-string v4, "4 - Ordos Challenge - Everything has its limit"

    const-string v5, "As Ordos, win mission 4 without ever filling your spice storage to capacity."

    const-string v6, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 4, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0437\u0430\u043f\u043e\u043b\u043d\u0438\u0432 \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430 \u0441\u043f\u0430\u0439\u0441\u0430 \u0434\u043e \u043f\u0440\u0435\u0434\u0435\u043b\u0430."

    const-string v7, "Gewinne als Ordos Mission 4, ohne dein Spice-Lager jemals vollst\u00e4ndig zu f\u00fcllen."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 127
    const/16 v2, 0x11

    const-string v4, "4 - Harkonnen Challenge - All your base belongs to us"

    const-string v5, "As Harkonnen, win mission 4 after destroying no more than three enemy structures."

    const-string v6, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 4, \u0443\u043d\u0438\u0447\u0442\u043e\u0436\u0438\u0432 \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0442\u0440\u0451\u0445 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0445 \u0437\u0434\u0430\u043d\u0438\u0439."

    const-string v7, "Gewinne als Harkonnen Mission 4 und zerst\u00f6re dabei h\u00f6chstens drei feindliche Geb\u00e4ude."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 131
    const/16 v3, 0x12

    const-string v4, "5 - Atreides Challenge - Wise mentat"

    const-string v5, "As Atreides, win mission 5 while losing no more than ten of your units."

    const-string v6, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 5, \u043f\u043e\u0442\u0435\u0440\u044f\u0432 \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0434\u0435\u0441\u044f\u0442\u0438 \u0441\u0432\u043e\u0438\u0445 \u044e\u043d\u0438\u0442\u043e\u0432."

    const-string v7, "Gewinne als Atreides Mission 5 und verliere dabei h\u00f6chstens zehn eigene Einheiten."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 135
    const/16 v2, 0x13

    const-string v4, "5 - Ordos Challenge - Uninterruptible Power Supply"

    const-string v5, "As Ordos, win mission 5 without any power shortage."

    const-string v6, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 5, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u0432 \u043d\u0435\u0445\u0432\u0430\u0442\u043a\u0438 \u044d\u043d\u0435\u0440\u0433\u0438\u0438."

    const-string v7, "Gewinne als Ordos Mission 5 ohne einen einzigen Strommangel."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 139
    const/16 v3, 0x14

    const-string v4, "5 - Harkonnen Challenge - One Refinery is enough"

    const-string v5, "As Harkonnen, win mission 5 while never owning more than one Refinery and never owning a Spice Silo."

    const-string v6, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 5, \u0438\u043c\u0435\u044f \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u043e\u0434\u043d\u043e\u0433\u043e \u041d\u041f\u0417 \u0438 \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430 \u0441\u043f\u0430\u0439\u0441\u0430."

    const-string v7, "Gewinne als Harkonnen Mission 5, ohne jemals mehr als eine Raffinerie oder ein Spice-Silo zu besitzen."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v2

    .line 143
    const/16 v2, 0x15

    const-string v4, "6 - Atreides Challenge - Our structures will stand forever"

    const-string v5, "As Atreides, win mission 6 without losing any of your structures."

    const-string v6, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 6, \u043d\u0435 \u043f\u043e\u0442\u0435\u0440\u044f\u0432 \u043d\u0438 \u043e\u0434\u043d\u043e\u0433\u043e \u0441\u0432\u043e\u0435\u0433\u043e \u0437\u0434\u0430\u043d\u0438\u044f."

    const-string v7, "Gewinne als Atreides Mission 6, ohne ein eigenes Geb\u00e4ude zu verlieren."

    invoke-static {v2, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 147
    const/16 v3, 0x16

    const-string v4, "6 - Ordos Challenge - We don\'t need a Starport"

    const-string v5, "As Ordos, win mission 6 without purchasing anything from the Starport."

    const-string v6, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 6, \u043d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u043f\u043e\u043a\u0443\u043f\u0430\u044f \u0432 \u043a\u043e\u0441\u043c\u043e\u043f\u043e\u0440\u0442\u0435."

    const-string v7, "Gewinne als Ordos Mission 6, ohne etwas im Raumhafen zu kaufen."

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v3

    aput-object v3, v1, v2

    .line 151
    const/16 v2, 0x17

    const-string v3, "6 - Harkonnen Challenge - Batteries not included"

    const-string v4, "As Harkonnen, win mission 6 while never owning more than one Windtrap."

    const-string v5, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 6, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0431\u043e\u043b\u0435\u0435 \u043e\u0434\u043d\u043e\u0439 \u0432\u0435\u0442\u0440\u044f\u043d\u043e\u0439 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0430\u043d\u0446\u0438\u0438."

    const-string v6, "Gewinne als Harkonnen Mission 6, ohne jemals mehr als eine Windfalle gleichzeitig zu besitzen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 155
    const/16 v2, 0x18

    const-string v3, "7 - Atreides Challenge - Batteries not included"

    const-string v4, "As Atreides, win mission 7 while never owning more than two Windtraps."

    const-string v5, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 7, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u0431\u043e\u043b\u0435\u0435 \u0434\u0432\u0443\u0445 \u0432\u0435\u0442\u0440\u044f\u043d\u044b\u0445 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0430\u043d\u0446\u0438\u0439."

    const-string v6, "Gewinne als Atreides Mission 7, ohne jemals mehr als zwei Windfallen gleichzeitig zu besitzen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 159
    const/16 v2, 0x19

    const-string v3, "7 - Ordos Challenge - Wise mentat"

    const-string v4, "As Ordos, win mission 7 while losing no more than twenty of your units."

    const-string v5, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 7, \u043f\u043e\u0442\u0435\u0440\u044f\u0432 \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0434\u0432\u0430\u0434\u0446\u0430\u0442\u0438 \u0441\u0432\u043e\u0438\u0445 \u044e\u043d\u0438\u0442\u043e\u0432."

    const-string v6, "Gewinne als Ordos Mission 7 und verliere dabei h\u00f6chstens zwanzig eigene Einheiten."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 163
    const/16 v2, 0x1a

    const-string v3, "7 - Harkonnen Challenge - I lost my wrench"

    const-string v4, "As Harkonnen, win mission 7 without using structure repair."

    const-string v5, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 7, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0440\u0435\u043c\u043e\u043d\u0442\u0438\u0440\u0443\u044f \u0437\u0434\u0430\u043d\u0438\u044f."

    const-string v6, "Gewinne als Harkonnen Mission 7, ohne Geb\u00e4ude zu reparieren."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 167
    const/16 v2, 0x1b

    const-string v3, "8 - Atreides Challenge - Your map is in another mission"

    const-string v4, "As Atreides, win mission 8 without enabling or using the radar at any point."

    const-string v5, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 8, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0432\u043a\u043b\u044e\u0447\u0430\u044f \u0438 \u043d\u0435 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u044f \u0440\u0430\u0434\u0430\u0440."

    const-string v6, "Gewinne als Atreides Mission 8, ohne das Radar irgendwann einzuschalten oder zu benutzen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 171
    const/16 v2, 0x1c

    const-string v3, "8 - Ordos Challenge - Our structures will stand forever"

    const-string v4, "As Ordos, win mission 8 without losing any of your structures."

    const-string v5, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 8, \u043d\u0435 \u043f\u043e\u0442\u0435\u0440\u044f\u0432 \u043d\u0438 \u043e\u0434\u043d\u043e\u0433\u043e \u0441\u0432\u043e\u0435\u0433\u043e \u0437\u0434\u0430\u043d\u0438\u044f."

    const-string v6, "Gewinne als Ordos Mission 8, ohne ein eigenes Geb\u00e4ude zu verlieren."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 175
    const/16 v2, 0x1d

    const-string v3, "8 - Harkonnen Challenge - Take a look around"

    const-string v4, "As Harkonnen, win mission 8 without using instant camera jumps. Manual camera scrolling is allowed."

    const-string v5, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 8 \u0431\u0435\u0437 \u043c\u0433\u043d\u043e\u0432\u0435\u043d\u043d\u044b\u0445 \u043f\u0440\u044b\u0436\u043a\u043e\u0432 \u043a\u0430\u043c\u0435\u0440\u044b. \u041e\u0431\u044b\u0447\u043d\u0430\u044f \u0440\u0443\u0447\u043d\u0430\u044f \u043f\u0440\u043e\u043a\u0440\u0443\u0442\u043a\u0430 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0430."

    const-string v6, "Gewinne als Harkonnen Mission 8 ohne sofortige Kameraspr\u00fcnge. Manuelles Scrollen der Karte ist erlaubt."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 179
    const/16 v2, 0x1e

    const-string v3, "9 - Atreides Challenge - Two Refinery is enough"

    const-string v4, "As Atreides, win mission 9 while never owning more than two Refineries and never owning a Spice Silo."

    const-string v5, "\u0417\u0430 \u0410\u0442\u0440\u0435\u0439\u0434\u0435\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9, \u0438\u043c\u0435\u044f \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0434\u0432\u0443\u0445 \u041d\u041f\u0417 \u0438 \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0438\u043c\u0435\u044f \u0445\u0440\u0430\u043d\u0438\u043b\u0438\u0449\u0430 \u0441\u043f\u0430\u0439\u0441\u0430."

    const-string v6, "Gewinne als Atreides Mission 9, ohne jemals mehr als zwei Raffinerien oder ein Spice-Silo zu besitzen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 183
    const/16 v2, 0x1f

    const-string v3, "9 - Ordos Challenge - All your base belongs to us"

    const-string v4, "As Ordos, win mission 9 after destroying no more than sixteen enemy structures."

    const-string v5, "\u0417\u0430 \u041e\u0440\u0434\u043e\u0441 \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9, \u0443\u043d\u0438\u0447\u0442\u043e\u0436\u0438\u0432 \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 \u0448\u0435\u0441\u0442\u043d\u0430\u0434\u0446\u0430\u0442\u0438 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0445 \u0437\u0434\u0430\u043d\u0438\u0439."

    const-string v6, "Gewinne als Ordos Mission 9 und zerst\u00f6re dabei h\u00f6chstens sechzehn feindliche Geb\u00e4ude."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 187
    const/16 v2, 0x20

    const-string v3, "9 - Harkonnen Challenge - Uninterruptible Power Supply"

    const-string v4, "As Harkonnen, win mission 9 without any power shortage."

    const-string v5, "\u0417\u0430 \u0425\u0430\u0440\u043a\u043e\u043d\u043d\u0435\u043d \u043f\u043e\u0431\u0435\u0434\u0438\u0442\u0435 \u0432 \u043c\u0438\u0441\u0441\u0438\u0438 9, \u043d\u0438 \u0440\u0430\u0437\u0443 \u043d\u0435 \u0434\u043e\u043f\u0443\u0441\u0442\u0438\u0432 \u043d\u0435\u0445\u0432\u0430\u0442\u043a\u0438 \u044d\u043d\u0435\u0440\u0433\u0438\u0438."

    const-string v6, "Gewinne als Harkonnen Mission 9 ohne einen einzigen Strommangel."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 191
    const/16 v2, 0x21

    const-string v3, "I\'ve got the power!"

    const-string v4, "Complete construction of your first Windtrap."

    const-string v5, "\u0417\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u0435 \u0441\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u044c\u0441\u0442\u0432\u043e \u0441\u0432\u043e\u0435\u0439 \u043f\u0435\u0440\u0432\u043e\u0439 \u0432\u0435\u0442\u0440\u044f\u043d\u043e\u0439 \u044d\u043b\u0435\u043a\u0442\u0440\u043e\u0441\u0442\u0430\u043d\u0446\u0438\u0438."

    const-string v6, "Schlie\u00dfe den Bau deiner ersten Windfalle ab."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 195
    const/16 v2, 0x22

    const-string v3, "No way to play without vehicles"

    const-string v4, "Complete construction of your first Vehicle Factory."

    const-string v5, "\u0417\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u0435 \u0441\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u044c\u0441\u0442\u0432\u043e \u0441\u0432\u043e\u0435\u0433\u043e \u043f\u0435\u0440\u0432\u043e\u0433\u043e \u0437\u0430\u0432\u043e\u0434\u0430 \u043b\u0451\u0433\u043a\u043e\u0439 \u0442\u0435\u0445\u043d\u0438\u043a\u0438."

    const-string v6, "Schlie\u00dfe den Bau deiner ersten Fahrzeugfabrik ab."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 199
    const/16 v2, 0x23

    const-string v3, "Always make backups"

    const-string v4, "Have at least two of your Construction Yards alive at the same time."

    const-string v5, "\u0418\u043c\u0435\u0439\u0442\u0435 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043a\u0430\u043a \u043c\u0438\u043d\u0438\u043c\u0443\u043c \u0434\u0432\u0430 \u0434\u0435\u0439\u0441\u0442\u0432\u0443\u044e\u0449\u0438\u0445 \u0441\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0445 \u0434\u0432\u043e\u0440\u0430."

    const-string v6, "Besitze gleichzeitig mindestens zwei intakte Bauh\u00f6fe."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 203
    const/16 v2, 0x24

    const-string v3, "Every credit counts"

    const-string v4, "Buy a Starport unit for less than its original base price."

    const-string v5, "\u041a\u0443\u043f\u0438\u0442\u0435 \u044e\u043d\u0438\u0442 \u0432 \u043a\u043e\u0441\u043c\u043e\u043f\u043e\u0440\u0442\u0435 \u0434\u0435\u0448\u0435\u0432\u043b\u0435 \u0435\u0433\u043e \u0438\u0441\u0445\u043e\u0434\u043d\u043e\u0439 \u0431\u0430\u0437\u043e\u0432\u043e\u0439 \u0446\u0435\u043d\u044b."

    const-string v6, "Kaufe eine Einheit im Raumhafen unter ihrem urspr\u00fcnglichen Basispreis."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 207
    const/16 v2, 0x25

    const-string v3, "What is the real power of the palace"

    const-string v4, "Successfully activate a Palace special weapon or special action."

    const-string v5, "\u0423\u0441\u043f\u0435\u0448\u043d\u043e \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0443\u0439\u0442\u0435 \u043e\u0441\u043e\u0431\u043e\u0435 \u043e\u0440\u0443\u0436\u0438\u0435 \u0438\u043b\u0438 \u043e\u0441\u043e\u0431\u043e\u0435 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435 \u0414\u0432\u043e\u0440\u0446\u0430."

    const-string v6, "Aktiviere erfolgreich die Spezialwaffe oder Spezialaktion des Palastes."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 211
    const/16 v2, 0x26

    const-string v3, "Earn 5000 credits"

    const-string v4, "Hold at least 5,000 credits/spice at one time."

    const-string v5, "\u041d\u0430\u043a\u043e\u043f\u0438\u0442\u0435 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 5 000 \u043a\u0440\u0435\u0434\u0438\u0442\u043e\u0432/\u0441\u043f\u0430\u0439\u0441\u0430."

    const-string v6, "Besitze gleichzeitig mindestens 5.000 Credits/Spice."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 215
    const/16 v2, 0x27

    const-string v3, "Earn 15000 credits"

    const-string v4, "Hold at least 15,000 credits/spice at one time."

    const-string v5, "\u041d\u0430\u043a\u043e\u043f\u0438\u0442\u0435 \u043e\u0434\u043d\u043e\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e \u043d\u0435 \u043c\u0435\u043d\u0435\u0435 15 000 \u043a\u0440\u0435\u0434\u0438\u0442\u043e\u0432/\u0441\u043f\u0430\u0439\u0441\u0430."

    const-string v6, "Besitze gleichzeitig mindestens 15.000 Credits/Spice."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 219
    const/16 v2, 0x28

    const-string v3, "Spice up Your Life"

    const-string v4, "Harvest 25,000 spice cumulatively across valid play."

    const-string v5, "\u0414\u043e\u0431\u0443\u0434\u044c\u0442\u0435 \u0441\u0443\u043c\u043c\u0430\u0440\u043d\u043e 25 000 \u0441\u043f\u0430\u0439\u0441\u0430 \u0432 \u043e\u0431\u044b\u0447\u043d\u043e\u0439 \u0438\u0433\u0440\u0435."

    const-string v6, "Ernte insgesamt 25.000 Spice in regul\u00e4ren Spielen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 223
    const/16 v2, 0x29

    const-string v3, "Ace of Spice"

    const-string v4, "Harvest 50,000 spice cumulatively across valid play."

    const-string v5, "\u0414\u043e\u0431\u0443\u0434\u044c\u0442\u0435 \u0441\u0443\u043c\u043c\u0430\u0440\u043d\u043e 50 000 \u0441\u043f\u0430\u0439\u0441\u0430 \u0432 \u043e\u0431\u044b\u0447\u043d\u043e\u0439 \u0438\u0433\u0440\u0435."

    const-string v6, "Ernte insgesamt 50.000 Spice in regul\u00e4ren Spielen."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 227
    const/16 v2, 0x2a

    const-string v3, "Spice World"

    const-string v4, "In one mission, trigger or remove every spice bloom that existed when the mission started."

    const-string v5, "\u0412 \u043e\u0434\u043d\u043e\u0439 \u043c\u0438\u0441\u0441\u0438\u0438 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u0443\u0439\u0442\u0435 \u0438\u043b\u0438 \u0443\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0432\u0441\u0435 \u0437\u0430\u043b\u0435\u0436\u0438 Spice Bloom, \u0441\u0443\u0449\u0435\u0441\u0442\u0432\u043e\u0432\u0430\u0432\u0448\u0438\u0435 \u043d\u0430 \u043c\u043e\u043c\u0435\u043d\u0442 \u0435\u0451 \u043d\u0430\u0447\u0430\u043b\u0430."

    const-string v6, "L\u00f6se in einer Mission alle Spice Blooms aus oder entferne sie, die zu Missionsbeginn vorhanden waren."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 231
    const/16 v2, 0x2b

    const-string v3, "Warlord"

    const-string v4, "Destroy 100 enemy units cumulatively."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0441\u0443\u043c\u043c\u0430\u0440\u043d\u043e 100 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0445 \u044e\u043d\u0438\u0442\u043e\u0432."

    const-string v6, "Zerst\u00f6re insgesamt 100 feindliche Einheiten."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 235
    const/16 v2, 0x2c

    const-string v3, "Chief Warlord"

    const-string v4, "Destroy 200 enemy units cumulatively."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0441\u0443\u043c\u043c\u0430\u0440\u043d\u043e 200 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0445 \u044e\u043d\u0438\u0442\u043e\u0432."

    const-string v6, "Zerst\u00f6re insgesamt 200 feindliche Einheiten."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 239
    const/16 v2, 0x2d

    const-string v3, "Worm\'s armageddon"

    const-string v4, "Destroy a sandworm."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u043f\u0435\u0441\u0447\u0430\u043d\u043e\u0433\u043e \u0447\u0435\u0440\u0432\u044f."

    const-string v6, "Zerst\u00f6re einen Sandwurm."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 243
    const/16 v2, 0x2e

    const-string v3, "Total Annihilation"

    const-string v4, "Destroy two sandworms in one mission before either worm eats anyone."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0434\u0432\u0443\u0445 \u043f\u0435\u0441\u0447\u0430\u043d\u044b\u0445 \u0447\u0435\u0440\u0432\u0435\u0439 \u0437\u0430 \u043e\u0434\u043d\u0443 \u043c\u0438\u0441\u0441\u0438\u044e \u0434\u043e \u0442\u043e\u0433\u043e, \u043a\u0430\u043a \u043b\u044e\u0431\u043e\u0439 \u0438\u0437 \u043d\u0438\u0445 \u043a\u043e\u0433\u043e-\u043b\u0438\u0431\u043e \u0441\u044a\u0435\u0441\u0442."

    const-string v6, "Zerst\u00f6re zwei Sandw\u00fcrmer in einer Mission, bevor einer der W\u00fcrmer jemanden frisst."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 247
    const/16 v2, 0x2f

    const-string v3, "Most wanted Saboteur"

    const-string v4, "Kill an enemy Saboteur in combat. Its own scripted detonation does not count."

    const-string v5, "\u0423\u0431\u0435\u0439\u0442\u0435 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u043e\u0433\u043e \u0434\u0438\u0432\u0435\u0440\u0441\u0430\u043d\u0442\u0430 \u0432 \u0431\u043e\u044e. \u0415\u0433\u043e \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043d\u044b\u0439 \u043f\u043e\u0434\u0440\u044b\u0432 \u043d\u0435 \u0437\u0430\u0441\u0447\u0438\u0442\u044b\u0432\u0430\u0435\u0442\u0441\u044f."

    const-string v6, "T\u00f6te einen feindlichen Saboteur im Kampf. Seine eigene geskriptete Detonation z\u00e4hlt nicht."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 251
    const/16 v2, 0x30

    const-string v3, "Do not build on my terrain"

    const-string v4, "Destroy an enemy Construction Yard. Capturing it does not count."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0439 \u0441\u0442\u0440\u043e\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0434\u0432\u043e\u0440. \u0417\u0430\u0445\u0432\u0430\u0442 \u043d\u0435 \u0437\u0430\u0441\u0447\u0438\u0442\u044b\u0432\u0430\u0435\u0442\u0441\u044f."

    const-string v6, "Zerst\u00f6re einen feindlichen Bauhof. Eine Eroberung z\u00e4hlt nicht."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 255
    const/16 v2, 0x31

    const-string v3, "Blow up the palace? EZ"

    const-string v4, "Destroy an enemy Palace. Capturing it does not count."

    const-string v5, "\u0423\u043d\u0438\u0447\u0442\u043e\u0436\u044c\u0442\u0435 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u0438\u0439 \u0414\u0432\u043e\u0440\u0435\u0446. \u0417\u0430\u0445\u0432\u0430\u0442 \u043d\u0435 \u0437\u0430\u0441\u0447\u0438\u0442\u044b\u0432\u0430\u0435\u0442\u0441\u044f."

    const-string v6, "Zerst\u00f6re einen feindlichen Palast. Eine Eroberung z\u00e4hlt nicht."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 259
    const/16 v2, 0x32

    const-string v3, "We want someone else\'s structure"

    const-string v4, "Capture any live enemy structure."

    const-string v5, "\u0417\u0430\u0445\u0432\u0430\u0442\u0438\u0442\u0435 \u043b\u044e\u0431\u043e\u0435 \u0434\u0435\u0439\u0441\u0442\u0432\u0443\u044e\u0449\u0435\u0435 \u0432\u0440\u0430\u0436\u0435\u0441\u043a\u043e\u0435 \u0437\u0434\u0430\u043d\u0438\u0435."

    const-string v6, "Erobere ein beliebiges intaktes feindliches Geb\u00e4ude."

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v2

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 263
    const-string v2, "Mission Impossible"

    const-string v3, "Produce a special vehicle belonging to another house: Sonic Tank, Deviator or Devastator."

    const-string v4, "\u041f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0438\u0442\u0435 \u043e\u0441\u043e\u0431\u0443\u044e \u0442\u0435\u0445\u043d\u0438\u043a\u0443 \u0434\u0440\u0443\u0433\u043e\u0433\u043e \u0434\u043e\u043c\u0430: Sonic Tank, Deviator \u0438\u043b\u0438 Devastator."

    const-string v5, "Produziere ein Spezialfahrzeug eines anderen Hauses: Sonic Tank, Deviator oder Devastator."

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ahsim/demulation/AchievementSystem;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v0

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lcom/ahsim/demulation/AchievementSystem;->CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/AchievementSystem$Store;Lcom/ahsim/demulation/AchievementSystem$CloudBridge;Lcom/ahsim/demulation/AchievementSystem$Listener;)V
    .locals 2
    .param p1, "store"    # Lcom/ahsim/demulation/AchievementSystem$Store;
    .param p2, "cloudBridge"    # Lcom/ahsim/demulation/AchievementSystem$CloudBridge;
    .param p3, "listener"    # Lcom/ahsim/demulation/AchievementSystem$Listener;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    if-eqz p1, :cond_1

    .line 275
    iput-object p1, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    .line 276
    if-nez p2, :cond_0

    sget-object v0, Lcom/ahsim/demulation/AchievementSystem;->NO_CLOUD:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/AchievementSystem;->cloudBridge:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

    .line 277
    iput-object p3, p0, Lcom/ahsim/demulation/AchievementSystem;->listener:Lcom/ahsim/demulation/AchievementSystem$Listener;

    .line 278
    return-void

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/AchievementSystem$Definition;
    .locals 6
    .param p0, "oneBasedIndex"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "en"    # Ljava/lang/String;
    .param p3, "ru"    # Ljava/lang/String;
    .param p4, "de"    # Ljava/lang/String;

    .line 317
    new-instance v0, Lcom/ahsim/demulation/AchievementSystem$Definition;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 318
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 317
    const-string v3, "demulation.achievement.%03d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "title":Ljava/lang/String;
    .end local p2    # "en":Ljava/lang/String;
    .end local p3    # "ru":Ljava/lang/String;
    .end local p4    # "de":Ljava/lang/String;
    .local v2, "title":Ljava/lang/String;
    .local v3, "en":Ljava/lang/String;
    .local v4, "ru":Ljava/lang/String;
    .local v5, "de":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/AchievementSystem$Definition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static definition(I)Lcom/ahsim/demulation/AchievementSystem$Definition;
    .locals 1
    .param p0, "zeroBasedIndex"    # I

    .line 285
    if-ltz p0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/AchievementSystem;->CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/AchievementSystem;->CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/ahsim/demulation/AchievementSystem$Definition;)V
    .locals 0
    .param p0, "definition"    # Lcom/ahsim/demulation/AchievementSystem$Definition;

    .line 57
    return-void
.end method

.method static size()I
    .locals 1

    .line 281
    sget-object v0, Lcom/ahsim/demulation/AchievementSystem;->CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

    array-length v0, v0

    return v0
.end method


# virtual methods
.method isUnlocked(I)Z
    .locals 3
    .param p1, "zeroBasedIndex"    # I

    .line 289
    invoke-static {p1}, Lcom/ahsim/demulation/AchievementSystem;->definition(I)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v0

    .line 290
    .local v0, "d":Lcom/ahsim/demulation/AchievementSystem$Definition;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    iget-object v2, v0, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ahsim/demulation/AchievementSystem$Store;->isUnlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method syncUnlockedToCloud()V
    .locals 6

    .line 311
    sget-object v0, Lcom/ahsim/demulation/AchievementSystem;->CATALOG:[Lcom/ahsim/demulation/AchievementSystem$Definition;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 312
    .local v3, "d":Lcom/ahsim/demulation/AchievementSystem$Definition;
    iget-object v4, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    iget-object v5, v3, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/ahsim/demulation/AchievementSystem$Store;->isUnlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ahsim/demulation/AchievementSystem;->cloudBridge:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

    invoke-interface {v4, v3}, Lcom/ahsim/demulation/AchievementSystem$CloudBridge;->unlock(Lcom/ahsim/demulation/AchievementSystem$Definition;)V

    .line 311
    .end local v3    # "d":Lcom/ahsim/demulation/AchievementSystem$Definition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method unlock(I)Z
    .locals 5
    .param p1, "zeroBasedIndex"    # I

    .line 300
    invoke-static {p1}, Lcom/ahsim/demulation/AchievementSystem;->definition(I)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v0

    .line 301
    .local v0, "d":Lcom/ahsim/demulation/AchievementSystem$Definition;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    iget-object v2, v0, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ahsim/demulation/AchievementSystem$Store;->isUnlocked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 303
    .local v1, "now":J
    iget-object v3, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    iget-object v4, v0, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v2}, Lcom/ahsim/demulation/AchievementSystem$Store;->markUnlocked(Ljava/lang/String;J)V

    .line 304
    iget-object v3, p0, Lcom/ahsim/demulation/AchievementSystem;->cloudBridge:Lcom/ahsim/demulation/AchievementSystem$CloudBridge;

    invoke-interface {v3, v0}, Lcom/ahsim/demulation/AchievementSystem$CloudBridge;->unlock(Lcom/ahsim/demulation/AchievementSystem$Definition;)V

    .line 305
    iget-object v3, p0, Lcom/ahsim/demulation/AchievementSystem;->listener:Lcom/ahsim/demulation/AchievementSystem$Listener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ahsim/demulation/AchievementSystem;->listener:Lcom/ahsim/demulation/AchievementSystem$Listener;

    invoke-interface {v3, v0}, Lcom/ahsim/demulation/AchievementSystem$Listener;->onUnlocked(Lcom/ahsim/demulation/AchievementSystem$Definition;)V

    .line 306
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 301
    .end local v1    # "now":J
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method unlockedAt(I)J
    .locals 3
    .param p1, "zeroBasedIndex"    # I

    .line 294
    invoke-static {p1}, Lcom/ahsim/demulation/AchievementSystem;->definition(I)Lcom/ahsim/demulation/AchievementSystem$Definition;

    move-result-object v0

    .line 295
    .local v0, "d":Lcom/ahsim/demulation/AchievementSystem$Definition;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/AchievementSystem;->store:Lcom/ahsim/demulation/AchievementSystem$Store;

    iget-object v2, v0, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ahsim/demulation/AchievementSystem$Store;->unlockedAt(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method
