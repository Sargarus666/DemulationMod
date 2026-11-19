.class public final Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;
.super Ljava/lang/Object;
.source "RazorSpriteSatObjectCallSiteTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;
    }
.end annotation


# static fields
.field public static final DISPLAY_HEAD_RAM:I = 0xfff3ac

.field private static final ENQUEUE:[I

.field private static final FACING_LOOKUP:[B

.field private static final INPUT:[B

.field public static final NODE_BYTES:I = 0x10

.field private static final NODE_FIELDS:[B

.field private static final NODE_PRODUCER:[B

.field private static final PRODUCE:[I

.field private static final REGISTER_JSR_PREFIX:[B

.field private static final REGISTRATION:[B

.field public static final SAT_BYTES_PER_RECORD:I = 0x8

.field public static final SOURCE_BYTE_OFFSET:I = 0x68

.field private static final XY_OFFSETS:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetENQUEUE()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->ENQUEUE:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPRODUCE()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetXY_OFFSETS()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->XY_OFFSETS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    const/16 v0, 0x12e6

    const/16 v1, 0x12c6

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->ENQUEUE:[I

    .line 18
    const/16 v0, 0x1368

    const/16 v1, 0x1348

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->XY_OFFSETS:[I

    .line 20
    const-string v0, "48e700302649346b00024a6b00026768376a000e000224802541000425480008"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->REGISTRATION:[B

    .line 25
    const-string v0, "24802541000425480008"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->NODE_FIELDS:[B

    .line 26
    const-string v0, "48e73f3e244840e7007c07004e6747f8e428"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->NODE_PRODUCER:[B

    .line 28
    const-string v0, "225238193a11080600066656"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->INPUT:[B

    .line 30
    const-string v0, "0806000267461029006602400007d040d040d87b0018da7b0016"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->FACING_LOOKUP:[B

    .line 32
    const-string v0, "4eb8"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->REGISTER_JSR_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x1
        0x1
        0x0
        0x0
        -0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countJsrs([BI)I
    .locals 6
    .param p0, "data"    # [B
    .param p1, "addr"    # I

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "count":I
    array-length v1, p0

    const/high16 v2, 0x30000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    .line 100
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    sget-object v4, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->REGISTER_JSR_PREFIX:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->REGISTER_JSR_PREFIX:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, p1, 0x8

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, p1, 0xff

    if-ne v3, v4, :cond_0

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private static hex(Ljava/lang/String;)[B
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 118
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;

    move-result-object v0

    .line 67
    .local v0, "parent":Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;
    iget v1, v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->edition:I

    .line 68
    .local v1, "e":I
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->ENQUEUE:[I

    aget v2, v2, v1

    const-string v3, "48e70030"

    invoke-static {v3}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "node registration prologue"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .line 71
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->ENQUEUE:[I

    aget v2, v2, v1

    add-int/lit8 v2, v2, 0x16

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->NODE_FIELDS:[B

    const-string v4, "node payload fields"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .line 72
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->NODE_PRODUCER:[B

    const-string v4, "SAT producer entry"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .line 73
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v2, v2, v1

    add-int/lit16 v2, v2, 0x8a

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->INPUT:[B

    const-string v4, "node input and flag check"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .line 74
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v2, v2, v1

    add-int/lit16 v2, v2, 0xa0

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->FACING_LOOKUP:[B

    const-string v4, "relative offset lookup"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .line 75
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v2, v2, v1

    add-int/lit16 v2, v2, 0xcc

    .line 76
    .local v2, "table":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_1

    .line 77
    mul-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v2

    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->signedWord([BI)I

    move-result v4

    .line 78
    .local v4, "x":I
    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->signedWord([BI)I

    move-result v5

    .line 79
    .local v5, "y":I
    sget-object v7, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->XY_OFFSETS:[I

    mul-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    if-ne v4, v7, :cond_0

    sget-object v7, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->XY_OFFSETS:[I

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v6

    aget v6, v7, v8

    if-ne v5, v6, :cond_0

    .line 76
    .end local v4    # "x":I
    .end local v5    # "y":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mismatched ROM relative offset table at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 84
    .end local v3    # "i":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    const/4 v3, 0x0

    new-array v4, v5, [I

    if-ne v1, v6, :cond_2

    const/16 v5, 0x253a

    aput v5, v4, v3

    const/16 v5, 0x2614

    aput v5, v4, v6

    goto :goto_1

    :cond_2
    const/16 v5, 0x2520

    aput v5, v4, v3

    const/16 v5, 0x25fa

    aput v5, v4, v6

    .line 85
    .local v4, "heads":[I
    :goto_1
    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget v6, v4, v3

    .local v6, "h":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "3078f3ac4eb8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v8, v8, v1

    .line 86
    invoke-static {v8}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->shortHex(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->hex(Ljava/lang/String;)[B

    move-result-object v7

    .line 85
    const-string v8, "display head->SAT call"

    invoke-static {p0, v6, v7, v8}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->require([BI[BLjava/lang/String;)V

    .end local v6    # "h":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 87
    :cond_3
    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->ENQUEUE:[I

    aget v3, v3, v1

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->countJsrs([BI)I

    move-result v3

    .line 88
    .local v3, "registerCount":I
    sget-object v5, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->PRODUCE:[I

    aget v5, v5, v1

    invoke-static {p0, v5}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->countJsrs([BI)I

    move-result v5

    .line 89
    .local v5, "producerCount":I
    const/16 v6, 0x23

    if-ne v3, v6, :cond_4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_4

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v6, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v3, v5, v7}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;-><init>(IIILcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace-IA;)V

    return-object v6

    .line 90
    :cond_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected direct call-site counts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static require([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .param p2, "bytes"    # [B
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aget-byte v2, p2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opcode mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 111
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out-of-bounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static shortHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .line 115
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%04x"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static signedWord([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_0

    .line 107
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 106
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Out-of-bounds source table"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
