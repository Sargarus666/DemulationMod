.class public final Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;
.super Ljava/lang/Object;
.source "RomWorldTerrainRadarAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "world_terrain_radar_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    .line 27
    const-string v1, "terrain/patterns.bin"

    const/16 v2, 0x7340

    const-string v3, "b551fc843072c5cbe11598f57b719e06ab62b43b9eadb5ced900071629396ca1"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string v1, "terrain/metatile_descriptors.bin"

    const/16 v2, 0x2d40

    const-string v3, "ed9e6972a779cac4ea286dedf68ec830b2b0d53e5bc66d9a20d176fb6ab44fce"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    const-string v1, "terrain/palette.bin"

    const/16 v2, 0x80

    const-string v3, "2ba9dac9f2cb4d60e5fa89b025fcf50846b46e248e43b5710d9033d041c935fa"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    const-string v1, "radar/color_tables.bin"

    const/16 v2, 0x205

    const-string v3, "b7b236a574a5956202f5e05e90d59a4c897e9203bd8f3dc0819c2bbce4283790"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    const-string v1, "radar/transition_quadrants.bin"

    const/16 v2, 0x1800

    const-string v3, "887093379c2767d7ef969bc769aa90a87ce5f0a8ae39d34f771688af060d790b"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    const-string v1, "world/structure_beacon_patterns.bin"

    const/16 v2, 0x400

    const-string v3, "3dc1cddbad773a5d4939736d3ede393e0f0b556d095fc1760eea17b630342dce"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    .locals 4
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 47
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    :cond_1
    goto :goto_0

    .line 48
    :cond_2
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomWorldTerrainRadarAssetManifest$Entry;
    goto :goto_0

    .line 42
    :cond_0
    return-wide v0
.end method
