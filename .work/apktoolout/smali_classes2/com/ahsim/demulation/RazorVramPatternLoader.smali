.class public final Lcom/ahsim/demulation/RazorVramPatternLoader;
.super Ljava/lang/Object;
.source "RazorVramPatternLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
    }
.end annotation


# static fields
.field private static final BASE_POINTER_OFFSET:I = 0x280a6

.field private static final COUNT_POINTER_OFFSET:I = 0x280a2

.field public static final METATILE_BANK_BYTES:I = 0x4000

.field private static final METATILE_BASE:I = 0x5a290

.field public static final METATILE_COUNT:I = 0x200

.field private static final METATILE_POINTER_SITES_RAZOR1:[I

.field private static final METATILE_POINTER_SITES_RAZOR2:[I

.field private static final METATILE_SHA:Ljava/lang/String; = "ec3de0c8f15e60ffdbd91ec5c2f5fbcf4b1b4cc4fbdbd2cf129a3702c041f5fd"

.field private static final NEXT_BLOCK:[B

.field public static final PATTERN_BANK_BYTES:I = 0x7380

.field public static final PATTERN_BYTES:I = 0x20

.field public static final PATTERN_COUNT:I = 0x39c

.field private static final PATTERN_SHA:Ljava/lang/String; = "15710e8495eba408941dcb2013170d7850170eb34edf9a3bf1c83cd8f8079057"


# direct methods
.method static bridge synthetic -$$Nest$smsha256([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->sha256([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smu16([BI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u16([BI)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 34
    const/16 v0, 0x4124

    const/16 v1, 0x421a

    const/16 v2, 0x2f8a

    const/16 v3, 0x328e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorVramPatternLoader;->METATILE_POINTER_SITES_RAZOR1:[I

    .line 35
    const/16 v0, 0x4238

    const/16 v1, 0x432e

    const/16 v2, 0x309e

    const/16 v3, 0x33a2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorVramPatternLoader;->METATILE_POINTER_SITES_RAZOR2:[I

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RazorVramPatternLoader;->NEXT_BLOCK:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x46t
        0x4ft
        0x52t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorVramPatternLoader$Result;
    .locals 12
    .param p0, "rom"    # [B
    .param p1, "verifiedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    invoke-static {p0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->sha256([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 86
    array-length v0, p0

    const v1, 0x280aa

    if-lt v0, v1, :cond_c

    const v0, 0x280a2

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u32([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x39c

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 88
    const v0, 0x280a6

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u32([BI)J

    move-result-wide v0

    .line 89
    .local v0, "baseLong":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    array-length v2, p0

    int-to-long v2, v2

    const-wide/16 v4, 0x7380

    sub-long/2addr v2, v4

    sget-object v4, Lcom/ahsim/demulation/RazorVramPatternLoader;->NEXT_BLOCK:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 91
    long-to-int v2, v0

    .line 94
    .local v2, "base":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/ahsim/demulation/RazorVramPatternLoader;->NEXT_BLOCK:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 95
    add-int/lit16 v4, v2, 0x7380

    add-int/2addr v4, v3

    aget-byte v4, p0, v4

    sget-object v5, Lcom/ahsim/demulation/RazorVramPatternLoader;->NEXT_BLOCK:[B

    aget-byte v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor base VRAM block boundary changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    .end local v3    # "i":I
    :cond_1
    const v3, 0x1aa93a

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    sget-object v3, Lcom/ahsim/demulation/RazorVramPatternLoader;->METATILE_POINTER_SITES_RAZOR1:[I

    goto :goto_1

    .line 100
    :cond_2
    const v3, 0x85486

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/ahsim/demulation/RazorVramPatternLoader;->METATILE_POINTER_SITES_RAZOR2:[I

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    nop

    .line 101
    .local v3, "pointerSites":[I
    if-eqz v3, :cond_a

    .line 102
    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget v7, v3, v6

    .line 103
    .local v7, "offset":I
    add-int/lit8 v8, v7, 0x4

    array-length v9, p0

    if-gt v8, v9, :cond_4

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u32([BI)J

    move-result-wide v8

    const-wide/32 v10, 0x5a290

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 102
    .end local v7    # "offset":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 104
    .restart local v7    # "offset":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor compiled metatile pointer changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    .end local v7    # "offset":I
    :cond_5
    array-length v5, p0

    add-int/lit16 v5, v5, -0x4000

    const v6, 0x5a290

    if-gt v6, v5, :cond_9

    .line 107
    add-int/lit16 v5, v2, 0x7380

    invoke-static {p0, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 108
    .local v5, "bank":[B
    const v7, 0x5e290

    invoke-static {p0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 109
    .local v6, "attrs":[B
    const-string v7, "15710e8495eba408941dcb2013170d7850170eb34edf9a3bf1c83cd8f8079057"

    invoke-static {v5}, Lcom/ahsim/demulation/RazorVramPatternLoader;->sha256([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "ec3de0c8f15e60ffdbd91ec5c2f5fbcf4b1b4cc4fbdbd2cf129a3702c041f5fd"

    invoke-static {v6}, Lcom/ahsim/demulation/RazorVramPatternLoader;->sha256([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 113
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_7

    .line 114
    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u16([BI)I

    move-result v8

    and-int/lit16 v8, v8, 0x7ff

    const/16 v9, 0x39c

    if-ge v8, v9, :cond_6

    .line 113
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    .line 115
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Razor metatile addresses unloaded VRAM pattern"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v7    # "i":I
    :cond_7
    new-instance v7, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;

    invoke-direct {v7, v2, v5, v6, v4}, Lcom/ahsim/demulation/RazorVramPatternLoader$Result;-><init>(I[B[BLcom/ahsim/demulation/RazorVramPatternLoader-IA;)V

    return-object v7

    .line 110
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Razor compiled VRAM/metatile content differs from both verified samples"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 106
    .end local v5    # "bank":[B
    .end local v6    # "attrs":[B
    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor metatile table truncated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_a
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unknown Razor R82C VRAM layout"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    .end local v2    # "base":I
    .end local v3    # "pointerSites":[I
    :cond_b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor base VRAM ROM pointer out of range"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .end local v0    # "baseLong":J
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor base VRAM pattern count not confirmed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor VRAM requires verified source ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 128
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v1, "out":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 130
    .local v4, "b":B
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    nop

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 134
    .end local v0    # "digest":[B
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "pos"    # I

    .line 120
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static u32([BI)J
    .locals 4
    .param p0, "data"    # [B
    .param p1, "pos"    # I

    .line 123
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u16([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RazorVramPatternLoader;->u16([BI)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
