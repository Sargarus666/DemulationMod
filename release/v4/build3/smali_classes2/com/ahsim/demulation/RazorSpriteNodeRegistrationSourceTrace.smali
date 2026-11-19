.class public final Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;
.super Ljava/lang/Object;
.source "RazorSpriteNodeRegistrationSourceTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;,
        Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$PathEvidence;
    }
.end annotation


# static fields
.field private static final CALLER_PREFIX:[B

.field private static final COMMON_PREFIX:[B

.field private static final ENTRY:[[I

.field public static final FIXED_DESCRIPTOR_POINTER_ADDRESS:I = 0x84286

.field private static final FLAGS:[I

.field public static final NODE_DESCRIPTOR_POINTER_OFFSET:I = 0x8

.field private static final PARENT_CALL:[[I

.field public static final RECORD_FIELD_0E_OFFSET:I = 0xe

.field public static final RECORD_GRAPHIC_NODE_HANDLE_OFFSET:I = 0x10

.field private static final REGISTRAR:[I

.field private static final REGISTRATION_D1:[I

.field private static final REGISTRATION_TAIL:[B

.field private static final REUSE_BRANCH:[B

.field public static final SOURCE_COORDINATE_OFFSET:I = 0xa

.field public static final TABLE_ALT_VARIANTS_BASE:I = 0x842ee

.field public static final TABLE_VARIANTS_BASE:I = 0x842d2


# direct methods
.method static bridge synthetic -$$Nest$sfgetENTRY()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->ENTRY:[[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetFLAGS()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->FLAGS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPARENT_CALL()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->PARENT_CALL:[[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetREGISTRAR()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRAR:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetREGISTRATION_D1()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_D1:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smread32([BI)J
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->read32([BI)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 23
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    const/16 v2, 0x59c8

    const/16 v3, 0x5a16

    const/16 v4, 0x5970

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x5adc

    const/16 v4, 0x5b2a

    const/16 v5, 0x5a84

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    filled-new-array {v1, v2, v3}, [[I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->ENTRY:[[I

    .line 25
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    const v2, 0x8b18

    const v3, 0x8a6c

    const v4, 0x8a52

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    const v3, 0x8c46

    const v4, 0x8b9a

    const v5, 0x8b80

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    filled-new-array {v1, v2, v3}, [[I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->PARENT_CALL:[[I

    .line 27
    const/16 v1, 0x12e6

    const/16 v2, 0x12c6

    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRAR:[I

    .line 28
    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v0, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->FLAGS:[I

    .line 29
    const/high16 v0, 0x3030000

    const/high16 v1, 0x7070000

    const/high16 v2, 0x6060000

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_D1:[I

    .line 30
    const-string v0, "48e7303045f8d497266f001470003013d5c0"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->COMMON_PREFIX:[B

    .line 31
    const-string v0, "302b00106708324023480008601e177c0003000e700ad08b"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REUSE_BRANCH:[B

    .line 32
    const-string v0, "374000106704"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_TAIL:[B

    .line 33
    const-string v0, "2f0a4eb8"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->CALLER_PREFIX:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hex(Ljava/lang/String;)[B
    .locals 4
    .param p0, "h"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 151
    .local v0, "b":[B
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

    .line 152
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;
    .locals 14
    .param p0, "rom"    # [B
    .param p1, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;

    move-result-object v0

    iget v0, v0, Lcom/ahsim/demulation/RazorSpriteSatObjectCallSiteTrace$Result;->edition:I

    .line 92
    .local v0, "e":I
    const/4 v1, 0x0

    .local v1, "s":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_d

    .line 93
    sget-object v3, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->ENTRY:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    .local v3, "at":I
    move v4, v3

    .line 94
    .local v4, "pos":I
    sget-object v5, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->COMMON_PREFIX:[B

    const-string v6, "record prologue"

    invoke-static {p0, v4, v5, v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    sget-object v5, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->COMMON_PREFIX:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 95
    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 96
    const-string v6, "302f0018e54841f9000842ee20700000"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "alt indexed pointer table"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 97
    add-int/lit8 v4, v4, 0x10

    goto :goto_1

    .line 98
    :cond_0
    if-ne v1, v5, :cond_1

    .line 99
    const-string v6, "207900084286"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "fixed pointer fetch"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    .line 101
    :cond_1
    const-string v6, "41f9000842d2302f0018e54820700000"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "variant pointer table"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 102
    add-int/lit8 v4, v4, 0x10

    .line 104
    :goto_1
    sget-object v6, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REUSE_BRANCH:[B

    const-string v7, "existing-node / new-node selection"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 105
    sget-object v6, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REUSE_BRANCH:[B

    array-length v6, v6

    add-int/2addr v4, v6

    .line 106
    const-string v6, "223c"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "control word move"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x2

    .line 107
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->read32([BI)J

    move-result-wide v6

    sget-object v8, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_D1:[I

    aget v8, v8, v1

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    .line 108
    add-int/lit8 v4, v4, 0x4

    .line 109
    const-string v6, "327cf3a84eb8"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "registrar call prologue"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x6

    .line 110
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->read16([BI)I

    move-result v6

    sget-object v7, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRAR:[I

    aget v7, v7, v0

    if-ne v6, v7, :cond_b

    .line 111
    add-int/lit8 v4, v4, 0x2

    .line 112
    sget-object v6, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_TAIL:[B

    const-string v7, "return node handle"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 113
    sget-object v6, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->REGISTRATION_TAIL:[B

    array-length v6, v6

    add-int/2addr v4, v6

    .line 114
    const-string v6, "08d200"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "mark record state"

    invoke-static {p0, v4, v6, v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    add-int/2addr v4, v2

    .line 115
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    sget-object v6, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->FLAGS:[I

    aget v6, v6, v1

    if-ne v2, v6, :cond_a

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    const-string v2, "4cdf0c0c4e75"

    invoke-static {v2}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v2

    const-string v6, "return from registration helper"

    invoke-static {p0, v4, v2, v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 119
    sget-object v2, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->PARENT_CALL:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 120
    .local v2, "caller":I
    add-int/lit8 v6, v2, -0x2

    if-ne v1, v5, :cond_2

    const-string v7, "2e8a4eb8"

    invoke-static {v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->CALLER_PREFIX:[B

    :goto_2
    const-string v8, "caller places record pointer A2 on stack"

    invoke-static {p0, v6, v7, v8}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 122
    add-int/lit8 v6, v2, 0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->read16([BI)I

    move-result v6

    if-ne v6, v3, :cond_9

    .line 124
    if-eq v1, v5, :cond_3

    add-int/lit8 v6, v2, 0x4

    const-string v7, "588f"

    invoke-static {v7}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->hex(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "caller unwinds record pointer"

    invoke-static {p0, v6, v7, v8}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->match([BI[BLjava/lang/String;)V

    .line 125
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    const/16 v7, 0x8

    if-ge v6, v7, :cond_8

    .line 126
    if-nez v1, :cond_4

    const v7, 0x842ee

    goto :goto_4

    .line 127
    :cond_4
    if-ne v1, v5, :cond_5

    const v7, 0x84286

    goto :goto_4

    :cond_5
    const v7, 0x842d2

    :goto_4
    nop

    .line 128
    .local v7, "table":I
    if-ne v1, v5, :cond_6

    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    mul-int/lit8 v8, v6, 0x4

    :goto_5
    add-int/2addr v8, v7

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace;->read32([BI)J

    move-result-wide v8

    .line 129
    .local v8, "ptr":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_7

    array-length v12, p0

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-gez v12, :cond_7

    const-wide/16 v12, 0x1

    and-long/2addr v12, v8

    cmp-long v10, v12, v10

    if-nez v10, :cond_7

    .line 125
    .end local v7    # "table":I
    .end local v8    # "ptr":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 130
    .restart local v7    # "table":I
    .restart local v8    # "ptr":J
    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v10, "ROM graphic descriptor pointer outside ROM"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    .end local v2    # "caller":I
    .end local v3    # "at":I
    .end local v4    # "pos":I
    .end local v6    # "i":I
    .end local v7    # "table":I
    .end local v8    # "ptr":J
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 122
    .restart local v2    # "caller":I
    .restart local v3    # "at":I
    .restart local v4    # "pos":I
    :cond_9
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Caller does not target helper"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    .end local v2    # "caller":I
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Unexpected render-state bit"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_b
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Unexpected node registrar destination"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_c
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Unexpected D1 flags"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v1    # "s":I
    .end local v3    # "at":I
    .end local v4    # "pos":I
    :cond_d
    new-instance v1, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace$Result;-><init>(I[BLcom/ahsim/demulation/RazorSpriteNodeRegistrationSourceTrace-IA;)V

    return-object v1
.end method

.method private static match([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .param p2, "signature"    # [B
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 146
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

    .line 147
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mismatched at "

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

    .line 148
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 145
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 137
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 136
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read16 bounds"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static read32([BI)J
    .locals 7
    .param p0, "data"    # [B
    .param p1, "pos"    # I

    .line 140
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-gt p1, v0, :cond_0

    .line 141
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "read32 bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
