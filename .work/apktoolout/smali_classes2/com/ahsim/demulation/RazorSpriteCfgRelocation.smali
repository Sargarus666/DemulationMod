.class public final Lcom/ahsim/demulation/RazorSpriteCfgRelocation;
.super Ljava/lang/Object;
.source "RazorSpriteCfgRelocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;,
        Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    }
.end annotation


# static fields
.field private static final CONFIG_SIZE:I = 0xe

.field public static final GROUPS:I = 0x2

.field private static final NO_LOAD_GFX:I = 0x7f000000

.field public static final POINTER_SLOTS:[I

.field public static final POSES:I = 0x5

.field public static final PTR_TABLE_BASE:I = 0x85152

.field private static final ROM1_CONFIG:[I

.field private static final ROM2_CONFIG:[I

.field private static final ROM_UNITS_BANK:[I

.field private static final STD_UNIT_SPR:I = 0x8000000

.field public static final TILE_BASE:I = 0x58b

.field public static final VRAM_TILE_BASE:I = 0x39a


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const v0, 0x85152

    const v1, 0x85192

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->POINTER_SLOTS:[I

    .line 29
    const v0, 0x1be806

    const v1, 0x1c4290

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM1_CONFIG:[I

    .line 30
    const v0, 0x9935e

    const v1, 0x9ede8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM2_CONFIG:[I

    .line 31
    const v0, 0x1b127e

    const v1, 0x8bdd6

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM_UNITS_BANK:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hex(I)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # I

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i32([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 123
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    .locals 32
    .param p0, "authenticatedRom"    # [B
    .param p1, "expectedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;

    move-result-object v1

    .line 71
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    iget v2, v1, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->variant:I

    .line 72
    .local v2, "v":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not an attested Razor edition"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_1
    :goto_0
    if-ne v2, v4, :cond_2

    sget-object v5, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM1_CONFIG:[I

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM2_CONFIG:[I

    .line 74
    .local v5, "cfgBases":[I
    :goto_1
    new-array v6, v3, [I

    const/4 v7, 0x5

    aput v7, v6, v4

    const/4 v4, 0x0

    aput v3, v6, v4

    const-class v4, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    .line 75
    .local v4, "frame":[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    const/4 v6, 0x0

    move v9, v6

    .local v9, "g":I
    :goto_2
    if-ge v9, v3, :cond_b

    const/4 v6, 0x0

    move v10, v6

    .local v10, "pose":I
    :goto_3
    if-ge v10, v7, :cond_a

    .line 76
    sget-object v6, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->POINTER_SLOTS:[I

    aget v6, v6, v9

    mul-int/lit8 v8, v10, 0x8

    add-int v11, v6, v8

    .line 77
    .local v11, "slot":I
    aget v6, v5, v9

    mul-int/lit8 v8, v10, 0xe

    add-int v12, v6, v8

    .line 78
    .local v12, "cfg":I
    const/16 v6, 0x8

    invoke-static {v0, v11, v6}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->requireRange([BII)V

    .line 79
    const/16 v8, 0xe

    invoke-static {v0, v12, v8}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->requireRange([BII)V

    .line 80
    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->i32([BI)I

    move-result v8

    .line 81
    .local v8, "gfxPtr":I
    add-int/lit8 v13, v11, 0x4

    invoke-static {v0, v13}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->i32([BI)I

    move-result v13

    .line 82
    .local v13, "cfgPtr":I
    const/high16 v14, 0x7f000000

    if-ne v8, v14, :cond_9

    const/high16 v14, 0x8000000

    or-int/2addr v14, v12

    if-ne v13, v14, :cond_9

    .line 84
    invoke-static {v0, v12}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v16

    .line 85
    .local v16, "count":I
    add-int/lit8 v14, v12, 0x2

    invoke-static {v0, v14}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v14

    .line 86
    .local v14, "width":I
    add-int/lit8 v15, v12, 0x4

    invoke-static {v0, v15}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v15

    .line 87
    .local v15, "height":I
    add-int/lit8 v7, v12, 0x6

    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v7

    int-to-short v7, v7

    .line 88
    .local v7, "y":I
    add-int/lit8 v6, v12, 0x8

    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v6

    .line 89
    .local v6, "spriteSize":I
    add-int/lit8 v3, v12, 0xa

    invoke-static {v0, v3}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v3

    .line 90
    .local v3, "tileAttr":I
    move-object/from16 v18, v5

    .end local v5    # "cfgBases":[I
    .local v18, "cfgBases":[I
    add-int/lit8 v5, v12, 0xc

    invoke-static {v0, v5}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->u16([BI)I

    move-result v5

    int-to-short v5, v5

    .line 91
    .local v5, "x":I
    move/from16 v19, v8

    .end local v8    # "gfxPtr":I
    .local v19, "gfxPtr":I
    mul-int/lit8 v8, v10, 0x4

    add-int/lit16 v8, v8, 0x58b

    .line 92
    .local v8, "tile":I
    if-nez v16, :cond_8

    move/from16 v20, v9

    .end local v9    # "g":I
    .local v20, "g":I
    const/16 v9, 0x10

    if-ne v14, v9, :cond_7

    if-ne v15, v9, :cond_7

    move/from16 v21, v9

    const/4 v9, -0x8

    if-ne v7, v9, :cond_7

    if-ne v5, v9, :cond_7

    const/16 v9, 0x500

    if-ne v6, v9, :cond_7

    if-ne v3, v8, :cond_7

    .line 95
    sget-object v9, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->ROM_UNITS_BANK:[I

    aget v9, v9, v2

    move/from16 v22, v3

    .end local v3    # "tileAttr":I
    .local v22, "tileAttr":I
    add-int/lit16 v3, v8, -0x39a

    mul-int/lit8 v3, v3, 0x20

    add-int/2addr v3, v9

    .line 96
    .local v3, "tileSrc":I
    const/16 v9, 0x80

    invoke-static {v0, v3, v9}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->requireRange([BII)V

    .line 99
    const/16 v9, 0x100

    new-array v9, v9, [B

    .line 100
    .local v9, "out":[B
    move/from16 v23, v5

    .end local v5    # "x":I
    .local v23, "x":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v6

    .end local v6    # "spriteSize":I
    .local v24, "spriteSize":I
    const-string v6, "trike"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".smd"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->verifiedBlockCopy(Ljava/lang/String;)[B

    move-result-object v6

    .line 102
    .local v6, "verified":[B
    move/from16 v25, v7

    .end local v7    # "y":I
    .local v25, "y":I
    array-length v7, v6

    move/from16 v26, v8

    const/16 v8, 0x80

    .end local v8    # "tile":I
    .local v26, "tile":I
    if-ne v7, v8, :cond_6

    add-int/lit16 v7, v3, 0x80

    .line 103
    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 102
    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 105
    const/4 v7, 0x0

    .local v7, "tx":I
    :goto_4
    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    const/16 v17, 0x0

    move/from16 v0, v17

    .local v0, "ty":I
    :goto_5
    if-ge v0, v8, :cond_4

    .line 106
    mul-int/lit8 v17, v7, 0x2

    add-int v8, v17, v0

    .line 107
    .local v8, "pattern":I
    move/from16 v17, v0

    .end local v0    # "ty":I
    .local v17, "ty":I
    invoke-virtual {v1, v5, v8}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->patternPixels(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    .local v0, "indices":[B
    const/16 v27, 0x0

    move-object/from16 v28, v1

    move/from16 v1, v27

    .local v1, "row":I
    .local v28, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    :goto_6
    move/from16 v27, v3

    const/16 v3, 0x8

    .end local v3    # "tileSrc":I
    .local v27, "tileSrc":I
    if-ge v1, v3, :cond_3

    .line 109
    mul-int/lit8 v3, v1, 0x8

    mul-int/lit8 v29, v17, 0x8

    add-int v29, v29, v1

    mul-int/lit8 v29, v29, 0x10

    mul-int/lit8 v30, v7, 0x8

    move/from16 v31, v1

    .end local v1    # "row":I
    .local v31, "row":I
    add-int v1, v29, v30

    move-object/from16 v29, v5

    const/16 v5, 0x8

    .end local v5    # "label":Ljava/lang/String;
    .local v29, "label":Ljava/lang/String;
    invoke-static {v0, v3, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/lit8 v1, v31, 0x1

    move/from16 v3, v27

    move-object/from16 v5, v29

    .end local v31    # "row":I
    .restart local v1    # "row":I
    goto :goto_6

    .end local v29    # "label":Ljava/lang/String;
    .restart local v5    # "label":Ljava/lang/String;
    :cond_3
    move/from16 v31, v1

    move-object/from16 v29, v5

    move v5, v3

    .line 105
    .end local v0    # "indices":[B
    .end local v1    # "row":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "pattern":I
    .restart local v29    # "label":Ljava/lang/String;
    add-int/lit8 v0, v17, 0x1

    move/from16 v3, v27

    move-object/from16 v1, v28

    move-object/from16 v5, v29

    const/4 v8, 0x2

    .end local v17    # "ty":I
    .local v0, "ty":I
    goto :goto_5

    .end local v27    # "tileSrc":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v29    # "label":Ljava/lang/String;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v3    # "tileSrc":I
    .restart local v5    # "label":Ljava/lang/String;
    :cond_4
    move/from16 v17, v0

    move-object/from16 v28, v1

    move/from16 v27, v3

    move-object/from16 v29, v5

    const/16 v5, 0x8

    .end local v0    # "ty":I
    .end local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v3    # "tileSrc":I
    .end local v5    # "label":Ljava/lang/String;
    .restart local v27    # "tileSrc":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v29    # "label":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v29

    goto :goto_4

    .end local v27    # "tileSrc":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v29    # "label":Ljava/lang/String;
    .restart local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v3    # "tileSrc":I
    .restart local v5    # "label":Ljava/lang/String;
    :cond_5
    move-object/from16 v28, v1

    move/from16 v27, v3

    move-object/from16 v29, v5

    .line 111
    .end local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v3    # "tileSrc":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "tx":I
    .restart local v27    # "tileSrc":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v29    # "label":Ljava/lang/String;
    aget-object v0, v4, v20

    new-instance v8, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    move v1, v15

    .end local v15    # "height":I
    .local v1, "height":I
    const/4 v15, 0x0

    move v5, v1

    move v1, v13

    move v3, v14

    move/from16 v13, v26

    const/16 v17, 0x2

    move-object v14, v9

    move/from16 v9, v20

    .end local v20    # "g":I
    .end local v26    # "tile":I
    .local v1, "cfgPtr":I
    .local v3, "width":I
    .local v5, "height":I
    .local v9, "g":I
    .local v13, "tile":I
    .local v14, "out":[B
    invoke-direct/range {v8 .. v15}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;-><init>(IIIII[BLcom/ahsim/demulation/RazorSpriteCfgRelocation-IA;)V

    .end local v9    # "g":I
    .restart local v20    # "g":I
    aput-object v8, v0, v10

    .line 75
    .end local v1    # "cfgPtr":I
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v6    # "verified":[B
    .end local v11    # "slot":I
    .end local v12    # "cfg":I
    .end local v13    # "tile":I
    .end local v14    # "out":[B
    .end local v16    # "count":I
    .end local v19    # "gfxPtr":I
    .end local v22    # "tileAttr":I
    .end local v23    # "x":I
    .end local v24    # "spriteSize":I
    .end local v25    # "y":I
    .end local v27    # "tileSrc":I
    .end local v29    # "label":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v17

    move-object/from16 v5, v18

    move-object/from16 v1, v28

    const/4 v7, 0x5

    goto/16 :goto_3

    .line 102
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v3, "tileSrc":I
    .local v5, "label":Ljava/lang/String;
    .restart local v6    # "verified":[B
    .local v9, "out":[B
    .restart local v11    # "slot":I
    .restart local v12    # "cfg":I
    .local v13, "cfgPtr":I
    .local v14, "width":I
    .restart local v15    # "height":I
    .restart local v16    # "count":I
    .restart local v19    # "gfxPtr":I
    .restart local v22    # "tileAttr":I
    .restart local v23    # "x":I
    .restart local v24    # "spriteSize":I
    .restart local v25    # "y":I
    .restart local v26    # "tile":I
    :cond_6
    move-object/from16 v28, v1

    move/from16 v27, v3

    move-object/from16 v29, v5

    move v1, v13

    move v3, v14

    move v5, v15

    move/from16 v13, v26

    move-object v14, v9

    .line 104
    .end local v9    # "out":[B
    .end local v15    # "height":I
    .end local v26    # "tile":I
    .local v1, "cfgPtr":I
    .local v3, "width":I
    .local v5, "height":I
    .local v13, "tile":I
    .local v14, "out":[B
    .restart local v27    # "tileSrc":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v29    # "label":Ljava/lang/String;
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Razor CFG tile has wrong graphic bytes"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    .end local v22    # "tileAttr":I
    .end local v23    # "x":I
    .end local v24    # "spriteSize":I
    .end local v25    # "y":I
    .end local v27    # "tileSrc":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v29    # "label":Ljava/lang/String;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v3, "tileAttr":I
    .local v5, "x":I
    .local v6, "spriteSize":I
    .local v7, "y":I
    .local v8, "tile":I
    .local v13, "cfgPtr":I
    .local v14, "width":I
    .restart local v15    # "height":I
    :cond_7
    move-object/from16 v28, v1

    move/from16 v22, v3

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move v1, v13

    move v3, v14

    move v5, v15

    move v13, v8

    .end local v6    # "spriteSize":I
    .end local v7    # "y":I
    .end local v8    # "tile":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    .local v1, "cfgPtr":I
    .local v3, "width":I
    .local v5, "height":I
    .local v13, "tile":I
    .restart local v22    # "tileAttr":I
    .restart local v23    # "x":I
    .restart local v24    # "spriteSize":I
    .restart local v25    # "y":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    goto :goto_7

    .end local v20    # "g":I
    .end local v22    # "tileAttr":I
    .end local v23    # "x":I
    .end local v24    # "spriteSize":I
    .end local v25    # "y":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v3, "tileAttr":I
    .local v5, "x":I
    .restart local v6    # "spriteSize":I
    .restart local v7    # "y":I
    .restart local v8    # "tile":I
    .local v9, "g":I
    .local v13, "cfgPtr":I
    .restart local v14    # "width":I
    .restart local v15    # "height":I
    :cond_8
    move-object/from16 v28, v1

    move/from16 v22, v3

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v20, v9

    move v1, v13

    move v3, v14

    move v5, v15

    move v13, v8

    .line 94
    .end local v6    # "spriteSize":I
    .end local v7    # "y":I
    .end local v8    # "tile":I
    .end local v9    # "g":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    .local v1, "cfgPtr":I
    .local v3, "width":I
    .local v5, "height":I
    .local v13, "tile":I
    .restart local v20    # "g":I
    .restart local v22    # "tileAttr":I
    .restart local v23    # "x":I
    .restart local v24    # "spriteSize":I
    .restart local v25    # "y":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    :goto_7
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Razor CFG geometry/VRAM mismatch at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->hex(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v3    # "width":I
    .end local v16    # "count":I
    .end local v18    # "cfgBases":[I
    .end local v19    # "gfxPtr":I
    .end local v20    # "g":I
    .end local v22    # "tileAttr":I
    .end local v23    # "x":I
    .end local v24    # "spriteSize":I
    .end local v25    # "y":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v5, "cfgBases":[I
    .local v8, "gfxPtr":I
    .restart local v9    # "g":I
    .local v13, "cfgPtr":I
    :cond_9
    move-object/from16 v28, v1

    move-object/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v9

    move v1, v13

    .line 83
    .end local v5    # "cfgBases":[I
    .end local v8    # "gfxPtr":I
    .end local v9    # "g":I
    .end local v13    # "cfgPtr":I
    .local v1, "cfgPtr":I
    .restart local v18    # "cfgBases":[I
    .restart local v19    # "gfxPtr":I
    .restart local v20    # "g":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Razor CFG pointer mismatch at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->hex(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    .end local v11    # "slot":I
    .end local v12    # "cfg":I
    .end local v18    # "cfgBases":[I
    .end local v19    # "gfxPtr":I
    .end local v20    # "g":I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .local v1, "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v5    # "cfgBases":[I
    .restart local v9    # "g":I
    :cond_a
    move-object/from16 v28, v1

    move/from16 v17, v3

    move-object/from16 v18, v5

    move/from16 v20, v9

    .end local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v5    # "cfgBases":[I
    .end local v9    # "g":I
    .end local v10    # "pose":I
    .restart local v18    # "cfgBases":[I
    .restart local v20    # "g":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v0, p0

    const/4 v7, 0x5

    .end local v20    # "g":I
    .restart local v9    # "g":I
    goto/16 :goto_2

    .end local v18    # "cfgBases":[I
    .end local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .restart local v5    # "cfgBases":[I
    :cond_b
    move-object/from16 v28, v1

    .line 113
    .end local v1    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    .end local v9    # "g":I
    .restart local v28    # "bank":Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
    new-instance v0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;-><init>(I[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;Lcom/ahsim/demulation/RazorSpriteCfgRelocation-IA;)V

    return-object v0
.end method

.method private static requireRange([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "at"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 118
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Razor ROM pointer out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 120
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
