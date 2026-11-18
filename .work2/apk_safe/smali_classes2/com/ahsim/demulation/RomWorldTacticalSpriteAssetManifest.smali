.class public final Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;
.super Ljava/lang/Object;
.source "RomWorldTacticalSpriteAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    }
.end annotation


# static fields
.field public static final CLASSIC_PURCHASE_ICONS:Ljava/lang/String; = "tactical/classic_purchase_icons.bin"

.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "world_tactical_sprites_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    .line 29
    const-string v1, "tactical/static_patterns_922_2047.bin"

    const v2, 0x8cc0

    const-string v3, "a04ee1038b4ea011b0944f9ce76c4dbf6e826100f17a0c2da5c63ece2cbb4ab4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    const-string v1, "tactical/visual_catalog.bin"

    const/16 v2, 0x1edc

    const-string v3, "c419178fc0c6d7b0119f0f7990d5edba31c61685f3b1f5fce0e57eddfb480ea0"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    const-string v1, "tactical/dynamic_patterns.bin"

    const/16 v2, 0x3360

    const-string v3, "06c5f6688cb4d07dc1ff0caae35e962ca58507f1c0b35851cd98f6ed31443b23"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    const-string v1, "tactical/direct_layouts.bin"

    const/16 v2, 0x1358

    const-string v3, "5bb679cbf63fd36b34db174851c033a08cbdceb61b3bd8684728f44bcb43df50"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 33
    const-string v1, "tactical/placement_grid_patterns.bin"

    const/16 v2, 0x200

    const-string v3, "8ce62922476c251d1d1887c1f8e3c1424e0e75e498125222097e37587b22bcdc"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 34
    const-string v1, "tactical/classic_purchase_icons.bin"

    const v2, 0x281b8

    const-string v3, "e5cc22f4fe264bb6bafd41eab9916c598ef39e4f7e1f7debe5516344055154d7"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    .locals 4
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 54
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    :cond_1
    goto :goto_0

    .line 55
    :cond_2
    return-object v0
.end method

.method public static legacyEntries()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->ENTRIES:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomWorldTacticalSpriteAssetManifest$Entry;
    goto :goto_0

    .line 49
    :cond_0
    return-wide v0
.end method
