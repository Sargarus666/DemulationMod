.class public final Lcom/ahsim/demulation/RazorTerrainVisualSource;
.super Ljava/lang/Object;
.source "RazorTerrainVisualSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR_BYTES:I = 0x2d00

.field public static final DESCRIPTOR_COUNT:I = 0x168

.field private static final DESCRIPTOR_OFFSET:I = 0x4adf0

.field private static final DESCRIPTOR_SHA:Ljava/lang/String; = "fa2fad90a1ed6bdd9df78a89762d5cce3d2245d2d32c2844d61b23778bfee8aa"

.field public static final PALETTE_BYTES:I = 0x200

.field private static final PALETTE_OFFSET:I = 0x25f42

.field private static final PALETTE_SHA:Ljava/lang/String; = "0cd11f454916abf69d052de77f0becd0df9177690783067009041c90b6b7210a"

.field public static final PALETTE_VARIANTS:I = 0x4


# direct methods
.method static bridge synthetic -$$Nest$smsha256([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->sha256([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smu16([BI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->u16([BI)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeVerifiedTile([B[B[BII)[I
    .locals 21
    .param p0, "vramPatterns"    # [B
    .param p1, "descriptorBank"    # [B
    .param p2, "cram"    # [B
    .param p3, "variant"    # I
    .param p4, "tileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    array-length v5, v0

    and-int/lit8 v5, v5, 0x1f

    if-nez v5, :cond_8

    array-length v5, v0

    if-eqz v5, :cond_8

    array-length v5, v1

    rem-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_8

    array-length v5, v2

    const/16 v6, 0x200

    if-ne v5, v6, :cond_8

    if-ltz v3, :cond_8

    const/4 v5, 0x4

    if-ge v3, v5, :cond_8

    if-ltz v4, :cond_8

    array-length v6, v1

    div-int/lit8 v6, v6, 0x20

    if-ge v4, v6, :cond_8

    .line 268
    const/16 v6, 0x400

    new-array v6, v6, [I

    .line 269
    .local v6, "out":[I
    const/4 v7, 0x0

    .local v7, "by":I
    :goto_0
    if-ge v7, v5, :cond_7

    const/4 v8, 0x0

    .local v8, "bx":I
    :goto_1
    if-ge v8, v5, :cond_6

    .line 270
    mul-int/lit8 v9, v4, 0x20

    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v8

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-static {v1, v9}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->u16([BI)I

    move-result v9

    .line 271
    .local v9, "attr":I
    and-int/lit16 v10, v9, 0x7ff

    .line 272
    .local v10, "pattern":I
    ushr-int/lit8 v11, v9, 0xd

    and-int/lit8 v11, v11, 0x3

    .line 273
    .local v11, "line":I
    array-length v12, v0

    div-int/lit8 v12, v12, 0x20

    if-ge v10, v12, :cond_5

    .line 275
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_2
    const/16 v13, 0x8

    if-ge v12, v13, :cond_4

    const/4 v14, 0x0

    .local v14, "x":I
    :goto_3
    if-ge v14, v13, :cond_3

    .line 276
    and-int/lit16 v15, v9, 0x800

    if-eqz v15, :cond_0

    rsub-int/lit8 v15, v14, 0x7

    goto :goto_4

    :cond_0
    move v15, v14

    .line 277
    .local v15, "sx":I
    :goto_4
    and-int/lit16 v5, v9, 0x1000

    if-eqz v5, :cond_1

    rsub-int/lit8 v5, v12, 0x7

    goto :goto_5

    :cond_1
    move v5, v12

    .line 278
    .local v5, "sy":I
    :goto_5
    mul-int/lit8 v16, v10, 0x20

    mul-int/lit8 v17, v5, 0x4

    add-int v16, v16, v17

    ushr-int/lit8 v17, v15, 0x1

    add-int v16, v16, v17

    move/from16 v17, v13

    aget-byte v13, v0, v16

    and-int/lit16 v13, v13, 0xff

    .line 279
    .local v13, "word":I
    and-int/lit8 v16, v15, 0x1

    if-nez v16, :cond_2

    ushr-int/lit8 v16, v13, 0x4

    goto :goto_6

    :cond_2
    and-int/lit8 v16, v13, 0xf

    .line 280
    .local v16, "index":I
    :goto_6
    mul-int/lit16 v0, v3, 0x80

    mul-int/lit8 v18, v11, 0x20

    add-int v0, v0, v18

    mul-int/lit8 v18, v16, 0x2

    add-int v0, v0, v18

    invoke-static {v2, v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->u16([BI)I

    move-result v0

    .line 281
    .local v0, "colour":I
    ushr-int/lit8 v18, v0, 0x1

    move/from16 v19, v0

    .end local v0    # "colour":I
    .local v19, "colour":I
    and-int/lit8 v0, v18, 0x7

    .local v0, "r":I
    ushr-int/lit8 v18, v19, 0x5

    and-int/lit8 v1, v18, 0x7

    .local v1, "g":I
    ushr-int/lit8 v18, v19, 0x9

    and-int/lit8 v2, v18, 0x7

    .line 282
    .local v2, "b":I
    mul-int/lit8 v18, v7, 0x8

    add-int v18, v18, v12

    mul-int/lit8 v18, v18, 0x20

    mul-int/lit8 v20, v8, 0x8

    add-int v18, v18, v20

    add-int v18, v18, v14

    mul-int/lit16 v3, v0, 0xff

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x10

    const/high16 v20, -0x1000000

    or-int v3, v3, v20

    move/from16 v20, v0

    .end local v0    # "r":I
    .local v20, "r":I
    mul-int/lit16 v0, v1, 0xff

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    mul-int/lit16 v3, v2, 0xff

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    aput v0, v6, v18

    .line 275
    .end local v1    # "g":I
    .end local v2    # "b":I
    .end local v5    # "sy":I
    .end local v13    # "word":I
    .end local v15    # "sx":I
    .end local v16    # "index":I
    .end local v19    # "colour":I
    .end local v20    # "r":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v13, v17

    const/4 v5, 0x4

    goto/16 :goto_3

    .end local v14    # "x":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x4

    goto/16 :goto_2

    .line 269
    .end local v9    # "attr":I
    .end local v10    # "pattern":I
    .end local v11    # "line":I
    .end local v12    # "y":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 274
    .restart local v9    # "attr":I
    .restart local v10    # "pattern":I
    .restart local v11    # "line":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor pattern index not loaded in verified VRAM bank"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    .end local v8    # "bx":I
    .end local v9    # "attr":I
    .end local v10    # "pattern":I
    .end local v11    # "line":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 286
    .end local v7    # "by":I
    :cond_7
    return-object v6

    .line 267
    .end local v6    # "out":[I
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor decoded tile input invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect([BLjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "expectedSha256"    # Ljava/lang/String;
    .param p2, "bundle"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_5

    .line 237
    invoke-static {p0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    array-length v0, p0

    add-int/lit16 v0, v0, -0x2d00

    const v1, 0x4adf0

    if-gt v1, v0, :cond_3

    array-length v0, p0

    add-int/lit16 v0, v0, -0x200

    const v2, 0x25f42

    if-gt v2, v0, :cond_3

    .line 242
    const v0, 0x26142

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 243
    .local v4, "palette":[B
    const v0, 0x4daf0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 244
    .local v5, "descriptors":[B
    const-string v0, "0cd11f454916abf69d052de77f0becd0df9177690783067009041c90b6b7210a"

    invoke-static {v4}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "fa2fad90a1ed6bdd9df78a89762d5cce3d2245d2d32c2844d61b23778bfee8aa"

    invoke-static {v5}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_1

    .line 248
    invoke-static {v4, v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource;->u16([BI)I

    move-result v1

    const v2, 0xf111

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor CRAM entry invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v0    # "p":I
    :cond_1
    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    move-result-object v7

    .line 253
    .local v7, "vram":Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
    invoke-static {p0, p2}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->verifyRom([BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    move-result-object v8

    .line 254
    .local v8, "placement":Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
    new-instance v3, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    const/4 v9, 0x0

    move-object v6, p2

    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .local v6, "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;-><init>([B[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/RazorVramPatternLoader$Result;Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;Lcom/ahsim/demulation/RazorTerrainVisualSource-IA;)V

    return-object v3

    .line 244
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v7    # "vram":Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
    .end local v8    # "placement":Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_2
    move-object v6, p2

    .line 245
    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Razor visual palette/descriptor bank unverified"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 239
    .end local v4    # "palette":[B
    .end local v5    # "descriptors":[B
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_3
    move-object v6, p2

    .line 241
    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Razor visual source truncated"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_4
    move-object v6, p2

    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Razor visual ROM changed after bundle verification"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 234
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_5
    move-object v6, p2

    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    goto :goto_1

    .line 233
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_6
    move-object v6, p2

    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    goto :goto_1

    .line 232
    .end local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :cond_7
    move-object v6, p2

    .line 235
    .end local p2    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .restart local v6    # "bundle":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    :goto_1
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Razor terrain source requires authenticated mission bundle"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 293
    .local v0, "hash":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 295
    .local v4, "x":B
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    nop

    .end local v4    # "x":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 299
    .end local v0    # "hash":[B
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 289
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
