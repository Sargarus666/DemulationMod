.class public final Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;
.super Ljava/lang/Object;
.source "RazorUnitScriptDispatchAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;
    }
.end annotation


# static fields
.field public static final SOURCE_TYPES:I = 0x20

.field public static final TYPE_TABLE_ROM_OFFSET:I = 0x25e40

.field public static final UNIT_ORDR_ENTRIES:I = 0x1b


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;
    .locals 17
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;

    move-result-object v1

    .line 75
    .local v1, "source":Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;
    iget v2, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->unitEntryCount:I

    const/4 v4, 0x1

    const/16 v5, 0x1b

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v6, "UNIT ORDR cardinality"

    invoke-static {v2, v6}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 76
    iget v2, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    if-ne v2, v4, :cond_1

    const v2, 0xcff2

    goto :goto_1

    :cond_1
    const v2, 0xd12e

    .line 77
    .local v2, "loader":I
    :goto_1
    iget v6, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    if-ne v6, v4, :cond_2

    const v6, 0xd016

    goto :goto_2

    :cond_2
    const v6, 0xd152

    .line 78
    .local v6, "typeReader":I
    :goto_2
    iget v7, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    if-ne v7, v4, :cond_3

    const v7, 0xd020

    goto :goto_3

    :cond_3
    const v7, 0xd15c

    .line 79
    .local v7, "tableLea":I
    :goto_3
    iget v8, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    if-ne v8, v4, :cond_4

    const v8, 0xd026

    goto :goto_4

    :cond_4
    const v8, 0xd162

    .line 80
    .local v8, "tableRead":I
    :goto_4
    iget v9, v1, Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;->variant:I

    if-ne v9, v4, :cond_5

    const v9, 0x19f96

    goto :goto_5

    :cond_5
    const v9, 0x1a086

    .line 81
    .local v9, "call":I
    :goto_5
    invoke-static {v0, v2}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x202f

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v2, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    move v10, v4

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    const-string v11, "script loader entry"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 82
    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x302f

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v6, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_7

    move v10, v4

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    const-string v11, "argument source type"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 83
    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x43f9

    const v12, 0x25e40

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v7, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->longWord([BI)I

    move-result v10

    if-ne v10, v12, :cond_8

    move v10, v4

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    const-string v11, "absolute type table address"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 85
    invoke-static {v0, v8}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x1031

    if-ne v10, v11, :cond_9

    add-int/lit8 v10, v8, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    if-nez v10, :cond_9

    move v10, v4

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    const-string v11, "indexed byte type lookup"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 87
    add-int/lit8 v10, v8, 0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const v11, 0xd040

    if-ne v10, v11, :cond_a

    move v10, v4

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    :goto_a
    const-string v11, "type doubled to UNIT ORDR word index"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 88
    add-int/lit8 v10, v8, 0x6

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x225f

    if-ne v10, v11, :cond_b

    move v10, v4

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    :goto_b
    const-string v11, "bank context restoration"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 89
    add-int/lit8 v10, v8, 0x8

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x3271

    if-ne v10, v11, :cond_c

    move v10, v4

    goto :goto_c

    :cond_c
    const/4 v10, 0x0

    :goto_c
    const-string v11, "ORDR indexed offset read"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 90
    add-int/lit8 v10, v9, -0xc

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x102a

    if-ne v10, v11, :cond_d

    add-int/lit8 v10, v9, -0xa

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    move v10, v4

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    :goto_d
    const-string v11, "UNIT+0x02 type field"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 92
    add-int/lit8 v10, v9, -0x8

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x4880

    if-ne v10, v11, :cond_e

    add-int/lit8 v10, v9, -0x6

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x3f00

    if-ne v10, v11, :cond_e

    move v10, v4

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    const-string v11, "signed type argument"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 94
    add-int/lit8 v10, v9, -0x4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x486a

    if-ne v10, v11, :cond_f

    add-int/lit8 v10, v9, -0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x16

    if-ne v10, v11, :cond_f

    move v10, v4

    goto :goto_f

    :cond_f
    const/4 v10, 0x0

    :goto_f
    const-string v11, "unit script context at +0x16"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 96
    invoke-static {v0, v9}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x4eb9

    if-ne v10, v11, :cond_10

    add-int/lit8 v10, v9, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->longWord([BI)I

    move-result v10

    if-ne v10, v2, :cond_10

    move v10, v4

    goto :goto_10

    :cond_10
    const/4 v10, 0x0

    :goto_10
    const-string v11, "Unit_SetAction call to type mapper"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 98
    const v10, 0x25e60

    array-length v11, v0

    if-gt v10, v11, :cond_11

    move v10, v4

    goto :goto_11

    :cond_11
    const/4 v10, 0x0

    :goto_11
    const-string v11, "table bounds"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 99
    const/16 v10, 0x20

    new-array v11, v10, [B

    .line 100
    .local v11, "table":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_12
    if-ge v13, v10, :cond_13

    .line 101
    add-int v14, v13, v12

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    .line 102
    .local v14, "entry":I
    if-ge v14, v5, :cond_12

    move v15, v4

    goto :goto_13

    :cond_12
    const/4 v15, 0x0

    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    const-string v5, "mapped ORDR entry "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 103
    int-to-byte v3, v14

    aput-byte v3, v11, v13

    .line 100
    .end local v14    # "entry":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v16

    goto :goto_12

    :cond_13
    move/from16 v16, v5

    .line 105
    .end local v13    # "i":I
    aget-byte v3, v11, v16

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x7

    if-ne v3, v5, :cond_14

    const/16 v3, 0x1c

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v10, 0xf

    if-ne v3, v10, :cond_14

    const/16 v3, 0x1d

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v10, 0xa

    if-ne v3, v10, :cond_14

    const/16 v3, 0x1e

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_14

    const/16 v3, 0x1f

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v4, :cond_14

    move v3, v4

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    :goto_14
    const-string v4, "extended unit aliases"

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->require(ZLjava/lang/String;)V

    .line 108
    new-instance v3, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v11, v4}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;-><init>(Lcom/ahsim/demulation/RazorScriptEntryCrosswalkAudit$Report;[BLcom/ahsim/demulation/RazorUnitScriptDispatchAudit-IA;)V

    return-object v3
.end method

.method private static longWord([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->word([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 3
    .param p0, "pass"    # Z
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    if-eqz p0, :cond_0

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Razor UNIT script dispatch opcode mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static word([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 63
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 62
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "68000 instruction outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
