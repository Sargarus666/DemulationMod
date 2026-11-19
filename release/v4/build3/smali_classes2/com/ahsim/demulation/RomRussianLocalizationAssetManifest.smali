.class public final Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;
.super Ljava/lang/Object;
.source "RomRussianLocalizationAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;,
        Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;
    }
.end annotation


# static fields
.field public static final ENDING_TEXT_DATA:Ljava/lang/String; = "content/ending/ending_text_v1.bin"

.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_VERSION:I = 0x6

.field public static final GROUP_ID:Ljava/lang/String; = "russian_localization_v6"

.field public static final HUD_OBJECT_NAMES:Ljava/lang/String; = "content/hud/object_names_utf8_v1.bin"

.field public static final MISSION_PRESENTATION_TEXT:Ljava/lang/String; = "content/mission/presentation_text_v1.bin"

.field public static final MISSION_RESULT_DATA:Ljava/lang/String; = "content/result/mission_result_data_v1.bin"

.field public static final PROFILE_ID:Ljava/lang/String; = "translation_ru_shedevr_lipetsk_usa"

.field public static final SOURCE_SHA256:Ljava/lang/String; = "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

.field public static final TITLE_STRINGS:Ljava/lang/String; = "frontend/direct/title_strings.bin"

.field public static final TUTORIAL_EXACT_TEXT:Ljava/lang/String; = "content/tutorial/exact_text_v1.bin"


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 50
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 52
    const-string v2, "frontend/house_selector_patterns.bin"

    const/16 v3, 0x1920

    const-string v4, "735da444f856d1989b348108c36954d73cfb2d0734f02fbc4a5af4c7c8488001"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 54
    const-string v2, "frontend/options_map.bin"

    const/16 v3, 0xe00

    const-string v4, "7d3ef50cf5f1aeaf6ed55cda55a26e54bd05505fd26859eb94df7200994ff42d"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 56
    const-string v2, "frontend/options_patterns.bin"

    const/16 v4, 0x5ec0

    const-string v5, "da62cbf008c6a3f05513391e433baee6d80d9f5451e23151925261527c518c20"

    invoke-static {v2, v4, v5, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 58
    const-string v2, "frontend/password_map.bin"

    const-string v4, "c040cd3b8a9b402018f83d992eae33ce076c29caabdbe7a199fc3d1b5d9b89fa"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 60
    const-string v2, "frontend/password_patterns.bin"

    const/16 v4, 0x2e40

    const-string v5, "91453d8cd7e2c93832333130f042daad2f425888f837b7df1788bb186bdd52d2"

    invoke-static {v2, v4, v5, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 62
    const-string v2, "frontend/title_shared_patterns.bin"

    const/16 v4, 0x7000

    const-string v5, "eb22cd753f476165efaf85b8bbb71b7308495713452483e5f2f307379fc5a066"

    invoke-static {v2, v4, v5, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 67
    const-string v2, "frontend/logo_title_map.bin"

    const/16 v5, 0x2000

    const-string v6, "ce618bdeaa0a25644186fa2f978957a2b373669ccd7e3cab9dcbe8946f84ed72"

    invoke-static {v2, v5, v6, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 70
    const-string v2, "frontend/direct/title_font.bin"

    const/16 v5, 0x1000

    const-string v6, "80ea89a1319d0ded28f8882857797d3444274dd6d3892322340d73e370917c63"

    invoke-static {v2, v5, v6, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 72
    const-string v2, "frontend/direct/options_font.bin"

    const-string v7, "16e4013fb27d2a2ad5dff11a735b8fb2fb480a3f0204f5f094f948d83cbb67b3"

    invoke-static {v2, v5, v7, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 74
    const-string v2, "frontend/direct/title_strings.bin"

    const/16 v8, 0x24

    const-string v9, "fa54898777f890348cb9b6432ad5bd99e205f06a594f37eeeee591805e79dbc3"

    invoke-static {v2, v8, v9, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 76
    const-string v2, "frontend/mentat/radnor_harkonnen_join_text.bin"

    const/16 v9, 0x10a

    const-string v10, "3bb4c0941679aa5c79d42b507ca8f5cd122f2d738d4a11e160e653cd15984ee3"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 78
    const-string v2, "frontend/mentat/cyril_atreides_join_text.bin"

    const/16 v9, 0x9f

    const-string v10, "46b0961e0e50d12628109be6f2277e4f426fc4f6f433e86216a399519eefd4b9"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 80
    const-string v2, "frontend/mentat/ammon_ordos_join_text.bin"

    const/16 v9, 0xdc

    const-string v10, "eebe38c8c1350462fb8f6101140a7783d74dad3f0d0b831b424ce1a8e10821c2"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 82
    const-string v2, "frontend/mentat/selector_briefing.bin"

    const/16 v9, 0x500

    const-string v10, "bee71fb5a8fee47685cba01410258417759f6211d5e2d00b24f46ceffc8d2074"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 84
    const-string v2, "frontend/mentat/selector_join.bin"

    const-string v10, "1bb937486b5c4efb5bba52ea4d90230edc6219a2fccaa74b68e10addbf255271"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 86
    const-string v2, "content/mission/presentation_text_v1.bin"

    const/16 v9, 0x3da2

    const-string v10, "ce1219e501a70195c4262508e796564ed0294d35fc49669c03eda9f374a58401"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 90
    const-string v2, "tutorial/scenes/scene00_patterns.bin"

    const/16 v9, 0x2a40

    const-string v10, "bfed4b77c47e0daf9a5de7ca756749396cd49de10345d5f04ddaf4d8762f6672"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 92
    const-string v2, "tutorial/scenes/scene00_plane0.delta"

    const/16 v9, 0xe54

    const-string v10, "061de176a15becb5c228f9624759d51e79c18501696a91e7de213b29d03b2610"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 94
    const-string v2, "tutorial/scenes/scene01_patterns.bin"

    const/16 v9, 0x43e0

    const-string v10, "87b5da57b3b20e9f519f4a8d66e9fa761a700e95a8de0457bc2e38fe05a42844"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 96
    const-string v2, "tutorial/scenes/scene01_plane0.delta"

    const/16 v9, 0x1619

    const-string v10, "a67a338267e497b2a6665055d70d1720d7cc0e65e4118727b60170c4cb1695c2"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 98
    const-string v2, "tutorial/scenes/scene03_patterns.bin"

    const/16 v9, 0x25a0

    const-string v10, "a94d2a94051a8bf96a2fdf0590c1f5b1cec0a78dd7f3869344075b7938bcd63b"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 100
    const-string v2, "tutorial/scenes/scene03_plane0.delta"

    const/16 v9, 0x824

    const-string v10, "29935bb58c5ffca28f52a5ea7b8fef913fbea21947eca3991383ac3d4bac1f4d"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 102
    const-string v2, "tutorial/scenes/scene04_patterns.bin"

    const/16 v9, 0x5860

    const-string v10, "cd3a7d84b0dafcc4432e58c4a8043a8d662ec513f68090447659a4ffa56b5328"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 104
    const-string v2, "tutorial/scenes/scene06_patterns.bin"

    const/16 v9, 0x2c20

    const-string v10, "cec80873786e7fecaad67ae71dcf2e3e22a2f4fced1b58c57e82ab543b1a9547"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 106
    const-string v2, "tutorial/scenes/scene06_plane0.delta"

    const/16 v9, 0x86d

    const-string v10, "c67ca6a859db87bb9070fb816fa2441c405e44bc7eff2388404ef92548027409"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 108
    const-string v2, "tutorial/scenes/scene07_plane0.delta"

    const/16 v9, 0x502

    const-string v10, "e4672c24fa9e358b1cc17cca031dee47090da059fdb8d3a78d0d7dd3dcc6ab7c"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 110
    const-string v2, "tutorial/scenes/scene09_patterns.bin"

    const/16 v9, 0x21a0

    const-string v10, "15d6ee375de916b44669bf8426838d19a5379d258f3665f132ba97ff0513d129"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 112
    const-string v2, "tutorial/scenes/scene09_plane0.delta"

    const/16 v9, 0x620

    const-string v10, "eb08eab1426d7bf99690d6744f515fa155423a1f9b459d3c54980fea7899a017"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 114
    const-string v2, "tutorial/scenes/scene10_plane0.delta"

    const/16 v9, 0x485

    const-string v10, "7142a24388e6074e47060812c322c65240e8507e18304fec50b9031161746235"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 116
    const-string v2, "tutorial/scenes/scene11_patterns.bin"

    const/16 v9, 0x6a0

    const-string v10, "d7df623b42d89f4073b7faa32caab6420c99d48e2c3d97d60a2452cc69288a49"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 118
    const-string v2, "tutorial/scenes/scene11_plane0.delta"

    const/16 v9, 0x8c

    const-string v10, "3ba97f36fbc0f6c0526e432c605755b36dc0c347af6b2f9283549209ca3b208e"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 120
    const-string v2, "tutorial/text/font.bin"

    const/16 v9, 0x1520

    const-string v10, "03e573df5be09d8ae8609ddaa445b5f298e61620e5418e908b1e051a4b25ade8"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 122
    const-string v2, "content/tutorial/exact_text_v1.bin"

    const/16 v9, 0x595

    const-string v10, "c87da9902ba1dfa88d8eb590fb88a596fbf48ee3c7148adb423e9b2ff3d9320e"

    invoke-static {v2, v9, v10, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 126
    const-string v2, "mission_result/common_patterns.bin"

    const-string v9, "a78acb1b0ee5ce08e98ddfb35c03d3b66219d3607a68b8f2b9a46a0398fcfc68"

    invoke-static {v2, v4, v9, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 128
    const-string v2, "mission_result/font.bin"

    invoke-static {v2, v5, v7, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 130
    const-string v2, "mission_result/overlay.map"

    const-string v4, "c3d632552dbb96a58ba21e8cbed89621d98b8bec9209e797d468e409c82656a4"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 132
    const-string v2, "mission_result/password_overlay.map"

    const/16 v3, 0x700

    const-string v4, "3bebcfb435666d69d5afb71f3491a15750cc8cd91a509cef5a4b882f540f696b"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 134
    const-string v2, "content/result/mission_result_data_v1.bin"

    const/16 v3, 0x1ed

    const-string v4, "83a35b778ea0787b303d81bf8b283f2ec6312e0e707f5a78a7bcb00e11b22776"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->GLYPH_BITMAP:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 138
    const-string v2, "ending/font.bin"

    invoke-static {v2, v5, v6, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 140
    const-string v2, "content/ending/ending_text_v1.bin"

    const/16 v3, 0x547

    const-string v4, "8926f96391a13787e4fe4ff16bbb364c019a2531883e23ff3c7848b7d9618b8e"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;->TEXT:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 144
    const-string v2, "content/hud/object_names_utf8_v1.bin"

    const/16 v3, 0x292

    const-string v4, "ec96a142f0542f2e11941fae3ba40bf5c1be8cc225a4fc2e5914dc05cd5fdf0e"

    invoke-static {v2, v3, v4, v1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 50
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static count(Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)I
    .locals 4
    .param p0, "kind"    # Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "n":I
    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->kind:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    if-ne v3, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    :cond_1
    return v0
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "kind"    # Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 47
    new-instance v0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "length":I
    .end local p2    # "sha":Ljava/lang/String;
    .end local p3    # "kind":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;
    .local v1, "path":Ljava/lang/String;
    .local v2, "length":I
    .local v3, "sha":Ljava/lang/String;
    .local v4, "kind":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;
    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    .locals 4
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 154
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 159
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "n":J
    sget-object v2, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    goto :goto_0

    .line 161
    :cond_0
    return-wide v0
.end method
