.class public final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;,
        Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
    }
.end annotation


# static fields
.field private static final DUNEHACK_METATILE_BYTES:I = 0x2d00

.field private static final DUNEHACK_METATILE_COUNT:I = 0x168

.field private static final DUNEHACK_METATILE_WORDS:I = 0x1680

.field private static final DUNEHACK_RESIDENT_D800_COUNT:I = 0x29

.field private static final DUNEHACK_RESIDENT_D800_FIRST:I = 0x6c0

.field private static final DUNEHACK_RESIDENT_F980_COUNT:I = 0x24

.field private static final DUNEHACK_RESIDENT_F980_FIRST:I = 0x7cc

.field private static final DUNEHACK_RESIDENT_MAIN_COUNT:I = 0x1d3

.field private static final DUNEHACK_RESIDENT_MAIN_FIRST:I = 0x39a

.field private static final DUNEHACK_RESIDENT_MAIN_LAST:I = 0x56c

.field private static final DUNEHACK_RESIDENT_PRE_COUNT:I = 0x88

.field private static final DUNEHACK_RESIDENT_PRE_FIRST:I = 0x56d

.field private static final MAX_ROM_BYTES:I = 0x1000000

.field private static final METATILE_BYTES:I = 0x2d40

.field private static final METATILE_COUNT:I = 0x16a

.field private static final METATILE_WORDS:I = 0x16a0

.field private static final SPRITE_FIRST_PATTERN:I = 0x39a

.field private static final TERRAIN_PATTERN_COUNT:I = 0x39a

.field private static final VISUAL_ID_LIMIT:I = 0x15e

