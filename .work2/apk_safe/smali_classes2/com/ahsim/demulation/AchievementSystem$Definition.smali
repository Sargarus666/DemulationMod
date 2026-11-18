.class final Lcom/ahsim/demulation/AchievementSystem$Definition;
.super Ljava/lang/Object;
.source "AchievementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/AchievementSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Definition"
.end annotation


# instance fields
.field final conditionEnglish:Ljava/lang/String;

.field final conditionGerman:Ljava/lang/String;

.field final conditionRussian:Ljava/lang/String;

.field final playGamesId:Ljava/lang/String;

.field final stableId:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "stableId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "conditionEnglish"    # Ljava/lang/String;
    .param p4, "conditionRussian"    # Ljava/lang/String;
    .param p5, "conditionGerman"    # Ljava/lang/String;

    .line 37
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "stableId":Ljava/lang/String;
    .end local p2    # "title":Ljava/lang/String;
    .end local p3    # "conditionEnglish":Ljava/lang/String;
    .end local p4    # "conditionRussian":Ljava/lang/String;
    .end local p5    # "conditionGerman":Ljava/lang/String;
    .local v1, "stableId":Ljava/lang/String;
    .local v2, "title":Ljava/lang/String;
    .local v3, "conditionEnglish":Ljava/lang/String;
    .local v4, "conditionRussian":Ljava/lang/String;
    .local v5, "conditionGerman":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/ahsim/demulation/AchievementSystem$Definition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "stableId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "conditionEnglish"    # Ljava/lang/String;
    .param p4, "conditionRussian"    # Ljava/lang/String;
    .param p5, "conditionGerman"    # Ljava/lang/String;
    .param p6, "playGamesId"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->stableId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->title:Ljava/lang/String;

    .line 44
    const-string v0, ""

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    iput-object v1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionEnglish:Ljava/lang/String;

    .line 45
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionEnglish:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    iput-object v1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionRussian:Ljava/lang/String;

    .line 46
    if-nez p5, :cond_2

    iget-object v1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionEnglish:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, p5

    :goto_2
    iput-object v1, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionGerman:Ljava/lang/String;

    .line 47
    if-nez p6, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p6

    :goto_3
    iput-object v0, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->playGamesId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method localizedCondition(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "russian"    # Z
    .param p2, "german"    # Z

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionRussian:Ljava/lang/String;

    return-object v0

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionGerman:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/AchievementSystem$Definition;->conditionEnglish:Ljava/lang/String;

    return-object v0
.end method
