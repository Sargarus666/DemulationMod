.class public final Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;
.super Ljava/lang/Object;
.source "RomFrontendDirectAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "frontend_direct_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    .line 28
    const-string v1, "frontend/direct/title_font.bin"

    const/16 v2, 0x1000

    const-string v3, "6ec35535b9ccfc6ed1329fe0aaefe1cb558a8c64c1db38d7a5ea1fbe561ac0e4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 29
    const-string v1, "frontend/direct/options_font.bin"

    const-string v3, "d42f55982110cf6fa6d0aa7e9ae9382045a73de0b59f46d0140eedbdaad3844b"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 30
    const-string v1, "frontend/direct/title_logo_replacement_palette.bin"

    const/16 v3, 0x60

    const-string v4, "ec98b69bbf8eb16e8b3d39909b7d11145fd94e450a08e9690d7fa3eb405faa6f"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 31
    const-string v1, "frontend/direct/options_palette.bin"

    const/16 v4, 0x80

    const-string v5, "5d881872ca1ecf83d6c66fbe3c6b88ac06a37a8f479822fd7faf7247420dba6b"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 32
    const-string v1, "frontend/direct/house_cursor_patterns.bin"

    const/16 v5, 0x100

    const-string v6, "f4753729f3a5267fa62fa1e08a36e3c6d7726fc50af03824af75378c27c9edc2"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 33
    const-string v1, "frontend/direct/house_cursor_layout.bin"

    const/16 v5, 0x26

    const-string v6, "5e2e2a870212615cb6b454ab320715c6470b88182f0393a664e92e2f033e913a"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 34
    const-string v1, "frontend/direct/title_strings.bin"

    const/16 v5, 0x24

    const-string v6, "8f0e9e8ff5c01003ed114c8d31755f0eaf03de7a374f4327c4de6774dba7956b"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 35
    const-string v1, "frontend/direct/sega_patterns.bin"

    const/16 v5, 0x620

    const-string v6, "4503bf0b1b1d1d9f3c3fd602cf83cc15b5eea57a2ec96150dbded27f432a9c2c"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 36
    const-string v1, "frontend/direct/sega_map.bin"

    const-string v5, "66367863bb7a7055d872e3c723bf876685a7a5bd312f0859773b8c9d0cc87f9b"

    invoke-static {v1, v2, v5}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    const-string v1, "frontend/direct/sega_palette.bin"

    const-string v2, "e144b8ed2cff2f7be2ee5e1d1386bd886a62ecabeceaab79dd7da9e7117225ab"

    invoke-static {v1, v4, v2}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 38
    const-string v1, "frontend/direct/sega_gradient.bin"

    const/16 v2, 0x3e

    const-string v4, "3da659a0d5be781134f5cda58d3975b5d58a92b89b6c57e3aa10fb69bea93e4f"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 39
    const-string v1, "frontend/direct/ship_patterns.bin"

    const/16 v2, 0x2300

    const-string v4, "f4e04e5cfdcf9de04b96dd346949cf671e7a790b0552b6a478cf44357db769d6"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 40
    const-string v1, "frontend/direct/ship_palette.bin"

    const-string v2, "7fd0f0c696018a7396625f179d92833daf60b02af9330755bcc61f882779b768"

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 41
    const-string v1, "frontend/direct/ship0_layouts.bin"

    const/16 v2, 0x192

    const-string v3, "edb0838320838d64558d5ed96b5e70d78033cab2e78f66e4fb38bc64cc574cc9"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 42
    const-string v1, "frontend/direct/ship1_layouts.bin"

    const-string v3, "c2aba91e8067258f01dde45a7bb39456108fc57aae7bab63f3c62cb36ca21bf4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 43
    const-string v1, "frontend/direct/ship2_layouts.bin"

    const-string v3, "0dbf466ffba5095c4e18bbac85fc13dcb0d41e72b1722627877e41b9391eda31"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 44
    const-string v1, "frontend/direct/ship0_script.bin"

    const/16 v2, 0xd2

    const-string v3, "a9627c871a44cae397e315b6e5c5bbdff8070ba594b5e911ead3c55ccdf6f6d6"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 45
    const-string v1, "frontend/direct/ship1_script.bin"

    const-string v3, "952c4e05ff00be2821c3996131134b4ac661ff4ecc24fcc04d264bd6026afd5c"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 46
    const-string v1, "frontend/direct/ship2_script.bin"

    const-string v3, "bd731ebb59f6c837bdadfbf26eded9bf75ccae26d68b0963698a30eaaa506865"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomFrontendDirectAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    .local v1, "e":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "e":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomFrontendDirectAssetManifest$Entry;
    goto :goto_0

    .line 56
    :cond_0
    return-wide v0
.end method
