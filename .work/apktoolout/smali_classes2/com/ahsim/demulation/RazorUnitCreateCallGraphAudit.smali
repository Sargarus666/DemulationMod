.class public final Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;
.super Ljava/lang/Object;
.source "RazorUnitCreateCallGraphAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;
    }
.end annotation


# static fields
.field private static final DIRECT:[[I

.field private static final RELATIVE:[[I

.field private static final WRAPPER_CALLS:[[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDIRECT()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->DIRECT:[[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetRELATIVE()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->RELATIVE:[[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetWRAPPER_CALLS()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->WRAPPER_CALLS:[[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 16
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->DIRECT:[[I

    .line 20
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->RELATIVE:[[I

    .line 24
    const v0, 0x12d1c

    const v1, 0x1b140

    const v2, 0x8068

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const v1, 0x12e34

    const v2, 0x1b236

    const v3, 0x8196

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->WRAPPER_CALLS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa2d6
        0xa410
        0x128a2
        0x12ade
        0x12bde
        0x1337c
        0x1baf4
    .end array-data

    :array_1
    .array-data 4
        0xa404
        0xa53e
        0x129ba
        0x12bf6
        0x12cf6
        0x13494
        0x1bbea
    .end array-data

    :array_2
    .array-data 4
        0x1de10
        0x1deb2
        0x1def6
        0x1dfd6
        0x1e0b6
        0x1e39a
    .end array-data

    :array_3
    .array-data 4
        0x1df14
        0x1dfb6
        0x1dffa
        0x1e0da
        0x1e1ba
        0x1e49e
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 3
    .param p0, "ok"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_0

    .line 67
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Razor Unit_Create call graph mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    move-object/from16 v0, p0

    .line 83
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;

    move-result-object v1

    .line 84
    .local v1, "prior":Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;
    iget v2, v1, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;->variant:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 85
    .local v2, "v":I
    const/4 v4, 0x0

    if-ltz v2, :cond_0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "ROM variant"

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 86
    if-nez v2, :cond_1

    const v5, 0x1c92e

    goto :goto_1

    :cond_1
    const v5, 0x1ca22

    .line 87
    .local v5, "create":I
    :goto_1
    if-nez v2, :cond_2

    const v6, 0x1df54

    goto :goto_2

    :cond_2
    const v6, 0x1e058

    .line 88
    .local v6, "wrapper":I
    :goto_2
    if-nez v2, :cond_3

    const v7, 0xcf8e

    goto :goto_3

    :cond_3
    const v7, 0xd0ca

    .line 89
    .local v7, "vmInitializer":I
    :goto_3
    if-nez v2, :cond_4

    const v8, 0xcff2

    goto :goto_4

    :cond_4
    const v8, 0xd12e

    .line 90
    .local v8, "scriptEntryLoader":I
    :goto_4
    invoke-static {v0, v5}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v9

    const/16 v10, 0x4e56

    if-ne v9, v10, :cond_5

    add-int/lit8 v9, v5, 0x2

    invoke-static {v0, v9}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v9

    const v10, 0xffe0

    if-ne v9, v10, :cond_5

    move v9, v3

    goto :goto_5

    :cond_5
    move v9, v4

    :goto_5
    const-string v10, "Unit_Create LINK -0x20"

    invoke-static {v9, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 92
    add-int/lit8 v9, v5, 0x12

    invoke-static {v0, v9}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v9

    const/16 v10, 0x47f9

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v5, 0x14

    invoke-static {v0, v9}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->longWord([BI)I

    move-result v9

    const v10, 0x82494

    if-ne v9, v10, :cond_6

    move v9, v3

    goto :goto_6

    :cond_6
    move v9, v4

    :goto_6
    const-string v10, "unit type information table"

    invoke-static {v9, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 95
    add-int/lit8 v9, v5, 0x2c

    .line 96
    .local v9, "allocatorCall":I
    invoke-static {v0, v9}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x4eba

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v9, 0x2

    add-int/lit8 v12, v9, 0x2

    .line 97
    invoke-static {v0, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v12

    int-to-short v12, v12

    add-int/2addr v10, v12

    if-nez v2, :cond_7

    const v12, 0x19b88

    goto :goto_7

    :cond_7
    const v12, 0x19c78

    :goto_7
    if-ne v10, v12, :cond_8

    move v10, v3

    goto :goto_8

    :cond_8
    move v10, v4

    .line 96
    :goto_8
    const-string v12, "allocator dispatch before state writes"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 99
    add-int/lit8 v10, v5, 0x36

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x6700

    if-ne v10, v12, :cond_9

    move v10, v3

    goto :goto_9

    :cond_9
    move v10, v4

    :goto_9
    const-string v12, "allocation-failure gate"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 100
    add-int/lit8 v10, v5, 0x72

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x2544

    if-ne v10, v12, :cond_a

    add-int/lit8 v10, v5, 0x74

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0xa

    if-ne v10, v12, :cond_a

    move v10, v3

    goto :goto_a

    :cond_a
    move v10, v4

    :goto_a
    const-string v12, "Unit+0x0A gets original position"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 102
    add-int/lit16 v10, v5, 0xc0

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x157c

    const/4 v13, 0x3

    if-ne v10, v12, :cond_b

    add-int/lit16 v10, v5, 0xc2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0xff

    if-ne v10, v14, :cond_b

    add-int/lit16 v10, v5, 0xc4

    .line 103
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v13, :cond_b

    move v10, v3

    goto :goto_b

    :cond_b
    move v10, v4

    .line 102
    :goto_b
    const-string v14, "Unit+0x03 initial action sentinel"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 104
    add-int/lit16 v10, v5, 0xcc

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v12, :cond_c

    add-int/lit16 v10, v5, 0xce

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v13, :cond_c

    add-int/lit16 v10, v5, 0xd0

    .line 105
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x54

    if-ne v10, v12, :cond_c

    move v10, v3

    goto :goto_c

    :cond_c
    move v10, v4

    .line 104
    :goto_c
    const-string v12, "Unit+0x54 initial GUARD action"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 106
    add-int/lit16 v10, v5, 0xdc

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x2ebc

    if-ne v10, v12, :cond_d

    add-int/lit16 v10, v5, 0xde

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->longWord([BI)I

    move-result v10

    const/16 v12, -0x3e50

    if-ne v10, v12, :cond_d

    move v10, v3

    goto :goto_d

    :cond_d
    move v10, v4

    :goto_d
    const-string v12, "UNIT EMC bank descriptor"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 108
    add-int/lit16 v10, v5, 0xe2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x486a

    if-ne v10, v12, :cond_e

    add-int/lit16 v10, v5, 0xe4

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x16

    if-ne v10, v12, :cond_e

    move v10, v3

    goto :goto_e

    :cond_e
    move v10, v4

    :goto_e
    const-string v12, "Unit+0x16 VM context"

    invoke-static {v10, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 110
    add-int/lit16 v10, v5, 0xe6

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v12, 0x4eb9

    if-ne v10, v12, :cond_f

    add-int/lit16 v10, v5, 0xe8

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->longWord([BI)I

    move-result v10

    if-ne v10, v7, :cond_f

    move v10, v3

    goto :goto_f

    :cond_f
    move v10, v4

    :goto_f
    const-string v14, "VM context initializer invoked during create"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 115
    invoke-static {v0, v7}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x206f

    const/4 v15, 0x4

    if-ne v10, v14, :cond_10

    add-int/lit8 v10, v7, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v15, :cond_10

    move v10, v3

    goto :goto_10

    :cond_10
    move v10, v4

    :goto_10
    const-string v14, "VM context initializer entry, not type dispatch"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 117
    add-int/lit8 v10, v7, 0x1c

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x216f

    if-ne v10, v14, :cond_11

    add-int/lit8 v10, v7, 0x1e

    .line 118
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x8

    if-ne v10, v14, :cond_11

    add-int/lit8 v10, v7, 0x20

    .line 119
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v15, :cond_11

    move v10, v3

    goto :goto_11

    :cond_11
    move v10, v4

    .line 117
    :goto_11
    const-string v14, "bank descriptor copied into VM context +4"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 121
    add-int/lit8 v10, v7, 0x22

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x4e75

    if-ne v10, v14, :cond_12

    move v10, v3

    goto :goto_12

    :cond_12
    move v10, v4

    :goto_12
    const-string v14, "VM context initializer returns"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 122
    invoke-static {v0, v8}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x202f

    if-ne v10, v14, :cond_13

    add-int/lit8 v10, v8, 0x2

    .line 123
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    if-ne v10, v15, :cond_13

    move v10, v3

    goto :goto_13

    :cond_13
    move v10, v4

    .line 122
    :goto_13
    const-string v14, "actual UNIT.EMC Script_Load is a separate routine"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 125
    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v10

    const/16 v14, 0x48e7

    if-ne v10, v14, :cond_14

    move v10, v3

    goto :goto_14

    :cond_14
    move v10, v4

    :goto_14
    const-string v14, "creation helper prologue"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 126
    invoke-static {v0, v12, v5}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->scanCalls([BII)[I

    move-result-object v10

    sget-object v14, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->DIRECT:[[I

    aget-object v14, v14, v2

    invoke-static {v10, v14}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    const-string v14, "absolute Unit_Create callsites"

    invoke-static {v10, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 128
    invoke-static {v0, v11, v5}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->scanCalls([BII)[I

    move-result-object v10

    sget-object v11, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->RELATIVE:[[I

    aget-object v11, v11, v2

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    const-string v11, "PC-relative Unit_Create callsites"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 130
    invoke-static {v0, v12, v6}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->scanCalls([BII)[I

    move-result-object v10

    sget-object v11, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->WRAPPER_CALLS:[[I

    aget-object v11, v11, v2

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    const-string v11, "wrapper callsites"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 134
    sget-object v10, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->DIRECT:[[I

    aget-object v10, v10, v2

    aget v10, v10, v4

    .line 135
    .local v10, "slotSite":I
    add-int/lit8 v11, v10, -0x12

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v11

    const/16 v14, 0x5278

    if-ne v11, v14, :cond_15

    add-int/lit8 v11, v10, -0x10

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v11

    const v14, 0xc1ae

    if-ne v11, v14, :cond_15

    move v11, v3

    goto :goto_15

    :cond_15
    move v11, v4

    :goto_15
    const-string v14, "slot queued object initialization guard"

    invoke-static {v11, v14}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 137
    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v11

    if-ne v11, v12, :cond_16

    add-int/lit8 v11, v10, 0x2

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->longWord([BI)I

    move-result v11

    if-ne v11, v5, :cond_16

    move v11, v3

    goto :goto_16

    :cond_16
    move v11, v4

    :goto_16
    const-string v12, "queue branch reaches Unit_Create"

    invoke-static {v11, v12}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 139
    add-int/lit8 v11, v10, 0x3a

    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v11

    const/16 v12, 0x1740

    if-ne v11, v12, :cond_17

    add-int/lit8 v11, v10, 0x3c

    .line 140
    invoke-static {v0, v11}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v11

    if-ne v11, v13, :cond_17

    goto :goto_17

    :cond_17
    move v3, v4

    .line 139
    :goto_17
    const-string v4, "queued path directly rewrites Unit+0x03 after creation"

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    .line 142
    new-instance v3, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v5, v6, v4}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;-><init>(IIILcom/ahsim/demulation/RazorUnitCreateCallGraphAudit-IA;)V

    return-object v3
.end method

.method private static longWord([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static scanCalls([BII)[I
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "opcode"    # I
    .param p2, "target"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/16 v0, 0x80

    new-array v0, v0, [I

    .local v0, "found":[I
    const/4 v1, 0x0

    .line 72
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    add-int/lit8 v3, v2, 0x5

    const v4, 0x24000

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 73
    invoke-static {p0, v2}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v3

    .line 74
    .local v3, "op":I
    const/16 v4, 0x4eb9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v4, :cond_1

    .line 75
    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->longWord([BI)I

    move-result v4

    if-ne v4, p2, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_1

    .line 76
    :cond_1
    const/16 v4, 0x4eba

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v7, v2, 0x2

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->word([BI)I

    move-result v7

    int-to-short v7, v7

    add-int/2addr v4, v7

    if-ne v4, p2, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    nop

    .line 77
    .local v4, "match":Z
    if-eqz v4, :cond_4

    array-length v7, v0

    if-ge v1, v7, :cond_3

    move v5, v6

    :cond_3
    const-string v6, "too many candidate calls"

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->check(ZLjava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "n":I
    .local v5, "n":I
    aput v2, v0, v1

    move v1, v5

    .line 72
    .end local v3    # "op":I
    .end local v4    # "match":Z
    .end local v5    # "n":I
    .restart local v1    # "n":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 79
    .end local v2    # "p":I
    :cond_5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method private static word([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 60
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 59
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor ROM out of bounds"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
