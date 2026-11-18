.class public final Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;
.super Ljava/lang/Object;
.source "RazorSpriteSatRecordWriterTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;,
        Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;
    }
.end annotation


# static fields
.field private static final A3_BUFFER:[B

.field private static final LIMIT_SEQUENCE:[B

.field public static final MAX_RECORDS:I = 0x50

.field private static final PREPARE_A3:[I

.field public static final RECORD_BYTES:I = 0x8

.field private static final RECORD_LIMIT:[I

.field private static final RECORD_WRITER:[I

.field public static final SAT_RAM_BASE:I = 0xffe428

.field private static final WRITE_FOUR_WORDS:[B


# direct methods
.method static bridge synthetic -$$Nest$sfgetPREPARE_A3()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->PREPARE_A3:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetRECORD_LIMIT()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_LIMIT:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetRECORD_WRITER()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_WRITER:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    const/16 v0, 0x1488

    const/16 v1, 0x1468

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_WRITER:[I

    .line 21
    const/16 v0, 0x1376

    const/16 v1, 0x1356

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->PREPARE_A3:[I

    .line 22
    const/16 v0, 0x14b2

    const/16 v1, 0x1492

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_LIMIT:[I

    .line 23
    const-string v0, "47f8e428"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->fromHex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->A3_BUFFER:[B

    .line 24
    const-string v0, "36c33019d04f36c0301102409fff36120243f800b7403680301102406000670602539fff3011815b36c2"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->fromHex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->WRITE_FOUR_WORDS:[B

    .line 29
    const-string v0, "524fbefc00506e0e"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->fromHex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->LIMIT_SEQUENCE:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "signature"    # [B
    .param p3, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 110
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

    .line 111
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opcode at 0x"

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

    .line 112
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 109
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out-of-range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeCapturedRecord([BI)Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;
    .locals 7
    .param p0, "capture"    # [B
    .param p1, "index"    # I

    .line 97
    if-eqz p0, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    array-length v0, p0

    const/16 v1, 0x280

    if-gt v0, v1, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    if-ge p1, v0, :cond_0

    .line 101
    mul-int/lit8 v0, p1, 0x8

    .line 102
    .local v0, "p":I
    new-instance v1, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->word([BI)I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    invoke-static {p0, v3}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->word([BI)I

    move-result v3

    add-int/lit8 v4, v0, 0x4

    .line 103
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->word([BI)I

    move-result v4

    add-int/lit8 v5, v0, 0x6

    invoke-static {p0, v5}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->word([BI)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;-><init>(IIIILcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace-IA;)V

    .line 102
    return-object v1

    .line 100
    .end local v0    # "p":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid full-record SAT capture or index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fromHex(Ljava/lang/String;)[B
    .locals 4
    .param p0, "h"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 115
    .local v0, "a":[B
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

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;

    move-result-object v0

    .line 60
    .local v0, "source":Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;
    iget v1, v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->edition:I

    .line 61
    .local v1, "e":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unrecognized Razor edition"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_1
    :goto_0
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->PREPARE_A3:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->A3_BUFFER:[B

    const-string v4, "A3 work RAM destination"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->check([BI[BLjava/lang/String;)V

    .line 63
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_WRITER:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->WRITE_FOUR_WORDS:[B

    const-string v4, "eight-byte SAT record writer"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->check([BI[BLjava/lang/String;)V

    .line 64
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->RECORD_LIMIT:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->LIMIT_SEQUENCE:[B

    const-string v4, "80-record producer bound"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->check([BI[BLjava/lang/String;)V

    .line 65
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;-><init>(ILcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace-IA;)V

    return-object v2
.end method

.method private static word([BI)I
    .locals 2
    .param p0, "v"    # [B
    .param p1, "p"    # I

    .line 106
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
