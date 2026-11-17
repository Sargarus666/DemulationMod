.class public final Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;
.super Ljava/lang/Object;
.source "RazorSpriteSatProducerTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;
    }
.end annotation


# static fields
.field private static final BUFFER_ANCHOR:[B

.field private static final BUFFER_DMA_SETUP:[I

.field private static final BUFFER_PREP:[I

.field private static final COUNTER_ANCHOR:[B

.field private static final COUNTER_WRITER:[I

.field private static final DMA_ANCHOR:[B

.field private static final SAT_BASE_CONFIG:[I

.field public static final SAT_COUNTER_RAM:I = 0xffe420

.field public static final SAT_MAX_BYTES:I = 0x280

.field public static final SAT_MAX_SLOTS:I = 0x50

.field public static final SAT_RAM_BASE:I = 0xffe428

.field private static final SAT_REG5:[B

.field public static final SAT_SLOT_BYTES:I = 0x8

.field private static final SAT_UPLOAD:[B

.field private static final SAT_UPLOADER:[I

.field public static final SAT_VDP_CONTROL:I = 0xc00004

.field public static final SAT_VDP_DATA:I = 0xc00000

.field public static final SAT_VRAM_BASE:I = 0xf000


# direct methods
.method static bridge synthetic -$$Nest$sfgetBUFFER_DMA_SETUP()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_DMA_SETUP:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetBUFFER_PREP()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_PREP:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetCOUNTER_WRITER()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->COUNTER_WRITER:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSAT_BASE_CONFIG()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_BASE_CONFIG:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSAT_UPLOADER()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOADER:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    const/16 v0, 0x388e

    const/16 v1, 0x39a2

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOADER:[I

    .line 20
    const/16 v0, 0x25f0

    const/16 v1, 0x25d6

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_BASE_CONFIG:[I

    .line 21
    const/16 v0, 0x1368

    const/16 v1, 0x1348

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_PREP:[I

    .line 22
    const/16 v0, 0x14dc

    const/16 v1, 0x14bc

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->COUNTER_WRITER:[I

    .line 23
    const/16 v0, 0x231a

    const/16 v1, 0x2300

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_DMA_SETUP:[I

    .line 37
    const-string v0, "43f900c0000045e9000424bc7000000341f8e4283238e420e8490c4100136f0272132298229822982298229822982298229851c9ffee24bc74000003"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOAD:[B

    .line 43
    const-string v0, "33fc857800c00004"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_REG5:[B

    .line 45
    const-string v0, "48e73f3e244840e7007c07004e6747f8e428"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_ANCHOR:[B

    .line 47
    const-string v0, "31c7e420"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->COUNTER_ANCHOR:[B

    .line 49
    const-string v0, "41f8e4282008028000ffffffe288323c9500"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->DMA_ANCHOR:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 114
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

    .line 115
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;

    move-result-object v0

    .line 81
    .local v0, "prev":Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;
    iget v1, v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->edition:I

    .line 82
    .local v1, "edition":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 83
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOADER:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOAD:[B

    const-string v4, "SAT upload program"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->witness([BI[BLjava/lang/String;)V

    .line 84
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_BASE_CONFIG:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_REG5:[B

    const-string v4, "VDP SAT base register"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->witness([BI[BLjava/lang/String;)V

    .line 85
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_PREP:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_ANCHOR:[B

    const-string v4, "RAM sprite buffer preparation"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->witness([BI[BLjava/lang/String;)V

    .line 86
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->COUNTER_WRITER:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->COUNTER_ANCHOR:[B

    const-string v4, "SAT work RAM counter"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->witness([BI[BLjava/lang/String;)V

    .line 87
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->BUFFER_DMA_SETUP:[I

    aget v2, v2, v1

    sget-object v3, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->DMA_ANCHOR:[B

    const-string v4, "separate VDP DMA setup"

    invoke-static {p0, v2, v3, v4}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->witness([BI[BLjava/lang/String;)V

    .line 88
    const v2, 0x70000003

    invoke-static {v2}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->vramAddressFromWriteCommand(I)I

    move-result v2

    const v3, 0xf000

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->SAT_UPLOAD:[B

    array-length v2, v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_0

    .line 92
    new-instance v2, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;-><init>(ILcom/ahsim/demulation/RazorSpriteSatProducerTrace-IA;)V

    return-object v2

    .line 91
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Contradictory Genesis SAT register/command evidence"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unsupported Razor edition"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static uploadBytesForRawCounter(I)I
    .locals 2
    .param p0, "rawWord"    # I

    .line 99
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 100
    ushr-int/lit8 v0, p0, 0x4

    const/16 v1, 0x13

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "16-bit counter required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static vramAddressFromWriteCommand(I)I
    .locals 2
    .param p0, "command"    # I

    .line 104
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0x3fff

    and-int/lit8 v1, p0, 0x3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    return v0
.end method

.method private static witness([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "at"    # I
    .param p2, "pattern"    # [B
    .param p3, "role"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 109
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

    .line 110
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at ROM +0x"

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

    .line 111
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 108
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
