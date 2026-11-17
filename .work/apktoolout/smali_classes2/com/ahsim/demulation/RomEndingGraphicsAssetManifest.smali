.class public final Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;
.super Ljava/lang/Object;
.source "RomEndingGraphicsAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "ending_graphics_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    .line 27
    const-string v1, "ending/planet_patterns.bin"

    const/16 v2, 0x4000

    const-string v3, "45a85fdb8565e64554cf6d0f9b4015f957dc747dbd1c29290f4546a83dc3e811"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string v1, "ending/planet_map.bin"

    const/16 v2, 0xe00

    const-string v3, "85fa9cde035cee93ec38622b8076cda557a5db4983eca79c82472b9828db7874"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    const-string v1, "ending/font.bin"

    const/16 v2, 0x1000

    const-string v3, "6ec35535b9ccfc6ed1329fe0aaefe1cb558a8c64c1db38d7a5ea1fbe561ac0e4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    const-string v1, "ending/initial_palette.bin"

    const/16 v2, 0x80

    const-string v3, "437db8c3853cbb67a29b291fc8bb581e608b4448c6074586f35eda6dcd8b0e2b"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    const-string v1, "ending/fade_white.bin"

    const/16 v2, 0x12

    const-string v3, "a50a811c03a389ddc5b5f95a826c9e316a8e9a59d1991a934db219a005f77a38"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 32
    const-string v1, "ending/fade_atreides.bin"

    const-string v3, "2cf743bd43cefc9d18f3afeef85802560698894296d6f877793ad2fb78eb8e10"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 33
    const-string v1, "ending/fade_harkonnen.bin"

    const-string v3, "5175a0b44aba8bcebbc3be54311413ef383af0b33339b240f825b471ec97812f"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 34
    const-string v1, "ending/fade_ordos.bin"

    const-string v3, "87f800a7979bb9ce400a2d2fffcf87f74061e590c0ec8e46f6c74c4baea6fb3a"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    .locals 4
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 49
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
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
    sget-object v2, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomEndingGraphicsAssetManifest$Entry;
    goto :goto_0

    .line 44
    :cond_0
    return-wide v0
.end method
