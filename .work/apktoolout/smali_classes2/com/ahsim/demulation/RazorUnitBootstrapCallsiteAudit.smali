.class public final Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;
.super Ljava/lang/Object;
.source "RazorUnitBootstrapCallsiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;
    }
.end annotation


# static fields
.field private static final ACTION_CALLS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    filled-new-array {v1, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->ACTION_CALLS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x64ce
        0x6548
        0x656c
        0x65b0
        0x7b04
        0x8d5a
        0xcc14
        0x12b5c
        0x12b7e
        0x12c48
        0x12ecc
        0x132be
        0x17a52
        0x17a6e
        0x19350
        0x197a0
        0x197e0
        0x19976
        0x19a0a
    .end array-data

    :array_1
    .array-data 4
        0x65e2
        0x665c
        0x6680
        0x66c4
        0x7c20
        0x8e88
        0xcd50
        0x12c74
        0x12c96
        0x12d60
        0x12fe4
        0x133d6
        0x17b6a
        0x17b86
        0x19440
        0x19890
        0x198d0
        0x19a66
        0x19afa
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    nop

    .line 72
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;

    move-result-object v0

    .line 73
    .local v0, "original":Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;
    iget v1, v0, Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;->variant:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 74
    .local v1, "v":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ltz v1, :cond_0

    if-ge v1, v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "variant"

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 75
    if-nez v1, :cond_1

    const v5, 0xcff2

    goto :goto_1

    :cond_1
    const v5, 0xd12e

    .line 76
    .local v5, "loader":I
    :goto_1
    if-nez v1, :cond_2

    const v6, 0x19ebc

    goto :goto_2

    :cond_2
    const v6, 0x19fac

    .line 77
    .local v6, "action":I
    :goto_2
    if-nez v1, :cond_3

    const v7, 0x19f96

    goto :goto_3

    :cond_3
    const v7, 0x1a086

    .line 78
    .local v7, "direct":I
    :goto_3
    const/16 v8, 0x40

    new-array v8, v8, [I

    .line 79
    .local v8, "calls":[I
    invoke-static {p0, v6, v8}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->scanJsrs([BI[I)I

    move-result v9

    .line 80
    .local v9, "n":I
    sget-object v10, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->ACTION_CALLS:[[I

    aget-object v10, v10, v1

    array-length v10, v10

    if-ne v9, v10, :cond_4

    move v10, v2

    goto :goto_4

    :cond_4
    move v10, v4

    :goto_4
    const-string v11, "Unit_SetAction callers count"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 81
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    sget-object v11, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->ACTION_CALLS:[[I

    aget-object v11, v11, v1

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v10

    const-string v11, "Unit_SetAction caller positions"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 83
    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x48e7

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v6, 0x2

    invoke-static {p0, v10}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x1030

    if-ne v10, v11, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    move v10, v4

    :goto_5
    const-string v11, "action procedure prologue"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 85
    invoke-static {p0, v5, v8}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->scanJsrs([BI[I)I

    move-result v9

    .line 86
    if-ne v9, v2, :cond_6

    aget v10, v8, v4

    if-ne v10, v7, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move v10, v4

    :goto_6
    const-string v11, "single direct Script_Load call"

    invoke-static {v10, v11}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 87
    add-int/lit8 v10, v7, -0xc

    invoke-static {p0, v10}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v10

    const/16 v11, 0x102a

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v7, -0xa

    invoke-static {p0, v10}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v10

    if-ne v10, v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v4

    :goto_7
    const-string v10, "read Unit+0x02 source type"

    invoke-static {v3, v10}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 89
    add-int/lit8 v3, v7, -0x8

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v3

    const/16 v10, 0x4880

    if-ne v3, v10, :cond_8

    add-int/lit8 v3, v7, -0x6

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v3

    const/16 v10, 0x3f00

    if-ne v3, v10, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    move v3, v4

    :goto_8
    const-string v10, "extend and push source type"

    invoke-static {v3, v10}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 91
    add-int/lit8 v3, v7, -0x4

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v3

    const/16 v10, 0x486a

    if-ne v3, v10, :cond_9

    add-int/lit8 v3, v7, -0x2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v3

    const/16 v10, 0x16

    if-ne v3, v10, :cond_9

    goto :goto_9

    :cond_9
    move v2, v4

    :goto_9
    const-string v3, "script context in Unit+0x16"

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 93
    new-instance v2, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;

    sget-object v3, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->ACTION_CALLS:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit$Evidence;-><init>(Lcom/ahsim/demulation/RazorUnitScriptDispatchAudit$Evidence;[ILcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit-IA;)V

    return-object v2
.end method

.method private static longWord([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static scanJsrs([BI[I)I
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "target"    # I
    .param p2, "found"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    add-int/lit8 v2, v1, 0x5

    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 63
    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->word([BI)I

    move-result v2

    const/16 v3, 0x4eb9

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->longWord([BI)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 64
    array-length v2, p2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "unexpected JSR address"

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorUnitBootstrapCallsiteAudit;->verify(ZLjava/lang/String;)V

    .line 65
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "count":I
    .local v2, "count":I
    aput v1, p2, v0

    move v0, v2

    .line 62
    .end local v2    # "count":I
    .restart local v0    # "count":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 68
    .end local v1    # "p":I
    :cond_2
    return v0
.end method

.method private static verify(ZLjava/lang/String;)V
    .locals 3
    .param p0, "ok"    # Z
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    if-eqz p0, :cond_0

    .line 59
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Razor 68000 callsite mismatch: "

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
    .param p0, "bytes"    # [B
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 52
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 51
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM read outside bounds"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