.field private static final VRAM_PATTERN_COUNT:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1516
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static be32u([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1521
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32uUnchecked([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static be32uUnchecked([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 1525
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static buildDuneHackDynamicCatalog([BI[Z)[B
    .locals 27
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .param p2, "resident"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x8000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1207
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1208
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string v3, "DDYN"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1209
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1210
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1211
    const/4 v5, 0x0

    .line 1212
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "visualId":I
    :goto_0
    const/16 v7, 0x15e

    if-ge v6, v7, :cond_a

    .line 1213
    mul-int/lit8 v7, v6, 0x8

    add-int v7, p1, v7

    .line 1214
    .local v7, "entry":I
    invoke-static {v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    .line 1215
    .local v8, "sourceWord":J
    add-int/lit8 v10, v7, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    long-to-int v10, v10

    .line 1216
    .local v10, "layout":I
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isValidLayout([BI)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v23, v1

    move/from16 v17, v3

    goto/16 :goto_6

    .line 1217
    :cond_0
    const/16 v11, 0x18

    ushr-long v14, v8, v11

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v11, v14

    .line 1218
    .local v11, "high":I
    const/16 v14, 0x800

    new-array v15, v14, [Z

    .line 1219
    .local v15, "used":[Z
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v16

    move/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    .line 1220
    .local v3, "pieceCount":I
    const/16 v16, 0x0

    move-wide/from16 v18, v12

    move/from16 v12, v16

    .local v12, "i":I
    :goto_1
    if-ge v12, v3, :cond_2

    .line 1221
    add-int/lit8 v13, v10, 0x2

    mul-int/lit8 v16, v12, 0xc

    add-int v13, v13, v16

    .line 1222
    .local v13, "piece":I
    add-int/lit8 v4, v13, 0x6

    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v4

    .line 1223
    .local v4, "size":I
    add-int/lit8 v14, v13, 0x8

    invoke-static {v0, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v14

    .line 1224
    .local v14, "attr":I
    ushr-int/lit8 v21, v4, 0xa

    and-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x1

    .line 1225
    .local v21, "wt":I
    ushr-int/lit8 v22, v4, 0x8

    and-int/lit8 v22, v22, 0x3

    add-int/lit8 v22, v22, 0x1

    .line 1226
    .local v22, "ht":I
    move-object/from16 v23, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v23, "bytes":Ljava/io/ByteArrayOutputStream;
    and-int/lit16 v1, v14, 0x7ff

    .line 1227
    .local v1, "first":I
    move/from16 v24, v1

    move/from16 v25, v1

    .local v1, "p":I
    .local v25, "first":I
    :goto_2
    mul-int v24, v21, v22

    move/from16 v26, v3

    .end local v3    # "pieceCount":I
    .local v26, "pieceCount":I
    add-int v3, v25, v24

    if-ge v1, v3, :cond_1

    aput-boolean v17, v15, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v26

    goto :goto_2

    .line 1220
    .end local v1    # "p":I
    .end local v4    # "size":I
    .end local v13    # "piece":I
    .end local v14    # "attr":I
    .end local v21    # "wt":I
    .end local v22    # "ht":I
    .end local v25    # "first":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v23

    move/from16 v3, v26

    const/4 v4, 0x0

    const/16 v14, 0x800

    goto :goto_1

    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "pieceCount":I
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "pieceCount":I
    :cond_2
    move-object/from16 v23, v1

    move/from16 v26, v3

    .line 1230
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "pieceCount":I
    .end local v12    # "i":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "pieceCount":I
    const v1, 0x7fffffff

    .local v1, "min":I
    const/4 v3, -0x1

    .local v3, "max":I
    const/4 v4, 0x0

    .line 1231
    .local v4, "needed":I
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_3
    const/16 v13, 0x800

    if-ge v12, v13, :cond_6

    .line 1232
    const/16 v14, 0x80

    if-ne v11, v14, :cond_3

    aget-boolean v14, v15, v12

    goto :goto_4

    :cond_3
    aget-boolean v14, v15, v12

    if-eqz v14, :cond_4

    const/16 v14, 0x39a

    if-lt v12, v14, :cond_4

    aget-boolean v14, p2, v12

    if-nez v14, :cond_4

    move/from16 v14, v17

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 1233
    .local v14, "dynamic":Z
    :goto_4
    if-nez v14, :cond_5

    goto :goto_5

    .line 1234
    :cond_5
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    .line 1231
    .end local v14    # "dynamic":Z
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1236
    .end local v12    # "p":I
    :cond_6
    if-nez v4, :cond_7

    .line 1212
    .end local v3    # "max":I
    .end local v4    # "needed":I
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "high":I
    .end local v15    # "used":[Z
    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "pieceCount":I
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :goto_6
    const/4 v8, 0x0

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 1237
    .local v1, "min":I
    .restart local v3    # "max":I
    .restart local v4    # "needed":I
    .restart local v7    # "entry":I
    .restart local v8    # "sourceWord":J
    .restart local v10    # "layout":I
    .restart local v11    # "high":I
    .restart local v15    # "used":[Z
    .restart local v26    # "pieceCount":I
    :cond_7
    sub-int v12, v3, v1

    add-int/lit8 v12, v12, 0x1

    const-string v13, "visual "

    if-ne v12, v4, :cond_9

    .line 1240
    move v12, v7

    move-wide/from16 v20, v8

    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .local v12, "entry":I
    .local v20, "sourceWord":J
    and-long v7, v20, v18

    long-to-int v7, v7

    .line 1241
    .local v7, "source":I
    if-lez v7, :cond_8

    array-length v8, v0

    mul-int/lit8 v9, v4, 0x20

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_8

    .line 1247
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1248
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1249
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1250
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1251
    mul-int/lit8 v9, v4, 0x20

    invoke-static {v0, v7, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 1252
    add-int/lit8 v5, v5, 0x1

    .line 1212
    .end local v1    # "min":I
    .end local v3    # "max":I
    .end local v4    # "needed":I
    .end local v7    # "source":I
    .end local v10    # "layout":I
    .end local v11    # "high":I
    .end local v12    # "entry":I
    .end local v15    # "used":[Z
    .end local v20    # "sourceWord":J
    .end local v26    # "pieceCount":I
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v4, v8

    move/from16 v3, v17

    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 1242
    .restart local v1    # "min":I
    .restart local v3    # "max":I
    .restart local v4    # "needed":I
    .restart local v7    # "source":I
    .restart local v10    # "layout":I
    .restart local v11    # "high":I
    .restart local v12    # "entry":I
    .restart local v15    # "used":[Z
    .restart local v20    # "sourceWord":J
    .restart local v26    # "pieceCount":I
    :cond_8
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " has no bounded raw source for unresolved patterns"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1238
    .end local v12    # "entry":I
    .end local v20    # "sourceWord":J
    .local v7, "entry":I
    .restart local v8    # "sourceWord":J
    :cond_9
    move v12, v7

    move-wide/from16 v20, v8

    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .restart local v12    # "entry":I
    .restart local v20    # "sourceWord":J
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needs disjoint unresolved pattern ranges"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1212
    .end local v3    # "max":I
    .end local v4    # "needed":I
    .end local v10    # "layout":I
    .end local v11    # "high":I
    .end local v12    # "entry":I
    .end local v15    # "used":[Z
    .end local v20    # "sourceWord":J
    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "pieceCount":I
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_a
    move-object/from16 v23, v1

    .line 1254
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "visualId":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1255
    const/16 v1, 0x8

    if-lt v5, v1, :cond_b

    if-gt v5, v7, :cond_b

    .line 1256
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1257
    .local v1, "result":[B
    ushr-int/lit8 v3, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    .line 1258
    and-int/lit16 v3, v5, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    .line 1259
    return-object v1

    .line 1255
    .end local v1    # "result":[B
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v3, "DuneHack dynamic coverage is implausible"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildDuneHackStaticPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;I[B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "loader"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .param p2, "visualTable"    # I
    .param p3, "baseStaticPatterns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    const v0, 0x8cc0

    .line 1133
    .local v0, "expected":I
    if-eqz p3, :cond_4

    array-length v1, p3

    if-ne v1, v0, :cond_4

    .line 1136
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [B

    .line 1137
    .local v4, "out":[B
    const/16 v1, 0x800

    new-array v5, v1, [Z

    .line 1139
    .local v5, "resident":[Z
    iget v3, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->preSource:I

    const/16 v6, 0x56d

    const/16 v7, 0x88

    move-object v2, p0

    .end local p0    # "rom":[B
    .local v2, "rom":[B
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    .line 1141
    iget v3, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    .line 1142
    .local v3, "src":I
    const/16 v6, 0x39a

    const/16 v7, 0x1d3

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    .line 1144
    add-int/lit16 v3, v3, 0x3a60

    .line 1145
    const/16 v6, 0x6c0

    const/16 v7, 0x29

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    .line 1147
    add-int/lit16 v3, v3, 0x520

    .line 1148
    const/16 v6, 0x7cc

    const/16 v7, 0x24

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    .line 1150
    add-int/lit16 p0, v3, 0x480

    .line 1155
    .end local v3    # "src":I
    .local p0, "src":I
    const/16 v3, 0xa

    iget v6, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    const/16 v7, 0x7f0

    invoke-static {v2, p2, v7, v3, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findSingleSpanVisualSource([BIIII)I

    move-result v3

    .line 1156
    .local v3, "variantFirst":I
    if-lez v3, :cond_0

    const/16 v6, 0x7f0

    const/16 v7, 0xa

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    move v8, v3

    .end local v3    # "variantFirst":I
    .local v8, "variantFirst":I
    goto :goto_0

    .end local v8    # "variantFirst":I
    .restart local v3    # "variantFirst":I
    :cond_0
    move v8, v3

    .line 1160
    .end local v3    # "variantFirst":I
    .restart local v8    # "variantFirst":I
    :goto_0
    const/16 v6, 0x5f5

    .line 1161
    .local v6, "sharedFirst":I
    const/16 v3, 0x9

    iget v7, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    invoke-static {v2, p2, v6, v3, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findSingleSpanVisualSource([BIIII)I

    move-result v3

    .line 1163
    .local v3, "sharedSource":I
    if-lez v3, :cond_1

    const/16 v7, 0x9

    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyPatternRange([BI[B[ZII)V

    .line 1165
    :cond_1
    const/4 v7, 0x0

    .line 1166
    .local v7, "residentCount":I
    const/16 v9, 0x39a

    .local v9, "p":I
    :goto_1
    if-ge v9, v1, :cond_3

    aget-boolean v10, v5, v9

    if-eqz v10, :cond_2

    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1167
    .end local v9    # "p":I
    :cond_3
    new-instance v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DuneHack resident VRAM bridge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " patterns from MOD, remaining slots BASE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v4, v5, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;-><init>([B[ZLjava/lang/String;)V

    return-object v1

    .line 1133
    .end local v2    # "rom":[B
    .end local v3    # "sharedSource":I
    .end local v4    # "out":[B
    .end local v5    # "resident":[Z
    .end local v6    # "sharedFirst":I
    .end local v7    # "residentCount":I
    .end local v8    # "variantFirst":I
    .local p0, "rom":[B
    :cond_4
    move-object v2, p0

    .line 1134
    .end local p0    # "rom":[B
    .restart local v2    # "rom":[B
    new-instance p0, Ljava/io/IOException;

    const-string v1, "BASE tactical bank unavailable for safe Rebuild merge"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static buildDuneHackTerrainBundle([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;Z)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "raw"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .param p2, "loader"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .param p3, "allowSparseR79Terrain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    if-eqz p1, :cond_4

    .line 778
    if-eqz p2, :cond_3

    .line 780
    iget v0, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->descriptorOffset:I

    const/16 v1, 0x2d00

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v0

    .line 781
    .local v0, "descriptors":[B
    invoke-static {v0, p3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->validateDuneHackMetatileData([BZ)I

    move-result v1

    .line 782
    .local v1, "maxIndex":I
    iget v2, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->maxPatternIndex:I

    if-ne v1, v2, :cond_2

    .line 785
    const/16 v2, 0x56c

    if-gt v1, v2, :cond_1

    .line 790
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x39a

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 791
    .local v2, "patternCount":I
    mul-int/lit8 v4, v2, 0x20

    new-array v4, v4, [B

    .line 792
    .local v4, "patterns":[B
    iget v5, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->patternOffset:I

    const/16 v6, 0x7340

    invoke-static {p0, v5, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v5

    .line 793
    .local v5, "terrain":[B
    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 794
    if-le v2, v3, :cond_0

    .line 795
    add-int/lit16 v3, v2, -0x39a

    .line 796
    .local v3, "sharedCount":I
    iget v7, p2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    mul-int/lit8 v9, v3, 0x20

    invoke-static {p0, v7, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v7

    .line 797
    .local v7, "shared":[B
    array-length v9, v7

    invoke-static {v7, v8, v4, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    .end local v3    # "sharedCount":I
    .end local v7    # "shared":[B
    :cond_0
    new-instance v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;-><init>([B[BII)V

    return-object v3

    .line 786
    .end local v2    # "patternCount":I
    .end local v4    # "patterns":[B
    .end local v5    # "terrain":[B
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DuneHack terrain references VRAM outside proven resident main bank: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "DuneHack terrain descriptor max-pattern proof changed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    .end local v0    # "descriptors":[B
    .end local v1    # "maxIndex":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack resident loader unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack terrain block unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildDuneHackTrackedDirectLayouts([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;[B)[B
    .locals 17
    .param p0, "rom"    # [B
    .param p1, "tables"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .param p2, "baseDirectLayouts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_9

    array-length v3, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_9

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v5, 0x44

    if-ne v3, v5, :cond_9

    const/4 v3, 0x1

    aget-byte v6, v2, v3

    if-ne v6, v5, :cond_9

    const/4 v5, 0x2

    aget-byte v6, v2, v5

    const/16 v7, 0x49

    if-ne v6, v7, :cond_9

    const/4 v6, 0x3

    aget-byte v7, v2, v6

    const/16 v8, 0x52

    if-ne v7, v8, :cond_9

    .line 569
    const/4 v7, 0x4

    invoke-static {v2, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v7

    if-ne v7, v3, :cond_9

    const/4 v7, 0x6

    invoke-static {v2, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v7

    const/16 v8, 0x9c

    if-ne v7, v8, :cond_9

    .line 572
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 573
    .local v7, "out":[B
    const/16 v9, 0x8

    .line 574
    .local v9, "p":I
    const/4 v10, 0x0

    .line 575
    .local v10, "replaced":I
    const/4 v11, 0x0

    .local v11, "entry":I
    :goto_0
    if-ge v11, v8, :cond_7

    .line 576
    array-length v12, v7

    sub-int/2addr v12, v4

    if-gt v9, v12, :cond_6

    .line 577
    aget-byte v12, v7, v9

    and-int/lit16 v12, v12, 0xff

    .line 578
    .local v12, "kind":I
    add-int/lit8 v13, v9, 0x1

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    .line 579
    .local v13, "index":I
    add-int/lit8 v14, v9, 0x2

    invoke-static {v7, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v14

    .line 580
    .local v14, "pieces":I
    add-int/lit8 v9, v9, 0x8

    .line 581
    mul-int/lit8 v15, v14, 0xc

    .line 582
    .local v15, "bytes":I
    if-lt v14, v3, :cond_5

    const/16 v4, 0x20

    if-gt v14, v4, :cond_5

    array-length v4, v7

    sub-int/2addr v4, v15

    if-gt v9, v4, :cond_5

    .line 585
    if-eq v12, v5, :cond_0

    if-ne v12, v6, :cond_4

    :cond_0
    const/16 v4, 0x40

    if-ge v13, v4, :cond_4

    .line 586
    if-ne v14, v5, :cond_3

    .line 587
    if-ne v12, v5, :cond_1

    iget v4, v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->tank:I

    goto :goto_1

    :cond_1
    iget v4, v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->siege:I

    :goto_1
    mul-int/lit8 v16, v13, 0x1a

    add-int v4, v4, v16

    .line 588
    .local v4, "source":I
    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 589
    add-int/lit8 v5, v4, 0x2

    const/16 v3, 0x18

    invoke-static {v0, v5, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 588
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v5, "R79 tracked layout shape changed"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    .end local v4    # "source":I
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "BASE tracked DDIR shape mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_4
    :goto_2
    add-int/2addr v9, v15

    .line 575
    .end local v12    # "kind":I
    .end local v13    # "index":I
    .end local v14    # "pieces":I
    .end local v15    # "bytes":I
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x2

    goto :goto_0

    .line 583
    .restart local v12    # "kind":I
    .restart local v13    # "index":I
    .restart local v14    # "pieces":I
    .restart local v15    # "bytes":I
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "BASE DDIR pieces truncated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    .end local v12    # "kind":I
    .end local v13    # "index":I
    .end local v14    # "pieces":I
    .end local v15    # "bytes":I
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v4, "BASE DDIR entry truncated"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    .end local v11    # "entry":I
    :cond_7
    array-length v3, v7

    if-ne v9, v3, :cond_8

    const/16 v3, 0x80

    if-ne v10, v3, :cond_8

    .line 597
    return-object v7

    .line 595
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R79 tracked DDIR replacement coverage mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 570
    .end local v7    # "out":[B
    .end local v9    # "p":I
    .end local v10    # "replaced":I
    :cond_9
    new-instance v3, Ljava/io/IOException;

    const-string v4, "BASE direct-layout catalog shape mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static buildDynamicCatalog([BI)[B
    .locals 25
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1359
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1360
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1361
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string v3, "DDYN"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1362
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1363
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1364
    const/4 v5, 0x0

    .line 1365
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "visualId":I
    :goto_0
    const/16 v7, 0x15e

    if-ge v6, v7, :cond_4

    .line 1366
    mul-int/lit8 v7, v6, 0x8

    add-int v7, p1, v7

    .line 1367
    .local v7, "entry":I
    invoke-static {v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    .line 1368
    .local v8, "sourceWord":J
    const/16 v10, 0x18

    ushr-long v10, v8, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    goto :goto_1

    .line 1369
    :cond_0
    add-int/lit8 v10, v7, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    long-to-int v10, v10

    .line 1370
    .local v10, "layout":I
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isValidLayout([BI)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1365
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    :goto_1
    move-object/from16 v23, v1

    move/from16 v16, v3

    goto/16 :goto_3

    .line 1371
    .restart local v7    # "entry":I
    .restart local v8    # "sourceWord":J
    .restart local v10    # "layout":I
    :cond_1
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v11

    add-int/2addr v11, v3

    .line 1372
    .local v11, "pieceCount":I
    const v14, 0x7fffffff

    .local v14, "minPattern":I
    const/4 v15, -0x1

    .line 1373
    .local v15, "maxPattern":I
    const/16 v16, 0x0

    move/from16 v24, v16

    move/from16 v16, v3

    move/from16 v3, v24

    .local v3, "i":I
    :goto_2
    if-ge v3, v11, :cond_2

    .line 1374
    add-int/lit8 v17, v10, 0x2

    mul-int/lit8 v18, v3, 0xc

    add-int v17, v17, v18

    .line 1375
    .local v17, "piece":I
    move-wide/from16 v18, v12

    add-int/lit8 v12, v17, 0x6

    invoke-static {v0, v12}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v12

    .line 1376
    .local v12, "size":I
    add-int/lit8 v13, v17, 0x8

    invoke-static {v0, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v13

    .line 1377
    .local v13, "attr":I
    ushr-int/lit8 v20, v12, 0xa

    and-int/lit8 v20, v20, 0x3

    add-int/lit8 v20, v20, 0x1

    .line 1378
    .local v20, "wt":I
    ushr-int/lit8 v21, v12, 0x8

    and-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x1

    .line 1379
    .local v21, "ht":I
    and-int/lit16 v4, v13, 0x7ff

    .line 1380
    .local v4, "first":I
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1381
    mul-int v22, v20, v21

    add-int v22, v4, v22

    move-object/from16 v23, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v23, "bytes":Ljava/io/ByteArrayOutputStream;
    add-int/lit8 v1, v22, -0x1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1373
    .end local v4    # "first":I
    .end local v12    # "size":I
    .end local v13    # "attr":I
    .end local v17    # "piece":I
    .end local v20    # "wt":I
    .end local v21    # "ht":I
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v18

    move-object/from16 v1, v23

    const/4 v4, 0x0

    goto :goto_2

    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_2
    move-object/from16 v23, v1

    move-wide/from16 v18, v12

    .line 1383
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    if-lt v15, v14, :cond_3

    const/16 v1, 0x800

    if-ge v15, v1, :cond_3

    .line 1386
    sub-int v1, v15, v14

    add-int/lit8 v1, v1, 0x1

    .line 1387
    .local v1, "patternCount":I
    and-long v3, v8, v18

    long-to-int v3, v3

    .line 1388
    .local v3, "source":I
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1389
    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1390
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1391
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1392
    mul-int/lit8 v12, v1, 0x20

    invoke-static {v0, v3, v12}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 1393
    add-int/lit8 v5, v5, 0x1

    .line 1365
    .end local v1    # "patternCount":I
    .end local v3    # "source":I
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "pieceCount":I
    .end local v14    # "minPattern":I
    .end local v15    # "maxPattern":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move-object/from16 v1, v23

    goto/16 :goto_0

    .line 1384
    .restart local v7    # "entry":I
    .restart local v8    # "sourceWord":J
    .restart local v10    # "layout":I
    .restart local v11    # "pieceCount":I
    .restart local v14    # "minPattern":I
    .restart local v15    # "maxPattern":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "DuneHack dynamic layout pattern range is invalid"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1365
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "pieceCount":I
    .end local v14    # "minPattern":I
    .end local v15    # "maxPattern":I
    .end local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_4
    move-object/from16 v23, v1

    .line 1395
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "visualId":I
    .restart local v23    # "bytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1396
    const/16 v1, 0x8

    if-lt v5, v1, :cond_5

    if-gt v5, v7, :cond_5

    .line 1397
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1398
    .local v1, "result":[B
    ushr-int/lit8 v3, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v1, v4

    .line 1399
    and-int/lit16 v3, v5, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v1, v4

    .line 1400
    return-object v1

    .line 1396
    .end local v1    # "result":[B
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v3, "DuneHack dynamic coverage is implausible"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildStaticPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;)[B
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "loader"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 1264
    .local v0, "vram":[B
    iget-object v1, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->chunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;

    .line 1265
    .local v2, "chunk":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
    iget v4, v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->count:I

    mul-int/lit8 v4, v4, 0x20

    .line 1266
    .local v4, "bytes":I
    iget-boolean v5, v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->raw:Z

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->source:I

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v5

    goto :goto_1

    .line 1267
    :cond_0
    iget v5, v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->source:I

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->decompress([BII)[B

    move-result-object v5

    :goto_1
    nop

    .line 1268
    .local v5, "decoded":[B
    iget v6, v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->firstPattern:I

    mul-int/lit8 v6, v6, 0x20

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    .end local v2    # "chunk":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
    .end local v4    # "bytes":I
    .end local v5    # "decoded":[B
    goto :goto_0

    .line 1270
    :cond_1
    const v1, 0x8cc0

    new-array v1, v1, [B

    .line 1271
    .local v1, "out":[B
    const/16 v2, 0x7340

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    return-object v1
.end method

.method private static buildTerrainPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;)[B
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "table"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    const/16 v0, 0x7340

    new-array v0, v0, [B

    .line 677
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 678
    .local v1, "dstPattern":I
    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;

    .line 679
    .local v3, "chunk":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
    iget v4, v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->count:I

    mul-int/lit8 v4, v4, 0x20

    .line 680
    .local v4, "bytes":I
    iget-boolean v5, v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->raw:Z

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->source:I

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v5

    goto :goto_1

    .line 681
    :cond_0
    iget v5, v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->source:I

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->decompress([BII)[B

    move-result-object v5

    :goto_1
    nop

    .line 682
    .local v5, "decoded":[B
    mul-int/lit8 v6, v1, 0x20

    const/4 v7, 0x0

    invoke-static {v5, v7, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    iget v6, v3, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;->count:I

    add-int/2addr v1, v6

    .line 684
    .end local v3    # "chunk":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;
    .end local v4    # "bytes":I
    .end local v5    # "decoded":[B
    goto :goto_0

    .line 685
    :cond_1
    const/16 v2, 0x39a

    if-ne v1, v2, :cond_2

    .line 686
    return-object v0

    .line 685
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "terrain pattern coverage mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static buildVisualCatalog([BI)[B
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1331
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1332
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1333
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string v3, "DVIS"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1334
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1335
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1336
    const/4 v5, 0x0

    .line 1337
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "visualId":I
    :goto_0
    const/16 v7, 0x15e

    if-ge v6, v7, :cond_2

    .line 1338
    mul-int/lit8 v7, v6, 0x8

    add-int v7, p1, v7

    .line 1339
    .local v7, "entry":I
    invoke-static {v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    .line 1340
    .local v8, "sourceWord":J
    add-int/lit8 v10, v7, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v10

    const-wide/32 v12, 0xffffff

    and-long/2addr v10, v12

    long-to-int v10, v10

    .line 1341
    .local v10, "layout":I
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isValidLayout([BI)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_2

    .line 1342
    :cond_0
    invoke-static {v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v11

    add-int/2addr v11, v3

    .line 1343
    .local v11, "pieceCount":I
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1344
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1345
    const/16 v12, 0x18

    ushr-long v12, v8, v12

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v4

    :goto_1
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1346
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1347
    add-int/lit8 v12, v10, 0x2

    mul-int/lit8 v13, v11, 0xc

    invoke-static {v0, v12, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 1348
    add-int/lit8 v5, v5, 0x1

    .line 1337
    .end local v7    # "entry":I
    .end local v8    # "sourceWord":J
    .end local v10    # "layout":I
    .end local v11    # "pieceCount":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1350
    .end local v6    # "visualId":I
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1351
    const/16 v3, 0xb4

    if-lt v5, v3, :cond_3

    if-gt v5, v7, :cond_3

    .line 1352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1353
    .local v3, "result":[B
    ushr-int/lit8 v4, v5, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x6

    aput-byte v4, v3, v6

    .line 1354
    and-int/lit16 v4, v5, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x7

    aput-byte v4, v3, v6

    .line 1355
    return-object v3

    .line 1351
    .end local v3    # "result":[B
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "DuneHack visual coverage is implausible"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static checkRange([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1532
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 1533
    return-void

    .line 1532
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM media pointer outside image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1509
    new-array v0, p2, [B

    .line 1510
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1511
    return-object v0
.end method

.method private static copyNormalizedCramPalette([BI)[B
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    if-lez p1, :cond_1

    array-length v0, p0

    const/16 v1, 0x80

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    .line 917
    new-array v0, v1, [B

    .line 918
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 919
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    and-int/lit16 v2, v2, 0xeee

    .line 920
    .local v2, "visible":I
    mul-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 921
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 918
    .end local v2    # "visible":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 915
    .end local v0    # "out":[B
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack CRAM palette outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyPatternRange([BI[B[ZII)V
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "out"    # [B
    .param p3, "resident"    # [Z
    .param p4, "firstPattern"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1173
    const/16 v0, 0x39a

    if-lt p4, v0, :cond_1

    add-int v0, p4, p5

    const/16 v1, 0x800

    if-gt v0, v1, :cond_1

    if-lez p5, :cond_1

    .line 1176
    mul-int/lit8 v0, p5, 0x20

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v0

    .line 1177
    .local v0, "raw":[B
    add-int/lit16 v1, p4, -0x39a

    mul-int/lit8 v1, v1, 0x20

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1178
    move v1, p4

    .local v1, "p":I
    :goto_0
    add-int v2, p4, p5

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    .end local v1    # "p":I
    :cond_0
    return-void

    .line 1174
    .end local v0    # "raw":[B
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack resident pattern range is invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static countAbsoluteReferences([BI)I
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "target"    # I

    .line 1430
    if-ltz p1, :cond_3

    const v0, 0xffffff

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 1431
    :cond_0
    const/4 v0, 0x0

    .line 1432
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-gt v1, v2, :cond_2

    .line 1433
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32uUnchecked([BI)J

    move-result-wide v2

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1432
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1435
    .end local v1    # "off":I
    :cond_2
    return v0

    .line 1430
    .end local v0    # "count":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static countAbsoluteReferencesBefore([BII)I
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "target"    # I
    .param p2, "exclusiveEnd"    # I

    .line 1420
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    const v1, 0xffffff

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 1421
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1422
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 1423
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1424
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32uUnchecked([BI)J

    move-result-wide v3

    const-wide/32 v5, 0xffffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    if-ne v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1423
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1426
    .end local v2    # "off":I
    :cond_2
    return v1

    .line 1420
    .end local v0    # "limit":I
    .end local v1    # "count":I
    :cond_3
    :goto_1
    return v0
.end method

.method private static decompress([BII)[B
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "source"    # I
    .param p2, "expectedBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    new-array v0, p2, [B

    .line 1441
    .local v0, "out":[B
    move v1, p1

    .local v1, "src":I
    const/4 v2, 0x0

    .local v2, "dst":I
    const/4 v3, 0x0

    .line 1443
    .local v3, "guard":I
    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const v5, 0x30d40

    if-gt v3, v5, :cond_f

    .line 1444
    invoke-static {p0, v1, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1445
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "src":I
    .local v5, "src":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 1446
    .local v1, "c":I
    const/16 v6, 0x80

    if-ne v1, v6, :cond_1

    .line 1478
    .end local v1    # "c":I
    if-ne v2, p2, :cond_0

    .line 1479
    return-object v0

    .line 1478
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media block decoded "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " != "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1447
    .restart local v1    # "c":I
    :cond_1
    const/16 v6, 0x81

    if-lt v1, v6, :cond_3

    const/16 v6, 0xbf

    if-gt v1, v6, :cond_3

    .line 1448
    and-int/lit8 v4, v1, 0x3f

    .line 1449
    .local v4, "n":I
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1450
    array-length v6, v0

    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_2

    .line 1451
    invoke-static {p0, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    add-int/2addr v2, v4

    .line 1452
    .end local v4    # "n":I
    move v1, v5

    goto/16 :goto_5

    .line 1450
    .restart local v4    # "n":I
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "media literal overrun"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1452
    .end local v4    # "n":I
    :cond_3
    const/16 v6, 0x7f

    const/4 v7, 0x3

    if-gt v1, v6, :cond_6

    .line 1453
    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1454
    shl-int/lit8 v4, v1, 0x8

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "src":I
    .local v6, "src":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xfff

    .line 1455
    .local v4, "back":I
    ushr-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v7

    .line 1456
    .local v5, "n":I
    if-lez v4, :cond_5

    if-gt v4, v2, :cond_5

    array-length v7, v0

    sub-int/2addr v7, v5

    if-gt v2, v7, :cond_5

    .line 1457
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_4

    sub-int v8, v2, v4

    aget-byte v8, v0, v8

    aput-byte v8, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1458
    .end local v4    # "back":I
    .end local v5    # "n":I
    .end local v7    # "i":I
    :cond_4
    move v1, v6

    goto/16 :goto_5

    .line 1456
    .restart local v4    # "back":I
    .restart local v5    # "n":I
    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v8, "media short-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1458
    .end local v4    # "back":I
    .end local v6    # "src":I
    .local v5, "src":I
    :cond_6
    const/16 v4, 0xfd

    if-gt v1, v4, :cond_9

    .line 1459
    const/4 v4, 0x2

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1460
    and-int/lit8 v4, v1, 0x3f

    add-int/2addr v4, v7

    .line 1461
    .local v4, "n":I
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .local v6, "from":I
    add-int/lit8 v5, v5, 0x2

    .line 1462
    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_8

    .line 1463
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .local v8, "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_2

    .line 1464
    .end local v4    # "n":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_7
    move v1, v5

    goto/16 :goto_5

    .line 1462
    .restart local v4    # "n":I
    .restart local v6    # "from":I
    :cond_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "media absolute-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1464
    .end local v4    # "n":I
    .end local v6    # "from":I
    :cond_9
    const/16 v4, 0xfe

    if-ne v1, v4, :cond_c

    .line 1465
    invoke-static {p0, v5, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1466
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 1467
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .local v6, "value":I
    add-int/lit8 v5, v5, 0x3

    .line 1468
    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_b

    .line 1469
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v4, :cond_a

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    int-to-byte v9, v6

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_3

    .line 1470
    .end local v4    # "n":I
    .end local v6    # "value":I
    .end local v7    # "i":I
    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_a
    move v1, v5

    goto :goto_5

    .line 1468
    .restart local v4    # "n":I
    .restart local v6    # "value":I
    :cond_b
    new-instance v7, Ljava/io/IOException;

    const-string v8, "media RLE overrun"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1471
    .end local v4    # "n":I
    .end local v6    # "value":I
    :cond_c
    const/4 v4, 0x4

    invoke-static {p0, v5, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->checkRange([BII)V

    .line 1472
    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    .line 1473
    .restart local v4    # "n":I
    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    .local v6, "from":I
    add-int/lit8 v5, v5, 0x4

    .line 1474
    if-ltz v6, :cond_e

    if-ge v6, v2, :cond_e

    array-length v7, v0

    sub-int/2addr v7, v4

    if-gt v2, v7, :cond_e

    .line 1475
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v4, :cond_d

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "dst":I
    .restart local v8    # "dst":I
    add-int v9, v6, v7

    aget-byte v9, v0, v9

    aput-byte v9, v0, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v8

    goto :goto_4

    .end local v8    # "dst":I
    .restart local v2    # "dst":I
    :cond_d
    move v1, v5

    .line 1477
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .end local v7    # "i":I
    .local v1, "src":I
    :goto_5
    goto/16 :goto_0

    .line 1474
    .local v1, "c":I
    .restart local v4    # "n":I
    .restart local v5    # "src":I
    .restart local v6    # "from":I
    :cond_e
    new-instance v7, Ljava/io/IOException;

    const-string v8, "media long-copy range error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1443
    .end local v4    # "n":I
    .end local v5    # "src":I
    .end local v6    # "from":I
    .local v1, "src":I
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DuneHack media decompressor guard"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1542
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1543
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1545
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->deleteRecursively(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1547
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not remove adapter staging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :cond_3
    :goto_1
    return-void

    .line 1542
    :cond_4
    :goto_2
    return-void
.end method

.method public static extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p0    # "rom":[B
    .end local p1    # "stagingRoot":Ljava/io/File;
    .end local p2    # "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .local v0, "rom":[B
    .local v1, "stagingRoot":Ljava/io/File;
    .local v2, "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .param p3, "baseStaticPatterns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p0    # "rom":[B
    .end local p1    # "stagingRoot":Ljava/io/File;
    .end local p2    # "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .end local p3    # "baseStaticPatterns":[B
    .local v0, "rom":[B
    .local v1, "stagingRoot":Ljava/io/File;
    .local v2, "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .local v3, "baseStaticPatterns":[B
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .param p3, "baseStaticPatterns"    # [B
    .param p4, "allowSparseR79Terrain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p0    # "rom":[B
    .end local p1    # "stagingRoot":Ljava/io/File;
    .end local p2    # "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .end local p3    # "baseStaticPatterns":[B
    .end local p4    # "allowSparseR79Terrain":Z
    .local v0, "rom":[B
    .local v1, "stagingRoot":Ljava/io/File;
    .local v2, "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .local v3, "baseStaticPatterns":[B
    .local v5, "allowSparseR79Terrain":Z
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .param p3, "baseStaticPatterns"    # [B
    .param p4, "baseDirectLayouts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "rom":[B
    .end local p1    # "stagingRoot":Ljava/io/File;
    .end local p2    # "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .end local p3    # "baseStaticPatterns":[B
    .end local p4    # "baseDirectLayouts":[B
    .local v0, "rom":[B
    .local v1, "stagingRoot":Ljava/io/File;
    .local v2, "listener":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .local v3, "baseStaticPatterns":[B
    .local v4, "baseDirectLayouts":[B
    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move-result-object p0

    return-object p0
.end method

.method public static extract([BLjava/io/File;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;[B[BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;
    .locals 30
    .param p0, "rom"    # [B
    .param p1, "stagingRoot"    # Ljava/io/File;
    .param p2, "listener"    # Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;
    .param p3, "baseStaticPatterns"    # [B
    .param p4, "baseDirectLayouts"    # [B
    .param p5, "allowSparseR79Terrain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    const-string v2, "; "

    if-eqz v1, :cond_1a

    array-length v0, v1

    const/high16 v4, 0x10000

    if-lt v0, v4, :cond_1a

    .line 254
    array-length v0, v1

    const/high16 v4, 0x1000000

    if-gt v0, v4, :cond_19

    .line 255
    if-eqz v3, :cond_18

    .line 256
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->deleteRecursively(Ljava/io/File;)V

    .line 257
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Could not create DuneHack adapter staging"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 262
    .local v4, "status":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v5, "diagnostics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 264
    .local v6, "terrainDone":I
    const/4 v7, 0x0

    .line 266
    .local v7, "tacticalDone":I
    const/4 v11, 0x0

    .line 267
    .local v11, "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    const/4 v12, 0x0

    .line 268
    .local v12, "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    const/4 v13, 0x0

    .line 269
    .local v13, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findDuneHackTrackedCompositeTables([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;

    move-result-object v14

    .line 270
    .local v14, "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    if-eqz v14, :cond_2

    iget v0, v14, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->tank:I

    const v15, 0x1df48

    if-ne v0, v15, :cond_2

    iget v0, v14, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->siege:I

    const v15, 0x1e5c8

    if-ne v0, v15, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v15, v0

    .line 272
    .local v15, "r79Presentation":Z
    if-nez p5, :cond_4

    if-eqz v15, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move/from16 v16, v0

    .line 273
    .local v16, "sparseR79Terrain":Z
    if-eqz v14, :cond_5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "terrainDone":I
    .local v17, "terrainDone":I
    const-string v6, "r79_tracked=tank@0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v14, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->tank:I

    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " siege@0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v14, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;->siege:I

    .line 275
    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 273
    .end local v17    # "terrainDone":I
    .restart local v6    # "terrainDone":I
    :cond_5
    move/from16 v17, v6

    .line 278
    .end local v6    # "terrainDone":I
    .restart local v17    # "terrainDone":I
    :goto_4
    :try_start_0
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findTerrainTable([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;

    move-result-object v0

    move-object v11, v0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "terrain_table=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->offset:I

    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " palette=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->paletteOffset:I

    .line 280
    invoke-static {v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " chunks="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->chunks:Ljava/util/List;

    .line 281
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/io/IOException;
    .local v18, "e":Ljava/io/IOException;
    const-string v0, "terrain_table="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v18    # "e":Ljava/io/IOException;
    :goto_5
    const-string v6, "terrain/metatile_descriptors.bin"

    move/from16 v18, v7

    .end local v7    # "tacticalDone":I
    .local v18, "tacticalDone":I
    const-string v7, "terrain/palette.bin"

    move-object/from16 v19, v12

    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .local v19, "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    const-string v12, "terrain/patterns.bin"

    if-eqz v11, :cond_6

    .line 288
    :try_start_1
    invoke-static {v1, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildTerrainPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;)[B

    move-result-object v0

    .line 289
    .local v0, "patterns":[B
    invoke-static {v3, v12, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 290
    move-object/from16 v20, v13

    .end local v13    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v20, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :try_start_2
    new-instance v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v21, v15

    .end local v15    # "r79Presentation":Z
    .local v21, "r79Presentation":Z
    :try_start_3
    array-length v15, v0

    move-object/from16 v22, v0

    .end local v0    # "patterns":[B
    .local v22, "patterns":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "relocated terrain loader 0x"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->offset:I

    .line 291
    invoke-static {v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-direct {v13, v12, v10, v15, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 290
    invoke-virtual {v4, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 292
    nop

    .end local v22    # "patterns":[B
    add-int/lit8 v0, v17, 0x1

    .line 295
    .end local v17    # "terrainDone":I
    .local v0, "terrainDone":I
    move/from16 v17, v0

    goto :goto_7

    .line 293
    .end local v0    # "terrainDone":I
    .restart local v17    # "terrainDone":I
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v21    # "r79Presentation":Z
    .restart local v15    # "r79Presentation":Z
    :catch_2
    move-exception v0

    move/from16 v21, v15

    .end local v15    # "r79Presentation":Z
    .restart local v21    # "r79Presentation":Z
    goto :goto_6

    .end local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v21    # "r79Presentation":Z
    .restart local v13    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v15    # "r79Presentation":Z
    :catch_3
    move-exception v0

    move-object/from16 v20, v13

    move/from16 v21, v15

    .line 294
    .end local v13    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v15    # "r79Presentation":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v21    # "r79Presentation":Z
    :goto_6
    invoke-static {v4, v12, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V

    .line 297
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_4
    iget v0, v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->paletteOffset:I

    const/16 v10, 0x80

    invoke-static {v1, v0, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v0

    .line 298
    .local v0, "palette":[B
    invoke-static {v3, v7, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 299
    new-instance v10, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v12, v0

    const-string v13, "palette pointer from relocated resource entry"

    const/4 v15, 0x1

    invoke-direct {v10, v7, v15, v12, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v7, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 301
    nop

    .end local v0    # "palette":[B
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 302
    :catch_4
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v7, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    :goto_8
    move-object/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    goto/16 :goto_d

    .line 310
    .end local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v21    # "r79Presentation":Z
    .restart local v13    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v15    # "r79Presentation":Z
    :cond_6
    move-object/from16 v20, v13

    move/from16 v21, v15

    .end local v13    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v15    # "r79Presentation":Z
    .restart local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v21    # "r79Presentation":Z
    move/from16 v10, v16

    .end local v16    # "sparseR79Terrain":Z
    .local v10, "sparseR79Terrain":Z
    :try_start_5
    invoke-static {v1, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findDuneHackRawTerrainBlock([BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e

    move-object v13, v0

    .line 311
    .end local v19    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .local v13, "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "raw_terrain=desc@0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->descriptorOffset:I

    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " patterns@0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->patternOffset:I

    .line 312
    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " external_words="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->externalPatternWords:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " max_pattern="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->maxPatternIndex:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    .line 317
    :try_start_7
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findDuneHackResidentLoader([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    move-object v15, v0

    .line 318
    .end local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v15, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :try_start_8
    invoke-static {v1, v13, v15, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildDuneHackTerrainBundle([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;Z)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 320
    .local v0, "bundle":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;
    move/from16 v16, v10

    .end local v10    # "sparseR79Terrain":Z
    .restart local v16    # "sparseR79Terrain":Z
    :try_start_9
    iget-object v10, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->patterns:[B

    invoke-static {v3, v12, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 321
    iget-object v10, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->descriptors:[B

    invoke-static {v3, v6, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 322
    new-instance v10, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v22, v11

    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .local v22, "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    :try_start_a
    iget-object v11, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->patterns:[B

    array-length v11, v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v23, v14

    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .local v23, "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :try_start_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DuneHack terrain+shared VRAM patterns 0.."

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->maxPatternIndex:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    invoke-direct {v10, v12, v14, v11, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v12, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v9, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    iget-object v10, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->descriptors:[B

    array-length v10, v10

    const-string v11, "DuneHack 360-entry descriptors with resident shared-VRAM bridge"

    const/4 v14, 0x1

    invoke-direct {v9, v6, v14, v10, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 328
    add-int/lit8 v9, v17, 0x2

    .line 329
    .end local v17    # "terrainDone":I
    .local v9, "terrainDone":I
    :try_start_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "terrain_shared_vram=loader@0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v15, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->codeOffset:I

    invoke-static {v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " patterns="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;->patternCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " descriptors="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x168

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 345
    .end local v0    # "bundle":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackTerrainBundle;
    goto/16 :goto_a

    .line 332
    :catch_5
    move-exception v0

    move/from16 v17, v9

    goto :goto_9

    .end local v9    # "terrainDone":I
    .restart local v17    # "terrainDone":I
    :catch_6
    move-exception v0

    goto :goto_9

    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :catch_7
    move-exception v0

    move-object/from16 v23, v14

    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    goto :goto_9

    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :catch_8
    move-exception v0

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    goto :goto_9

    .end local v16    # "sparseR79Terrain":Z
    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v10    # "sparseR79Terrain":Z
    .restart local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :catch_9
    move-exception v0

    move/from16 v16, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    .end local v10    # "sparseR79Terrain":Z
    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v16    # "sparseR79Terrain":Z
    .restart local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    goto :goto_9

    .end local v15    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v16    # "sparseR79Terrain":Z
    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v10    # "sparseR79Terrain":Z
    .restart local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_a
    move-exception v0

    move/from16 v16, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v15, v20

    .line 336
    .end local v10    # "sparseR79Terrain":Z
    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .end local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v0, "sharedFailure":Ljava/io/IOException;
    .restart local v15    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v16    # "sparseR79Terrain":Z
    .restart local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :goto_9
    const/4 v9, 0x0

    .line 337
    .end local v15    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v9, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :try_start_d
    iget v10, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->patternOffset:I

    const/16 v11, 0x7340

    invoke-static {v1, v10, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v10

    .line 339
    .local v10, "patterns":[B
    invoke-static {v3, v12, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 340
    new-instance v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v14, v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v0

    .end local v0    # "sharedFailure":Ljava/io/IOException;
    .local v19, "sharedFailure":Ljava/io/IOException;
    const-string v0, "DuneHack raw terrain bank 0x"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;->patternOffset:I

    .line 342
    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "; shared bridge unavailable"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    invoke-direct {v11, v12, v15, v14, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 340
    invoke-virtual {v4, v12, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 343
    add-int/lit8 v11, v17, 0x1

    .line 344
    .end local v17    # "terrainDone":I
    .local v11, "terrainDone":I
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "terrain_shared_vram="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v19 .. v19}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    move-object v15, v9

    move v9, v11

    .line 349
    .end local v10    # "patterns":[B
    .end local v11    # "terrainDone":I
    .end local v19    # "sharedFailure":Ljava/io/IOException;
    .local v9, "terrainDone":I
    .restart local v15    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :goto_a
    move-object v12, v13

    move-object v13, v15

    goto :goto_c

    .line 346
    .end local v15    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v9, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v11    # "terrainDone":I
    :catch_b
    move-exception v0

    move/from16 v17, v11

    goto :goto_b

    .end local v11    # "terrainDone":I
    .restart local v17    # "terrainDone":I
    :catch_c
    move-exception v0

    goto :goto_b

    .end local v9    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .end local v16    # "sparseR79Terrain":Z
    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .local v10, "sparseR79Terrain":Z
    .local v11, "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_d
    move-exception v0

    move/from16 v16, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v9, v20

    .end local v10    # "sparseR79Terrain":Z
    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v16    # "sparseR79Terrain":Z
    .restart local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    goto :goto_b

    .end local v13    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v16    # "sparseR79Terrain":Z
    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v10    # "sparseR79Terrain":Z
    .restart local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .local v19, "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    :catch_e
    move-exception v0

    move/from16 v16, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v13, v19

    move-object/from16 v9, v20

    .line 347
    .end local v10    # "sparseR79Terrain":Z
    .end local v11    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v14    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .end local v19    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v20    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v13    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v16    # "sparseR79Terrain":Z
    .restart local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :goto_b
    invoke-static {v4, v12, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V

    .line 348
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "raw_terrain="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v13

    move-object v13, v9

    move/from16 v9, v17

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "terrainDone":I
    .local v9, "terrainDone":I
    .restart local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .local v13, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :goto_c
    :try_start_f
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findDuneHackTerrainPalette([B)I

    move-result v0

    .line 358
    .local v0, "paletteOffset":I
    invoke-static {v1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copyNormalizedCramPalette([BI)[B

    move-result-object v10

    .line 359
    .local v10, "palette":[B
    invoke-static {v3, v7, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 360
    new-instance v11, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v14, v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "paletteOffset":I
    .local v17, "paletteOffset":I
    const-string v0, "DuneHack active CRAM palette 0x"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    invoke-static/range {v17 .. v17}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "; unused VDP bits normalized"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x1

    invoke-direct {v11, v7, v15, v14, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 360
    invoke-virtual {v4, v7, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v9, v9, 0x1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dunehack_palette=0x"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " normalized_cram=true"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 369
    move/from16 v17, v9

    .end local v10    # "palette":[B
    .end local v17    # "paletteOffset":I
    goto :goto_d

    .line 366
    :catch_f
    move-exception v0

    move/from16 v17, v9

    .line 367
    .end local v9    # "terrainDone":I
    .local v0, "e":Ljava/io/IOException;
    .local v17, "terrainDone":I
    invoke-static {v4, v7, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dunehack_palette="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    :goto_d
    invoke-static {v4, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hasAdapted(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 374
    :try_start_10
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findMetatileTable([B)I

    move-result v0

    .line 375
    .local v0, "metatiles":I
    const/16 v7, 0x2d40

    invoke-static {v1, v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    move-result-object v7

    .line 376
    .local v7, "data":[B
    invoke-static {v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->validateMetatileData([B)V

    .line 377
    invoke-static {v3, v6, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 378
    new-instance v9, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v10, v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "relocated metatile table 0x"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 380
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    invoke-direct {v9, v6, v15, v10, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 378
    invoke-virtual {v4, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metatiles=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 382
    nop

    .end local v0    # "metatiles":I
    .end local v7    # "data":[B
    add-int/lit8 v17, v17, 0x1

    .line 389
    move/from16 v6, v17

    goto :goto_f

    .line 383
    :catch_10
    move-exception v0

    .line 384
    .local v0, "e":Ljava/io/IOException;
    if-eqz v12, :cond_7

    .line 385
    const-string v7, "DuneHack 360-entry descriptors require proven shared-VRAM loader; BASE retained"

    goto :goto_e

    .line 386
    :cond_7
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    :goto_e
    nop

    .line 387
    .local v7, "detail":Ljava/lang/String;
    invoke-static {v4, v6, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "metatiles="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "detail":Ljava/lang/String;
    :cond_8
    move/from16 v6, v17

    .end local v17    # "terrainDone":I
    .restart local v6    # "terrainDone":I
    :goto_f
    const-string v0, "radar/color_tables.bin"

    const-string v7, "Rebuild radar table representation not proven"

    invoke-static {v4, v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "radar/transition_quadrants.bin"

    const-string v7, "Rebuild transition-frame locator not proven"

    invoke-static {v4, v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "world/structure_beacon_patterns.bin"

    const-string v7, "Rebuild beacon locator not proven"

    invoke-static {v4, v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    if-eqz v8, :cond_9

    const/4 v0, 0x6

    const-string v7, "terrain adapter complete"

    const-string v9, "WORLD_TERRAIN_RADAR"

    invoke-interface {v8, v9, v6, v0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;->onProgress(Ljava/lang/String;IILjava/lang/String;)V

    .line 406
    :cond_9
    const/4 v7, 0x0

    .line 407
    .local v7, "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    const/4 v9, -0x1

    .line 408
    .local v9, "visualTable":I
    const-string v10, ""

    .line 409
    .local v10, "loaderFailure":Ljava/lang/String;
    const-string v11, ""

    .line 411
    .local v11, "visualFailure":Ljava/lang/String;
    :try_start_11
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findSpriteLoader([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;

    move-result-object v0

    move-object v7, v0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sprite_loader=0x"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v7, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->offset:I

    invoke-static {v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " blocks="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v7, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->chunks:Ljava/util/List;

    .line 413
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    .line 426
    move-object v14, v13

    move-object v13, v10

    move-object v10, v7

    goto/16 :goto_10

    .line 414
    :catch_11
    move-exception v0

    move-object v14, v0

    .line 415
    .local v14, "e":Ljava/io/IOException;
    invoke-static {v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    .line 417
    if-nez v13, :cond_a

    :try_start_12
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findDuneHackResidentLoader([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;

    move-result-object v0

    move-object v13, v0

    .line 418
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dunehack_resident_loader=0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->codeOffset:I

    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " pre_ptr=0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->prePointerCell:I

    .line 419
    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " pre_src=0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->preSource:I

    .line 420
    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " stream=0x"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v13, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;->streamSource:I

    .line 421
    invoke-static {v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12

    .line 425
    move-object v14, v13

    move-object v13, v10

    move-object v10, v7

    goto :goto_10

    .line 422
    :catch_12
    move-exception v0

    .line 423
    .local v0, "de":Ljava/io/IOException;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v17, v0

    .end local v0    # "de":Ljava/io/IOException;
    .local v17, "de":Ljava/io/IOException;
    invoke-static/range {v17 .. v17}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sprite_loader="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v13

    move-object v13, v10

    move-object v10, v7

    .line 428
    .end local v7    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v17    # "de":Ljava/io/IOException;
    .local v10, "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .local v13, "loaderFailure":Ljava/lang/String;
    .local v14, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :goto_10
    :try_start_13
    invoke-static {v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findVisualTable([B)I

    move-result v0

    move v9, v0

    .line 429
    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->visualStats([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;

    move-result-object v0

    .line 430
    .local v0, "vs":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "visual_table=0x"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hex(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " visuals="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->valid:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " dynamic="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v15, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->dynamic:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 432
    if-nez v10, :cond_c

    if-eqz v14, :cond_b

    if-nez p3, :cond_c

    .line 433
    :cond_b
    const-string v15, " blocked=no compatible static bank"

    goto :goto_11

    :cond_c
    const-string v15, ""

    :goto_11
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13

    .line 437
    nop

    .end local v0    # "vs":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
    goto :goto_12

    .line 434
    :catch_13
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "visual_table="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v0    # "e":Ljava/io/IOException;
    :goto_12
    const-string v7, "tactical/dynamic_patterns.bin"

    const-string v15, "tactical/visual_catalog.bin"

    move/from16 v17, v6

    .end local v6    # "terrainDone":I
    .local v17, "terrainDone":I
    const-string v6, "tactical/static_patterns_922_2047.bin"

    if-ltz v9, :cond_12

    if-nez v10, :cond_e

    if-eqz v14, :cond_d

    goto :goto_13

    :cond_d
    move/from16 v25, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    goto/16 :goto_18

    .line 442
    :cond_e
    :goto_13
    const/4 v0, 0x0

    .line 444
    .local v0, "residentMask":[Z
    if-eqz v10, :cond_f

    .line 445
    :try_start_14
    invoke-static {v1, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildStaticPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;)[B

    move-result-object v2

    .line 446
    .local v2, "staticPatterns":[B
    const-string v19, "compatible relocated retail-style tactical core"
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14

    move-object/from16 v29, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v29

    .local v19, "staticDetail":Ljava/lang/String;
    goto :goto_14

    .line 471
    .end local v0    # "residentMask":[Z
    .end local v2    # "staticPatterns":[B
    .end local v19    # "staticDetail":Ljava/lang/String;
    :catch_14
    move-exception v0

    move/from16 v25, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    goto/16 :goto_17

    .line 448
    .restart local v0    # "residentMask":[Z
    :cond_f
    move-object/from16 v2, p3

    :try_start_15
    invoke-static {v1, v14, v9, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildDuneHackStaticPatterns([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;I[B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;

    move-result-object v19

    move-object/from16 v20, v19

    .line 450
    .local v20, "bank":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    .end local v20    # "bank":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;
    .local v0, "bank":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;
    .local v19, "residentMask":[Z
    iget-object v2, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->bytes:[B

    .line 451
    .restart local v2    # "staticPatterns":[B
    move-object/from16 v20, v2

    .end local v2    # "staticPatterns":[B
    .local v20, "staticPatterns":[B
    iget-object v2, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->resident:[Z

    .line 452
    .end local v19    # "residentMask":[Z
    .local v2, "residentMask":[Z
    move-object/from16 v19, v2

    .end local v2    # "residentMask":[Z
    .restart local v19    # "residentMask":[Z
    iget-object v2, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->detail:Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1a

    move-object/from16 v0, v19

    move-object/from16 v19, v10

    move-object v10, v2

    move-object/from16 v2, v20

    .line 454
    .end local v20    # "staticPatterns":[B
    .local v0, "residentMask":[Z
    .local v2, "staticPatterns":[B
    .local v10, "staticDetail":Ljava/lang/String;
    .local v19, "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    :goto_14
    if-nez v0, :cond_10

    .line 455
    :try_start_16
    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildDynamicCatalog([BI)[B

    move-result-object v20
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    goto :goto_15

    .line 471
    .end local v0    # "residentMask":[Z
    .end local v2    # "staticPatterns":[B
    .end local v10    # "staticDetail":Ljava/lang/String;
    :catch_15
    move-exception v0

    move/from16 v25, v9

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    goto/16 :goto_17

    .line 456
    .restart local v0    # "residentMask":[Z
    .restart local v2    # "staticPatterns":[B
    .restart local v10    # "staticDetail":Ljava/lang/String;
    :cond_10
    :try_start_17
    invoke-static {v1, v9, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildDuneHackDynamicCatalog([BI[Z)[B

    move-result-object v20

    :goto_15
    move-object/from16 v24, v20

    .line 457
    .local v24, "dynamic":[B
    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildVisualCatalog([BI)[B

    move-result-object v20

    move-object/from16 v25, v20

    .line 458
    .local v25, "visuals":[B
    invoke-static {v3, v6, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 459
    move-object/from16 v20, v0

    move-object/from16 v0, v25

    .end local v25    # "visuals":[B
    .local v0, "visuals":[B
    .local v20, "residentMask":[Z
    invoke-static {v3, v15, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_19

    .line 460
    move/from16 v25, v9

    move-object/from16 v9, v24

    .end local v24    # "dynamic":[B
    .local v9, "dynamic":[B
    .local v25, "visualTable":I
    :try_start_18
    invoke-static {v3, v7, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_18

    .line 461
    move-object/from16 v24, v12

    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .local v24, "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    :try_start_19
    new-instance v12, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17

    move-object/from16 v26, v14

    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v26, "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :try_start_1a
    array-length v14, v2

    move-object/from16 v27, v2

    const/4 v2, 0x1

    .end local v2    # "staticPatterns":[B
    .local v27, "staticPatterns":[B
    invoke-direct {v12, v6, v2, v14, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v6, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v12, v0

    const-string v14, "compatible DuneHack visual layout catalog"

    move-object/from16 v28, v10

    const/4 v10, 0x1

    .end local v10    # "staticDetail":Ljava/lang/String;
    .local v28, "staticDetail":Ljava/lang/String;
    invoke-direct {v2, v15, v10, v12, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v15, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v10, v9

    .line 468
    if-nez v20, :cond_11

    const-string v12, "retail-style dynamic raw pixels"

    goto :goto_16

    .line 469
    :cond_11
    const-string v12, "DuneHack visual-specific LOAD_GFX/raw bridge"

    :goto_16
    const/4 v14, 0x1

    invoke-direct {v2, v7, v14, v10, v12}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    .line 466
    invoke-virtual {v4, v7, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_16

    .line 470
    nop

    .end local v0    # "visuals":[B
    .end local v9    # "dynamic":[B
    .end local v20    # "residentMask":[Z
    .end local v27    # "staticPatterns":[B
    .end local v28    # "staticDetail":Ljava/lang/String;
    add-int/lit8 v7, v18, 0x3

    .line 477
    .end local v18    # "tacticalDone":I
    .local v7, "tacticalDone":I
    goto/16 :goto_1b

    .line 471
    .end local v7    # "tacticalDone":I
    .restart local v18    # "tacticalDone":I
    :catch_16
    move-exception v0

    goto :goto_17

    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_17
    move-exception v0

    move-object/from16 v26, v14

    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    goto :goto_17

    .end local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_18
    move-exception v0

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    goto :goto_17

    .end local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v25    # "visualTable":I
    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v9, "visualTable":I
    .restart local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_19
    move-exception v0

    move/from16 v25, v9

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    .end local v9    # "visualTable":I
    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v25    # "visualTable":I
    .restart local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    goto :goto_17

    .end local v19    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v25    # "visualTable":I
    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v9    # "visualTable":I
    .local v10, "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .restart local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :catch_1a
    move-exception v0

    move/from16 v25, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    .line 472
    .end local v9    # "visualTable":I
    .end local v10    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .restart local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v25    # "visualTable":I
    .restart local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tactical core rejected atomically: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "detail":Ljava/lang/String;
    invoke-static {v4, v6, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v4, v15, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {v4, v7, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tactical_core="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "detail":Ljava/lang/String;
    goto :goto_1a

    .line 439
    .end local v19    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v25    # "visualTable":I
    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v9    # "visualTable":I
    .restart local v10    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .restart local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :cond_12
    move/from16 v25, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    .line 479
    .end local v9    # "visualTable":I
    .end local v10    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v12    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v14    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .restart local v19    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .restart local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .restart local v25    # "visualTable":I
    .restart local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :goto_18
    if-nez v19, :cond_13

    if-nez v26, :cond_13

    .line 480
    const-string v0, "compatible static-pattern bank not proven; visual/dynamic overlay blocked"

    goto :goto_19

    .line 481
    :cond_13
    const-string v0, "compatible visual table not proven; tactical core blocked"

    :goto_19
    nop

    .line 482
    .local v0, "detail":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    if-gez v25, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_14
    invoke-static {v4, v6, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {v4, v15, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {v4, v7, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .end local v0    # "detail":Ljava/lang/String;
    :goto_1a
    move/from16 v7, v18

    .end local v18    # "tacticalDone":I
    .restart local v7    # "tacticalDone":I
    :goto_1b
    const-string v2, "tactical/direct_layouts.bin"

    if-eqz v23, :cond_15

    if-eqz p4, :cond_15

    .line 492
    move-object/from16 v10, p4

    move-object/from16 v9, v23

    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .local v9, "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :try_start_1b
    invoke-static {v1, v9, v10}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->buildDuneHackTrackedDirectLayouts([BLcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;[B)[B

    move-result-object v0

    .line 493
    .local v0, "direct":[B
    invoke-static {v3, v2, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->writeAsset(Ljava/io/File;Ljava/lang/String;[B)V

    .line 494
    new-instance v6, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    array-length v12, v0

    const-string v14, "BASE direct catalog with exact Rebuild R79 Tank/Siege composite layouts"

    const/4 v15, 0x1

    invoke-direct {v6, v2, v15, v12, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-virtual {v4, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 497
    nop

    .end local v0    # "direct":[B
    add-int/lit8 v7, v7, 0x1

    .line 501
    :goto_1c
    goto :goto_1e

    .line 498
    :catch_1b
    move-exception v0

    .line 499
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r79_tracked_direct="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1c

    .line 490
    .end local v9    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    :cond_15
    move-object/from16 v10, p4

    move-object/from16 v9, v23

    .line 503
    .end local v23    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .restart local v9    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    if-nez v9, :cond_16

    .line 504
    const-string v0, "Rebuild direct-layout locator not proven"

    goto :goto_1d

    .line 505
    :cond_16
    const-string v0, "R79 tracked layouts proven but immutable BASE direct catalog unavailable"

    .line 503
    :goto_1d
    invoke-static {v4, v2, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_1e
    const-string v0, "tactical/placement_grid_patterns.bin"

    const-string v2, "Rebuild placement-grid locator not proven"

    invoke-static {v4, v0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz v8, :cond_17

    const/4 v0, 0x5

    const-string v2, "tactical adapter complete"

    const-string v6, "TACTICAL_SPRITES"

    invoke-interface {v8, v6, v7, v0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$ProgressListener;->onProgress(Ljava/lang/String;IILjava/lang/String;)V

    .line 512
    :cond_17
    new-instance v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;

    move/from16 v6, v17

    .end local v17    # "terrainDone":I
    .restart local v6    # "terrainDone":I
    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$Result;-><init>(Ljava/io/File;Ljava/util/Map;Ljava/util/List;II)V

    .end local v6    # "terrainDone":I
    .restart local v17    # "terrainDone":I
    return-object v2

    .line 255
    .end local v4    # "status":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    .end local v5    # "diagnostics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "tacticalDone":I
    .end local v9    # "trackedTables":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .end local v11    # "visualFailure":Ljava/lang/String;
    .end local v13    # "loaderFailure":Ljava/lang/String;
    .end local v16    # "sparseR79Terrain":Z
    .end local v17    # "terrainDone":I
    .end local v19    # "loader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v21    # "r79Presentation":Z
    .end local v22    # "terrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v24    # "rawTerrain":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .end local v25    # "visualTable":I
    .end local v26    # "duneLoader":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    :cond_18
    move-object/from16 v10, p4

    new-instance v0, Ljava/io/IOException;

    const-string v2, "DuneHack adapter staging is unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_19
    move-object/from16 v10, p4

    new-instance v0, Ljava/io/IOException;

    const-string v2, "DuneHack image is unexpectedly large"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1a
    move-object/from16 v10, p4

    new-instance v0, Ljava/io/IOException;

    const-string v2, "DuneHack image is unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fallback(Ljava/util/Map;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/IOException;",
            ")V"
        }
    .end annotation

    .line 1492
    .local p0, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    invoke-static {p2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method

.method private static fallback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1496
    .local p0, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    new-instance v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    return-void
.end method

.method private static findDuneHackRawTerrainBlock([BZ)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;
    .locals 27
    .param p0, "rom"    # [B
    .param p1, "allowSparseR79Terrain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    move-object/from16 v0, p0

    const/16 v1, 0x7340

    .line 695
    .local v1, "patternBytes":I
    const/16 v2, 0x1680

    .line 696
    .local v2, "windowWords":I
    array-length v3, v0

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 697
    .local v3, "words":I
    if-lt v3, v2, :cond_1d

    array-length v5, v0

    add-int/lit16 v6, v1, 0x2d00

    if-lt v5, v6, :cond_1d

    .line 701
    const/16 v5, 0x39a

    new-array v6, v5, [I

    .line 702
    .local v6, "indexCounts":[I
    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 703
    .local v7, "paletteCounts":[I
    const/4 v8, 0x0

    .local v8, "distinct":I
    const/4 v9, 0x0

    .local v9, "external":I
    const/4 v10, 0x0

    .local v10, "outsideVram":I
    const/4 v11, 0x0

    .local v11, "high":I
    const/4 v12, 0x0

    .line 704
    .local v12, "flips":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v16, v4

    const/16 v4, 0x352

    const/16 v17, 0x3

    if-ge v13, v2, :cond_5

    .line 705
    const/16 v18, 0x1

    mul-int/lit8 v15, v13, 0x2

    invoke-static {v0, v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v15

    .line 706
    .local v15, "value":I
    and-int/lit16 v14, v15, 0x7ff

    .line 707
    .local v14, "index":I
    if-ge v14, v5, :cond_1

    .line 708
    aget v19, v6, v14

    add-int/lit8 v20, v19, 0x1

    aput v20, v6, v14

    if-nez v19, :cond_0

    add-int/lit8 v8, v8, 0x1

    .line 709
    :cond_0
    if-lt v14, v4, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 710
    :cond_1
    const/16 v4, 0x800

    if-ge v14, v4, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 711
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 712
    :cond_3
    :goto_1
    ushr-int/lit8 v4, v15, 0xd

    and-int/lit8 v4, v4, 0x3

    aget v17, v7, v4

    add-int/lit8 v17, v17, 0x1

    aput v17, v7, v4

    .line 713
    and-int/lit16 v4, v15, 0x1800

    if-eqz v4, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 704
    .end local v14    # "index":I
    .end local v15    # "value":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto :goto_0

    :cond_5
    const/16 v18, 0x1

    .line 716
    .end local v13    # "i":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v13, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;>;"
    const/4 v14, 0x0

    .local v14, "startWord":I
    :goto_2
    sub-int v15, v3, v2

    if-gt v14, v15, :cond_1a

    .line 718
    mul-int/lit8 v15, v14, 0x2

    .line 719
    .local v15, "descriptorOffset":I
    const/16 v21, 0x0

    add-int/lit16 v4, v15, 0x2d00

    .line 720
    .local v4, "patternOffset":I
    if-eqz p1, :cond_6

    const/16 v22, 0x352

    goto :goto_3

    :cond_6
    move/from16 v22, v5

    :goto_3
    move/from16 v23, v22

    .line 721
    .local v23, "requiredDistinct":I
    if-nez v10, :cond_e

    if-lez v9, :cond_e

    const/16 v5, 0x20

    if-gt v9, v5, :cond_e

    move/from16 v5, v23

    .end local v23    # "requiredDistinct":I
    .local v5, "requiredDistinct":I
    if-lt v8, v5, :cond_d

    move/from16 v23, v1

    .end local v1    # "patternBytes":I
    .local v23, "patternBytes":I
    const/16 v1, 0x10

    if-lt v11, v1, :cond_c

    if-lt v12, v1, :cond_c

    aget v1, v7, v21

    if-lez v1, :cond_c

    aget v1, v7, v18

    if-lez v1, :cond_c

    aget v1, v7, v16

    if-lez v1, :cond_c

    aget v1, v7, v17

    if-lez v1, :cond_c

    array-length v1, v0

    sub-int v1, v1, v23

    if-gt v4, v1, :cond_c

    .line 730
    invoke-static {v0, v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v1, v15, 0x20

    .line 731
    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v1

    if-nez v1, :cond_a

    .line 732
    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankPattern([BI)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, v4, 0x20

    .line 733
    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankPattern([BI)Z

    move-result v1

    if-nez v1, :cond_8

    .line 734
    invoke-static {v0, v15, v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferencesBefore([BII)I

    move-result v1

    .line 735
    .local v1, "descriptorRefs":I
    invoke-static {v0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferences([BI)I

    move-result v24

    .line 736
    .local v24, "patternRefs":I
    if-lez v1, :cond_7

    if-lez v24, :cond_7

    .line 737
    move/from16 v25, v1

    .end local v1    # "descriptorRefs":I
    .local v25, "descriptorRefs":I
    new-instance v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;

    .line 738
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .local v26, "windowWords":I
    const/16 v2, 0x168

    invoke-static {v0, v15, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->maxMetatilePatternIndex([BII)I

    move-result v2

    invoke-direct {v1, v15, v4, v9, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;-><init>(IIII)V

    .line 737
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 736
    .end local v25    # "descriptorRefs":I
    .end local v26    # "windowWords":I
    .restart local v1    # "descriptorRefs":I
    .restart local v2    # "windowWords":I
    :cond_7
    move/from16 v25, v1

    move/from16 v26, v2

    .end local v1    # "descriptorRefs":I
    .end local v2    # "windowWords":I
    .restart local v25    # "descriptorRefs":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .line 733
    .end local v24    # "patternRefs":I
    .end local v25    # "descriptorRefs":I
    .end local v26    # "windowWords":I
    .restart local v2    # "windowWords":I
    :cond_8
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .line 732
    .end local v26    # "windowWords":I
    .restart local v2    # "windowWords":I
    :cond_9
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .line 731
    .end local v26    # "windowWords":I
    .restart local v2    # "windowWords":I
    :cond_a
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .line 730
    .end local v26    # "windowWords":I
    .restart local v2    # "windowWords":I
    :cond_b
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .line 721
    .end local v26    # "windowWords":I
    .restart local v2    # "windowWords":I
    :cond_c
    move/from16 v26, v2

    .end local v2    # "windowWords":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .end local v23    # "patternBytes":I
    .end local v26    # "windowWords":I
    .local v1, "patternBytes":I
    .restart local v2    # "windowWords":I
    :cond_d
    move/from16 v23, v1

    move/from16 v26, v2

    .end local v1    # "patternBytes":I
    .end local v2    # "windowWords":I
    .restart local v23    # "patternBytes":I
    .restart local v26    # "windowWords":I
    goto :goto_4

    .end local v5    # "requiredDistinct":I
    .end local v26    # "windowWords":I
    .restart local v1    # "patternBytes":I
    .restart local v2    # "windowWords":I
    .local v23, "requiredDistinct":I
    :cond_e
    move/from16 v26, v2

    move/from16 v5, v23

    move/from16 v23, v1

    .line 741
    .end local v1    # "patternBytes":I
    .end local v2    # "windowWords":I
    .restart local v5    # "requiredDistinct":I
    .local v23, "patternBytes":I
    .restart local v26    # "windowWords":I
    :goto_4
    sub-int v1, v3, v26

    if-ne v14, v1, :cond_f

    move/from16 v24, v3

    goto/16 :goto_7

    .line 743
    :cond_f
    mul-int/lit8 v1, v14, 0x2

    invoke-static {v0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v1

    .line 744
    .local v1, "oldValue":I
    and-int/lit16 v2, v1, 0x7ff

    .line 745
    .local v2, "oldIndex":I
    move/from16 v24, v3

    const/16 v3, 0x39a

    .end local v3    # "words":I
    .local v24, "words":I
    if-ge v2, v3, :cond_11

    .line 746
    aget v3, v6, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v6, v2

    if-nez v3, :cond_10

    add-int/lit8 v8, v8, -0x1

    .line 747
    :cond_10
    const/16 v3, 0x352

    if-lt v2, v3, :cond_13

    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 748
    :cond_11
    const/16 v3, 0x800

    if-ge v2, v3, :cond_12

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 749
    :cond_12
    add-int/lit8 v10, v10, -0x1

    .line 750
    :cond_13
    :goto_5
    ushr-int/lit8 v3, v1, 0xd

    and-int/lit8 v3, v3, 0x3

    aget v21, v7, v3

    add-int/lit8 v21, v21, -0x1

    aput v21, v7, v3

    .line 751
    and-int/lit16 v3, v1, 0x1800

    if-eqz v3, :cond_14

    add-int/lit8 v12, v12, -0x1

    .line 753
    :cond_14
    add-int v3, v14, v26

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    .line 754
    .local v3, "newValue":I
    and-int/lit16 v0, v3, 0x7ff

    .line 755
    .local v0, "newIndex":I
    move/from16 v21, v1

    const/16 v1, 0x39a

    .end local v1    # "oldValue":I
    .local v21, "oldValue":I
    if-ge v0, v1, :cond_17

    .line 756
    aget v22, v6, v0

    add-int/lit8 v25, v22, 0x1

    aput v25, v6, v0

    if-nez v22, :cond_15

    add-int/lit8 v8, v8, 0x1

    .line 757
    :cond_15
    const/16 v1, 0x352

    if-lt v0, v1, :cond_16

    add-int/lit8 v11, v11, 0x1

    :cond_16
    const/16 v1, 0x800

    goto :goto_6

    .line 758
    :cond_17
    const/16 v1, 0x352

    const/16 v1, 0x800

    if-ge v0, v1, :cond_18

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 759
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 760
    :goto_6
    ushr-int/lit8 v19, v3, 0xd

    and-int/lit8 v19, v19, 0x3

    aget v25, v7, v19

    add-int/lit8 v25, v25, 0x1

    aput v25, v7, v19

    .line 761
    and-int/lit16 v1, v3, 0x1800

    if-eqz v1, :cond_19

    add-int/lit8 v12, v12, 0x1

    .line 717
    .end local v0    # "newIndex":I
    .end local v2    # "oldIndex":I
    .end local v3    # "newValue":I
    .end local v4    # "patternOffset":I
    .end local v5    # "requiredDistinct":I
    .end local v15    # "descriptorOffset":I
    .end local v21    # "oldValue":I
    :cond_19
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v3, v24

    move/from16 v2, v26

    const/16 v4, 0x352

    const/16 v5, 0x39a

    goto/16 :goto_2

    .end local v23    # "patternBytes":I
    .end local v24    # "words":I
    .end local v26    # "windowWords":I
    .local v1, "patternBytes":I
    .local v2, "windowWords":I
    .local v3, "words":I
    :cond_1a
    move/from16 v23, v1

    move/from16 v26, v2

    move/from16 v24, v3

    const/16 v21, 0x0

    .line 763
    .end local v1    # "patternBytes":I
    .end local v2    # "windowWords":I
    .end local v3    # "words":I
    .end local v14    # "startWord":I
    .restart local v23    # "patternBytes":I
    .restart local v24    # "words":I
    .restart local v26    # "windowWords":I
    :goto_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 764
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 765
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;

    return-object v0

    .line 764
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack raw terrain block is ambiguous"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack 360+922 raw terrain block not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    .end local v6    # "indexCounts":[I
    .end local v7    # "paletteCounts":[I
    .end local v8    # "distinct":I
    .end local v9    # "external":I
    .end local v10    # "outsideVram":I
    .end local v11    # "high":I
    .end local v12    # "flips":I
    .end local v13    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$RawTerrainBlock;>;"
    .end local v23    # "patternBytes":I
    .end local v24    # "words":I
    .end local v26    # "windowWords":I
    .restart local v1    # "patternBytes":I
    .restart local v2    # "windowWords":I
    .restart local v3    # "words":I
    :cond_1d
    move/from16 v23, v1

    move/from16 v26, v2

    move/from16 v24, v3

    .line 698
    .end local v1    # "patternBytes":I
    .end local v2    # "windowWords":I
    .end local v3    # "words":I
    .restart local v23    # "patternBytes":I
    .restart local v24    # "words":I
    .restart local v26    # "windowWords":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM too small for DuneHack raw terrain block"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findDuneHackResidentLoader([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;
    .locals 12
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;>;"
    const/16 v1, 0xc

    .local v1, "c":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x20

    if-gt v1, v2, :cond_a

    .line 1099
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    const-wide/32 v4, 0x73400001

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1100
    :cond_0
    add-int/lit8 v2, v1, -0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/16 v3, 0x237c

    if-ne v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x4

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    goto/16 :goto_1

    .line 1101
    :cond_1
    add-int/lit8 v2, v1, -0xc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/16 v5, 0x41f9

    if-ne v2, v5, :cond_9

    add-int/lit8 v2, v1, -0x6

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/16 v5, 0x323c

    if-ne v2, v5, :cond_9

    add-int/lit8 v2, v1, -0x4

    .line 1102
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/16 v6, 0x1d2

    if-eq v2, v6, :cond_2

    goto/16 :goto_1

    .line 1103
    :cond_2
    add-int/lit8 v2, v1, 0xc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v6

    const-wide/32 v8, 0x58000003

    cmp-long v2, v6, v8

    if-nez v2, :cond_9

    add-int/lit8 v2, v1, 0x18

    .line 1104
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v6

    const-wide/32 v8, 0x79800003

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 1105
    :cond_3
    add-int/lit8 v2, v1, -0xa

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v6

    long-to-int v2, v6

    .line 1106
    .local v2, "streamSource":I
    if-gtz v2, :cond_4

    goto/16 :goto_1

    .line 1107
    :cond_4
    const/16 v6, 0x4680

    .line 1109
    .local v6, "streamBytes":I
    array-length v7, p0

    sub-int/2addr v7, v6

    if-le v2, v7, :cond_5

    goto :goto_1

    .line 1113
    :cond_5
    add-int/lit8 v7, v1, -0x14

    .line 1114
    .local v7, "preCmd":I
    const/16 v8, 0xc

    if-lt v7, v8, :cond_9

    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    const-wide/32 v10, 0x6da00002

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    add-int/lit8 v8, v7, -0x2

    .line 1115
    invoke-static {p0, v8}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v8

    if-ne v8, v3, :cond_9

    add-int/lit8 v3, v7, 0x4

    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v7, -0x6

    .line 1116
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    if-ne v3, v5, :cond_9

    add-int/lit8 v3, v7, -0x4

    .line 1117
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    const/16 v5, 0x87

    if-ne v3, v5, :cond_9

    add-int/lit8 v3, v7, -0xc

    .line 1118
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    const/16 v5, 0x2079

    if-eq v3, v5, :cond_6

    goto :goto_1

    .line 1119
    :cond_6
    add-int/lit8 v3, v7, -0xa

    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    long-to-int v3, v8

    .line 1120
    .local v3, "pointerCell":I
    if-lez v3, :cond_9

    array-length v5, p0

    sub-int/2addr v5, v4

    if-le v3, v5, :cond_7

    goto :goto_1

    .line 1121
    :cond_7
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v4

    const-wide/32 v8, 0xffffff

    and-long/2addr v4, v8

    long-to-int v4, v4

    .line 1122
    .local v4, "preSource":I
    if-lez v4, :cond_9

    array-length v5, p0

    add-int/lit16 v5, v5, -0x1100

    if-le v4, v5, :cond_8

    goto :goto_1

    .line 1123
    :cond_8
    new-instance v5, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;

    add-int/lit8 v8, v1, -0x2

    invoke-direct {v5, v8, v3, v4, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;-><init>(IIII)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    .end local v2    # "streamSource":I
    .end local v3    # "pointerCell":I
    .end local v4    # "preSource":I
    .end local v6    # "streamBytes":I
    .end local v7    # "preCmd":I
    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 1125
    .end local v1    # "c":I
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackResidentLoader;

    return-object v1

    .line 1126
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DuneHack resident VRAM loader is ambiguous"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1125
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "DuneHack resident VRAM loader not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findDuneHackTerrainPalette([B)I
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 855
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 859
    .local v0, "suffix":[B
    const/4 v1, -0x1

    .line 860
    .local v1, "found":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v3, v3, -0x4

    array-length v4, v0

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_8

    .line 861
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x21

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xfc

    if-eq v3, v4, :cond_0

    goto :goto_4

    .line 862
    :cond_0
    const/4 v3, 0x1

    .line 863
    .local v3, "match":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 864
    add-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v4

    aget-byte v5, p0, v5

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 863
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 866
    .end local v4    # "i":I
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    goto :goto_4

    .line 867
    :cond_3
    add-int/lit8 v4, v2, 0x2

    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v4

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 868
    .local v4, "palette":I
    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isDuneHackCramPalette([BI)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    .line 869
    :cond_4
    if-ltz v1, :cond_6

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "multiple DuneHack world palettes"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 870
    :cond_6
    :goto_3
    move v1, v4

    .line 860
    .end local v3    # "match":Z
    .end local v4    # "palette":I
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 872
    .end local v2    # "off":I
    :cond_8
    if-ltz v1, :cond_9

    .line 873
    return v1

    .line 872
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "DuneHack world palette pointer not found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :array_0
    .array-data 1
        -0x3et
        -0x78t
        0x42t
        0x38t
        -0x42t
        -0x63t
        0x41t
        -0x8t
        -0x22t
        -0x5ct
    .end array-data
.end method

.method private static findDuneHackTrackedCompositeTables([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;
    .locals 6
    .param p0, "rom"    # [B

    .line 522
    const/16 v0, 0x680

    .line 523
    .local v0, "tableBytes":I
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x6

    if-gt v1, v2, :cond_4

    .line 525
    :try_start_0
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    const/16 v3, 0x43f9

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    add-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 527
    .local v2, "tank":I
    add-int/lit16 v3, v2, 0x680

    .line 528
    .local v3, "siege":I
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isTrackedCompositeTable([BI)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isTrackedCompositeTable([BI)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 529
    :cond_1
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->hasLeaA1Reference([BI)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 530
    :cond_2
    new-instance v4, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;

    invoke-direct {v4, v2, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TrackedCompositeTables;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 531
    .end local v2    # "tank":I
    .end local v3    # "siege":I
    :catch_0
    move-exception v2

    .line 523
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 533
    .end local v1    # "off":I
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static findMetatileTable([B)I
    .locals 22
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    move-object/from16 v0, p0

    array-length v1, v0

    const/16 v2, 0x2d40

    if-lt v1, v2, :cond_1a

    .line 934
    const/16 v1, 0x39a

    new-array v2, v1, [I

    .line 935
    .local v2, "indexCounts":[I
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 936
    .local v3, "paletteCounts":[I
    const/4 v4, 0x0

    .local v4, "invalid":I
    const/4 v5, 0x0

    .local v5, "distinct":I
    const/4 v6, 0x0

    .local v6, "high":I
    const/4 v7, 0x0

    .line 937
    .local v7, "flips":I
    array-length v8, v0

    const/4 v9, 0x2

    div-int/2addr v8, v9

    .line 938
    .local v8, "words":I
    const/16 v10, 0x16a0

    if-lt v8, v10, :cond_19

    .line 940
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v12, 0x352

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ge v11, v10, :cond_4

    .line 941
    mul-int/lit8 v15, v11, 0x2

    invoke-static {v0, v15}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v15

    .line 942
    .local v15, "value":I
    move/from16 v16, v9

    and-int/lit16 v9, v15, 0x7ff

    .line 943
    .local v9, "index":I
    if-lt v9, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 945
    :cond_0
    aget v17, v2, v9

    add-int/lit8 v18, v17, 0x1

    aput v18, v2, v9

    if-nez v17, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 946
    :cond_1
    if-lt v9, v12, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 948
    :cond_2
    :goto_1
    ushr-int/lit8 v12, v15, 0xd

    and-int/2addr v12, v13

    aget v13, v3, v12

    add-int/2addr v13, v14

    aput v13, v3, v12

    .line 949
    and-int/lit16 v12, v15, 0x1800

    if-eqz v12, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 940
    .end local v9    # "index":I
    .end local v15    # "value":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v16

    goto :goto_0

    :cond_4
    move/from16 v16, v9

    .line 952
    .end local v11    # "i":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v9, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "startWord":I
    :goto_2
    add-int/lit16 v11, v8, -0x16a0

    const/4 v15, 0x0

    if-gt v10, v11, :cond_12

    .line 954
    if-nez v4, :cond_8

    if-ne v5, v1, :cond_8

    const/16 v11, 0x10

    if-lt v6, v11, :cond_8

    if-lt v7, v11, :cond_8

    aget v11, v3, v15

    if-lez v11, :cond_8

    aget v11, v3, v14

    if-lez v11, :cond_8

    aget v11, v3, v16

    if-lez v11, :cond_8

    aget v11, v3, v13

    if-lez v11, :cond_8

    mul-int/lit8 v11, v10, 0x2

    .line 957
    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v11

    if-eqz v11, :cond_7

    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, 0x20

    .line 958
    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v11

    if-nez v11, :cond_6

    .line 959
    mul-int/lit8 v11, v10, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v17, v13

    const/16 v13, 0x4e20

    if-gt v11, v13, :cond_5

    goto :goto_3

    .line 961
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v11, "too many metatile candidates"

    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 958
    :cond_6
    move/from16 v17, v13

    goto :goto_3

    .line 957
    :cond_7
    move/from16 v17, v13

    goto :goto_3

    .line 954
    :cond_8
    move/from16 v17, v13

    .line 964
    :goto_3
    add-int/lit16 v11, v8, -0x16a0

    if-ne v10, v11, :cond_9

    goto :goto_6

    .line 965
    :cond_9
    mul-int/lit8 v11, v10, 0x2

    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v11

    .line 966
    .local v11, "oldValue":I
    and-int/lit16 v13, v11, 0x7ff

    .line 967
    .local v13, "oldIndex":I
    if-lt v13, v1, :cond_a

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 969
    :cond_a
    aget v15, v2, v13

    sub-int/2addr v15, v14

    aput v15, v2, v13

    if-nez v15, :cond_b

    add-int/lit8 v5, v5, -0x1

    .line 970
    :cond_b
    if-lt v13, v12, :cond_c

    add-int/lit8 v6, v6, -0x1

    .line 972
    :cond_c
    :goto_4
    ushr-int/lit8 v15, v11, 0xd

    and-int/lit8 v15, v15, 0x3

    aget v18, v3, v15

    add-int/lit8 v18, v18, -0x1

    aput v18, v3, v15

    .line 973
    and-int/lit16 v15, v11, 0x1800

    if-eqz v15, :cond_d

    add-int/lit8 v7, v7, -0x1

    .line 975
    :cond_d
    add-int/lit16 v15, v10, 0x16a0

    .line 976
    .local v15, "newWord":I
    move/from16 v18, v14

    mul-int/lit8 v14, v15, 0x2

    invoke-static {v0, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v14

    .line 977
    .local v14, "newValue":I
    and-int/lit16 v12, v14, 0x7ff

    .line 978
    .local v12, "newIndex":I
    if-lt v12, v1, :cond_e

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x352

    goto :goto_5

    .line 980
    :cond_e
    aget v20, v2, v12

    add-int/lit8 v21, v20, 0x1

    aput v21, v2, v12

    if-nez v20, :cond_f

    add-int/lit8 v5, v5, 0x1

    .line 981
    :cond_f
    const/16 v1, 0x352

    if-lt v12, v1, :cond_10

    add-int/lit8 v6, v6, 0x1

    .line 983
    :cond_10
    :goto_5
    ushr-int/lit8 v19, v14, 0xd

    and-int/lit8 v19, v19, 0x3

    aget v21, v3, v19

    add-int/lit8 v21, v21, 0x1

    aput v21, v3, v19

    .line 984
    and-int/lit16 v1, v14, 0x1800

    if-eqz v1, :cond_11

    add-int/lit8 v7, v7, 0x1

    .line 953
    .end local v11    # "oldValue":I
    .end local v12    # "newIndex":I
    .end local v13    # "oldIndex":I
    .end local v14    # "newValue":I
    .end local v15    # "newWord":I
    :cond_11
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move/from16 v14, v18

    const/16 v1, 0x39a

    const/16 v12, 0x352

    goto/16 :goto_2

    .line 986
    .end local v10    # "startWord":I
    :cond_12
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 988
    const/4 v1, -0x1

    .local v1, "best":I
    const/4 v10, 0x0

    .line 989
    .local v10, "bestRefs":I
    const/4 v11, 0x0

    .line 990
    .local v11, "tie":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 993
    .local v13, "candidate":I
    add-int/lit16 v14, v13, -0x2d40

    .line 994
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 993
    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferencesBefore([BII)I

    move-result v14

    .line 995
    .local v14, "count":I
    if-le v14, v10, :cond_13

    move v1, v13

    move v10, v14

    const/4 v11, 0x0

    goto :goto_8

    .line 996
    :cond_13
    if-ne v14, v10, :cond_14

    if-lez v14, :cond_14

    const/4 v11, 0x1

    .line 997
    .end local v13    # "candidate":I
    .end local v14    # "count":I
    :cond_14
    :goto_8
    goto :goto_7

    .line 998
    :cond_15
    if-ltz v1, :cond_17

    if-eqz v10, :cond_17

    .line 999
    if-nez v11, :cond_16

    .line 1000
    return v1

    .line 999
    :cond_16
    new-instance v12, Ljava/io/IOException;

    const-string v13, "metatile table start is ambiguous"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 998
    :cond_17
    new-instance v12, Ljava/io/IOException;

    const-string v13, "metatile window found but exact start is unreferenced"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 986
    .end local v1    # "best":I
    .end local v10    # "bestRefs":I
    .end local v11    # "tie":Z
    :cond_18
    new-instance v1, Ljava/io/IOException;

    const-string v10, "relocated metatile table not found"

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    .end local v9    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string v9, "ROM too small for metatile window"

    invoke-direct {v1, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 933
    .end local v2    # "indexCounts":[I
    .end local v3    # "paletteCounts":[I
    .end local v4    # "invalid":I
    .end local v5    # "distinct":I
    .end local v6    # "high":I
    .end local v7    # "flips":I
    .end local v8    # "words":I
    :cond_1a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ROM too small for metatiles"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findSingleSpanVisualSource([BIIII)I
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .param p2, "firstPattern"    # I
    .param p3, "patternCount"    # I
    .param p4, "nearSource"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, -0x1

    .line 1184
    .local v2, "best":I
    const v3, 0x7fffffff

    .line 1185
    .local v3, "bestDistance":I
    const/4 v4, 0x0

    .local v4, "visualId":I
    :goto_0
    const/16 v5, 0x15e

    if-ge v4, v5, :cond_5

    .line 1186
    mul-int/lit8 v5, v4, 0x8

    add-int v5, p1, v5

    .line 1187
    .local v5, "entry":I
    invoke-static {v0, v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v6

    .line 1188
    .local v6, "sourceWord":J
    const-wide/32 v8, 0xffffff

    and-long v10, v6, v8

    long-to-int v10, v10

    .line 1189
    .local v10, "source":I
    add-int/lit8 v11, v5, 0x4

    invoke-static {v0, v11}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v11

    and-long/2addr v8, v11

    long-to-int v8, v8

    .line 1190
    .local v8, "layout":I
    if-lez v10, :cond_3

    array-length v9, v0

    mul-int/lit8 v11, v1, 0x20

    sub-int/2addr v9, v11

    if-gt v10, v9, :cond_3

    invoke-static {v0, v8}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isValidLayout([BI)Z

    move-result v9

    if-nez v9, :cond_0

    move/from16 v0, p2

    goto :goto_1

    .line 1191
    :cond_0
    invoke-static {v0, v8}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    .line 1192
    .local v9, "pieces":I
    if-eq v9, v11, :cond_1

    move/from16 v0, p2

    goto :goto_1

    .line 1193
    :cond_1
    add-int/lit8 v12, v8, 0x2

    add-int/lit8 v12, v12, 0x6

    invoke-static {v0, v12}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v12

    .line 1194
    .local v12, "size":I
    add-int/lit8 v13, v8, 0x2

    add-int/lit8 v13, v13, 0x8

    invoke-static {v0, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v13

    .line 1195
    .local v13, "attr":I
    ushr-int/lit8 v14, v12, 0xa

    and-int/lit8 v14, v14, 0x3

    add-int/2addr v14, v11

    .line 1196
    .local v14, "wt":I
    ushr-int/lit8 v15, v12, 0x8

    and-int/lit8 v15, v15, 0x3

    add-int/2addr v15, v11

    .line 1197
    .local v15, "ht":I
    and-int/lit16 v11, v13, 0x7ff

    move/from16 v0, p2

    if-ne v11, v0, :cond_4

    mul-int v11, v14, v15

    if-eq v11, v1, :cond_2

    goto :goto_1

    .line 1198
    :cond_2
    sub-int v11, v10, p4

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1199
    .local v11, "distance":I
    if-ge v11, v3, :cond_4

    move v2, v10

    move v3, v11

    goto :goto_1

    .line 1190
    .end local v9    # "pieces":I
    .end local v11    # "distance":I
    .end local v12    # "size":I
    .end local v13    # "attr":I
    .end local v14    # "wt":I
    .end local v15    # "ht":I
    :cond_3
    move/from16 v0, p2

    .line 1185
    .end local v5    # "entry":I
    .end local v6    # "sourceWord":J
    .end local v8    # "layout":I
    .end local v10    # "source":I
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_5
    move/from16 v0, p2

    .line 1201
    .end local v4    # "visualId":I
    return v2
.end method

.method private static findSpriteLoader([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .locals 11
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;>;"
    const/16 v1, 0x7340

    .line 1036
    .local v1, "firstVram":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0xc

    if-gt v2, v3, :cond_3

    .line 1037
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v3

    .line 1038
    .local v3, "d3":J
    const/16 v5, 0x10

    ushr-long v5, v3, v5

    const-wide/32 v7, 0xffff

    and-long/2addr v5, v7

    int-to-long v9, v1

    and-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1039
    :cond_0
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->parseSpriteLoaderCandidate([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;

    move-result-object v5

    .line 1040
    .local v5, "candidate":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_2

    goto :goto_2

    .line 1036
    .end local v3    # "d3":J
    .end local v5    # "candidate":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1043
    .end local v2    # "off":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1044
    const/4 v2, 0x0

    .line 1045
    .local v2, "best":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    const/4 v3, -0x1

    .line 1046
    .local v3, "bestRefs":I
    const/4 v4, 0x0

    .line 1047
    .local v4, "tie":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;

    .line 1048
    .local v6, "c":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    iget v7, v6, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;->offset:I

    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferences([BI)I

    move-result v7

    .line 1049
    .local v7, "refs":I
    if-le v7, v3, :cond_4

    move-object v2, v6

    move v3, v7

    const/4 v4, 0x0

    goto :goto_4

    .line 1050
    :cond_4
    if-ne v7, v3, :cond_5

    const/4 v4, 0x1

    .line 1051
    .end local v6    # "c":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v7    # "refs":I
    :cond_5
    :goto_4
    goto :goto_3

    .line 1052
    :cond_6
    if-eqz v2, :cond_9

    .line 1053
    if-eqz v4, :cond_8

    if-gtz v3, :cond_7

    goto :goto_5

    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v6, "tactical sprite loader is ambiguous"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1054
    :cond_8
    :goto_5
    return-object v2

    .line 1052
    :cond_9
    new-instance v5, Ljava/io/IOException;

    const-string v6, "tactical sprite loader not proven"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1043
    .end local v2    # "best":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .end local v3    # "bestRefs":I
    .end local v4    # "tie":Z
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "relocated tactical sprite loader not found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findTerrainPaletteForTable([BI)I
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "tableOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    const/4 v0, -0x1

    .line 664
    .local v0, "found":I
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x10

    if-gt v1, v2, :cond_6

    .line 665
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    const-wide/32 v4, 0xffffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, p1, :cond_0

    goto :goto_2

    .line 666
    :cond_0
    add-int/lit8 v2, v1, 0x4

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    add-int/lit8 v2, v1, 0xc

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    goto :goto_2

    .line 667
    :cond_1
    add-int/lit8 v2, v1, 0x8

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 668
    .local v2, "palette":I
    if-lez v2, :cond_5

    array-length v3, p0

    add-int/lit8 v3, v3, -0x80

    if-le v2, v3, :cond_2

    goto :goto_2

    .line 669
    :cond_2
    if-ltz v0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "multiple terrain palette entries"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 670
    :cond_4
    :goto_1
    move v0, v2

    .line 664
    .end local v2    # "palette":I
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 672
    .end local v1    # "off":I
    :cond_6
    return v0
.end method

.method private static findTerrainTable([B)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .locals 8
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;>;"
    const/4 v1, 0x0

    .local v1, "off":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x8

    if-gt v1, v2, :cond_4

    .line 603
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v2

    .line 604
    .local v2, "flags":I
    const v3, 0x8000

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 605
    :cond_0
    and-int/lit16 v3, v2, 0x7fff

    .line 606
    .local v3, "firstCount":I
    if-lez v3, :cond_3

    const/16 v4, 0x39a

    if-le v3, v4, :cond_1

    goto :goto_1

    .line 607
    :cond_1
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->parseTerrainTableCandidate([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;

    move-result-object v4

    .line 608
    .local v4, "candidate":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x40

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 602
    .end local v2    # "flags":I
    .end local v3    # "firstCount":I
    .end local v4    # "candidate":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 611
    .end local v1    # "off":I
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 612
    const/4 v1, 0x0

    .line 613
    .local v1, "best":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    const/4 v2, -0x1

    .line 614
    .local v2, "bestRefs":I
    const/4 v3, 0x0

    .line 615
    .local v3, "tie":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;

    .line 616
    .local v5, "c":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    iget v6, v5, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->offset:I

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferences([BI)I

    move-result v6

    .line 618
    .local v6, "refs":I
    iget v7, v5, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->paletteOffset:I

    if-ltz v7, :cond_5

    add-int/lit16 v6, v6, 0x3e8

    .line 619
    :cond_5
    if-le v6, v2, :cond_6

    move-object v1, v5

    move v2, v6

    const/4 v3, 0x0

    goto :goto_4

    .line 620
    :cond_6
    if-ne v6, v2, :cond_7

    const/4 v3, 0x1

    .line 621
    .end local v5    # "c":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v6    # "refs":I
    :cond_7
    :goto_4
    goto :goto_3

    .line 622
    :cond_8
    if-eqz v1, :cond_b

    iget v4, v1, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;->paletteOffset:I

    if-ltz v4, :cond_b

    .line 625
    if-eqz v3, :cond_a

    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "terrain loader is ambiguous"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 626
    :cond_a
    :goto_5
    return-object v1

    .line 623
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "terrain loader found but resource entry/palette is not proven"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 611
    .end local v1    # "best":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .end local v2    # "bestRefs":I
    .end local v3    # "tie":Z
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "relocated terrain loader not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findVisualTable([B)I
    .locals 11
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "phase":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_7

    .line 1278
    const/4 v3, -0x1

    .line 1279
    .local v3, "runStart":I
    const/4 v4, 0x0

    .line 1280
    .local v4, "runLength":I
    move v5, v1

    .local v5, "off":I
    :goto_1
    array-length v6, p0

    sub-int/2addr v6, v2

    if-gt v5, v6, :cond_6

    .line 1281
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    .line 1282
    .local v6, "high":I
    if-eqz v6, :cond_1

    const/16 v7, 0x7f

    if-eq v6, v7, :cond_1

    const/16 v7, 0x80

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 1294
    :cond_0
    const/4 v3, -0x1

    .line 1295
    const/4 v4, 0x0

    goto :goto_4

    .line 1283
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    move v3, v5

    .line 1284
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1285
    const/16 v7, 0x15e

    if-lt v4, v7, :cond_5

    .line 1286
    add-int/lit16 v7, v5, -0xae8

    .line 1287
    .local v7, "candidate":I
    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->visualStats([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;

    move-result-object v8

    .line 1288
    .local v8, "stats":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
    iget v9, v8, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->valid:I

    const/16 v10, 0xb4

    if-lt v9, v10, :cond_4

    iget v9, v8, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->dynamic:I

    if-lt v9, v2, :cond_4

    iget v9, v8, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->dynamic:I

    iget v10, v8, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;->valid:I

    if-gt v9, v10, :cond_4

    .line 1289
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v10, 0x1000

    if-gt v9, v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v9, "too many visual-table candidates"

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1292
    .end local v7    # "candidate":I
    .end local v8    # "stats":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
    :cond_4
    :goto_3
    nop

    .line 1280
    .end local v6    # "high":I
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 1277
    .end local v3    # "runStart":I
    .end local v4    # "runLength":I
    .end local v5    # "off":I
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1299
    .end local v1    # "phase":I
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1300
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1301
    .local v1, "unique":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .local v2, "best":I
    const/4 v3, 0x0

    .line 1302
    .local v3, "bestRefs":I
    const/4 v4, 0x0

    .line 1303
    .local v4, "tie":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1304
    .local v6, "candidate":I
    add-int/lit16 v7, v6, -0xaf0

    .line 1305
    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1304
    invoke-static {p0, v6, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->countAbsoluteReferencesBefore([BII)I

    move-result v7

    .line 1306
    .local v7, "refs":I
    if-le v7, v3, :cond_8

    move v2, v6

    move v3, v7

    const/4 v4, 0x0

    goto :goto_6

    .line 1307
    :cond_8
    if-ne v7, v3, :cond_9

    if-lez v7, :cond_9

    const/4 v4, 0x1

    .line 1308
    .end local v6    # "candidate":I
    .end local v7    # "refs":I
    :cond_9
    :goto_6
    goto :goto_5

    .line 1309
    :cond_a
    if-ltz v2, :cond_c

    if-eqz v3, :cond_c

    .line 1310
    if-nez v4, :cond_b

    .line 1311
    return v2

    .line 1310
    :cond_b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "visual table start is ambiguous"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1309
    :cond_c
    new-instance v5, Ljava/io/IOException;

    const-string v6, "visual-table run found but exact start is unreferenced"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1299
    .end local v1    # "unique":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "best":I
    .end local v3    # "bestRefs":I
    .end local v4    # "tie":Z
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "relocated visual table not found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static hasAdapted(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1029
    .local p0, "status":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;

    .line 1030
    .local v0, "item":Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->adapted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static hasLeaA1Reference([BI)Z
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "target"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    .local v0, "off":I
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x6

    if-gt v0, v1, :cond_1

    .line 538
    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v1

    const/16 v2, 0x43f9

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    .line 539
    invoke-static {p0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v1

    const-wide/32 v3, 0xffffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 537
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 541
    .end local v0    # "off":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static hex(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .line 1535
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%06X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isBlankPattern([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 927
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-ltz p1, :cond_3

    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 928
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 927
    :cond_3
    :goto_1
    return v0
.end method

.method private static isBlankTerrainMetatile([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 1023
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-ltz p1, :cond_3

    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 1024
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1023
    :cond_3
    :goto_1
    return v0
.end method

.method private static isDuneHackCramPalette([BI)Z
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "offset"    # I

    .line 897
    const/4 v0, 0x0

    if-lez p1, :cond_6

    array-length v1, p0

    add-int/lit8 v1, v1, -0x80

    if-le p1, v1, :cond_0

    goto :goto_5

    .line 898
    :cond_0
    const/16 v1, 0x40

    new-array v2, v1, [I

    .line 899
    .local v2, "seen":[I
    const/4 v3, 0x0

    .line 901
    .local v3, "seenCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 902
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, p1

    :try_start_0
    invoke-static {p0, v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v5

    and-int/lit16 v5, v5, 0xeee

    .line 903
    .local v5, "visible":I
    const/4 v6, 0x0

    .line 904
    .local v6, "known":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_2

    .line 905
    aget v8, v2, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v8, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .line 904
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 907
    .end local v7    # "j":I
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "seenCount":I
    .local v7, "seenCount":I
    :try_start_1
    aput v5, v2, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v7

    goto :goto_3

    .line 909
    .end local v4    # "i":I
    .end local v5    # "visible":I
    .end local v6    # "known":Z
    :catch_0
    move-exception v1

    move v3, v7

    goto :goto_4

    .line 901
    .end local v7    # "seenCount":I
    .restart local v3    # "seenCount":I
    .restart local v4    # "i":I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 909
    .end local v4    # "i":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    :goto_4
    return v0

    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    nop

    .line 910
    const/16 v1, 0x8

    if-lt v3, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 897
    .end local v2    # "seen":[I
    .end local v3    # "seenCount":I
    :cond_6
    :goto_5
    return v0
.end method

.method private static isGenesisPalette([BI)Z
    .locals 10
    .param p0, "rom"    # [B
    .param p1, "offset"    # I

    .line 877
    const/4 v0, 0x0

    if-lez p1, :cond_7

    array-length v1, p0

    add-int/lit8 v1, v1, -0x80

    if-le p1, v1, :cond_0

    goto :goto_5

    .line 878
    :cond_0
    const/4 v1, 0x0

    .line 879
    .local v1, "distinct":I
    const/16 v2, 0x40

    new-array v3, v2, [I

    .line 880
    .local v3, "seen":[I
    const/4 v4, 0x0

    .line 882
    .local v4, "seenCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 883
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v6, p1

    :try_start_0
    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v6

    .line 885
    .local v6, "value":I
    const v7, 0xf111

    and-int/2addr v7, v6

    if-eqz v7, :cond_1

    return v0

    .line 886
    :cond_1
    const/4 v7, 0x0

    .line 887
    .local v7, "known":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v4, :cond_3

    aget v9, v3, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v9, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 888
    .end local v8    # "j":I
    :cond_3
    :goto_2
    if-nez v7, :cond_4

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "seenCount":I
    .local v8, "seenCount":I
    :try_start_1
    aput v6, v3, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_3

    .line 890
    .end local v5    # "i":I
    .end local v6    # "value":I
    .end local v7    # "known":Z
    :catch_0
    move-exception v2

    move v4, v8

    goto :goto_4

    .line 882
    .end local v8    # "seenCount":I
    .restart local v4    # "seenCount":I
    .restart local v5    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 890
    .end local v5    # "i":I
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :goto_4
    return v0

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    nop

    .line 891
    const/16 v2, 0x8

    if-lt v1, v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 877
    .end local v1    # "distinct":I
    .end local v3    # "seen":[I
    .end local v4    # "seenCount":I
    :cond_7
    :goto_5
    return v0
.end method

.method private static isTrackedCompositeTable([BI)Z
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "table"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    if-lez p1, :cond_6

    array-length v1, p0

    add-int/lit16 v1, v1, -0x680

    if-le p1, v1, :cond_0

    goto :goto_3

    .line 546
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    .line 547
    mul-int/lit8 v2, v1, 0x1a

    add-int/2addr v2, p1

    .line 548
    .local v2, "layout":I
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v4

    if-eq v4, v3, :cond_1

    return v0

    .line 549
    :cond_1
    const/4 v4, 0x0

    .local v4, "piece":I
    :goto_1
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 550
    add-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v4, 0xc

    add-int/2addr v5, v6

    .line 551
    .local v5, "p":I
    add-int/lit8 v6, v5, 0x6

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v6

    .line 552
    .local v6, "size":I
    add-int/lit8 v7, v5, 0x8

    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v7

    and-int/lit16 v7, v7, 0x7ff

    .line 553
    .local v7, "pattern":I
    ushr-int/lit8 v8, v6, 0xa

    and-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v3

    .line 554
    .local v8, "wt":I
    ushr-int/lit8 v9, v6, 0x8

    and-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v3

    .line 555
    .local v9, "ht":I
    const/16 v10, 0x39a

    if-lt v7, v10, :cond_3

    mul-int v10, v8, v9

    add-int/2addr v10, v7

    const/16 v11, 0x800

    if-le v10, v11, :cond_2

    goto :goto_2

    .line 549
    .end local v5    # "p":I
    .end local v6    # "size":I
    .end local v7    # "pattern":I
    .end local v8    # "wt":I
    .end local v9    # "ht":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 555
    .restart local v5    # "p":I
    .restart local v6    # "size":I
    .restart local v7    # "pattern":I
    .restart local v8    # "wt":I
    .restart local v9    # "ht":I
    :cond_3
    :goto_2
    return v0

    .line 546
    .end local v2    # "layout":I
    .end local v4    # "piece":I
    .end local v5    # "p":I
    .end local v6    # "size":I
    .end local v7    # "pattern":I
    .end local v8    # "wt":I
    .end local v9    # "ht":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v1    # "i":I
    :cond_5
    return v3

    .line 545
    :cond_6
    :goto_3
    return v0
.end method

.method private static isValidLayout([BI)Z
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "layout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1404
    const/4 v0, 0x0

    if-lez p1, :cond_5

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 1405
    :cond_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1406
    .local v1, "pieces":I
    if-lt v1, v2, :cond_4

    const/16 v3, 0x20

    if-gt v1, v3, :cond_4

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v4, v1, 0xc

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_1

    goto :goto_1

    .line 1407
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1408
    add-int/lit8 v4, p1, 0x2

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    .line 1409
    .local v4, "p":I
    add-int/lit8 v5, v4, 0x6

    invoke-static {p0, v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v5

    .line 1410
    .local v5, "size":I
    add-int/lit8 v6, v4, 0x8

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v6

    .line 1411
    .local v6, "attr":I
    ushr-int/lit8 v7, v5, 0xa

    and-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v2

    .line 1412
    .local v7, "wt":I
    ushr-int/lit8 v8, v5, 0x8

    and-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v2

    .line 1413
    .local v8, "ht":I
    and-int/lit16 v9, v6, 0x7ff

    .line 1414
    .local v9, "first":I
    mul-int v10, v7, v8

    add-int/2addr v10, v9

    const/16 v11, 0x800

    if-le v10, v11, :cond_2

    return v0

    .line 1407
    .end local v4    # "p":I
    .end local v5    # "size":I
    .end local v6    # "attr":I
    .end local v7    # "wt":I
    .end local v8    # "ht":I
    .end local v9    # "first":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1416
    .end local v3    # "i":I
    :cond_3
    return v2

    .line 1406
    :cond_4
    :goto_1
    return v0

    .line 1404
    .end local v1    # "pieces":I
    :cond_5
    :goto_2
    return v0
.end method

.method private static maxMetatilePatternIndex([BII)I
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "metatileCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    mul-int/lit8 v0, p2, 0x20

    .line 840
    .local v0, "bytes":I
    if-ltz p1, :cond_1

    array-length v1, p0

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    .line 843
    const/4 v1, -0x1

    .line 844
    .local v1, "max":I
    move v2, p1

    .local v2, "p":I
    :goto_0
    add-int v3, p1, v0

    if-ge v2, v3, :cond_0

    .line 845
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0x7ff

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 844
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 847
    .end local v2    # "p":I
    :cond_0
    return v1

    .line 841
    .end local v1    # "max":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "metatile window outside ROM"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseSpriteLoaderCandidate([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    .locals 24
    .param p0, "rom"    # [B
    .param p1, "off"    # I

    .line 1059
    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1060
    .local v0, "table":I
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v3, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    const v4, 0x7fffffff

    .line 1062
    .local v4, "minPattern":I
    const/4 v5, -0x1

    .line 1063
    .local v5, "maxPattern":I
    const/4 v6, 0x0

    .line 1064
    .local v6, "loaded":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 1065
    invoke-static {v1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v8

    .line 1066
    .local v8, "d3":J
    add-int/lit8 v0, v0, 0x4

    .line 1067
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    const/16 v13, 0x39a

    if-nez v12, :cond_2

    .line 1068
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_1

    const/16 v10, 0x1f4

    if-lt v6, v10, :cond_1

    if-ne v4, v13, :cond_1

    const/16 v10, 0x7ff

    if-eq v5, v10, :cond_0

    move/from16 v12, p1

    goto :goto_1

    .line 1070
    :cond_0
    new-instance v10, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move/from16 v12, p1

    :try_start_1
    invoke-direct {v10, v12, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$SpriteLoader;-><init>(ILjava/util/List;)V

    return-object v10

    .line 1068
    :cond_1
    move/from16 v12, p1

    .line 1069
    :goto_1
    return-object v2

    .line 1072
    :cond_2
    move/from16 v12, p1

    invoke-static {v1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1073
    .local v14, "sourceWord":J
    add-int/lit8 v0, v0, 0x4

    .line 1074
    const/16 v16, 0x10

    ushr-long v16, v8, v16

    const-wide/32 v18, 0xffff

    move-wide/from16 v20, v10

    and-long v10, v16, v18

    long-to-int v10, v10

    .line 1075
    .local v10, "vramBytes":I
    move-object v11, v2

    move-object/from16 v16, v3

    .end local v3    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .local v16, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    and-long v2, v8, v18

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 1076
    .local v2, "bytes":I
    and-int/lit8 v3, v10, 0x1f

    if-nez v3, :cond_b

    and-int/lit8 v3, v2, 0x1f

    if-nez v3, :cond_b

    if-gtz v2, :cond_3

    move/from16 v20, v2

    move v13, v7

    move-wide/from16 v21, v8

    move-object/from16 v17, v11

    move-object/from16 v9, v16

    move v11, v6

    goto/16 :goto_7

    .line 1077
    :cond_3
    :try_start_2
    div-int/lit8 v3, v10, 0x20

    .line 1078
    .local v3, "first":I
    div-int/lit8 v17, v2, 0x20
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v18, v17

    .line 1079
    .local v18, "count":I
    if-lt v3, v13, :cond_a

    add-int v13, v3, v18

    move-object/from16 v17, v11

    const/16 v11, 0x800

    if-le v13, v11, :cond_4

    move/from16 v20, v2

    move v11, v6

    move v13, v7

    move-wide/from16 v21, v8

    move-object/from16 v9, v16

    move/from16 v8, v18

    goto/16 :goto_5

    .line 1080
    :cond_4
    const-wide/32 v22, 0xffffff

    move v11, v6

    move v13, v7

    .end local v6    # "loaded":I
    .end local v7    # "i":I
    .local v11, "loaded":I
    .local v13, "i":I
    and-long v6, v14, v22

    long-to-int v6, v6

    .line 1081
    .local v6, "source":I
    if-lez v6, :cond_9

    :try_start_3
    array-length v7, v1

    if-lt v6, v7, :cond_5

    move/from16 v20, v2

    move-wide/from16 v21, v8

    move-object/from16 v9, v16

    move/from16 v8, v18

    goto :goto_4

    .line 1082
    :cond_5
    const-wide v22, 0x80000000L

    and-long v22, v14, v22

    cmp-long v7, v22, v20

    const/16 v19, 0x1

    if-eqz v7, :cond_6

    move/from16 v7, v19

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 1083
    .local v7, "raw":Z
    :goto_2
    if-eqz v7, :cond_7

    invoke-static {v1, v6, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    goto :goto_3

    :cond_7
    invoke-static {v1, v6, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->decompress([BII)[B

    .line 1084
    :goto_3
    move/from16 v20, v2

    .end local v2    # "bytes":I
    .local v20, "bytes":I
    new-instance v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;

    move-wide/from16 v21, v8

    move/from16 v8, v18

    .end local v18    # "count":I
    .local v8, "count":I
    .local v21, "d3":J
    invoke-direct {v2, v3, v8, v6, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;-><init>(IIIZ)V

    move-object/from16 v9, v16

    .end local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .local v9, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    add-int v2, v11, v8

    .line 1086
    .end local v11    # "loaded":I
    .local v2, "loaded":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v4, v11

    .line 1087
    add-int v18, v3, v8

    add-int/lit8 v11, v18, -0x1

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v5, v11

    .line 1088
    array-length v11, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v11, v11, -0x4

    if-le v0, v11, :cond_8

    return-object v17

    .line 1064
    .end local v3    # "first":I
    .end local v6    # "source":I
    .end local v7    # "raw":Z
    .end local v8    # "count":I
    .end local v10    # "vramBytes":I
    .end local v14    # "sourceWord":J
    .end local v20    # "bytes":I
    .end local v21    # "d3":J
    :cond_8
    add-int/lit8 v7, v13, 0x1

    move v6, v2

    move-object v3, v9

    move-object/from16 v2, v17

    .end local v13    # "i":I
    .local v7, "i":I
    goto/16 :goto_0

    .line 1090
    .end local v0    # "table":I
    .end local v2    # "loaded":I
    .end local v4    # "minPattern":I
    .end local v5    # "maxPattern":I
    .end local v7    # "i":I
    .end local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_a

    .line 1081
    .restart local v0    # "table":I
    .local v2, "bytes":I
    .restart local v3    # "first":I
    .restart local v4    # "minPattern":I
    .restart local v5    # "maxPattern":I
    .restart local v6    # "source":I
    .local v8, "d3":J
    .restart local v10    # "vramBytes":I
    .restart local v11    # "loaded":I
    .restart local v13    # "i":I
    .restart local v14    # "sourceWord":J
    .restart local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v18    # "count":I
    :cond_9
    move/from16 v20, v2

    move-wide/from16 v21, v8

    move-object/from16 v9, v16

    move/from16 v8, v18

    .end local v2    # "bytes":I
    .end local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v18    # "count":I
    .local v8, "count":I
    .restart local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v20    # "bytes":I
    .restart local v21    # "d3":J
    :goto_4
    return-object v17

    .line 1079
    .end local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v11    # "loaded":I
    .end local v13    # "i":I
    .end local v20    # "bytes":I
    .end local v21    # "d3":J
    .restart local v2    # "bytes":I
    .local v6, "loaded":I
    .restart local v7    # "i":I
    .local v8, "d3":J
    .restart local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v18    # "count":I
    :cond_a
    move/from16 v20, v2

    move v13, v7

    move-wide/from16 v21, v8

    move-object/from16 v17, v11

    move-object/from16 v9, v16

    move/from16 v8, v18

    move v11, v6

    .end local v2    # "bytes":I
    .end local v6    # "loaded":I
    .end local v7    # "i":I
    .end local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v18    # "count":I
    .local v8, "count":I
    .restart local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v11    # "loaded":I
    .restart local v13    # "i":I
    .restart local v20    # "bytes":I
    .restart local v21    # "d3":J
    :goto_5
    return-object v17

    .line 1090
    .end local v0    # "table":I
    .end local v3    # "first":I
    .end local v4    # "minPattern":I
    .end local v5    # "maxPattern":I
    .end local v8    # "count":I
    .end local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v10    # "vramBytes":I
    .end local v11    # "loaded":I
    .end local v13    # "i":I
    .end local v14    # "sourceWord":J
    .end local v20    # "bytes":I
    .end local v21    # "d3":J
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    move-object/from16 v17, v11

    goto :goto_a

    .line 1076
    .restart local v0    # "table":I
    .restart local v2    # "bytes":I
    .restart local v4    # "minPattern":I
    .restart local v5    # "maxPattern":I
    .restart local v6    # "loaded":I
    .restart local v7    # "i":I
    .local v8, "d3":J
    .restart local v10    # "vramBytes":I
    .restart local v14    # "sourceWord":J
    .restart local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    :cond_b
    move/from16 v20, v2

    move v13, v7

    move-wide/from16 v21, v8

    move-object/from16 v17, v11

    move-object/from16 v9, v16

    move v11, v6

    .end local v2    # "bytes":I
    .end local v6    # "loaded":I
    .end local v7    # "i":I
    .end local v8    # "d3":J
    .end local v16    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v11    # "loaded":I
    .restart local v13    # "i":I
    .restart local v20    # "bytes":I
    .restart local v21    # "d3":J
    :goto_7
    return-object v17

    .line 1090
    .end local v0    # "table":I
    .end local v4    # "minPattern":I
    .end local v5    # "maxPattern":I
    .end local v9    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v10    # "vramBytes":I
    .end local v11    # "loaded":I
    .end local v13    # "i":I
    .end local v14    # "sourceWord":J
    .end local v20    # "bytes":I
    .end local v21    # "d3":J
    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_9

    .line 1064
    .restart local v0    # "table":I
    .local v3, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v4    # "minPattern":I
    .restart local v5    # "maxPattern":I
    .restart local v6    # "loaded":I
    .restart local v7    # "i":I
    :cond_c
    move/from16 v12, p1

    move-object/from16 v17, v2

    move-object v9, v3

    move v11, v6

    move v13, v7

    .end local v0    # "table":I
    .end local v3    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v4    # "minPattern":I
    .end local v5    # "maxPattern":I
    .end local v6    # "loaded":I
    .end local v7    # "i":I
    goto :goto_a

    .line 1090
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    move/from16 v12, p1

    :goto_9
    move-object/from16 v17, v2

    :goto_a
    nop

    .line 1091
    return-object v17
.end method

.method private static parseTerrainTableCandidate([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    .locals 18
    .param p0, "rom"    # [B
    .param p1, "off"    # I

    .line 631
    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 632
    .local v0, "table":I
    const/4 v2, 0x0

    .line 633
    .local v2, "total":I
    const/4 v3, 0x0

    .line 634
    .local v3, "firstPattern":I
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v5, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x20

    if-ge v6, v7, :cond_b

    .line 636
    invoke-static {v1, v0}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v7

    .line 637
    .local v7, "flags":I
    if-nez v7, :cond_2

    .line 638
    const/16 v8, 0x39a

    if-ne v2, v8, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    move/from16 v10, p1

    goto :goto_1

    .line 639
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->findTerrainPaletteForTable([BI)I

    move-result v8

    .line 640
    .local v8, "palette":I
    new-instance v9, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v10, p1

    :try_start_1
    invoke-direct {v9, v10, v8, v5}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$TerrainTable;-><init>(IILjava/util/List;)V

    return-object v9

    .line 638
    .end local v8    # "palette":I
    :cond_1
    move/from16 v10, p1

    :goto_1
    return-object v4

    .line 642
    :cond_2
    move/from16 v10, p1

    const v8, 0x8000

    and-int/2addr v8, v7

    if-nez v8, :cond_3

    return-object v4

    .line 643
    :cond_3
    and-int/lit16 v8, v7, 0x7fff

    .line 644
    .local v8, "count":I
    if-lez v8, :cond_a

    rsub-int v9, v8, 0x39a

    if-le v2, v9, :cond_4

    goto :goto_5

    .line 645
    :cond_4
    add-int/lit8 v9, v0, 0x2

    invoke-static {v1, v9}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v11

    .line 646
    .local v11, "sourceWord":J
    const-wide/32 v13, 0xffffff

    and-long/2addr v13, v11

    long-to-int v9, v13

    .line 647
    .local v9, "source":I
    if-lez v9, :cond_9

    array-length v13, v1

    if-lt v9, v13, :cond_5

    goto :goto_4

    .line 648
    :cond_5
    mul-int/lit8 v13, v8, 0x20

    .line 649
    .local v13, "bytes":I
    const-wide v14, 0x80000000L

    and-long/2addr v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 650
    .local v14, "raw":Z
    :goto_2
    if-eqz v14, :cond_7

    invoke-static {v1, v9, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->copy([BII)[B

    goto :goto_3

    .line 651
    :cond_7
    invoke-static {v1, v9, v13}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->decompress([BII)[B

    .line 652
    :goto_3
    new-instance v15, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;

    invoke-direct {v15, v3, v8, v9, v14}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;-><init>(IIIZ)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/2addr v3, v8

    .line 654
    add-int/2addr v2, v8

    .line 655
    add-int/lit8 v0, v0, 0x6

    .line 656
    array-length v15, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v15, v15, -0x2

    if-le v0, v15, :cond_8

    return-object v4

    .line 635
    .end local v7    # "flags":I
    .end local v8    # "count":I
    .end local v9    # "source":I
    .end local v11    # "sourceWord":J
    .end local v13    # "bytes":I
    .end local v14    # "raw":Z
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 647
    .restart local v7    # "flags":I
    .restart local v8    # "count":I
    .restart local v9    # "source":I
    .restart local v11    # "sourceWord":J
    :cond_9
    :goto_4
    return-object v4

    .line 658
    .end local v0    # "table":I
    .end local v2    # "total":I
    .end local v3    # "firstPattern":I
    .end local v5    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v6    # "i":I
    .end local v7    # "flags":I
    .end local v8    # "count":I
    .end local v9    # "source":I
    .end local v11    # "sourceWord":J
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    .line 644
    .restart local v0    # "table":I
    .restart local v2    # "total":I
    .restart local v3    # "firstPattern":I
    .restart local v5    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .restart local v6    # "i":I
    .restart local v7    # "flags":I
    .restart local v8    # "count":I
    :cond_a
    :goto_5
    return-object v4

    .line 635
    .end local v7    # "flags":I
    .end local v8    # "count":I
    :cond_b
    move/from16 v10, p1

    .end local v0    # "table":I
    .end local v2    # "total":I
    .end local v3    # "firstPattern":I
    .end local v5    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$PatternChunk;>;"
    .end local v6    # "i":I
    goto :goto_7

    .line 658
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    move/from16 v10, p1

    :goto_7
    nop

    .line 659
    return-object v4
.end method

.method private static safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1500
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 1501
    .local v0, "cr":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 1502
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "rp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "cp":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Adapter path escaped staging root"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1504
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static shortMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 1537
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "message":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "structural mismatch"

    :goto_2
    return-object v1
.end method

.method private static validateDuneHackMetatileData([BZ)I
    .locals 13
    .param p0, "data"    # [B
    .param p1, "allowSparseR79Terrain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    if-eqz p0, :cond_7

    array-length v0, p0

    const/16 v1, 0x2d00

    if-ne v0, v1, :cond_7

    .line 807
    const/16 v0, 0x39a

    new-array v1, v0, [Z

    .line 808
    .local v1, "lowUsed":[Z
    const/4 v2, 0x4

    new-array v2, v2, [Z

    .line 809
    .local v2, "palettes":[Z
    const/4 v3, 0x0

    .line 810
    .local v3, "distinctLow":I
    const/4 v4, 0x0

    .line 811
    .local v4, "externalWords":I
    const/4 v5, -0x1

    .line 812
    .local v5, "maxIndex":I
    const/4 v6, 0x0

    .line 813
    .local v6, "flips":I
    const/4 v7, 0x0

    .local v7, "off":I
    :goto_0
    array-length v8, p0

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    .line 814
    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v8

    .line 815
    .local v8, "value":I
    and-int/lit16 v11, v8, 0x7ff

    .line 816
    .local v11, "index":I
    if-ge v11, v0, :cond_0

    .line 817
    aget-boolean v12, v1, v11

    if-nez v12, :cond_1

    aput-boolean v10, v1, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 819
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 820
    const/16 v12, 0x56c

    if-gt v11, v12, :cond_3

    .line 824
    :cond_1
    :goto_1
    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 825
    ushr-int/lit8 v12, v8, 0xd

    and-int/2addr v9, v12

    aput-boolean v10, v2, v9

    .line 826
    and-int/lit16 v9, v8, 0x1800

    if-eqz v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 813
    .end local v8    # "value":I
    .end local v11    # "index":I
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 821
    .restart local v8    # "value":I
    .restart local v11    # "index":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DuneHack metatile index outside proven shared VRAM: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    .end local v7    # "off":I
    .end local v8    # "value":I
    .end local v11    # "index":I
    :cond_4
    if-eqz p1, :cond_5

    const/16 v0, 0x352

    .line 829
    .local v0, "requiredDistinct":I
    :cond_5
    if-lt v3, v0, :cond_6

    if-lez v4, :cond_6

    const/16 v7, 0x20

    if-gt v4, v7, :cond_6

    const/16 v8, 0x10

    if-lt v6, v8, :cond_6

    const/4 v8, 0x0

    aget-boolean v11, v2, v8

    if-eqz v11, :cond_6

    aget-boolean v10, v2, v10

    if-eqz v10, :cond_6

    const/4 v10, 0x2

    aget-boolean v10, v2, v10

    if-eqz v10, :cond_6

    aget-boolean v9, v2, v9

    if-eqz v9, :cond_6

    .line 831
    invoke-static {p0, v8}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p0, v7}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v7

    if-nez v7, :cond_6

    .line 834
    return v5

    .line 832
    :cond_6
    new-instance v7, Ljava/io/IOException;

    const-string v8, "DuneHack metatile structural coverage is too weak"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 805
    .end local v0    # "requiredDistinct":I
    .end local v1    # "lowUsed":[Z
    .end local v2    # "palettes":[Z
    .end local v3    # "distinctLow":I
    .end local v4    # "externalWords":I
    .end local v5    # "maxIndex":I
    .end local v6    # "flips":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DuneHack metatile size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMetatileData([B)V
    .locals 10
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    if-eqz p0, :cond_4

    array-length v0, p0

    const/16 v1, 0x2d40

    if-ne v0, v1, :cond_4

    .line 1005
    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 1006
    .local v0, "palettes":[Z
    const/4 v1, 0x0

    .line 1007
    .local v1, "distinct":I
    const/16 v2, 0x39a

    new-array v3, v2, [Z

    .line 1008
    .local v3, "used":[Z
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    array-length v5, p0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    .line 1009
    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be16([BI)I

    move-result v5

    .line 1010
    .local v5, "value":I
    and-int/lit16 v8, v5, 0x7ff

    .line 1011
    .local v8, "index":I
    if-ge v8, v2, :cond_1

    .line 1012
    aget-boolean v9, v3, v8

    if-nez v9, :cond_0

    aput-boolean v7, v3, v8

    add-int/lit8 v1, v1, 0x1

    .line 1013
    :cond_0
    ushr-int/lit8 v9, v5, 0xd

    and-int/2addr v6, v9

    aput-boolean v7, v0, v6

    .line 1008
    .end local v5    # "value":I
    .end local v8    # "index":I
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1011
    .restart local v5    # "value":I
    .restart local v8    # "index":I
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v6, "metatile index outside terrain patterns"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1015
    .end local v4    # "off":I
    .end local v5    # "value":I
    .end local v8    # "index":I
    :cond_2
    if-ne v1, v2, :cond_3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1016
    const/16 v4, 0x20

    invoke-static {p0, v4}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isBlankTerrainMetatile([BI)Z

    move-result v4

    if-nez v4, :cond_3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_3

    aget-boolean v2, v0, v7

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_3

    aget-boolean v2, v0, v6

    if-eqz v2, :cond_3

    .line 1020
    return-void

    .line 1018
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "metatile structural coverage is too weak"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    .end local v0    # "palettes":[Z
    .end local v1    # "distinct":I
    .end local v3    # "used":[Z
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "metatile size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static visualStats([BI)Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "table"    # I

    .line 1315
    const/4 v0, 0x0

    .local v0, "valid":I
    const/4 v1, 0x0

    .line 1317
    .local v1, "dynamic":I
    const/4 v2, 0x0

    .local v2, "visualId":I
    :goto_0
    const/16 v3, 0x15e

    if-ge v2, v3, :cond_3

    .line 1318
    mul-int/lit8 v3, v2, 0x8

    add-int/2addr v3, p1

    .line 1319
    .local v3, "entry":I
    :try_start_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-le v3, v4, :cond_0

    goto :goto_2

    .line 1320
    :cond_0
    invoke-static {p0, v3}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v4

    .line 1321
    .local v4, "sourceWord":J
    add-int/lit8 v6, v3, 0x4

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->be32u([BI)J

    move-result-wide v6

    const-wide/32 v8, 0xffffff

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 1322
    .local v6, "layout":I
    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->isValidLayout([BI)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    goto :goto_1

    .line 1323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1324
    const/16 v7, 0x18

    ushr-long v7, v4, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    const-wide/16 v9, 0x80

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1317
    .end local v3    # "entry":I
    .end local v4    # "sourceWord":J
    .end local v6    # "layout":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1326
    .end local v2    # "visualId":I
    :catch_0
    move-exception v2

    :cond_3
    :goto_2
    nop

    .line 1327
    new-instance v2, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;

    invoke-direct {v2, v0, v1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$VisualStats;-><init>(II)V

    return-object v2
.end method

.method private static writeAsset(Ljava/io/File;Ljava/lang/String;[B)V
    .locals 5
    .param p0, "root"    # Ljava/io/File;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1484
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1485
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not create adapter directory"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1486
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1487
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1489
    .end local v2    # "out":Ljava/io/FileOutputStream;
    return-void

    .line 1486
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
.end method
