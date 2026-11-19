.class public final Lcom/ahsim/demulation/RomCompatibilityProfiles;
.super Ljava/lang/Object;
.source "RomCompatibilityProfiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    }
.end annotation


# static fields
.field public static final EUROPE_ID:Ljava/lang/String; = "dune_arrakis_europe_gm_t70246_00"

.field private static final EXACT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAME_TITLE:Ljava/lang/String; = "DUNE - THE BATTLE FOR ARRAKIS"

.field public static final GERMANY_ID:Ljava/lang/String; = "dune_arrakis_germany_gm_t70246_00"

.field public static final REFERENCE_USA_ID:Ljava/lang/String; = "dune_arrakis_usa_gm_t70246_00"

.field public static final RUSSIAN_TRANSLATION_ID:Ljava/lang/String; = "translation_ru_shedevr_lipetsk_usa"

.field public static final SERIAL_PREFIX:Ljava/lang/String; = "GM T-70246"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    sget-object v8, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v9, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 49
    const-string v1, "dune_arrakis_usa_gm_t70246_00"

    const-string v2, "USA retail / Genesis / GM T-70246 -00"

    const-string v3, "0f7c1c130cb39abc97f57545933e1ef6c481783d"

    const-string v4, "b1bbe73186e0902fa8b2db0f227bf306e3d6a80fe592f927d1aa9d60c0f335ba"

    const-string v5, "4dea40ba"

    const-string v6, "U"

    const/16 v7, 0x3183

    const/4 v10, 0x1

    const-string v11, ""

    invoke-static/range {v1 .. v11}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v10, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v11, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 52
    const-string v3, "dune_arrakis_europe_gm_t70246_00"

    const-string v4, "Europe retail / Mega Drive / GM T-70246 -00"

    const-string v5, "133cc86b43afe133fc9c9142b448340c17fa668e"

    const-string v6, "31979d1d9a5d6fe5c9ae95f3cfc1dd6f9f51e9e075268bb8a9f9ca57da847547"

    const-string v7, "b58ae71d"

    const-string v8, "E"

    const/16 v9, 0x5e34

    const/4 v12, 0x1

    const-string v13, ""

    invoke-static/range {v3 .. v13}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v10, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v11, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 55
    const-string v3, "dune_arrakis_germany_gm_t70246_00"

    const-string v4, "Germany retail / Mega Drive / GM T-70246 -00"

    const-string v5, "55996cd262df518e92271bceee4d2a657cd7e02c"

    const-string v6, "7f11e502ba2f4b4cdeee82c4e22b5ba64f04433ef1e5de1346db7231c1bd2e30"

    const-string v7, "39790728"

    const-string v8, "E"

    const/16 v9, 0x7da2

    const-string v13, "Audited German retail profile; BASE preparation auto-enables German content and audio."

    invoke-static/range {v3 .. v13}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v10, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    sget-object v11, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->VERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 59
    const-string v3, "translation_ru_shedevr_lipetsk_usa"

    const-string v4, "Russian translation / Shedevr & Lipetsk / 02.08.2011"

    const-string v5, "7a7e3ec6aaeb3d8fbcfb779834565412252ce616"

    const-string v6, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    const-string v7, "cb9bc1e4"

    const-string v8, "U"

    const/16 v9, 0x3183

    const-string v13, "Audited Russian translation profile; BASE preparation auto-enables Russian text and voice."

    invoke-static/range {v3 .. v13}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomCompatibilityProfiles;->EXACT:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exactProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/ahsim/demulation/RomCompatibilityProfiles;->EXACT:Ljava/util/List;

    return-object v0
.end method

.method public static findById(Ljava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomCompatibilityProfiles;->EXACT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    .local v2, "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    iget-object v3, v2, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->id:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static findExact(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    .locals 3
    .param p0, "r"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 67
    sget-object v0, Lcom/ahsim/demulation/RomCompatibilityProfiles;->EXACT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    .local v1, "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    invoke-virtual {v1, p0}, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->matches(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static looksLikeGameFamily(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z
    .locals 6
    .param p0, "r"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 70
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-boolean v1, p0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->hasSegaHeader:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->domesticTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "d":Ljava/lang/String;
    iget-object v2, p0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->overseasTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "o":Ljava/lang/String;
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "s":Ljava/lang/String;
    const-string v4, "DUNE - THE BATTLE FOR ARRAKIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "GM T-70246"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 70
    .end local v1    # "d":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # Ljava/lang/String;

    .line 74
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    .locals 15
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "sha256"    # Ljava/lang/String;
    .param p4, "crc"    # Ljava/lang/String;
    .param p5, "region"    # Ljava/lang/String;
    .param p6, "checksum"    # I
    .param p7, "logic"    # Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .param p8, "assets"    # Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .param p9, "prepare"    # Z
    .param p10, "note"    # Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    const-wide/32 v3, 0x100000

    const-string v8, "GM T-70246 -00"

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)V

    return-object v0
.end method
