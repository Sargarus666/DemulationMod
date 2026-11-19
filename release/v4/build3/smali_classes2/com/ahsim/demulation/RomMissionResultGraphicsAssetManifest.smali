.class public final Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;
.super Ljava/lang/Object;
.source "RomMissionResultGraphicsAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "mission_result_graphics_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    .line 27
    const-string v1, "mission_result/palette.bin"

    const/16 v2, 0x80

    const-string v3, "4a37a93d4cc7995993d06357a69486a12423f6a5281faf67d34a45e81b568557"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string v1, "mission_result/common_patterns.bin"

    const/16 v2, 0x7000

    const-string v3, "480b0f918c041c5d71fd624016d0e0b91fb0f89bbae145216e1df06b6414d524"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    const-string v1, "mission_result/font.bin"

    const/16 v2, 0x1000

    const-string v3, "d42f55982110cf6fa6d0aa7e9ae9382045a73de0b59f46d0140eedbdaad3844b"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    const-string v1, "mission_result/backdrop0.map"

    const/16 v2, 0xe00

    const-string v3, "678a8cbd73e91eaa26525db27bf93a44db6adfe0bba8c027d5fda5eb064592ef"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 31
    const-string v1, "mission_result/backdrop1.map"

    const-string v3, "9bd473adde71df5029b7051b48caac28ea53b53839d5e974e714b91002fd89b8"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 32
    const-string v1, "mission_result/backdrop2.map"

    const-string v3, "d1f2d550cb0da19dbb93ec7e95d42675a29b80e8364964a36530bdf60df6c381"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 33
    const-string v1, "mission_result/overlay.map"

    const-string v3, "279858f4a7cbe2389ec891b38e44957b4a51b28b7fb36bf827cb49688c3f7bae"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 34
    const-string v1, "mission_result/password_overlay.map"

    const/16 v2, 0x700

    const-string v3, "e511cdced4f6a7562a35233d4cc6f43aa7f6cf9f3c501f0fc0488c8340c2bd27"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    .locals 4
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 49
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    :cond_1
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomMissionResultGraphicsAssetManifest$Entry;
    goto :goto_0

    .line 44
    :cond_0
    return-wide v0
.end method
