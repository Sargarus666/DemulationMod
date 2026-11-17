.class public final Lcom/ahsim/demulation/RomAssetManifest;
.super Ljava/lang/Object;
.source "RomAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final CORE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final CORE_GROUP_ID:Ljava/lang/String; = "runtime_bootstrap_core_v1"

.field public static final REFERENCE_PROFILE_ID:Ljava/lang/String; = "dune_arrakis_usa_gm_t70246_00"

.field public static final RESOURCE_TABLE_OFFSET:I = 0x52c34


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .line 37
    const/4 v1, 0x0

    const-string v2, "BUILD.EMC"

    const-wide/32 v3, 0x4db30

    const/16 v5, 0x432

    const-string v6, "23734148c1d34a1aa4903fe2595b3e5033fadd93e2702c915f3582a97bb6ac83"

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    const/4 v3, 0x2

    const-string v4, "TEAM.EMC"

    const-wide/32 v5, 0x4e02a

    const/16 v7, 0x15e

    const-string v8, "5dfc069b591a87e46a770a24138209b4370415114b1cbe115c18963891d9a509"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    const/4 v3, 0x3

    const-string v4, "UNIT.EMC"

    const-wide/32 v5, 0x4e188

    const/16 v7, 0x153e

    const-string v8, "182a188a69962cd3749d55b9a11875ac9afa1f9c8759dbabf868ede6d61bc361"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    const/16 v3, 0x13

    const-string v4, "SCENA001.INI"

    const-wide/32 v5, 0x56fae

    const/16 v7, 0x196

    const-string v8, "6452500bbfc87785d6e1cf4490b3f01f39008decd48253eafd5ed37f05f3d9e2"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    const/16 v3, 0x14

    const-string v4, "SCENA002.INI"

    const-wide/32 v5, 0x57144

    const/16 v7, 0x234

    const-string v8, "2b8fd6136c167139e410d7f2bd8d9777d3c4235bba81d65da1af41e67fc9a20d"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    const/16 v3, 0x15

    const-string v4, "SCENA003.INI"

    const-wide/32 v5, 0x57378

    const/16 v7, 0x26c

    const-string v8, "b5826b9e97531697f0c7972170291b8f3402ce2dd0618335195807eab1e1bcab"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 43
    const/16 v3, 0x16

    const-string v4, "SCENA004.INI"

    const-wide/32 v5, 0x575e4

    const/16 v7, 0x4b2

    const-string v8, "65a9237ba000ecb9ff433adff06e0151766c27464ee81376b298c099fa6dfbc0"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 44
    const/16 v3, 0x17

    const-string v4, "SCENA005.INI"

    const-wide/32 v5, 0x57a96

    const/16 v7, 0x5ae

    const-string v8, "3e32dce8221df3af4da9f93111b61cda929544a1b9c27d91145eac015f08c432"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 45
    const/16 v3, 0x18

    const-string v4, "SCENA006.INI"

    const-wide/32 v5, 0x58044

    const/16 v7, 0x610

    const-string v8, "fda56d10455bf7966367c12adf958639974c911813edb4a4fa778ffb1bead7e2"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 46
    const/16 v3, 0x19

    const-string v4, "SCENA007.INI"

    const-wide/32 v5, 0x58654

    const/16 v7, 0x77e

    const-string v8, "b609cdb1930cf2279c720a58cd767485de528597d2c08757faba4be82951fbd4"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 47
    const/16 v3, 0x1a

    const-string v4, "SCENA008.INI"

    const-wide/32 v5, 0x58dd2

    const/16 v7, 0xae8

    const-string v8, "d9d7b7fbf4bb38e1b4af8424282fe93e7aa20fe92717244dfe515df21abfc7ba"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 48
    const/16 v3, 0x1b

    const-string v4, "SCENA009.INI"

    const-wide/32 v5, 0x598ba

    const/16 v7, 0xabe

    const-string v8, "627a2179cd2f6e6f1afbd0a97e805b610d7391ede42f628a90c9d25d8c656134"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 49
    const/16 v3, 0xa

    const-string v4, "SCENH001.INI"

    const-wide/32 v5, 0x5a378

    const/16 v7, 0x176

    const-string v8, "512481f614c469416948d473d29d10450ea08e62d5668cd54805b09b72c88d43"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 50
    const/16 v3, 0xb

    const-string v4, "SCENH002.INI"

    const-wide/32 v5, 0x5a4ee

    const/16 v7, 0x25c

    const-string v8, "6e130bda81b6a256a92ec4b80a3e3b8a5c1c7c08efd4463f6ba818c66f3cec52"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 51
    const/16 v3, 0xc

    const-string v4, "SCENH003.INI"

    const-wide/32 v5, 0x5a74a

    const/16 v7, 0x2fe

    const-string v8, "a1e2bfe7178ceadc86b4f7affddfd0c67a48adf972a405005cb1e9c10ad64175"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 52
    const/16 v3, 0xd

    const-string v4, "SCENH004.INI"

    const-wide/32 v5, 0x5aa48

    const/16 v7, 0x4ce

    const-string v8, "e57ef3e8f56a0b393b01f6cbfc1ee76959327b52fb6e1b4138bd219865930246"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 53
    const/16 v3, 0xe

    const-string v4, "SCENH005.INI"

    const-wide/32 v5, 0x5af16

    const/16 v7, 0x612

    const-string v8, "9938d49e2fab4980d8bf0491b2bbf34da6c4bcf1796ce44eea69caa4035da767"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 54
    const/16 v3, 0xf

    const-string v4, "SCENH006.INI"

    const-wide/32 v5, 0x5b528

    const/16 v7, 0x678

    const-string v8, "b92e76592fd34c53b3fccdd954db33c62d8538aa634b058a8d3b5ec5137c0cfc"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 55
    const/16 v3, 0x10

    const-string v4, "SCENH007.INI"

    const-wide/32 v5, 0x5bba0

    const/16 v7, 0x96e

    const-string v8, "473d47efdb73c53c1a0acf53b78871eebc44738447926a7eda49d864da246ab2"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 56
    const/16 v3, 0x11

    const-string v4, "SCENH008.INI"

    const-wide/32 v5, 0x5c50e

    const/16 v7, 0xafe

    const-string v8, "d65db8f595b665815e1e4e89e4cb7f2a0551b9f79c278fd8b97168d0c3ca2bd4"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 57
    const/16 v3, 0x12

    const-string v4, "SCENH009.INI"

    const-wide/32 v5, 0x5d00c

    const/16 v7, 0xb20

    const-string v8, "1f64092a6ecc6e161690b9246bc0690286d7b30ac92675cf0551f81ebb237883"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 58
    const/16 v3, 0x1c

    const-string v4, "SCENO001.INI"

    const-wide/32 v5, 0x5db2c

    const/16 v7, 0x176

    const-string v8, "eb73421dc6651202e9839230e40fc4f74a972d537fedc888117ddadc71e5000a"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 59
    const/16 v3, 0x1d

    const-string v4, "SCENO002.INI"

    const-wide/32 v5, 0x5dca2

    const/16 v7, 0x24a

    const-string v8, "b2f313071943fc8d2f82aa6f96e45b7b9e8ec5cc026f642020a6da4acb5b7214"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 60
    const/16 v3, 0x1e

    const-string v4, "SCENO003.INI"

    const-wide/32 v5, 0x5deec

    const/16 v7, 0x480

    const-string v8, "9d09e420f8b3c389ce241af6d89becf5e5855e24f2972d062fd36359a0199d2d"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 61
    const/16 v3, 0x1f

    const-string v4, "SCENO004.INI"

    const-wide/32 v5, 0x5e36c

    const/16 v7, 0x470

    const-string v8, "8e001866cc150fd7b98860a4e4790226d3f102e7c0dbcaba32b7d3240d854b4f"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 62
    const/16 v3, 0x20

    const-string v4, "SCENO005.INI"

    const-wide/32 v5, 0x5e7dc

    const/16 v7, 0x42a

    const-string v8, "df2f99cb3446947f463b922469386e3c15a7c4cdfbc6889f84106cedad4f4df6"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 63
    const/16 v3, 0x21

    const-string v4, "SCENO006.INI"

    const-wide/32 v5, 0x5ec06

    const/16 v7, 0x65c

    const-string v8, "acdc6dec635f42694874de27115e2a52401e96ed626ce0f79bc3508b097ac525"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 64
    const/16 v3, 0x22

    const-string v4, "SCENO007.INI"

    const-wide/32 v5, 0x5f262

    const/16 v7, 0x612

    const-string v8, "fb3cd90dd466abbbcfa8b3ce59d781f1759bc50c53bdf82c0fe56ac4808010c8"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 65
    const/16 v3, 0x23

    const-string v4, "SCENO008.INI"

    const-wide/32 v5, 0x5f874

    const/16 v7, 0xb72

    const-string v8, "f3ee2e4b37f89c1d6fbc16109fdb5cc7cb7971e2ecce3e9f746aec7d8d21ad4b"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 66
    const/16 v3, 0x24

    const-string v4, "SCENO009.INI"

    const-wide/32 v5, 0x603e6

    const/16 v7, 0xaa6

    const-string v8, "43b1b8b050511b3e186c6ce2b46f46d20bebcca898ee82aed212efc90d316308"

    invoke-static/range {v3 .. v8}, Lcom/ahsim/demulation/RomAssetManifest;->e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomAssetManifest;->CORE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coreEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/ahsim/demulation/RomAssetManifest;->CORE:Ljava/util/List;

    return-object v0
.end method

.method public static corePayloadBytes()J
    .locals 6

    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomAssetManifest;->CORE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .local v3, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    goto :goto_0

    .line 76
    :cond_0
    return-wide v0
.end method

.method private static e(ILjava/lang/String;JILjava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .locals 8
    .param p0, "index"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "sha256"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    const/4 v7, 0x0

    move v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    .end local p0    # "index":I
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "offset":J
    .end local p4    # "length":I
    .end local p5    # "sha256":Ljava/lang/String;
    .local v1, "index":I
    .local v2, "name":Ljava/lang/String;
    .local v3, "offset":J
    .local v5, "length":I
    .local v6, "sha256":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RomAssetManifest$Entry;-><init>(ILjava/lang/String;JILjava/lang/String;Lcom/ahsim/demulation/RomAssetManifest-IA;)V

    return-object v0
.end method

.method public static findCoreEntry(Ljava/lang/String;)Lcom/ahsim/demulation/RomAssetManifest$Entry;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/ahsim/demulation/RomAssetManifest;->CORE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;

    .local v1, "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "entry":Lcom/ahsim/demulation/RomAssetManifest$Entry;
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
