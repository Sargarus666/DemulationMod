.class public final Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;
.super Ljava/lang/Object;
.source "RomMissionTransitionAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "mission_campaign_transition_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    .line 28
    const-string v1, "frontend/mission_sequence/banner_palette.bin"

    const/16 v2, 0x80

    const-string v3, "da2d7d6a2d555773c7641e558854d37081fb7f707c4ebe643ec8e6130cd7d92e"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    const-string v1, "frontend/mission_sequence/loss_banner_patterns.bin"

    const/16 v2, 0x2a0

    const-string v3, "cf0217963868f8931dd51bac01dc8e09aeb3d16087580c10970c8839627e1d16"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 30
    const-string v1, "frontend/mission_sequence/loss_banner_layout.bin"

    const/16 v2, 0x1a

    const-string v3, "7737b8aee754b93c2d542277ab3254a8ac3c6b594e1572f4591755548fc38e4c"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    const-string v1, "frontend/mission_sequence/win_banner_patterns.bin"

    const/16 v2, 0x360

    const-string v3, "3674bf9849a973ebb3e81f2cf5ce7c41852c3ce4282dc4c82f15e81fcc1b4d82"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 32
    const-string v1, "frontend/mission_sequence/win_banner_layout.bin"

    const/16 v2, 0x26

    const-string v3, "2193c3ce1198d00e635cda407c907e21ff6c5f7096c53c842aac8bddfa2a5734"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 33
    const-string v1, "frontend/campaign_transition/static_geometry.bin"

    const/16 v2, 0x19c

    const-string v3, "78446dcde8337e2d6b8b04d1f24a406be62e57ba767db766c32bf5158e8cd7a0"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 34
    const-string v1, "frontend/campaign_transition/house_geometry.bin"

    const/16 v2, 0x25c

    const-string v3, "f96c04b0ff70125f0fbdcf7012c577bf5d7ca6bc3dcbab2ef66ccc01789b7862"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 35
    const-string v1, "frontend/campaign_transition/static_patterns.bin"

    const/16 v2, 0x23c0

    const-string v3, "94dc5c17f43926b73107713370463e5cc87718a3d535f2e655eff68da3d9fe6d"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 36
    const-string v1, "frontend/campaign_transition/house_patterns.bin"

    const/16 v2, 0x4840

    const-string v3, "fddbeb2fe179b286f1508401c29ff33d314b094e5c6bc5f2f23eea7a9150f918"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    const-string v1, "frontend/campaign_transition/static_modes.bin"

    const/16 v3, 0x14

    const-string v4, "de47c9b27eb8d300dbb5f2c353e632c393262cf06340c4fa7f1b40c4cbd36f90"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 38
    const-string v1, "frontend/campaign_transition/house_modes.bin"

    const/16 v3, 0x21c

    const-string v4, "52bb9493d65e751316884b7b6664587f4aae8eeab590f7d23cc73552a993762c"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 39
    const-string v1, "frontend/campaign_transition/mission_records.bin"

    const/16 v3, 0xd8

    const-string v4, "a4e1cc9824750e6edf1b39147c218d7a371aa30a1d014c62e7bd0d8fc79ae154"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 40
    const-string v1, "frontend/campaign_transition/byte_remap.bin"

    const/16 v3, 0x100

    const-string v4, "51008f51da6a640f139529136df1d045986fdd7dfd1f27baabbaa25583fc3234"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 41
    const-string v1, "frontend/campaign_transition/zoom_records.bin"

    const/16 v3, 0x780

    const-string v4, "490e35bf88a99af7ddb63b3f85248d8d94234ac323a6fa3908c5676c4c3157bd"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 42
    const-string v1, "frontend/campaign_transition/focus_palette_offsets.bin"

    const-string v3, "014c6371d8f22d16dfab517ab6639ce4564514bba3524bbc2be62f7774ff6f8a"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomMissionTransitionAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    .local v1, "e":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "e":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    :cond_0
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 50
    const-wide/16 v0, 0x0

    .line 51
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomMissionTransitionAssetManifest$Entry;
    goto :goto_0

    .line 52
    :cond_0
    return-wide v0
.end method
