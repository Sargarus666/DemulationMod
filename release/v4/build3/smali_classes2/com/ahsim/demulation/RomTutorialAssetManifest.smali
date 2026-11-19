.class public final Lcom/ahsim/demulation/RomTutorialAssetManifest;
.super Ljava/lang/Object;
.source "RomTutorialAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "tutorial_original_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    const/16 v0, 0x25

    new-array v0, v0, [Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    .line 25
    const-string v1, "tutorial/scenes/scene00_patterns.bin"

    const/16 v2, 0x2a40

    const-string v3, "c0263c85e2fc03308aa2ef385267c9279262717d9d42f7ac40d4f63ce2a4036d"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    const-string v1, "tutorial/scenes/scene00_plane0.delta"

    const/16 v2, 0x111a

    const-string v3, "c42de89a3edef0a3a7fb464590f44b53bbd0d0ff15adf27fb493fd67d76a4d46"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    const-string v1, "tutorial/scenes/scene00_plane1.delta"

    const/16 v2, 0x9ce

    const-string v3, "dfba431fc27c69063a0108d0f3e3f8d182870a98242f11dbcb0cb859da95a6b2"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 28
    const-string v1, "tutorial/scenes/scene01_patterns.bin"

    const/16 v2, 0x43e0

    const-string v3, "a3eb234684d119dff21b0167eb51c5c2835a92e89d1e194c526dd81717a4a5c2"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 29
    const-string v1, "tutorial/scenes/scene01_plane0.delta"

    const/16 v2, 0x187f

    const-string v3, "c207cfa4b3da56bc5ce53103050c460719a50b1abcb6b8740e5cb4abb032ac9d"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 30
    const-string v1, "tutorial/scenes/scene01_plane1.delta"

    const/16 v2, 0xfea

    const-string v3, "46fc4ced160efaa2744bd1e496ee14612c1494e50ffb04f42c7016a1712472dd"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 31
    const-string v1, "tutorial/scenes/scene03_patterns.bin"

    const/16 v2, 0x25a0

    const-string v3, "005d7227c6ba2fed45f7710212ae746bdb84e8e182c5a17337abe155a9eab4b9"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 32
    const-string v1, "tutorial/scenes/scene03_plane0.delta"

    const/16 v2, 0x8d0

    const-string v3, "37dc5848977ff121f0df8bdfcb6bec5f0d6f5aef1c30a72177870f8afb405f06"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 33
    const-string v1, "tutorial/scenes/scene03_plane1.delta"

    const/16 v2, 0xbd6

    const-string v3, "2d035fb99af9ea913afc5fb772be92272a20820560417f3fbda91f0b65f534f0"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 34
    const-string v1, "tutorial/scenes/scene04_patterns.bin"

    const/16 v2, 0x5860

    const-string v3, "4dc062fb4bac3dfeec1bacd2ae8a77e2362654f2a046d1de02c32f89307931a4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 35
    const-string v1, "tutorial/scenes/scene04_plane0.delta"

    const/16 v2, 0x192

    const-string v3, "b334e73bf82b2738d07a148cb93f1486da0b65276f4963e7b8d8af6e1660cf70"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 36
    const-string v1, "tutorial/scenes/scene04_plane1.delta"

    const/16 v2, 0x75b

    const-string v3, "7bf8a47ee19ba375c9e1731cb0db2d12364e5ae6fbcebd7a65569820ead1c655"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 37
    const-string v1, "tutorial/scenes/scene06_patterns.bin"

    const/16 v2, 0x2c20

    const-string v3, "de78d45213a7e4191b474f12f3ea3bb114ed761ecd55d310ec9bf3ce17aa2cc4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 38
    const-string v1, "tutorial/scenes/scene06_plane0.delta"

    const/16 v2, 0x9b0

    const-string v3, "12179651e60228c5927fdbd57a67632e92c690520e35fe125bbf8f4aa66b856c"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 39
    const-string v1, "tutorial/scenes/scene06_plane1.delta"

    const/16 v2, 0xbdd

    const-string v3, "0fea4ea6597d374018a27ff4e1c57f57ed8a2c855a0990526b66588c4807f102"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 40
    const-string v1, "tutorial/scenes/scene07_plane0.delta"

    const/16 v2, 0x595

    const-string v3, "c1a7ba31c4a61d0afba95d1d14fad60a59ef8d6bba2110ab9a699a5e177146fd"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 41
    const-string v1, "tutorial/scenes/scene07_plane1.delta"

    const/16 v2, 0x95a

    const-string v3, "bd6804b98a9f5d0c2da3b0bffe6fe0b8182d8b1055a70d962bb78c86c6213d0f"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 42
    const-string v1, "tutorial/scenes/scene09_patterns.bin"

    const/16 v2, 0x21a0

    const-string v3, "5bd3417b8b350a45d06ddb5c735e99772d1faf487fc3e1f13cedc43b387fcdcc"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 43
    const-string v1, "tutorial/scenes/scene09_plane0.delta"

    const/16 v2, 0x716

    const-string v3, "9407b57913cac752f92d3240ad972563e6f40e7a622978dbdbd0c3bf01dcd9d0"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 44
    const-string v1, "tutorial/scenes/scene09_plane1.delta"

    const/16 v2, 0xa94

    const-string v3, "5cffc65af46a4ef753cb433a0d3b608ed0bdf838ccfe5cedd9c7432ab4ce490d"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 45
    const-string v1, "tutorial/scenes/scene10_plane0.delta"

    const/16 v2, 0x525

    const-string v3, "cd2326bb3f84799be0a44e3161ccd44ce73226b41007f5d0a0451359038ecaa8"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 46
    const-string v1, "tutorial/scenes/scene10_plane1.delta"

    const/16 v2, 0x9f4

    const-string v3, "21418d80755e0e261c2874389e4718f9b372e00d68dd1e7abca27562995fa7e0"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 47
    const-string v1, "tutorial/scenes/scene11_patterns.bin"

    const/16 v2, 0x6a0

    const-string v3, "68d1b5d79455eafc0634021561583da1827b84f7714eeb74dc1fc9b70bc7b877"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 48
    const-string v1, "tutorial/scenes/scene11_plane0.delta"

    const/16 v2, 0xa8

    const-string v3, "98c3bf6e61f611e909a47e2991db9639627e6aeceabfbb4b4d501b001537b5f3"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 49
    const-string v1, "tutorial/scenes/index.bin"

    const/16 v2, 0x38

    const-string v3, "a813ed31d185e3d5e639a5dcc20a5a6f5ee84b1dac961440f2ff9bb52cf11be4"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 50
    const-string v1, "tutorial/palettes/scene00.bin"

    const/16 v2, 0x80

    const-string v3, "6f257ab7b81c500a72fc667e95eb1e41ddc57f39ded0afb75f8ace4354b964dc"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    .line 51
    const-string v1, "tutorial/palettes/scene01.bin"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    .line 52
    const-string v1, "tutorial/palettes/scene03.bin"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    .line 53
    const-string v1, "tutorial/palettes/scene04.bin"

    const-string v4, "9cec6fed5161dc7da439cb6fb2b00e6eb79f4542e0be070d4f5931eed90443a1"

    invoke-static {v1, v2, v4}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    .line 54
    const-string v1, "tutorial/palettes/scene06.bin"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    .line 55
    const-string v1, "tutorial/palettes/scene09.bin"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    .line 56
    const-string v1, "tutorial/palettes/scene11.bin"

    const-string v3, "26e5e391143b9ac4e69113050de698603c9c019d545beb21836d757944087bef"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    .line 57
    const-string v1, "tutorial/dynamic/dynamic00_patterns.bin"

    const-string v3, "fd60f2f8f54b941494d7795df85e0ade26de13e60c8eab0c62070dfc85084ada"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 58
    const-string v1, "tutorial/cursor/patterns.bin"

    const/16 v2, 0x5ea0

    const-string v3, "9b25dc22c153e34c8c8a7b8bd8a5b8f8fca05d37005e2004d2980c1afd708bef"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 59
    const-string v1, "tutorial/cursor/layouts.bin"

    const/16 v2, 0x5c0

    const-string v3, "c2e89ea9de7b09ff2b10d599af8fc2bdddf4b3acefabb9b250fb7f6cf085d660"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 60
    const-string v1, "tutorial/text/layout.bin"

    const/16 v2, 0x1b2

    const-string v3, "ffc3f13c993f69684e7fb6ecaf077bd52d98f78c04af835f169ab6d0bf714fd6"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 61
    const-string v1, "tutorial/text/font.bin"

    const/16 v2, 0x1520

    const-string v3, "f372036152af2cb8e86090c18c7c2509c0a504e4f1b1ec2204abad87e64f93b2"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomTutorialAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomTutorialAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomTutorialAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/ahsim/demulation/RomTutorialAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/ahsim/demulation/RomTutorialAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    .local v1, "e":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "e":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 66
    const-wide/16 v0, 0x0

    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomTutorialAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomTutorialAssetManifest$Entry;
    goto :goto_0

    :cond_0
    return-wide v0
.end method
