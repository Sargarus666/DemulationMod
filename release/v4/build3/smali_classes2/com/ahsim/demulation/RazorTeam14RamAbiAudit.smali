.class public final Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;
.super Ljava/lang/Object;
.source "RazorTeam14RamAbiAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;
    }
.end annotation


# static fields
.field public static final LOOP_WORD:I = -0x3dda

.field private static final MASK24:I = 0xffffff

.field public static final MAX_UNIT_SLOTS:I = 0x66

.field public static final RAM_BASE:I = 0xff0000

.field public static final RAM_SIZE:I = 0x10000

.field public static final TEAM_CONTEXT_PTR:I = -0x376c

.field public static final UNIT_BASE:I = 0xff0dac

.field public static final UNIT_STRIDE:I = 0x8c


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b([BJLjava/lang/String;)I
    .locals 1
    .param p0, "ram"    # [B
    .param p1, "address"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    move-result v0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static inspect([B)Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;
    .locals 19
    .param p0, "ram"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    move-object/from16 v0, p0

    if-eqz v0, :cond_7

    array-length v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_7

    .line 65
    const-wide/16 v1, -0x376c

    const-string v3, "current TEAM pointer"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->l([BJLjava/lang/String;)I

    move-result v1

    const v2, 0xffffff

    and-int v4, v1, v2

    .line 66
    .local v4, "team":I
    int-to-long v5, v4

    const/16 v1, 0x1a

    const-string v3, "TEAM record"

    invoke-static {v0, v5, v6, v1, v3}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    .line 67
    add-int/lit8 v1, v4, 0x10

    int-to-long v5, v1

    const-string v1, "TEAM+0x10"

    invoke-static {v0, v5, v6, v1}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->w([BJLjava/lang/String;)I

    move-result v5

    .line 68
    .local v5, "house":I
    const-wide/16 v6, -0x3dda

    const-string v1, "C226 loop word"

    invoke-static {v0, v6, v7, v1}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->w([BJLjava/lang/String;)I

    move-result v6

    .line 69
    .local v6, "word":I
    add-int/lit8 v1, v6, -0x19

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 72
    .local v1, "afterSubtract":I
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;-><init>(IIIIIIIIIILcom/ahsim/demulation/RazorTeam14RamAbiAudit-IA;)V

    return-object v3

    .line 74
    :cond_0
    add-int/lit8 v15, v1, 0x1

    .line 75
    .local v15, "scans":I
    const/16 v3, 0x66

    if-gt v15, v3, :cond_6

    .line 76
    const/4 v3, 0x0

    move v8, v3

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_5

    .line 77
    mul-int/lit16 v3, v8, 0x8c

    const v7, 0xff0dac

    add-int/2addr v3, v7

    .line 78
    .local v3, "unit":I
    int-to-long v9, v3

    const-string v7, "Unit pool slot"

    const/16 v11, 0x8c

    invoke-static {v0, v9, v10, v11, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    .line 79
    add-int/lit8 v7, v3, 0x5

    int-to-long v9, v7

    const-string v7, "Unit+5"

    invoke-static {v0, v9, v10, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->b([BJLjava/lang/String;)I

    move-result v7

    const/4 v9, 0x4

    and-int/2addr v7, v9

    if-eqz v7, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v7, v3, 0x2

    int-to-long v10, v7

    const-string v7, "Unit+2"

    invoke-static {v0, v10, v11, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->b([BJLjava/lang/String;)I

    move-result v7

    const/16 v10, 0x10

    if-eq v7, v10, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v7, v3, 0x8

    int-to-long v10, v7

    const-string v7, "Unit+8"

    invoke-static {v0, v10, v11, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->b([BJLjava/lang/String;)I

    move-result v7

    and-int/lit16 v10, v5, 0xff

    if-eq v7, v10, :cond_3

    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v7, v3, 0x5a

    int-to-long v10, v7

    const-string v7, "Unit+0x5A"

    invoke-static {v0, v10, v11, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->w([BJLjava/lang/String;)I

    move-result v16

    .line 83
    .local v16, "p16":I
    invoke-static/range {v16 .. v16}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->signExtendAddressWord(I)I

    move-result v7

    and-int v13, v7, v2

    .line 85
    .local v13, "pointer":I
    int-to-long v10, v13

    const-wide/16 v17, 0x7

    add-long v10, v10, v17

    const-string v7, "Unit+0x5A indirect +7"

    invoke-static {v0, v10, v11, v7}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->b([BJLjava/lang/String;)I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    .line 76
    .end local v3    # "unit":I
    .end local v13    # "pointer":I
    .end local v16    # "p16":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 86
    .restart local v3    # "unit":I
    .restart local v13    # "pointer":I
    .restart local v16    # "p16":I
    :cond_4
    add-int/lit8 v2, v3, 0xa

    int-to-long v10, v2

    const-string v2, "Unit+0x0A"

    invoke-static {v0, v10, v11, v2}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->l([BJLjava/lang/String;)I

    move-result v10

    .line 87
    .local v10, "pos":I
    add-int/lit8 v2, v4, 0x14

    int-to-long v11, v2

    const-string v2, "TEAM+0x14 write"

    invoke-static {v0, v11, v12, v9, v2}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    .line 88
    add-int/lit8 v2, v4, 0x18

    int-to-long v11, v2

    const-string v2, "TEAM+0x18 write"

    const/4 v7, 0x2

    invoke-static {v0, v11, v12, v7, v2}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    .line 89
    move v2, v3

    .end local v3    # "unit":I
    .local v2, "unit":I
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v11, v4, 0x14

    add-int/lit8 v12, v4, 0x18

    const/4 v14, 0x0

    const/4 v9, 0x4

    invoke-direct/range {v3 .. v14}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;-><init>(IIIIIIIIIILcom/ahsim/demulation/RazorTeam14RamAbiAudit-IA;)V

    return-object v3

    .line 91
    .end local v2    # "unit":I
    .end local v8    # "i":I
    .end local v10    # "pos":I
    .end local v13    # "pointer":I
    .end local v16    # "p16":I
    :cond_5
    new-instance v3, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v7, v15

    .end local v15    # "scans":I
    .local v7, "scans":I
    invoke-direct/range {v3 .. v14}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit$ReadOnlyResult;-><init>(IIIIIIIIIILcom/ahsim/demulation/RazorTeam14RamAbiAudit-IA;)V

    return-object v3

    .line 75
    .end local v7    # "scans":I
    .restart local v15    # "scans":I
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "TEAM14 C226 exceeds audited 102-unit pool"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v1    # "afterSubtract":I
    .end local v4    # "team":I
    .end local v5    # "house":I
    .end local v6    # "word":I
    .end local v15    # "scans":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid RAM snapshot"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static l([BJLjava/lang/String;)I
    .locals 4
    .param p0, "ram"    # [B
    .param p1, "address"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 52
    .local v0, "idx":J
    long-to-int v2, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    long-to-int v3, v0

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2
.end method

.method private static ramIndex([BJILjava/lang/String;)I
    .locals 8
    .param p0, "ram"    # [B
    .param p1, "address"    # J
    .param p3, "length"    # I
    .param p4, "purpose"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    if-eqz p0, :cond_1

    array-length v0, p0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    .line 38
    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p1

    .line 39
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

    .line 41
    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2

    .line 40
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEAM14 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outside backed work RAM: 0x"

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

    .line 36
    .end local v0    # "a":J
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TEAM14 needs exact 64 KiB work-RAM snapshot"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signExtendAddressWord(I)I
    .locals 1
    .param p0, "value"    # I

    .line 56
    const v0, 0xffff

    and-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private static w([BJLjava/lang/String;)I
    .locals 3
    .param p0, "ram"    # [B
    .param p1, "address"    # J
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ahsim/demulation/RazorTeam14RamAbiAudit;->ramIndex([BJILjava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "idx":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method
