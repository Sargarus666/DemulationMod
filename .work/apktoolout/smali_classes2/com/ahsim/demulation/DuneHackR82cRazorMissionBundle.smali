.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;,
        Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;,
        Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2d

.field public static final HOUSES:I = 0x5

.field private static final MAP_STORAGE_INDEX:[I

.field public static final MAP_TABLE:I = 0x83c04

.field public static final MISSIONS:I = 0x9

.field private static final RAZOR_ONE_SHA:Ljava/lang/String; = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

.field private static final RAZOR_TWO_SHA:Ljava/lang/String; = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

.field public static final SCENARIO_TABLE:I = 0x83cb8


# direct methods
.method static bridge synthetic -$$Nest$smdigest([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->digest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 31
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->MAP_STORAGE_INDEX:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 322
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static detectFinalScenarioLength([BI)I
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    array-length v0, p0

    sub-int/2addr v0, p1

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    .local v0, "limit":I
    const/16 v1, 0x14

    .local v1, "len":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 309
    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    add-int v2, p1, v1

    :try_start_0
    invoke-static {p0, p1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return v1

    .line 313
    :catch_0
    move-exception v2

    .line 308
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 315
    .end local v1    # "len":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Last Razor scenario has no complete decoded terminator"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static digest([B)Ljava/lang/String;
    .locals 8
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 327
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 328
    .local v1, "d":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 329
    .local v2, "s":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "x":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v5    # "x":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 331
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "d":[B
    .end local v2    # "s":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static hasScenarioHeader([BI)Z
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "p"    # I

    .line 318
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->be32([BI)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xc

    aget-byte v0, p0, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xe

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xf

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .locals 37
    .param p0, "rom"    # [B
    .param p1, "expectedSourceSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_25

    array-length v0, v1

    const/high16 v3, 0x300000

    if-eq v0, v3, :cond_0

    array-length v0, v1

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_25

    :cond_0
    if-eqz v2, :cond_25

    .line 205
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x100

    aget-byte v0, v1, v0

    const/16 v3, 0x53

    if-ne v0, v3, :cond_25

    const/16 v0, 0x101

    aget-byte v0, v1, v0

    const/16 v3, 0x45

    if-ne v0, v3, :cond_25

    const/16 v0, 0x102

    aget-byte v0, v1, v0

    const/16 v3, 0x47

    if-ne v0, v3, :cond_25

    const/16 v0, 0x103

    aget-byte v0, v1, v0

    const/16 v3, 0x41

    if-ne v0, v3, :cond_25

    .line 209
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->digest([B)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "sha":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 212
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    move v7, v0

    .line 213
    .local v7, "variant":I
    if-eqz v7, :cond_23

    .line 216
    const/16 v0, 0x2d

    new-array v13, v0, [I

    .line 217
    .local v13, "mapStarts":[I
    new-array v14, v0, [I

    .line 218
    .local v14, "scenarioStarts":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 219
    mul-int/lit8 v9, v8, 0x4

    const v10, 0x83c04

    add-int/2addr v9, v10

    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->be32([BI)I

    move-result v9

    aput v9, v13, v8

    .line 220
    const v9, 0x83cb8

    mul-int/lit8 v10, v8, 0x4

    add-int/2addr v10, v9

    invoke-static {v1, v10}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->be32([BI)I

    move-result v9

    aput v9, v14, v8

    .line 218
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 222
    .end local v8    # "i":I
    :cond_3
    invoke-virtual {v14}, [I->clone()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, [I

    .line 223
    .local v15, "sortedScenario":[I
    invoke-static {v15}, Ljava/util/Arrays;->sort([I)V

    .line 224
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    const/16 v9, 0x14

    const/16 v10, 0x2c

    const v11, 0x83d6c

    if-ge v8, v0, :cond_8

    .line 225
    aget v12, v15, v8

    and-int/2addr v12, v5

    if-nez v12, :cond_7

    aget v12, v15, v8

    if-le v12, v11, :cond_7

    aget v11, v15, v8

    array-length v12, v1

    sub-int/2addr v12, v9

    if-gt v11, v12, :cond_7

    if-lez v8, :cond_4

    aget v9, v15, v8

    add-int/lit8 v11, v8, -0x1

    aget v11, v15, v11

    if-le v9, v11, :cond_7

    :cond_4
    if-ne v7, v5, :cond_5

    aget v9, v15, v8

    .line 228
    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->hasScenarioHeader([BI)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_5
    if-ne v7, v4, :cond_6

    if-ge v8, v10, :cond_6

    aget v9, v15, v8

    .line 229
    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->hasScenarioHeader([BI)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 224
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 230
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor scenario pointer bank not uniquely ordered"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    .end local v8    # "i":I
    :cond_8
    new-array v8, v0, [I

    .line 233
    .local v8, "mapSizes":[I
    new-array v12, v4, [I

    aput v4, v12, v5

    aput v0, v12, v3

    move/from16 v16, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 234
    .local v3, "mapDimensions":[[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    const/16 v9, 0x1000

    const/16 v4, 0x400

    if-ge v12, v0, :cond_14

    .line 235
    aget v0, v13, v12

    .line 236
    .local v0, "start":I
    if-ne v12, v10, :cond_9

    aget v20, v15, v16

    goto :goto_4

    :cond_9
    add-int/lit8 v20, v12, 0x1

    aget v20, v13, v20

    :goto_4
    move/from16 v21, v20

    .line 237
    .local v21, "end":I
    sub-int v10, v21, v0

    .line 238
    .local v10, "len":I
    and-int/lit8 v22, v0, 0x1

    if-nez v22, :cond_13

    if-le v0, v11, :cond_13

    array-length v11, v1

    move/from16 v5, v21

    .end local v21    # "end":I
    .local v5, "end":I
    if-gt v5, v11, :cond_12

    const/16 v11, 0x4000

    if-eq v10, v4, :cond_b

    if-eq v10, v9, :cond_b

    if-ne v10, v11, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v20, v0

    goto/16 :goto_9

    .line 241
    :cond_b
    :goto_5
    const/4 v4, 0x1

    if-ne v7, v4, :cond_c

    if-eq v10, v11, :cond_d

    :cond_c
    const/4 v4, 0x2

    if-ne v7, v4, :cond_e

    if-ne v10, v11, :cond_d

    goto :goto_6

    .line 242
    :cond_d
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Razor sample map format changed"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_e
    :goto_6
    const v4, 0x83baa

    const/4 v11, 0x2

    if-ne v7, v11, :cond_f

    const/16 v11, 0x7f

    goto :goto_7

    :cond_f
    mul-int/lit8 v11, v12, 0x2

    add-int/2addr v11, v4

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    .line 244
    .local v11, "maxX":I
    :goto_7
    move/from16 v21, v4

    const/4 v4, 0x2

    if-ne v7, v4, :cond_10

    const/16 v4, 0x7f

    goto :goto_8

    :cond_10
    mul-int/lit8 v4, v12, 0x2

    add-int v4, v4, v21

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    .line 245
    .local v4, "maxY":I
    :goto_8
    const/16 v9, 0x1f

    if-lt v11, v9, :cond_11

    const/16 v9, 0x7f

    if-gt v11, v9, :cond_11

    const/16 v9, 0x1f

    if-lt v4, v9, :cond_11

    const/16 v9, 0x7f

    if-gt v4, v9, :cond_11

    .line 247
    aput v10, v8, v12

    .line 248
    aget-object v9, v3, v12

    add-int/lit8 v21, v11, 0x1

    aput v21, v9, v16

    .line 249
    aget-object v9, v3, v12

    add-int/lit8 v21, v4, 0x1

    const/16 v23, 0x1

    aput v21, v9, v23

    .line 234
    .end local v0    # "start":I
    .end local v4    # "maxY":I
    .end local v5    # "end":I
    .end local v10    # "len":I
    .end local v11    # "maxX":I
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x2d

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v9, 0x14

    const/16 v10, 0x2c

    const v11, 0x83d6c

    goto/16 :goto_3

    .line 246
    .restart local v0    # "start":I
    .restart local v4    # "maxY":I
    .restart local v5    # "end":I
    .restart local v10    # "len":I
    .restart local v11    # "maxX":I
    :cond_11
    new-instance v9, Ljava/io/IOException;

    move/from16 v20, v0

    .end local v0    # "start":I
    .local v20, "start":I
    const-string v0, "Razor map bounds invalid"

    invoke-direct {v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 238
    .end local v4    # "maxY":I
    .end local v11    # "maxX":I
    .end local v20    # "start":I
    .restart local v0    # "start":I
    :cond_12
    move/from16 v20, v0

    .end local v0    # "start":I
    .restart local v20    # "start":I
    goto :goto_9

    .end local v5    # "end":I
    .end local v20    # "start":I
    .restart local v0    # "start":I
    .restart local v21    # "end":I
    :cond_13
    move/from16 v20, v0

    move/from16 v5, v21

    .line 240
    .end local v0    # "start":I
    .end local v21    # "end":I
    .restart local v5    # "end":I
    .restart local v20    # "start":I
    :goto_9
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Razor map pointer/size mismatch at "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    .end local v5    # "end":I
    .end local v10    # "len":I
    .end local v12    # "i":I
    .end local v20    # "start":I
    :cond_14
    const/16 v0, 0x2d

    new-array v5, v0, [I

    .line 252
    .local v5, "lengths":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v0, :cond_1a

    .line 253
    aget v11, v14, v10

    .line 254
    .local v11, "pointer":I
    invoke-static {v15, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v12

    .line 255
    .local v12, "index":I
    if-ltz v12, :cond_19

    .line 256
    add-int/lit8 v9, v12, 0x1

    if-ge v9, v0, :cond_15

    add-int/lit8 v9, v12, 0x1

    aget v9, v15, v9

    sub-int/2addr v9, v11

    move/from16 v18, v9

    const/4 v9, 0x2

    goto :goto_b

    .line 257
    :cond_15
    const/4 v9, 0x2

    if-ne v7, v9, :cond_16

    move/from16 v18, v16

    goto :goto_b

    :cond_16
    invoke-static {v1, v11}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->detectFinalScenarioLength([BI)I

    move-result v18

    :goto_b
    move/from16 v20, v18

    .line 260
    .local v20, "length":I
    if-nez v20, :cond_17

    if-ne v7, v9, :cond_17

    const/16 v9, 0x23

    if-ne v10, v9, :cond_17

    aput v16, v5, v10

    goto :goto_c

    .line 261
    :cond_17
    move/from16 v9, v20

    const/16 v0, 0x14

    .end local v20    # "length":I
    .local v9, "length":I
    if-lt v9, v0, :cond_18

    const/high16 v0, 0x10000

    if-gt v9, v0, :cond_18

    array-length v0, v1

    sub-int/2addr v0, v9

    if-gt v11, v0, :cond_18

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_18

    .line 264
    aput v9, v5, v10

    .line 252
    .end local v9    # "length":I
    .end local v11    # "pointer":I
    .end local v12    # "index":I
    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x2d

    const/16 v9, 0x1000

    goto :goto_a

    .line 263
    .restart local v9    # "length":I
    .restart local v11    # "pointer":I
    .restart local v12    # "index":I
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Razor scenario bounds invalid"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    .end local v9    # "length":I
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Missing scenario pointer"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    .end local v10    # "i":I
    .end local v11    # "pointer":I
    .end local v12    # "index":I
    :cond_1a
    const/4 v9, 0x2

    new-array v0, v9, [I

    const/16 v9, 0x9

    const/16 v23, 0x1

    aput v9, v0, v23

    const/4 v10, 0x5

    aput v10, v0, v16

    const-class v11, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    invoke-static {v11, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 267
    .local v11, "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    const/4 v0, 0x0

    .line 268
    .local v0, "expanded":I
    const/4 v12, 0x0

    .line 269
    .local v12, "valid":I
    const/16 v17, 0x0

    move/from16 v4, v17

    .local v4, "h":I
    :goto_d
    if-ge v4, v10, :cond_21

    const/16 v20, 0x0

    move/from16 v10, v20

    move/from16 v20, v12

    move v12, v0

    .end local v0    # "expanded":I
    .local v10, "m":I
    .local v12, "expanded":I
    .local v20, "valid":I
    :goto_e
    if-ge v10, v9, :cond_20

    .line 270
    mul-int/lit8 v0, v4, 0x9

    add-int v22, v0, v10

    .line 271
    .local v22, "scenIdx":I
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->MAP_STORAGE_INDEX:[I

    aget v0, v0, v4

    mul-int/2addr v0, v9

    add-int v36, v0, v10

    .line 272
    .local v36, "mapIdx":I
    aget v0, v5, v22

    if-nez v0, :cond_1b

    move v2, v4

    const/16 v23, 0x1

    goto :goto_11

    .line 273
    :cond_1b
    aget v9, v8, v36

    .line 274
    .local v9, "size":I
    const/16 v2, 0x400

    if-ne v9, v2, :cond_1c

    const/16 v0, 0x20

    move/from16 v27, v0

    const/16 v2, 0x1000

    goto :goto_10

    :cond_1c
    const/16 v2, 0x1000

    if-ne v9, v2, :cond_1d

    const/16 v0, 0x40

    goto :goto_f

    :cond_1d
    const/16 v0, 0x80

    :goto_f
    move/from16 v27, v0

    .line 275
    .local v27, "side":I
    :goto_10
    aget-object v0, v3, v36

    aget v28, v0, v16

    .local v28, "width":I
    aget-object v0, v3, v36

    const/16 v23, 0x1

    aget v29, v0, v23

    .line 276
    .local v29, "height":I
    aget v0, v13, v36

    aget v19, v13, v36

    add-int v2, v19, v9

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v32

    .line 277
    .local v32, "map":[B
    aget v0, v14, v22

    aget v2, v14, v22

    aget v19, v5, v22

    add-int v2, v2, v19

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v33

    .line 280
    .local v33, "scen":[B
    :try_start_0
    invoke-static/range {v33 .. v33}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v34
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .local v34, "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    nop

    .line 289
    new-instance v24, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    add-int/lit8 v26, v10, 0x1

    aget v30, v13, v36

    aget v31, v14, v22

    const/16 v35, 0x0

    move/from16 v25, v4

    .end local v4    # "h":I
    .local v25, "h":I
    invoke-direct/range {v24 .. v35}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;-><init>(IIIIIII[B[BLcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V

    move/from16 v2, v25

    .end local v25    # "h":I
    .local v2, "h":I
    move-object/from16 v0, v24

    .line 291
    .local v0, "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    iget-boolean v4, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->needsExpandedMapRuntime:Z

    if-eqz v4, :cond_1e

    add-int/lit8 v12, v12, 0x1

    .line 292
    :cond_1e
    aget-object v4, v11, v2

    aput-object v0, v4, v10

    .line 293
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    .line 281
    .end local v0    # "mission":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v2    # "h":I
    .end local v34    # "doc":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .restart local v4    # "h":I
    :catch_0
    move-exception v0

    move v2, v4

    .line 286
    .end local v4    # "h":I
    .local v0, "malformed":Ljava/io/IOException;
    .restart local v2    # "h":I
    const/4 v4, 0x2

    if-ne v7, v4, :cond_1f

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    const/16 v4, 0x8

    if-ne v10, v4, :cond_1f

    .line 269
    .end local v0    # "malformed":Ljava/io/IOException;
    .end local v9    # "size":I
    .end local v22    # "scenIdx":I
    .end local v27    # "side":I
    .end local v28    # "width":I
    .end local v29    # "height":I
    .end local v32    # "map":[B
    .end local v33    # "scen":[B
    .end local v36    # "mapIdx":I
    :goto_11
    add-int/lit8 v10, v10, 0x1

    move v4, v2

    const/16 v9, 0x9

    move-object/from16 v2, p1

    goto/16 :goto_e

    .line 287
    .restart local v0    # "malformed":Ljava/io/IOException;
    .restart local v9    # "size":I
    .restart local v22    # "scenIdx":I
    .restart local v27    # "side":I
    .restart local v28    # "width":I
    .restart local v29    # "height":I
    .restart local v32    # "map":[B
    .restart local v33    # "scen":[B
    .restart local v36    # "mapIdx":I
    :cond_1f
    throw v0

    .line 269
    .end local v0    # "malformed":Ljava/io/IOException;
    .end local v2    # "h":I
    .end local v9    # "size":I
    .end local v22    # "scenIdx":I
    .end local v27    # "side":I
    .end local v28    # "width":I
    .end local v29    # "height":I
    .end local v32    # "map":[B
    .end local v33    # "scen":[B
    .end local v36    # "mapIdx":I
    .restart local v4    # "h":I
    :cond_20
    move v2, v4

    const/16 v23, 0x1

    .end local v4    # "h":I
    .end local v10    # "m":I
    .restart local v2    # "h":I
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v2, p1

    move v0, v12

    move/from16 v12, v20

    const/16 v9, 0x9

    const/4 v10, 0x5

    .end local v2    # "h":I
    .restart local v4    # "h":I
    goto/16 :goto_d

    .end local v20    # "valid":I
    .local v0, "expanded":I
    .local v12, "valid":I
    :cond_21
    move v2, v4

    .line 298
    .end local v4    # "h":I
    const/16 v2, 0x24a

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x10

    if-ne v2, v4, :cond_22

    const/16 v2, 0x24b

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_22

    const/16 v2, 0x24c

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_22

    const/16 v2, 0x24d

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_22

    .line 301
    const/16 v2, 0x268

    const/16 v4, 0x368

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 302
    .local v10, "terrainLookup561":[B
    move-object v2, v11

    .end local v11    # "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .local v2, "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-static {v1, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v11

    .line 303
    .local v11, "buildingData":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move v9, v12

    .end local v12    # "valid":I
    .local v9, "valid":I
    const/4 v12, 0x0

    move-object/from16 v16, v5

    move v5, v7

    move-object v7, v2

    move-object v2, v8

    move v8, v0

    .end local v0    # "expanded":I
    .local v2, "mapSizes":[I
    .local v5, "variant":I
    .local v7, "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .local v8, "expanded":I
    .local v16, "lengths":[I
    invoke-direct/range {v4 .. v12}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;-><init>(ILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;II[BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V

    return-object v4

    .line 298
    .end local v2    # "mapSizes":[I
    .end local v9    # "valid":I
    .end local v10    # "terrainLookup561":[B
    .end local v16    # "lengths":[I
    .restart local v0    # "expanded":I
    .local v5, "lengths":[I
    .local v7, "variant":I
    .local v8, "mapSizes":[I
    .local v11, "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .restart local v12    # "valid":I
    :cond_22
    move-object/from16 v16, v5

    move v5, v7

    move-object v2, v8

    move-object v7, v11

    move v9, v12

    move v8, v0

    .line 300
    .end local v0    # "expanded":I
    .end local v11    # "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .end local v12    # "valid":I
    .restart local v2    # "mapSizes":[I
    .local v5, "variant":I
    .local v7, "result":[[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .local v8, "expanded":I
    .restart local v9    # "valid":I
    .restart local v16    # "lengths":[I
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Razor 561 terrain-table read opcode changed"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    .end local v2    # "mapSizes":[I
    .end local v3    # "mapDimensions":[[I
    .end local v5    # "variant":I
    .end local v8    # "expanded":I
    .end local v9    # "valid":I
    .end local v13    # "mapStarts":[I
    .end local v14    # "scenarioStarts":[I
    .end local v15    # "sortedScenario":[I
    .end local v16    # "lengths":[I
    .local v7, "variant":I
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown Razor ROM is not a validated campaign layout"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local v7    # "variant":I
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor ROM SHA-256 changed during campaign preparation"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .end local v6    # "sha":Ljava/lang/String;
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor bundle requires normalized Genesis ROM"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
