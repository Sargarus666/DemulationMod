.class public final Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;
.super Ljava/lang/Object;
.source "RazorSpriteOrientationDispatchAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;
    }
.end annotation


# static fields
.field public static final HEADINGS:I = 0x8

.field private static final ROUND_OPCODE:[B

.field private static final ROUND_TRACES:[I

.field private static final TABLE_OPCODE:[B

.field private static final TABLE_TRACES:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetROUND_TRACES()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->ROUND_TRACES:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTABLE_TRACES()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->TABLE_TRACES:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    const/16 v0, 0x7e96

    const/16 v1, 0x7fc4

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->ROUND_TRACES:[I

    .line 26
    const v0, 0xe8ae

    const v1, 0xe9ea

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->TABLE_TRACES:[I

    .line 32
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->ROUND_OPCODE:[B

    .line 35
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->TABLE_OPCODE:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x40t
        0x0t
        0x10t
        0x2t
        0x40t
        0x0t
        -0x1t
        -0x16t
        0x40t
        -0x15t
        0x48t
        0x36t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x40t
        0x0t
        0x10t
        0x2t
        0x40t
        0x0t
        -0x1t
        -0x16t
        0x40t
        0x36t
        0x0t
        0x34t
        0x4t
        0x30t
        0x3t
        -0x30t
        0x40t
        -0x2ct
        0x7bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bucketHistogram(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .local v0, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 114
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->headingBucket(I)I

    move-result v3

    .line 117
    .local v3, "bucket":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "bucket":I
    goto :goto_1

    .line 115
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unexpected initial Razor unit heading record"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    return-object v0
.end method

.method public static headingBucket(I)I
    .locals 2
    .param p0, "headingByte"    # I

    .line 82
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 84
    add-int/lit8 v1, p0, 0x10

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x5

    return v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw heading is not a byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;
    .locals 6
    .param p0, "rom"    # [B
    .param p1, "expectedSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;

    move-result-object v2

    .line 88
    .local v2, "prior":Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;
    iget v1, v2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->romVariant:I

    .line 89
    .local v1, "edition":I
    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unauthenticated Razor revision"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    sget-object v3, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->ROUND_TRACES:[I

    aget v3, v3, v1

    sget-object v4, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->ROUND_OPCODE:[B

    const-string v5, "heading-rounding"

    invoke-static {p0, v3, v4, v5}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->requireSequence([BI[BLjava/lang/String;)V

    .line 91
    sget-object v3, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->TABLE_TRACES:[I

    aget v3, v3, v1

    sget-object v4, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->TABLE_OPCODE:[B

    const-string v5, "heading-table-index"

    invoke-static {p0, v3, v4, v5}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->requireSequence([BI[BLjava/lang/String;)V

    .line 92
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 93
    mul-int/lit8 v4, v3, 0x20

    invoke-static {v4}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->headingBucket(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v4, "68000 eight-heading arithmetic mismatch"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->headingBucket(I)I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x10

    invoke-static {v3}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->headingBucket(I)I

    move-result v3

    if-ne v3, v0, :cond_4

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->headingBucket(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 97
    new-instance v0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;

    iget-object v3, v2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->trikes:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    .line 98
    invoke-virtual {v3}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->rawFacingCounts()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->bucketHistogram(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->raiders:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    .line 99
    invoke-virtual {v4}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->rawFacingCounts()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->bucketHistogram(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;-><init>(ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;Ljava/util/Map;Ljava/util/Map;Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit-IA;)V

    .line 97
    return-object v0

    .line 96
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v3, "68000 heading wrap/boundary mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static requireSequence([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "bytes"    # [B
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const-string v0, "Razor 68000 "

    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    .line 105
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 106
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-ne v2, v3, :cond_0

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " opcode diverged at ROM+0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v3, p1, v1

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 104
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of ROM bounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
