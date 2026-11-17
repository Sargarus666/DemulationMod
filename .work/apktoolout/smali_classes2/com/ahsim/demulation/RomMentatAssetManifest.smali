.class public final Lcom/ahsim/demulation/RomMentatAssetManifest;
.super Ljava/lang/Object;
.source "RomMentatAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "frontend_mentat_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    .line 28
    const-string v1, "frontend/mentat/radnor_harkonnen_portrait.bin"

    const/16 v2, 0x2880

    const-string v3, "b8150ebf1a931f5bada7f22c60eee967d0b66cfcb93bc61c1f41ae26a2d31911"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 29
    const-string v1, "frontend/mentat/radnor_harkonnen_eyes.bin"

    const/16 v3, 0xb40

    const-string v4, "ac61c768a035608e25239740f71f6d1bb20b196d7ddd37c8b303855289223be4"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 30
    const-string v1, "frontend/mentat/radnor_harkonnen_mouth.bin"

    const/16 v4, 0x15e0

    const-string v5, "d83707eeea825ac011009bdfc57c544a9df348e9ee4eacf0ab010c4a234805fd"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 31
    const-string v1, "frontend/mentat/cyril_atreides_portrait.bin"

    const-string v5, "59d5f354a4f885e385a361f89dd5a7bd7ed93e11d95915cd0c7542ee93a0e157"

    invoke-static {v1, v2, v5}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 32
    const-string v1, "frontend/mentat/cyril_atreides_eyes.bin"

    const-string v5, "958764421c27cf1a7a777dfeabe6bfccfdbe35f72802f92fab0d9c0d3642c9b7"

    invoke-static {v1, v3, v5}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 33
    const-string v1, "frontend/mentat/cyril_atreides_mouth.bin"

    const-string v5, "5d4c0294c47352e7e641164711ebb8bac740743a2780e05378ff8bb3a82e2972"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 34
    const-string v1, "frontend/mentat/ammon_ordos_portrait.bin"

    const-string v5, "4a0e83afecd40a726b67c02568dc5c24bdc7f1f9d6641a1675071f57186df5ef"

    invoke-static {v1, v2, v5}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 35
    const-string v1, "frontend/mentat/ammon_ordos_eyes.bin"

    const-string v2, "b071dc984048b5643d08b5361b39fcf7f68859b0a1a0db67becc850d77ee74aa"

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 36
    const-string v1, "frontend/mentat/ammon_ordos_mouth.bin"

    const-string v2, "744f4b6535c7b487804939d37a235107b7eed931e9396966dc4677b5b0887a4e"

    invoke-static {v1, v4, v2}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m01_layers.bin"

    const v2, 0xe700

    const-string v3, "f31b0328c79cbbefb0d718872342e7739cef74e38f8a8345b71d74d1aca59407"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 38
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m02_layers.bin"

    const-string v3, "c865bc4a58e282cbba269823b8ed62a1b661f67c1723fc93308300cedc4b6807"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 39
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m03_layers.bin"

    const-string v3, "73cc0b350be27f2ccf654723613690a392c7841595e159a1bb5988317f63e5d9"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 40
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m04_layers.bin"

    const-string v3, "b5dc188a51d3dd0f7064c1b37b59c277efa1106565996cc4b34819c5ea05b298"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 41
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m05_layers.bin"

    const-string v4, "5b00f233ca25663d8e4ad6b0d4ce401037d415a757235617c22dc5a698b5d7b3"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    .line 42
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m06_layers.bin"

    const-string v4, "72a740421be48ffe945f87f774a396beb3d0eb35d0435444253bf58148e5815e"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    .line 43
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m07_layers.bin"

    const-string v4, "8bb40b04a4ac09963cc193365b773a5a0d95e5e14d86cd5dd2bb983e448b91e5"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    .line 44
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m08_layers.bin"

    const-string v4, "0d21bdfae718d793cd88c910bb3fde35dc5e2ae6ff7d9a94e874666bf5e62e4b"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    .line 45
    const-string v1, "frontend/mentat/backdrop_radnor_harkonnen_m09_layers.bin"

    const-string v4, "b1ef88a7e03c855057086a7553654ec8c2bf9cf911ba943d7787cb4ab608f3ad"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    .line 46
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m01_layers.bin"

    const-string v4, "f19c6e7b61728a73e128b8502b270141900edbf352f12eadd703201310ebd3a9"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    .line 47
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m02_layers.bin"

    const-string v4, "2c94106e405d09d8dff8ce029c0846f68a7fad2f1f684f0dcc56a0a9be88212c"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    .line 48
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m03_layers.bin"

    const-string v4, "82aefbfb38c49c0ca2a079ddb0b73cf4d0172eeabba95d67e748717d305cb2f3"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    .line 49
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m04_layers.bin"

    const-string v4, "92c9d4331c6b67d2915bb4d89ab81f47f8be32a9403472f3bd124d35f1e76760"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    .line 50
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m05_layers.bin"

    const-string v4, "ac7574a37cc672d5be92e64e457e186abf6181a4b623eca22798dbafc107a4da"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    .line 51
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m06_layers.bin"

    const-string v4, "92220e7efa1657c6a14dbe7fcc67c47bc56aaedc71843000778dd44948c4107d"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    .line 52
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m07_layers.bin"

    const-string v4, "654853629d368751703ac74982e04bbee423cd2d6294f72a8eb51cebc6420110"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    .line 53
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m08_layers.bin"

    const-string v4, "7008ab775fc4cc821b2529d26f32a2d5bb8bc43b6987343e69b41d57e7e9ed7a"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    .line 54
    const-string v1, "frontend/mentat/backdrop_cyril_atreides_m09_layers.bin"

    const-string v4, "e152460ecf80b68f4633f2718de1af47014901cfc1b0bd9c6a9559f7f798e901"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    .line 55
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m01_layers.bin"

    const-string v4, "3b142e5eccfd2007c4cdbc1e1d0e84b29dffd84589d2a89ea3cd27a13e5db37a"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    .line 56
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m02_layers.bin"

    const-string v4, "06765213dc710fe9c85d29cc1ba5f18dd784c12e77222b9d1d82cd443afdc7e8"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    .line 57
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m03_layers.bin"

    const-string v4, "ea870efe265ec9e43797eaee86d392ed6d9fe3d325f854b0b4ef00a83069c7f8"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    .line 58
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m04_layers.bin"

    const-string v4, "982ac0afd722ffc9db298cc3db89fc7600dd216ecf555c85b8986e6d9e2e8e40"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    .line 59
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m05_layers.bin"

    const-string v4, "2472aa80a8841ff3f09ed85ce72d84f9a814e0a989401e471bea02f25950e5ad"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    .line 60
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m06_layers.bin"

    const-string v4, "f43c5355994d0974c9f14a5d7437b2de7639fbce050cc7d481cdbc3db594926d"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v0, v4

    .line 61
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m07_layers.bin"

    const-string v4, "e448ee50eb0d04eaf2a8203edacf386601d9dab3cb16b8765af6d07cc50ba607"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    .line 62
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m08_layers.bin"

    const-string v4, "dfd606cf5e452bde88b711165051faf181258a6147543e88bd48505c0482ac50"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    .line 63
    const-string v1, "frontend/mentat/backdrop_ammon_ordos_m09_layers.bin"

    const-string v4, "d45a0d58876f291de7bcaa0611619f6236661bda85c1e7bcd55d847d8f8002c1"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 64
    const-string v1, "frontend/mentat/selector_common.bin"

    const/16 v2, 0x280

    const-string v4, "47071749f4a401d11108a783c83f9896a4437729f15ff040af9f2c3b6b44d8e9"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 65
    const-string v1, "frontend/mentat/selector_briefing.bin"

    const/16 v2, 0x500

    const-string v4, "ffa88383668798e290f91110b575a85602d0225d6efefa28bfded6aed6cc67cb"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x25

    aput-object v1, v0, v4

    .line 66
    const-string v1, "frontend/mentat/selector_join.bin"

    const-string v4, "7f0cf8926e45b44d2b18c8f6d3b7c4cf29689d41207543e932eb56a1c1b25104"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 67
    const-string v1, "frontend/mentat/common_palette.bin"

    const/16 v2, 0x40

    const-string v4, "eede8d1a719eddb463b17f3b84e6b237a821221374f9eac18646bfe053264fc7"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x27

    aput-object v1, v0, v4

    .line 68
    const-string v1, "frontend/mentat/final_mission_common_palette.bin"

    const-string v4, "d644ff559c6c8b0c4d66538a7e6c4d1c665df24fe23f9d50f881e114514c7bfc"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x28

    aput-object v1, v0, v4

    .line 69
    const-string v1, "frontend/mentat/radnor_harkonnen_palette.bin"

    const-string v4, "7cb1724a25c856333a3f387b5ef57562f64370a5085f6cfa1943ec2b8b9f4a99"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x29

    aput-object v1, v0, v4

    .line 70
    const-string v1, "frontend/mentat/cyril_atreides_palette.bin"

    const-string v4, "9baace5cb90d2b7139cf77900aec7420c88d16c326ad260e4cc248a995cec7aa"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    .line 71
    const-string v1, "frontend/mentat/ammon_ordos_palette.bin"

    const-string v4, "a7b6d58f5be5cb0cc07d5cfa579a5c2c6876ff852f9a8c364d59d57783567e1e"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 72
    const-string v1, "frontend/mentat/sprite_template.bin"

    const/16 v2, 0x140

    const-string v4, "fbad520fa23b6ea05d56d101abdda0a9f0f784848e08af0e345656057b50d5ab"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 73
    const-string v1, "frontend/mentat/eye_positions.bin"

    const-string v2, "5bfc2e18eff8566c9cc4eed54ec4f17e6d5ab575c7ce6c5eb47143f32b3c1269"

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 74
    const-string v1, "frontend/mentat/mouth_positions.bin"

    const-string v2, "9552fcd43375d1924388feb2f3a0c2e06f899e42d57c0d08d9dbb9a11424a367"

    invoke-static {v1, v3, v2}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 75
    const-string v1, "frontend/mentat/radnor_harkonnen_join_text.bin"

    const/16 v2, 0xea

    const-string v3, "a8c23f1bede39fe1885e48f170c1252d5075f8da50a35296227011efd3b30ecf"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 76
    const-string v1, "frontend/mentat/cyril_atreides_join_text.bin"

    const/16 v2, 0xa0

    const-string v3, "13689f29b606d46e8845ba8a913cf952589df486c0682639290f2ee63cd54314"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 77
    const-string v1, "frontend/mentat/ammon_ordos_join_text.bin"

    const/16 v2, 0xab

    const-string v3, "68080f5d47f89d8d169e875b2b524202fc396fa64dd4141e4da0507e08455f98"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomMentatAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomMentatAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomMentatAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/ahsim/demulation/RomMentatAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/ahsim/demulation/RomMentatAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    .local v1, "e":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "e":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 85
    const-wide/16 v0, 0x0

    .line 86
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomMentatAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomMentatAssetManifest$Entry;
    goto :goto_0

    .line 87
    :cond_0
    return-wide v0
.end method
