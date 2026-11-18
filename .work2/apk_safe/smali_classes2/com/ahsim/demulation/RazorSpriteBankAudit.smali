.class public final Lcom/ahsim/demulation/RazorSpriteBankAudit;
.super Ljava/lang/Object;
.source "RazorSpriteBankAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;,
        Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    }
.end annotation


# static fields
.field private static final CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

.field private static final OFFSET_DELTA:I = 0x1254a8

.field public static final RAZOR_ONE:I = 0x1

.field public static final RAZOR_TWO:I = 0x2

.field public static final SOURCE_AMBIGUOUS:I = 0x3

.field public static final SOURCE_NON_MATCHED:I = 0x75

.field public static final SOURCE_PATTERN_FILES:I = 0xc1

.field public static final VERIFIED_BLOCK_COUNT:I = 0x49


# direct methods
.method static bridge synthetic -$$Nest$sfgetCATALOG()[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteBankAudit;->CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 48
    const/16 v0, 0x49

    new-array v0, v0, [Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    new-instance v1, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v6, "218efac8f80233ab15598342a366635e7e6c76281c19fbb654bc73c51e523985"

    const/4 v7, 0x0

    const-string v2, "armor.smd"

    const v3, 0x1bc01e

    const v4, 0x96b76

    const/16 v5, 0x80

    invoke-direct/range {v1 .. v7}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "a5d91dc709da56bd851e6269d86cb1b9c879ec18597c358af1ada9e3c5808443"

    const/4 v9, 0x0

    const-string v4, "arrow.smd"

    const v5, 0x1bcabe

    const v6, 0x97616

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "890b89247623012b777e6cb6d0d8c07d232cb528d74e79a9c0407560693906f8"

    const/4 v10, 0x0

    const-string v5, "bmenucurA.smd"

    const v6, 0x1bb81e

    const v7, 0x96376

    const/16 v8, 0x180

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "ab8358080b9535f9283687df6b7b2d0cb17bcbbfb03026e13168bb46c2aac120"

    const/4 v11, 0x0

    const-string v6, "bmenucurB.smd"

    const v7, 0x1bb69e

    const v8, 0x961f6

    const/16 v9, 0x180

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x3

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "0d2f2c8712505b470df7a06500b64e2370014e2f5d45afb63176de4ba251b263"

    const/4 v12, 0x0

    const-string v7, "bmenucurC.smd"

    const v8, 0x1bb99e

    const v9, 0x964f6

    const/16 v10, 0x180

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x4

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "5aa36bce8c353bafafb0af2227a615be5b0a390adac6f326366a030c7e115ba6"

    const/4 v13, 0x0

    const-string v8, "bmenucurF.smd"

    const v9, 0x1bbb1e

    const v10, 0x96676

    const/16 v11, 0x180

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x5

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "3fa7c55f89a38eae07f68b820d88d1c248cdee42d521b661538265b8fdf95721"

    const/4 v14, 0x0

    const-string v9, "bmnbsize.smd"

    const v10, 0x1bbc9e

    const v11, 0x967f6

    const/16 v12, 0x200

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x6

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "5c4d9c1b795a7b8fb4701f9442c5eab93ce7be78bf0b15e0315cb5bf592e6ca0"

    const/4 v15, 0x0

    const-string v10, "builarea.smd"

    const v11, 0x1bc39e

    const v12, 0x96ef6

    const/16 v13, 0x200

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/4 v1, 0x7

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "7fac1730b382a9f4c0f547450e70dbf99b077eacb08f6a020f4a2e898b4dca82"

    const/4 v8, 0x0

    const-string v3, "buildsel.smd"

    const v4, 0x1bc99e

    const v5, 0x974f6

    const/16 v6, 0x80

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x8

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "fa8ed9dfb4b5b611b76469838aa7b0fb9d7c36092aa4451ee66631e43a7ec6c6"

    const/4 v9, 0x0

    const-string v4, "buildsel2.smd"

    const v5, 0x1bca1e

    const v6, 0x97576

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x9

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "19539a4a9fcc294010cc4a1739883c12d516e65f48b8b261c9b704bc238a22ec"

    const/4 v10, 0x0

    const-string v5, "bullet.smd"

    const v6, 0x1b469e

    const v7, 0x8f1f6

    const/16 v8, 0x20

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xa

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "fb8cb4bf649263cc4c6a793a5f406d97bc5b991b1c2c78c6c361f23b10de15f5"

    const/4 v11, 0x0

    const-string v6, "cantbuil.smd"

    const v7, 0x1b407e

    const v8, 0x8ebd6

    const/16 v9, 0x120

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xb

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "88930fcdc965fa1fdd7252c0686314065916a3ceeae4d7aa3f8518e8566a2a62"

    const/4 v12, 0x0

    const-string v7, "damage.smd"

    const v8, 0x1bbf9e

    const v9, 0x96af6

    const/16 v10, 0x80

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xc

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "fc21729dde5d012e888f972223c4d612ef453706dfefcf51bc98dd9038cf3a4f"

    const/4 v13, 0x0

    const-string v8, "deadsldr.smd"

    const v9, 0x1b7bfe

    const v10, 0x92756

    const/16 v11, 0x80

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xd

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "075279cf10e40ef23fc44f75981171305d24e28d7e0f67879e8c3b0705547689"

    const/4 v14, 0x0

    const-string v9, "deadsldr2.smd"

    const v10, 0x1b467e

    const v11, 0x8f1d6

    const/16 v12, 0x20

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xe

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "6b33a7d2cc671dd1efb4a3dad69e162f7990ea0a479ce87560efe4f27d13704d"

    const-string v10, "deviagas_spr1.smd"

    const v11, 0x1b423e

    const v12, 0x8ed96

    const/16 v13, 0x20

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0xf

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "1697ae69fb862ce8949ab6284db8de022c4bbc55943d9f2ae287835e70da1d38"

    const/4 v8, 0x0

    const-string v3, "deviagas_spr2.smd"

    const v4, 0x1b425e

    const v5, 0x8edb6

    const/16 v6, 0xc0

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x10

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "90715cdee62457e824b6f7f56f21b4f631f9c10d3db06fee25cd975dedd940e7"

    const/4 v9, 0x0

    const-string v4, "deviagas_spr3-5.smd"

    const v5, 0x1b431e

    const v6, 0x8ee76

    const/16 v7, 0x360

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x11

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "e1ce0ca4ba1321bcb64945e67d3cc3b7af3d3dc4b3b3f20e46bc14150470f147"

    const/4 v10, 0x0

    const-string v5, "energy.smd"

    const v6, 0x1bbf1e

    const v7, 0x96a76

    const/16 v8, 0x80

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x12

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "56fa376f4d80b8e1c145c96126b79ab44ee2aaf4b1710b4418b418e9fafa6a39"

    const/4 v11, 0x0

    const-string v6, "explode1_spr1.smd"

    const v7, 0x1b6cfe

    const v8, 0x91856

    const/16 v9, 0x80

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x13

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "de0fefe0cf4ddb389a15449304b6a4a29a9c5ee7aa87224be6f0a96b094b83a9"

    const/4 v12, 0x0

    const-string v7, "explode1_spr2-5.smd"

    const v8, 0x1b6d7e

    const v9, 0x918d6

    const/16 v10, 0x480

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x14

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "c691a2e11ee8cc4f83784f77703a83da4047342f3bdc1f77728d883d25331e8d"

    const/4 v13, 0x0

    const-string v8, "explode2_spr1.smd"

    const v9, 0x1b71fe

    const v10, 0x91d56

    const/16 v11, 0x20

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x15

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "cb39ad7c03d3cb9088bb1ccf6e807bfb6507301ec7f81a59d5aac21d62969604"

    const/4 v14, 0x0

    const-string v9, "explode2_spr2.smd"

    const v10, 0x1b721e

    const v11, 0x91d76

    const/16 v12, 0xa0

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x16

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "5beff9199264f9fa0a4bc0d29a380d7ceb874a7de659810bac3158a2ac3099f9"

    const-string v10, "explode2_spr3.smd"

    const v11, 0x1b73de

    const v12, 0x91f36

    const/16 v13, 0x120

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x17

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "ce2b23488ccfac0d1b5bc2a1c2500fc75d8d9b7e6b1c78fe22c3510f4217dce3"

    const/4 v8, 0x0

    const-string v3, "explode2_spr4.smd"

    const v4, 0x1b72be

    const v5, 0x91e16

    const/16 v6, 0x120

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x18

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "a580d5dffa05c609c62ddb6889388b9ccfc219a2076579156e431ec15e31afbd"

    const/4 v9, 0x0

    const-string v4, "explode2_spr5.smd"

    const v5, 0x1b74fe

    const v6, 0x92056

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x19

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "fcf54ee2e94c567185518c5309ece426cfe4285a35f8c498dcc1d26af79fcc04"

    const/4 v10, 0x0

    const-string v5, "harvtail1.smd"

    const v6, 0x1b493e

    const v7, 0x8f496

    const/16 v8, 0x80

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1a

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "add2c6fe3642c1e558430501745ced20a682318092f76160bee068fbd6bc8f39"

    const/4 v11, 0x0

    const-string v6, "harvtail2.smd"

    const v7, 0x1b49be

    const v8, 0x8f516

    const/16 v9, 0x80

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1b

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "704a7180590983bd8cb7c8360b231280cced6fee9b6a13f87a057bdfd9193315"

    const/4 v12, 0x0

    const-string v7, "harvtail3.smd"

    const v8, 0x1b4a3e

    const v9, 0x8f596

    const/16 v10, 0x80

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1c

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "3dc1cddbad773a5d4939736d3ede393e0f0b556d095fc1760eea17b630342dce"

    const/4 v13, 0x0

    const-string v8, "hspheres.smd"

    const v9, 0x1be35e

    const v10, 0x98eb6

    const/16 v11, 0x400

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1d

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "43e0feaad3301bee195988d70c21037e6f16eb5914396ee36114a221f8bde8ee"

    const/4 v14, 0x0

    const-string v9, "infblood.smd"

    const v10, 0x1b419e

    const v11, 0x8ecf6

    const/16 v12, 0x80

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1e

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "c975242200a59d40018a4818881867375a67b70addcebed00e43a27f5f51513f"

    const-string v10, "lightnin.smd"

    const v11, 0x1b3e3e

    const v12, 0x8e996

    const/16 v13, 0x120

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x1f

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "fb5e1c169582c0c7fec277e85066fcb714c67514011d2a1b5bf31bad1cf2a49e"

    const/4 v8, 0x0

    const-string v3, "okay(1).smd"

    const v4, 0x1b3f5e

    const v5, 0x8eab6

    const/16 v6, 0x120

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x20

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "8a76668875ce82c3a6a667c82cf7f4c1e66719d9983cbdbc78681e453404a0bc"

    const/4 v9, 0x0

    const-string v4, "price.smd"

    const v5, 0x1bbe9e

    const v6, 0x969f6

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x21

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "251f664d429b2ca8ec1e0013a3fb850951e37a32e8a19631a0fb5f9ffac0476c"

    const/4 v10, 0x0

    const-string v5, "rad_off0.smd"

    const v6, 0x1bcb3e

    const v7, 0x97696

    const/16 v8, 0x200

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x22

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "f1c7c77e0349c0a0461356f70dca7f07adc0aa68e3a1b63b30afa2494fe06169"

    const/4 v11, 0x0

    const-string v6, "rad_off1.smd"

    const v7, 0x1bcd3e

    const v8, 0x97896

    const/16 v9, 0x200

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x23

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "87820ff370b373ff5627df66d9c597999e29c6086d518f2f4edf667d8bef893e"

    const/4 v12, 0x0

    const-string v7, "rad_off2.smd"

    const v8, 0x1bcf3e

    const v9, 0x97a96

    const/16 v10, 0x200

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x24

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "89275da70769fb3835dc5c1ca87ac9cfc69762eea865a265734950a61d89f3b0"

    const/4 v13, 0x0

    const-string v8, "rad_off3.smd"

    const v9, 0x1bd13e

    const v10, 0x97c96

    const/16 v11, 0x200

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x25

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "751bb59f809a4f8d4c2037f29b0c3da94a879fb2a15079fd295ad16afc8489cd"

    const/4 v14, 0x0

    const-string v9, "rad_off4.smd"

    const v10, 0x1bd33e

    const v11, 0x97e96

    const/16 v12, 0x200

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x26

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "c73c63361be80920ae78cbd97286e56fca63e6298adb19f345b49f58179f0452"

    const-string v10, "rad_off5.smd"

    const v11, 0x1bd53e

    const v12, 0x98096

    const/16 v13, 0x200

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x27

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "e2d7befe85c765de3aae52286edfc6401dad409fa82a50c6f1db010d39f094b5"

    const/4 v8, 0x0

    const-string v3, "rad_off6.smd"

    const v4, 0x1bd73e

    const v5, 0x98296

    const/16 v6, 0x200

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x28

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "b8fa072ef7f8bb1423d2bda67e559a54f64a56b89a2ac968c0696ee5aa0f941b"

    const/4 v9, 0x0

    const-string v4, "rad_off7.smd"

    const v5, 0x1bd93e

    const v6, 0x98496

    const/16 v7, 0x200

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x29

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "5974c746931b29622235598d24e8911291dbc7258be345c828405aab3f95f7d0"

    const/4 v10, 0x0

    const-string v5, "rad_off8.smd"

    const v6, 0x1bdb3e

    const v7, 0x98696

    const/16 v8, 0x200

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2a

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "0e7af8261e00e3a9e2aa444cad31b725570993e147aeef2a1d753033ac0f218e"

    const/4 v11, 0x0

    const-string v6, "rad_off9.smd"

    const v7, 0x1bdd3e

    const v8, 0x98896

    const/16 v9, 0x200

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2b

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "2d0c56603b6d201d6f44485fa746990709389ecaba994995e38c0d0f4e5ce3c5"

    const/4 v12, 0x0

    const-string v7, "rad_offA.smd"

    const v8, 0x1bdf3e

    const v9, 0x98a96

    const/16 v10, 0x200

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2c

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "7a5c898fbb119e0ecd68325fd8653801ffc6002da33d1aa5a2a1322a69a0ebe5"

    const/4 v13, 0x0

    const-string v8, "rad_offB.smd"

    const v9, 0x1be13e

    const v10, 0x98c96

    const/16 v11, 0x200

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2d

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "737021bc733b9ed809209dc955deed727f7f4a43df72bee01f45a8e573c8c6bc"

    const/4 v14, 0x0

    const-string v9, "radarcur.smd"

    const v10, 0x1bca9e

    const v11, 0x975f6

    const/16 v12, 0x20

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2e

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "2d281daa551f0bf972b66afe9830ced264cc955345e4d36b2b2e05cee4dec481"

    const-string v10, "repair.smd"

    const v11, 0x1b3d1e

    const v12, 0x8e876

    const/16 v13, 0x120

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x2f

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "f0e5c974d3e569d04e09c4cfe769a7f80c2141831c9222c6502768dd27e11413"

    const/4 v8, 0x0

    const-string v3, "rocket11.smd"

    const v4, 0x1b7e7e

    const v5, 0x929d6

    const/16 v6, 0x20

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x30

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "a73b06ec2f725c39a3029469be1d58cb8ef54b53fe795f564af01aa52e594360"

    const/4 v9, 0x0

    const-string v4, "rocket12.smd"

    const v5, 0x1b7e9e

    const v6, 0x929f6

    const/16 v7, 0x20

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x31

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "d8949e7f40158bf92c62ab24636cd8c183d14e6b4ce4121395a106afb90e98d7"

    const/4 v10, 0x0

    const-string v5, "rocket13.smd"

    const v6, 0x1b7ebe

    const v7, 0x92a16

    const/16 v8, 0x20

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x32

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "ec34cc8843b71b920fd28881c12f2a2e55a8edc7dead238171211adfaedce08b"

    const/4 v11, 0x0

    const-string v6, "rocket14.smd"

    const v7, 0x1b7ede

    const v8, 0x92a36

    const/16 v9, 0x20

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x33

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "fe9dfdd96ca4b9ba7990a02fc0be803dc05e10f432f2b74f3f1dc0d6231f3fbe"

    const/4 v12, 0x0

    const-string v7, "rocket15.smd"

    const v8, 0x1b7efe

    const v9, 0x92a56

    const/16 v10, 0x20

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x34

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "d76845d4438f4cbe018971ed612d3c606b4d6ce4b495467216fdebf3cba31cce"

    const/4 v13, 0x0

    const-string v8, "sandworm.smd"

    const v9, 0x1b7c7e

    const v10, 0x927d6

    const/16 v11, 0x200

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x35

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "b23f87c49c93ac105b7853c95a63013ee4795fc7dda1a2817c36375a3568e112"

    const/4 v14, 0x0

    const-string v9, "sldblood.smd"

    const v10, 0x1b421e

    const v11, 0x8ed76

    const/16 v12, 0x20

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x36

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "9e0ef6798a6393b15e4c6156e4d017097bff1f6ea92261d64d02dfb159dbfb03"

    const-string v10, "smoke1.smd"

    const v11, 0x1bb45e

    const v12, 0x95fb6

    const/16 v13, 0xc0

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x37

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "50b34085313976f8eca57f133af676cc2498f709589b34786a9b94c35760adda"

    const/4 v8, 0x0

    const-string v3, "smoke2.smd"

    const v4, 0x1bb51e

    const v5, 0x96076

    const/16 v6, 0xc0

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x38

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "71cd0009dfe78abdd2721adb563f95583084e6cff75574add26647b2b738fed9"

    const/4 v9, 0x0

    const-string v4, "smoke3.smd"

    const v5, 0x1bb5de

    const v6, 0x96136

    const/16 v7, 0xc0

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x39

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "65a5513e43f073a6fde4c5760c54647bf377ec56b00e071315de377e7a0c3547"

    const/4 v10, 0x0

    const-string v5, "sonblast_spr1.smd"

    const v6, 0x1b757e

    const v7, 0x920d6

    const/16 v8, 0x120

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3a

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "86309b5738037d38ddaf1602654fcf00c498ba079f4abd111d99db8a8b2c280d"

    const/4 v11, 0x0

    const-string v6, "sonblast_spr2.smd"

    const v7, 0x1b769e

    const v8, 0x921f6

    const/16 v9, 0x120

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3b

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "06a9c2828e8c84ac0874d34d310380589b671b6d32e9dc3da8537bb5e566b339"

    const/4 v12, 0x0

    const-string v7, "sonblast_spr3.smd"

    const v8, 0x1b77be

    const v9, 0x92316

    const/16 v10, 0x80

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3c

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "d534d067053deef15f903ecf73cab5c70bfa0325ceea4cb0597fbca5e383514f"

    const/4 v13, 0x0

    const-string v8, "tcannexp_spr1.smd"

    const v9, 0x1b6bde

    const v10, 0x91736

    const/16 v11, 0x20

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3d

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "9b5442fdef78e535c33a0cb9a54ed1003457e61864f4803b32c5b9150f9106d1"

    const/4 v14, 0x0

    const-string v9, "tcannexp_spr2-3.smd"

    const v10, 0x1b6bfe

    const v11, 0x91756

    const/16 v12, 0x100

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3e

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "042763c9486463bdcb2685c4d96618c03f7f5626d571bd3c2ecf6786ca8254b0"

    const-string v10, "trike1.smd"

    const v11, 0x1b509e

    const v12, 0x8fbf6

    const/16 v13, 0x80

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x3f

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "eeca26b94c247e0b2512632bd03679dfa4fa208309c7cc7375d8d278c39456c2"

    const/4 v8, 0x0

    const-string v3, "trike2.smd"

    const v4, 0x1b511e

    const v5, 0x8fc76

    const/16 v6, 0x80

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x40

    aput-object v2, v0, v1

    new-instance v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v8, "1958e3269dbb1096f0c8326cb82a6abe4c48baa753ecb64d0148099fd7ef0338"

    const/4 v9, 0x0

    const-string v4, "trike3.smd"

    const v5, 0x1b519e

    const v6, 0x8fcf6

    const/16 v7, 0x80

    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x41

    aput-object v3, v0, v1

    new-instance v4, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v9, "d18b79b5817c03b54600c91aa99988f0b21ee21a3350ca896e1c7ac3c114661e"

    const/4 v10, 0x0

    const-string v5, "trike4.smd"

    const v6, 0x1b521e

    const v7, 0x8fd76

    const/16 v8, 0x80

    invoke-direct/range {v4 .. v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x42

    aput-object v4, v0, v1

    new-instance v5, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v10, "c6a618d543bfce967bd08b54455a692468063f3fcd3b1369d01d1bc088ed467d"

    const/4 v11, 0x0

    const-string v6, "trike5.smd"

    const v7, 0x1b529e

    const v8, 0x8fdf6

    const/16 v9, 0x80

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x43

    aput-object v5, v0, v1

    new-instance v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v11, "7f511be001e3bc082264865683a9a5cc4f8571e2939f428a706903f47f741546"

    const/4 v12, 0x0

    const-string v7, "wormeat1.smd"

    const v8, 0x1b9cbe

    const v9, 0x94816

    const/16 v10, 0x200

    invoke-direct/range {v6 .. v12}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x44

    aput-object v6, v0, v1

    new-instance v7, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v12, "3ad8aba2d90b9c1e83d15c01ed9724590b8537d6a803c2e1d29fe80ff44b1762"

    const/4 v13, 0x0

    const-string v8, "wormeat2.smd"

    const v9, 0x1b9ebe

    const v10, 0x94a16

    const/16 v11, 0x200

    invoke-direct/range {v7 .. v13}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x45

    aput-object v7, v0, v1

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v13, "9197fe389c00f64153e98b02dc848c3024066607621a0098560cdc61dceb880f"

    const/4 v14, 0x0

    const-string v9, "wormeat3.smd"

    const v10, 0x1ba0be

    const v11, 0x94c16

    const/16 v12, 0x200

    invoke-direct/range {v8 .. v14}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x46

    aput-object v8, v0, v1

    new-instance v9, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v14, "2c6852446cbe24df23842852cf5b5123d8fa45aa35794e9930f10eea43ddecb2"

    const-string v10, "wormeat4.smd"

    const v11, 0x1ba2be

    const v12, 0x94e16

    const/16 v13, 0x200

    invoke-direct/range {v9 .. v15}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x47

    aput-object v9, v0, v1

    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    const-string v7, "582c1db68105920982c342b7165d33a189a881d6b59172baffb9a605cbb8dbc1"

    const/4 v8, 0x0

    const-string v3, "wormeat5.smd"

    const v4, 0x1ba4be

    const v5, 0x95016

    const/16 v6, 0x200

    invoke-direct/range {v2 .. v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    const/16 v1, 0x48

    aput-object v2, v0, v1

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteBankAudit;->CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static catalogCopy()[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .locals 1

    .line 207
    sget-object v0, Lcom/ahsim/demulation/RazorSpriteBankAudit;->CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    return-object v0
.end method

.method private static digest([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->digest([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static digest([BII)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 215
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 216
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 217
    .local v1, "sum":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .local v2, "out":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .line 219
    .local v5, "v":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    nop

    .end local v5    # "v":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 223
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "sum":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "expectedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    array-length v0, p0

    const v1, 0x400200

    if-gt v0, v1, :cond_6

    .line 186
    invoke-static {p0}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->digest([B)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "actual":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    nop

    .line 190
    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v1

    .line 191
    .local v1, "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_0
    iget-object v2, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteBankAudit;->CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 195
    .local v6, "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    iget v7, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    invoke-virtual {v6, v7}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->romOffset(I)I

    move-result v7

    .line 196
    .local v7, "pos":I
    iget v8, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom1:I

    iget v9, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom2:I

    sub-int/2addr v8, v9

    const v9, 0x1254a8

    if-ne v8, v9, :cond_2

    iget v8, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    if-lez v8, :cond_2

    iget v8, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    and-int/lit8 v8, v8, 0x1f

    if-nez v8, :cond_2

    and-int/lit8 v8, v7, 0x1f

    sget-object v9, Lcom/ahsim/demulation/RazorSpriteBankAudit;->CATALOG:[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    aget-object v9, v9, v4

    iget v10, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    .line 198
    invoke-virtual {v9, v10}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->romOffset(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    if-ne v8, v9, :cond_2

    if-ltz v7, :cond_2

    array-length v8, p0

    iget v9, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    .line 201
    iget-object v8, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sha256:Ljava/lang/String;

    iget v9, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    invoke-static {p0, v7, v9}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->digest([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 194
    .end local v6    # "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .end local v7    # "pos":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    .restart local v6    # "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .restart local v7    # "pos":I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Razor sprite ROM fragment failed SHA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sourceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Razor sprite fragment metadata inconsistent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sourceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v6    # "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .end local v7    # "pos":I
    :cond_3
    new-instance v2, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, p0, v4}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;-><init>(ILjava/lang/String;[BLcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V

    return-object v2

    .line 193
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unsupported Razor sprite source"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    .end local v1    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor ROM changed before sprite audit"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v0    # "actual":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor sprite bank audit requires an authenticated ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
