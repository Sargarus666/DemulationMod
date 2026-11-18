.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioRecordDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;,
        Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;,
        Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;,
        Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
    }
.end annotation


# static fields
.field public static final HOUSE_COUNT:I = 0x5

.field public static final MAX_RECORDS:I = 0x1000

.field public static final MAX_SCENARIO_BYTES:I = 0x10000

.field public static final MISSIONS:I = 0x9


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .locals 28
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    if-eqz v0, :cond_20

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_20

    array-length v1, v0

    const/high16 v3, 0x10000

    if-gt v1, v3, :cond_20

    array-length v1, v0

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-nez v1, :cond_20

    .line 146
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;

    invoke-direct {v1, v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;-><init>([B)V

    .line 147
    .local v1, "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    .line 148
    .local v8, "records":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    const/16 v4, 0xc

    new-array v7, v4, [I

    .line 149
    .local v7, "sectionCounts":[I
    const/4 v4, 0x0

    .line 150
    .local v4, "terminated":Z
    const/4 v5, -0x1

    move v9, v5

    .line 151
    .local v9, "seed":I
    :goto_0
    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    array-length v6, v0

    const/4 v11, 0x0

    if-ge v5, v6, :cond_1d

    .line 152
    iget v13, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    .line 153
    .local v13, "start":I
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v5

    .line 154
    .local v5, "header":I
    const v6, 0xffff

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    move/from16 v18, v11

    goto/16 :goto_7

    .line 155
    :cond_0
    ushr-int/lit8 v15, v5, 0x8

    .local v15, "section":I
    and-int/lit16 v6, v5, 0xff

    .line 156
    .local v6, "index":I
    const/16 v12, 0xb

    if-gt v15, v12, :cond_1c

    .line 157
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/16 v10, 0x1000

    if-ge v14, v10, :cond_1b

    .line 160
    const-string v10, ""

    .line 161
    .local v10, "label":Ljava/lang/String;
    const/4 v14, 0x2

    const/16 v2, 0x8

    if-nez v15, :cond_3

    .line 162
    const-string v11, "general"

    .line 163
    .local v11, "kind":Ljava/lang/String;
    if-gt v6, v14, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v2

    .line 165
    .local v2, "n":I
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->text(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    filled-new-array {v2}, [I

    move-result-object v12

    .line 167
    .end local v2    # "n":I
    .local v12, "values":[I
    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    goto/16 :goto_6

    .line 168
    .end local v12    # "values":[I
    :cond_1
    if-gt v6, v2, :cond_2

    .line 169
    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    .restart local v12    # "values":[I
    goto/16 :goto_6

    .line 168
    .end local v12    # "values":[I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported general field at "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v11    # "kind":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x42

    if-ne v15, v3, :cond_8

    .line 172
    const-string v12, "map"

    .line 173
    .local v12, "kind":Ljava/lang/String;
    const/16 v14, 0x53

    if-ne v6, v14, :cond_4

    .line 174
    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v2

    .line 175
    .local v2, "values":[I
    aget v9, v2, v11

    move-object/from16 v19, v2

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v18, v10

    move-object/from16 v17, v12

    const/4 v2, 0x4

    goto/16 :goto_6

    .line 176
    .end local v2    # "values":[I
    :cond_4
    if-eq v6, v2, :cond_6

    const/16 v2, 0x46

    if-ne v6, v2, :cond_5

    goto :goto_1

    .line 183
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown R82C map marker at "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v2

    .line 178
    .local v2, "count":I
    const/16 v14, 0x800

    if-gt v2, v14, :cond_7

    .line 179
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v14

    .line 180
    .local v14, "coordinates":[I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 181
    .local v3, "values":[I
    aput v2, v3, v11

    .line 182
    move/from16 v22, v4

    const/4 v4, 0x1

    .end local v4    # "terminated":Z
    .local v22, "terminated":Z
    invoke-static {v14, v11, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    .end local v2    # "count":I
    .end local v14    # "coordinates":[I
    move-object/from16 v19, v3

    move/from16 v23, v5

    move-object/from16 v18, v10

    move-object/from16 v17, v12

    const/4 v2, 0x4

    goto/16 :goto_6

    .line 178
    .end local v3    # "values":[I
    .end local v22    # "terminated":Z
    .restart local v2    # "count":I
    .restart local v4    # "terminated":Z
    :cond_7
    move/from16 v22, v4

    .end local v4    # "terminated":Z
    .restart local v22    # "terminated":Z
    new-instance v3, Ljava/io/IOException;

    const-string v4, "R82C terrain marker count too high"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    .end local v2    # "count":I
    .end local v12    # "kind":Ljava/lang/String;
    .end local v22    # "terminated":Z
    .restart local v4    # "terminated":Z
    :cond_8
    move/from16 v22, v4

    .end local v4    # "terminated":Z
    .restart local v22    # "terminated":Z
    const/4 v4, 0x5

    if-lt v15, v14, :cond_9

    if-le v15, v4, :cond_a

    :cond_9
    if-ne v15, v12, :cond_14

    .line 187
    :cond_a
    const-string v4, "house"

    .line 188
    .local v4, "kind":Ljava/lang/String;
    move/from16 v18, v11

    const/4 v12, 0x4

    new-array v11, v12, [I

    .line 189
    .local v11, "values":[I
    move/from16 v16, v6

    .line 190
    .local v16, "tag":I
    const/16 v19, 0x0

    .line 191
    .local v19, "seen":I
    const/16 v20, 0x0

    move/from16 v14, v16

    move/from16 v3, v19

    move/from16 v2, v20

    .end local v16    # "tag":I
    .end local v19    # "seen":I
    .local v2, "i":I
    .local v3, "seen":I
    .local v14, "tag":I
    :goto_2
    if-ge v2, v12, :cond_12

    .line 192
    const/16 v12, 0x51

    if-ne v14, v12, :cond_b

    const/4 v12, 0x1

    goto :goto_3

    :cond_b
    const/16 v12, 0x43

    if-ne v14, v12, :cond_c

    const/4 v12, 0x2

    goto :goto_3

    :cond_c
    const/16 v12, 0x42

    if-ne v14, v12, :cond_d

    const/4 v12, 0x4

    goto :goto_3

    :cond_d
    const/16 v12, 0x4d

    if-ne v14, v12, :cond_e

    const/16 v12, 0x8

    goto :goto_3

    :cond_e
    move/from16 v12, v18

    .line 193
    .local v12, "tagBit":I
    :goto_3
    if-eqz v12, :cond_11

    and-int v16, v3, v12

    if-nez v16, :cond_11

    .line 195
    or-int/2addr v3, v12

    .line 196
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v16

    .line 198
    .local v16, "val":I
    invoke-static {v12}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v24

    aput v16, v11, v24

    .line 199
    move-object/from16 v24, v4

    const/4 v4, 0x3

    .end local v4    # "kind":Ljava/lang/String;
    .local v24, "kind":Ljava/lang/String;
    if-ge v2, v4, :cond_10

    .line 200
    invoke-virtual {v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v4

    .line 201
    .local v4, "next":I
    move/from16 v25, v2

    .end local v2    # "i":I
    .local v25, "i":I
    ushr-int/lit8 v2, v4, 0x8

    if-ne v2, v15, :cond_f

    .line 202
    and-int/lit16 v2, v4, 0xff

    move v14, v2

    move/from16 v26, v3

    .end local v14    # "tag":I
    .local v2, "tag":I
    goto :goto_4

    .line 201
    .end local v2    # "tag":I
    .restart local v14    # "tag":I
    :cond_f
    new-instance v2, Ljava/io/IOException;

    move/from16 v26, v3

    .end local v3    # "seen":I
    .local v26, "seen":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v4

    .end local v4    # "next":I
    .local v27, "next":I
    const-string v4, "R82C house field chain corrupt at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v25    # "i":I
    .end local v26    # "seen":I
    .end local v27    # "next":I
    .local v2, "i":I
    .restart local v3    # "seen":I
    :cond_10
    move/from16 v25, v2

    move/from16 v26, v3

    .line 191
    .end local v2    # "i":I
    .end local v3    # "seen":I
    .end local v12    # "tagBit":I
    .end local v16    # "val":I
    .restart local v25    # "i":I
    .restart local v26    # "seen":I
    :goto_4
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v4, v24

    move/from16 v3, v26

    const/4 v12, 0x4

    .end local v25    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 193
    .end local v24    # "kind":Ljava/lang/String;
    .end local v26    # "seen":I
    .restart local v3    # "seen":I
    .local v4, "kind":Ljava/lang/String;
    .restart local v12    # "tagBit":I
    :cond_11
    move/from16 v25, v2

    move-object/from16 v24, v4

    .line 194
    .end local v2    # "i":I
    .end local v4    # "kind":Ljava/lang/String;
    .restart local v24    # "kind":Ljava/lang/String;
    .restart local v25    # "i":I
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v5

    .end local v5    # "header":I
    .local v23, "header":I
    const-string v5, "Invalid R82C house field at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    .end local v12    # "tagBit":I
    .end local v23    # "header":I
    .end local v24    # "kind":Ljava/lang/String;
    .end local v25    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "kind":Ljava/lang/String;
    .restart local v5    # "header":I
    :cond_12
    move/from16 v25, v2

    move-object/from16 v24, v4

    move/from16 v23, v5

    .line 205
    .end local v2    # "i":I
    .end local v4    # "kind":Ljava/lang/String;
    .end local v5    # "header":I
    .restart local v23    # "header":I
    .restart local v24    # "kind":Ljava/lang/String;
    const/16 v2, 0xf

    if-ne v3, v2, :cond_13

    .line 206
    .end local v3    # "seen":I
    .end local v14    # "tag":I
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v17, v24

    const/4 v2, 0x4

    goto/16 :goto_6

    .line 205
    .restart local v3    # "seen":I
    .restart local v14    # "tag":I
    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Incomplete R82C house record"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    .end local v3    # "seen":I
    .end local v11    # "values":[I
    .end local v14    # "tag":I
    .end local v23    # "header":I
    .end local v24    # "kind":Ljava/lang/String;
    .restart local v5    # "header":I
    :cond_14
    move v2, v4

    move/from16 v23, v5

    .end local v5    # "header":I
    .restart local v23    # "header":I
    const/4 v3, 0x6

    if-ne v15, v3, :cond_15

    .line 207
    const-string v11, "market"

    .line 208
    .local v11, "kind":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    .local v12, "values":[I
    goto :goto_6

    .line 209
    .end local v11    # "kind":Ljava/lang/String;
    .end local v12    # "values":[I
    :cond_15
    const/4 v4, 0x7

    if-ne v15, v4, :cond_16

    .line 210
    const-string v11, "team"

    .line 211
    .restart local v11    # "kind":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    .restart local v12    # "values":[I
    goto :goto_6

    .line 212
    .end local v11    # "kind":Ljava/lang/String;
    .end local v12    # "values":[I
    :cond_16
    const/16 v4, 0x8

    if-ne v15, v4, :cond_17

    .line 213
    const-string v11, "unit"

    .line 214
    .restart local v11    # "kind":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    .restart local v12    # "values":[I
    goto :goto_6

    .line 215
    .end local v11    # "kind":Ljava/lang/String;
    .end local v12    # "values":[I
    :cond_17
    const/16 v3, 0x9

    if-ne v15, v3, :cond_1a

    .line 216
    const-string v11, "structure"

    .line 217
    .restart local v11    # "kind":Ljava/lang/String;
    const/16 v3, 0x47

    if-ne v6, v3, :cond_18

    const/4 v3, 0x3

    goto :goto_5

    :cond_18
    const/16 v3, 0x49

    if-ne v6, v3, :cond_19

    move v3, v2

    goto :goto_5

    :cond_19
    const/4 v3, -0x1

    :goto_5
    invoke-virtual {v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    const/4 v2, 0x4

    .restart local v12    # "values":[I
    goto :goto_6

    .line 219
    .end local v11    # "kind":Ljava/lang/String;
    .end local v12    # "values":[I
    :cond_1a
    const-string v11, "reinforcement"

    .line 220
    .restart local v11    # "kind":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->words(I)[I

    move-result-object v12

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object/from16 v19, v12

    .line 222
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "kind":Ljava/lang/String;
    .local v17, "kind":Ljava/lang/String;
    .local v18, "label":Ljava/lang/String;
    .local v19, "values":[I
    :goto_6
    aget v3, v7, v15

    const/16 v21, 0x1

    add-int/lit8 v3, v3, 0x1

    aput v3, v7, v15

    .line 223
    new-instance v12, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    sub-int v14, v3, v13

    const/16 v20, 0x0

    move/from16 v16, v6

    .end local v6    # "index":I
    .local v16, "index":I
    invoke-direct/range {v12 .. v20}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;-><init>(IIIILjava/lang/String;Ljava/lang/String;[ILcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v13    # "start":I
    .end local v15    # "section":I
    .end local v16    # "index":I
    .end local v17    # "kind":Ljava/lang/String;
    .end local v18    # "label":Ljava/lang/String;
    .end local v19    # "values":[I
    .end local v23    # "header":I
    move/from16 v3, v21

    move/from16 v4, v22

    goto/16 :goto_0

    .line 157
    .end local v22    # "terminated":Z
    .local v4, "terminated":Z
    .restart local v5    # "header":I
    .restart local v6    # "index":I
    .restart local v13    # "start":I
    .restart local v15    # "section":I
    :cond_1b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C scenario record limit exceeded"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1c
    move/from16 v22, v4

    .end local v4    # "terminated":Z
    .restart local v22    # "terminated":Z
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown R82C scenario section "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v5    # "header":I
    .end local v6    # "index":I
    .end local v13    # "start":I
    .end local v15    # "section":I
    .end local v22    # "terminated":Z
    .restart local v4    # "terminated":Z
    :cond_1d
    move/from16 v22, v4

    move/from16 v18, v11

    .line 225
    :goto_7
    if-eqz v4, :cond_1f

    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    array-length v3, v0

    if-ne v2, v3, :cond_1f

    .line 227
    aget v2, v7, v18

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1e

    if-ltz v9, :cond_1e

    .line 229
    new-instance v5, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    array-length v6, v0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;-><init>(I[ILjava/util/List;ILcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V

    return-object v5

    .line 228
    :cond_1e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C scenario missing essential general/map records"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_1f
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C scenario terminator missing or trailing payload"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v1    # "r":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;
    .end local v4    # "terminated":Z
    .end local v7    # "sectionCounts":[I
    .end local v8    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    .end local v9    # "seed":I
    :cond_20
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid R82C scenario byte count"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decodeAuditedBank(Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
    .locals 8
    .param p0, "scenarios"    # Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    if-eqz p0, :cond_2

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x5

    aput v3, v0, v1

    const-class v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    .line 236
    .local v0, "docs":[[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_0
    if-ge v1, v3, :cond_1

    const/4 v4, 0x1

    .local v4, "m":I
    :goto_1
    if-gt v4, v2, :cond_0

    .line 237
    aget-object v5, v0, v1

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;->scenario(II)[B

    move-result-object v7

    invoke-static {v7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;->decode([B)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v7

    aput-object v7, v5, v6

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "m":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "h":I
    :cond_1
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;-><init>([[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V

    return-object v1

    .line 234
    .end local v0    # "docs":[[Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No verified R82C scenario bank"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
