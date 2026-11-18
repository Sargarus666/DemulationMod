.class public final Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;
.super Ljava/lang/Object;
.source "RazorTeam14IndirectStateTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;,
        Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;,
        Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;
    }
.end annotation


# static fields
.field private static final MASK24:J = 0xffffffL

.field public static final RAM_BASE:I = 0xff0000

.field public static final RAM_BYTES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addressWord(I)I
    .locals 2
    .param p0, "word"    # I

    .line 62
    int-to-short v0, p0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static byteAt([BJ)I
    .locals 1
    .param p0, "r"    # [B
    .param p1, "a"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->index([BJI)I

    move-result v0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static index([BJI)I
    .locals 8
    .param p0, "ram"    # [B
    .param p1, "address"    # J
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_1

    array-length v0, p0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 50
    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p1

    .line 51
    .local v0, "a":J
    if-ltz p3, :cond_0

    const-wide/32 v2, 0xff0000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    int-to-long v4, p3

    add-long/2addr v4, v0

    const-wide/32 v6, 0x1000000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 53
    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2

    .line 52
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbacked TEAM14 address 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v0    # "a":J
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TEAM14 needs complete 64-KiB RAM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static longAt([BJ)I
    .locals 3
    .param p0, "r"    # [B
    .param p1, "a"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const-wide/16 v1, 0x2

    add-long/2addr v1, p1

    invoke-static {p0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static trace([B)Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;
    .locals 25
    .param p0, "ram"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    if-eqz v0, :cond_b

    array-length v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_b

    .line 66
    const-wide/16 v1, -0x376c

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->longAt([BJ)I

    move-result v1

    const v2, 0xffffff

    and-int v4, v1, v2

    .line 67
    .local v4, "team":I
    int-to-long v1, v4

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->index([BJI)I

    .line 68
    add-int/lit8 v1, v4, 0x10

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v5

    .line 69
    .local v5, "owner":I
    add-int/lit8 v1, v4, 0x14

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->longAt([BJ)I

    move-result v7

    .local v7, "old14":I
    add-int/lit8 v1, v4, 0x18

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v8

    .line 70
    .local v8, "old18":I
    const-wide/16 v1, -0x3dda

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v6

    .line 71
    .local v6, "counter":I
    add-int/lit8 v1, v6, -0x19

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 72
    .local v1, "reduced":I
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    new-instance v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, -0x1

    move v11, v7

    invoke-direct/range {v3 .. v13}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;-><init>(IIIIILjava/util/List;IIZLcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V

    .line 72
    return-object v3

    .line 74
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 75
    .local v2, "max":I
    const/16 v3, 0x66

    if-gt v2, v3, :cond_a

    .line 76
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;>;"
    const/4 v3, 0x0

    move v10, v3

    .local v10, "slot":I
    :goto_0
    if-ge v10, v2, :cond_9

    .line 78
    mul-int/lit16 v3, v10, 0x8c

    const v11, 0xff0dac

    add-int v12, v3, v11

    .line 79
    .local v12, "unit":I
    int-to-long v13, v12

    const/16 v3, 0x8c

    invoke-static {v0, v13, v14, v3}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->index([BJI)I

    .line 80
    add-int/lit8 v3, v12, 0x2

    int-to-long v13, v3

    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->byteAt([BJ)I

    move-result v13

    .local v13, "typ":I
    add-int/lit8 v3, v12, 0x8

    int-to-long v14, v3

    invoke-static {v0, v14, v15}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->byteAt([BJ)I

    move-result v14

    .local v14, "house":I
    add-int/lit8 v3, v12, 0x5

    move/from16 v21, v4

    .end local v4    # "team":I
    .local v21, "team":I
    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->byteAt([BJ)I

    move-result v15

    .line 81
    .local v15, "flags":I
    const/4 v3, -0x1

    .local v3, "raw":I
    const/4 v4, -0x1

    .local v4, "ea":I
    const/4 v11, -0x1

    .line 83
    .local v11, "bit":I
    and-int/lit8 v16, v15, 0x4

    if-eqz v16, :cond_1

    sget-object v16, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_FLAG2:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move/from16 v22, v1

    move/from16 v17, v4

    move/from16 v18, v11

    move-object/from16 v19, v16

    move/from16 v16, v3

    .local v16, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    goto/16 :goto_3

    .line 84
    .end local v16    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    :cond_1
    move/from16 v22, v1

    .end local v1    # "reduced":I
    .local v22, "reduced":I
    const/16 v1, 0x10

    if-eq v13, v1, :cond_2

    sget-object v16, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_TYPE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move/from16 v17, v4

    move/from16 v18, v11

    move-object/from16 v19, v16

    move/from16 v16, v3

    .restart local v16    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    goto :goto_3

    .line 85
    .end local v16    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    :cond_2
    and-int/lit16 v1, v5, 0xff

    if-eq v14, v1, :cond_3

    sget-object v16, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_HOUSE:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move/from16 v17, v4

    move/from16 v18, v11

    move-object/from16 v19, v16

    move/from16 v16, v3

    .restart local v16    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    goto :goto_3

    .line 87
    .end local v16    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    :cond_3
    add-int/lit8 v1, v12, 0x5a

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "raw":I
    .end local v4    # "ea":I
    .local v16, "raw":I
    .local v17, "ea":I
    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->wordAt([BJ)I

    move-result v3

    .end local v16    # "raw":I
    .restart local v3    # "raw":I
    invoke-static {v3}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->addressWord(I)I

    move-result v4

    .line 89
    .end local v17    # "ea":I
    .restart local v4    # "ea":I
    const/high16 v1, 0xff0000

    if-lt v4, v1, :cond_6

    const v1, 0xfffff8

    if-le v4, v1, :cond_4

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_2

    .line 92
    :cond_4
    add-int/lit8 v1, v4, 0x7

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "raw":I
    .end local v4    # "ea":I
    .restart local v16    # "raw":I
    .restart local v17    # "ea":I
    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->byteAt([BJ)I

    move-result v11

    .line 93
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->SKIP_INDIRECT_BIT7:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->MATCH:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    :goto_1
    move-object/from16 v19, v1

    move/from16 v18, v11

    .local v1, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    goto :goto_3

    .line 89
    .end local v1    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .end local v16    # "raw":I
    .end local v17    # "ea":I
    .restart local v3    # "raw":I
    .restart local v4    # "ea":I
    :cond_6
    move/from16 v16, v3

    move/from16 v17, v4

    .line 90
    .end local v3    # "raw":I
    .end local v4    # "ea":I
    .restart local v16    # "raw":I
    .restart local v17    # "ea":I
    :goto_2
    sget-object v1, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->UNKNOWN_INDIRECT_ADDRESS:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    move-object/from16 v19, v1

    move/from16 v18, v11

    .line 96
    .end local v11    # "bit":I
    .local v18, "bit":I
    .local v19, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    :goto_3
    move v11, v10

    .end local v10    # "slot":I
    .local v11, "slot":I
    new-instance v10, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;-><init>(IIIIIIIILcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V

    move v1, v11

    move/from16 v20, v18

    move-object/from16 v3, v19

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v14

    move/from16 v17, v15

    move v14, v12

    move v15, v13

    .end local v11    # "slot":I
    .end local v12    # "unit":I
    .end local v13    # "typ":I
    .local v1, "slot":I
    .local v3, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .local v14, "unit":I
    .local v15, "typ":I
    .local v16, "house":I
    .local v17, "flags":I
    .local v18, "raw":I
    .local v19, "ea":I
    .local v20, "bit":I
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v4, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->UNKNOWN_INDIRECT_ADDRESS:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    if-ne v3, v4, :cond_7

    .line 98
    move-object v4, v3

    .end local v3    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .local v4, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v10, -0x1

    move v11, v7

    move/from16 v23, v1

    move-object v1, v4

    move/from16 v4, v21

    .end local v21    # "team":I
    .local v1, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .local v4, "team":I
    .local v23, "slot":I
    invoke-direct/range {v3 .. v13}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;-><init>(IIIIILjava/util/List;IIZLcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V

    return-object v3

    .line 99
    .end local v4    # "team":I
    .end local v23    # "slot":I
    .local v1, "slot":I
    .restart local v3    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .restart local v21    # "team":I
    :cond_7
    move/from16 v23, v1

    move-object v1, v3

    move/from16 v4, v21

    .end local v3    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .end local v21    # "team":I
    .local v1, "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .restart local v4    # "team":I
    .restart local v23    # "slot":I
    sget-object v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;->MATCH:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    if-ne v1, v3, :cond_8

    .line 100
    add-int/lit8 v12, v14, 0xa

    int-to-long v10, v12

    invoke-static {v0, v10, v11}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->longAt([BJ)I

    move-result v11

    .line 101
    .local v11, "pos":I
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v10, v23

    .end local v23    # "slot":I
    .restart local v10    # "slot":I
    invoke-direct/range {v3 .. v13}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;-><init>(IIIIILjava/util/List;IIZLcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V

    move/from16 v24, v10

    move-object v10, v3

    move v3, v11

    move/from16 v11, v24

    .end local v10    # "slot":I
    .local v3, "pos":I
    .local v11, "slot":I
    return-object v10

    .line 99
    .end local v3    # "pos":I
    .end local v11    # "slot":I
    .restart local v23    # "slot":I
    :cond_8
    move/from16 v11, v23

    .line 77
    .end local v1    # "d":Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;
    .end local v14    # "unit":I
    .end local v15    # "typ":I
    .end local v16    # "house":I
    .end local v17    # "flags":I
    .end local v18    # "raw":I
    .end local v19    # "ea":I
    .end local v20    # "bit":I
    .end local v23    # "slot":I
    .restart local v11    # "slot":I
    add-int/lit8 v10, v11, 0x1

    move/from16 v1, v22

    .end local v11    # "slot":I
    .restart local v10    # "slot":I
    goto/16 :goto_0

    .end local v22    # "reduced":I
    .local v1, "reduced":I
    :cond_9
    move v11, v10

    .line 104
    .end local v10    # "slot":I
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, -0x1

    move v11, v7

    invoke-direct/range {v3 .. v13}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Result;-><init>(IIIIILjava/util/List;IIZLcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V

    return-object v3

    .line 75
    .end local v9    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;>;"
    :cond_a
    move/from16 v22, v1

    .end local v1    # "reduced":I
    .restart local v22    # "reduced":I
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unverified UNIT slot count: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v2    # "max":I
    .end local v4    # "team":I
    .end local v5    # "owner":I
    .end local v6    # "counter":I
    .end local v7    # "old14":I
    .end local v8    # "old18":I
    .end local v22    # "reduced":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid Genesis RAM size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wordAt([BJ)I
    .locals 3
    .param p0, "r"    # [B
    .param p1, "a"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;->index([BJI)I

    move-result v0

    .local v0, "i":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
