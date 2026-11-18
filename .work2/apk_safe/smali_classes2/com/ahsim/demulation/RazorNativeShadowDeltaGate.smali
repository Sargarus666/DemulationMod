.class public final Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;
.super Ljava/lang/Object;
.source "RazorNativeShadowDeltaGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;,
        Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
    }
.end annotation


# static fields
.field private static final BASE:I = 0xff0000

.field public static final RAM_BYTES:I = 0x10000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare([B[BIIILjava/util/List;)Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;
    .locals 20
    .param p0, "before"    # [B
    .param p1, "after"    # [B
    .param p2, "context"    # I
    .param p3, "owner"    # I
    .param p4, "stack"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BIII",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;",
            ">;)",
            "Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;"
        }
    .end annotation

    .line 88
    .local p5, "expected":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    array-length v7, v0

    const/high16 v8, 0x10000

    if-ne v7, v8, :cond_f

    array-length v7, v1

    if-ne v7, v8, :cond_f

    if-eqz p5, :cond_f

    .line 90
    const/16 v7, 0x30

    invoke-static {v2, v7}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->valid(II)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x80

    invoke-static {v3, v9}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->valid(II)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 91
    const/16 v10, 0x20

    invoke-static {v4, v10}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->valid(II)Z

    move-result v10

    if-eqz v10, :cond_f

    const v10, 0xff0080

    if-lt v4, v10, :cond_f

    const v10, 0xffffdc

    if-le v4, v10, :cond_0

    goto/16 :goto_8

    .line 94
    :cond_0
    add-int/lit8 v10, v4, -0x80

    const v11, 0xffde9c

    filled-new-array {v2, v3, v10, v11}, [I

    move-result-object v10

    .line 95
    .local v10, "starts":[I
    const/16 v11, 0xa0

    const/16 v12, 0x8

    filled-new-array {v7, v9, v11, v12}, [I

    move-result-object v7

    .line 96
    .local v7, "lengths":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v13, v10

    const/4 v14, 0x1

    if-ge v11, v13, :cond_4

    .line 97
    add-int/lit8 v13, v11, 0x1

    .local v13, "j":I
    :goto_1
    array-length v15, v10

    if-ge v13, v15, :cond_3

    .line 98
    if-nez v11, :cond_1

    if-ne v13, v14, :cond_1

    move/from16 v16, v12

    goto :goto_2

    .line 99
    :cond_1
    aget v15, v10, v11

    move/from16 v16, v12

    aget v12, v7, v11

    aget v14, v10, v13

    aget v8, v7, v13

    invoke-static {v15, v12, v14, v8}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->overlap(IIII)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 100
    new-instance v8, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    const-string v9, "REJECTED_OVERLAPPING_WINDOWS"

    invoke-direct {v8, v6, v6, v9, v5}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v8

    .line 97
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    const/high16 v8, 0x10000

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move/from16 v16, v12

    .line 96
    .end local v13    # "j":I
    add-int/lit8 v11, v11, 0x1

    const/high16 v8, 0x10000

    goto :goto_0

    :cond_4
    move/from16 v16, v12

    .line 103
    .end local v11    # "i":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v8, "expectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/16 v13, 0xff

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;

    .line 105
    .local v12, "c":Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
    if-eqz v12, :cond_7

    iget-object v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->region:Ljava/lang/String;

    if-eqz v14, :cond_7

    iget-object v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->region:Ljava/lang/String;

    const-string v15, "unclassified_ram"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->before:I

    if-ltz v14, :cond_7

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->before:I

    if-gt v14, v13, :cond_7

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->after:I

    if-ltz v14, :cond_7

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->after:I

    if-gt v14, v13, :cond_7

    iget v13, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->before:I

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->after:I

    if-eq v13, v14, :cond_7

    iget v13, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->offset:I

    const/16 v14, -0x80

    if-lt v13, v14, :cond_7

    iget v13, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->offset:I

    if-le v13, v9, :cond_5

    goto :goto_4

    .line 110
    :cond_5
    iget-object v13, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->region:Ljava/lang/String;

    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->offset:I

    invoke-static {v13, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->key(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, "k":Ljava/lang/String;
    iget v14, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->before:I

    int-to-long v14, v14

    shl-long v14, v14, v16

    iget v9, v12, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->after:I

    int-to-long v5, v9

    or-long/2addr v5, v14

    .line 112
    .local v5, "pair":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 113
    new-instance v9, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    const-string v11, "REJECTED_DUPLICATE_PROFILE_DELTA"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v9, v15, v15, v11, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v9

    .line 114
    .end local v5    # "pair":J
    .end local v12    # "c":Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
    .end local v13    # "k":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x80

    goto :goto_3

    .line 108
    .restart local v12    # "c":Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
    :cond_7
    :goto_4
    new-instance v5, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    const-string v6, "REJECTED_INVALID_PROFILE_DELTA"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v15, v15, v6, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v5

    .line 115
    .end local v12    # "c":Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
    :cond_8
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v5, "observed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    const/high16 v9, 0x10000

    if-ge v6, v9, :cond_d

    .line 117
    aget-byte v11, v0, v6

    and-int/2addr v11, v13

    .local v11, "a":I
    aget-byte v12, v1, v6

    and-int/2addr v12, v13

    .line 118
    .local v12, "b":I
    if-ne v11, v12, :cond_9

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object v1, v10

    goto :goto_6

    .line 119
    :cond_9
    const/high16 v14, 0xff0000

    add-int/2addr v14, v6

    .line 120
    .local v14, "addr":I
    invoke-static {v14, v2, v3, v4}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->region(IIII)Ljava/lang/String;

    move-result-object v15

    .line 121
    .local v15, "reg":Ljava/lang/String;
    if-nez v15, :cond_a

    new-instance v9, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v13

    const-string v0, "REJECTED_UNMAPPED_RAM_DELTA"

    move/from16 v17, v6

    const/4 v1, 0x0

    const/4 v6, 0x0

    .end local v6    # "i":I
    .local v17, "i":I
    invoke-direct {v9, v6, v13, v0, v1}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v9

    .line 122
    .end local v17    # "i":I
    .restart local v6    # "i":I
    :cond_a
    move/from16 v17, v6

    .end local v6    # "i":I
    .restart local v17    # "i":I
    invoke-static {v15, v14, v2, v3, v4}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->relative(Ljava/lang/String;IIII)I

    move-result v0

    invoke-static {v15, v0}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;->key(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "k":Ljava/lang/String;
    move-object v1, v10

    .end local v10    # "starts":[I
    .local v1, "starts":[I
    int-to-long v9, v11

    shl-long v9, v9, v16

    move-object/from16 v18, v7

    .end local v7    # "lengths":[I
    .local v18, "lengths":[I
    int-to-long v6, v12

    or-long/2addr v6, v9

    .line 124
    .local v6, "pair":J
    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-eqz v9, :cond_b

    goto :goto_7

    .line 126
    :cond_b
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v0    # "k":Ljava/lang/String;
    .end local v6    # "pair":J
    .end local v11    # "a":I
    .end local v12    # "b":I
    .end local v14    # "addr":I
    .end local v15    # "reg":Ljava/lang/String;
    :goto_6
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v0, p0

    move-object v10, v1

    move-object/from16 v7, v18

    move-object/from16 v1, p1

    .end local v17    # "i":I
    .local v6, "i":I
    goto :goto_5

    .line 125
    .restart local v0    # "k":Ljava/lang/String;
    .local v6, "pair":J
    .restart local v11    # "a":I
    .restart local v12    # "b":I
    .restart local v14    # "addr":I
    .restart local v15    # "reg":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_c
    :goto_7
    new-instance v9, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    const-string v13, "REJECTED_DIFFERING_RAM_DELTA"

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "starts":[I
    .local v16, "k":Ljava/lang/String;
    .local v19, "starts":[I
    invoke-direct {v9, v1, v10, v13, v0}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v9

    .line 116
    .end local v11    # "a":I
    .end local v12    # "b":I
    .end local v14    # "addr":I
    .end local v15    # "reg":Ljava/lang/String;
    .end local v16    # "k":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "lengths":[I
    .end local v19    # "starts":[I
    .local v6, "i":I
    .restart local v7    # "lengths":[I
    .restart local v10    # "starts":[I
    :cond_d
    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    .line 128
    .end local v6    # "i":I
    .end local v7    # "lengths":[I
    .end local v10    # "starts":[I
    .restart local v18    # "lengths":[I
    .restart local v19    # "starts":[I
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_e

    .line 129
    new-instance v0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    const-string v6, "REJECTED_MISSING_RAM_DELTA"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v15, v1, v6, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v0

    .line 130
    :cond_e
    const/4 v14, 0x0

    new-instance v0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    const-string v6, "OBSERVATIONAL_MATCH_ONLY_NO_TICKS"

    const/4 v7, 0x1

    invoke-direct {v0, v7, v1, v6, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v0

    .line 92
    .end local v5    # "observed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "expectedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v18    # "lengths":[I
    .end local v19    # "starts":[I
    :cond_f
    :goto_8
    new-instance v0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;

    const-string v1, "REJECTED_INVALID_INPUT"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v0, v15, v15, v1, v14}, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Verdict;-><init>(ZILjava/lang/String;Lcom/ahsim/demulation/RazorNativeShadowDeltaGate-IA;)V

    return-object v0
.end method

.method private static key(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static overlap(IIII)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "al"    # I
    .param p2, "b"    # I
    .param p3, "bl"    # I

    .line 55
    add-int v0, p2, p3

    if-ge p0, v0, :cond_0

    add-int v0, p0, p1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static region(IIII)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # I
    .param p1, "ctx"    # I
    .param p2, "owner"    # I
    .param p3, "sp"    # I

    .line 63
    if-lt p0, p1, :cond_2

    add-int/lit8 v0, p1, 0x30

    if-ge p0, v0, :cond_2

    .line 64
    sub-int v0, p0, p1

    .line 65
    .local v0, "d":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string v1, "emc_pc"

    return-object v1

    .line 66
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const-string v1, "emc_return_word"

    return-object v1

    .line 67
    :cond_1
    const-string v1, "emc_context_other"

    return-object v1

    .line 69
    .end local v0    # "d":I
    :cond_2
    if-lt p0, p2, :cond_4

    add-int/lit16 v0, p2, 0x80

    if-ge p0, v0, :cond_4

    .line 70
    sub-int v0, p0, p2

    .line 71
    .restart local v0    # "d":I
    const/16 v1, 0x6e

    if-lt v0, v1, :cond_3

    const/16 v1, 0x72

    if-ge v0, v1, :cond_3

    const-string v1, "active_object_6e_71"

    goto :goto_0

    :cond_3
    const-string v1, "active_object_other"

    :goto_0
    return-object v1

    .line 73
    .end local v0    # "d":I
    :cond_4
    const v0, 0xffde9c

    if-lt p0, v0, :cond_5

    const v0, 0xffdea4

    if-ge p0, v0, :cond_5

    const-string v0, "global_context_pointer_area"

    return-object v0

    .line 74
    :cond_5
    add-int/lit8 v0, p3, -0x80

    if-lt p0, v0, :cond_6

    add-int/lit8 v0, p3, 0x20

    if-ge p0, v0, :cond_6

    const-string v0, "native_stack_near_call"

    return-object v0

    .line 75
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static relative(Ljava/lang/String;IIII)I
    .locals 1
    .param p0, "reg"    # Ljava/lang/String;
    .param p1, "addr"    # I
    .param p2, "ctx"    # I
    .param p3, "owner"    # I
    .param p4, "sp"    # I

    .line 79
    const-string v0, "emc_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, p1, p2

    return v0

    .line 80
    :cond_0
    const-string v0, "active_object_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sub-int v0, p1, p3

    return v0

    .line 81
    :cond_1
    const-string v0, "global_context_pointer_area"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0xffde9c

    sub-int v0, p1, v0

    return v0

    .line 82
    :cond_2
    sub-int v0, p1, p4

    return v0
.end method

.method private static valid(II)Z
    .locals 1
    .param p0, "addr"    # I
    .param p1, "length"    # I

    .line 51
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/high16 v0, 0xff0000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
