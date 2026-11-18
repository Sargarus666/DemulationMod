.class public final Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;
.super Ljava/lang/Object;
.source "RazorSpriteSatCallGraphAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;,
        Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;
    }
.end annotation


# static fields
.field private static final COORD_INPUT:[B

.field private static final COORD_MATH_OFFSET:[I

.field public static final GRAPH_NODE_COUNT:I = 0xa

.field public static final VDP_CONTROL_PORT:I = 0xc00004

.field public static final VDP_DATA_PORT:I = 0xc00000

.field private static final VDP_SETUP:[B

.field private static final VDP_SETUP_OFFSET:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOORD_MATH_OFFSET()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->COORD_MATH_OFFSET:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVDP_SETUP_OFFSET()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->VDP_SETUP_OFFSET:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smsha256([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->sha256([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/16 v0, 0x6cf4

    const/16 v1, 0x6e10

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->VDP_SETUP_OFFSET:[I

    .line 25
    const v0, 0xe892

    const v1, 0xe9ce

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->COORD_MATH_OFFSET:[I

    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->VDP_SETUP:[B

    .line 34
    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->COORD_INPUT:[B

    return-void

    :array_0
    .array-data 1
        0x45t
        -0x7t
        0x0t
        -0x40t
        0x0t
        0x4t
        0x47t
        -0x7t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x34t
        -0x44t
        -0x71t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x48t
        -0x19t
        0x18t
        0x0t
        0x22t
        0x45t
        0x22t
        0x2ft
        0x0t
        0xct
        0x36t
        0x2ft
        0x0t
        0x10t
        0x38t
        0x1t
        0x2t
        0x44t
        -0x1t
        -0x1t
        0x2at
        0x1t
        0x42t
        0x45t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;
    .locals 16
    .param p0, "rom"    # [B
    .param p1, "expectedSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    move-object/from16 v0, p0

    .line 80
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;

    move-result-object v1

    .line 81
    .local v1, "direction":Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;

    move-result-object v2

    .line 82
    .local v2, "cfg":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
    iget v3, v1, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->variant:I

    .line 83
    .local v3, "version":I
    iget v4, v2, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->variant:I

    if-ne v3, v4, :cond_6

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    const/4 v4, 0x2

    if-gt v3, v4, :cond_6

    .line 85
    sget-object v5, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->VDP_SETUP_OFFSET:[I

    aget v5, v5, v3

    sget-object v6, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->VDP_SETUP:[B

    const-string v7, "VDP control/data setup"

    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->requireSequence([BI[BLjava/lang/String;)V

    .line 86
    sget-object v5, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->COORD_MATH_OFFSET:[I

    aget v5, v5, v3

    sget-object v6, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->COORD_INPUT:[B

    const-string v7, "coordinate heading routine"

    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->requireSequence([BI[BLjava/lang/String;)V

    .line 87
    const/16 v5, 0xa

    new-array v6, v5, [Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    .line 88
    .local v6, "edges":[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;
    const/4 v7, 0x0

    .line 89
    .local v7, "index":I
    const/4 v8, 0x0

    .local v8, "group":I
    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x5

    if-ge v8, v4, :cond_2

    const/4 v11, 0x0

    .local v11, "pose":I
    :goto_1
    if-ge v11, v10, :cond_1

    .line 90
    invoke-virtual {v2, v8, v11}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->frame(II)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    move-result-object v12

    .line 91
    .local v12, "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    iget v13, v12, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->romPointerSlot:I

    mul-int/lit8 v14, v8, 0x40

    const v15, 0x85152

    add-int/2addr v14, v15

    mul-int/lit8 v15, v11, 0x8

    add-int/2addr v14, v15

    if-ne v13, v14, :cond_0

    iget v13, v12, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->vramTile:I

    mul-int/lit8 v14, v11, 0x4

    add-int/lit16 v14, v14, 0x58b

    if-ne v13, v14, :cond_0

    iget v13, v12, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->frameWidth:I

    const/16 v14, 0x10

    if-ne v13, v14, :cond_0

    iget v13, v12, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->frameHeight:I

    if-ne v13, v14, :cond_0

    .line 95
    add-int/lit8 v13, v7, 0x1

    .end local v7    # "index":I
    .local v13, "index":I
    new-instance v14, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    invoke-direct {v14, v12, v9}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;-><init>(Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit-IA;)V

    aput-object v14, v6, v7

    .line 89
    .end local v12    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    add-int/lit8 v11, v11, 0x1

    move v7, v13

    goto :goto_1

    .line 94
    .end local v13    # "index":I
    .restart local v7    # "index":I
    .restart local v12    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "CFG-to-ROM-graphic provenance changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v11    # "pose":I
    .end local v12    # "frame":Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 97
    .end local v8    # "group":I
    :cond_2
    if-ne v7, v5, :cond_5

    .line 98
    const/4 v4, 0x0

    .local v4, "pose":I
    :goto_2
    if-ge v4, v10, :cond_4

    aget-object v5, v6, v4

    iget-object v5, v5, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->gfxSha256:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x5

    aget-object v8, v6, v8

    iget-object v8, v8, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->gfxSha256:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 99
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v8, "Razor paired sprite pointer blocks diverged"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    .end local v4    # "pose":I
    :cond_4
    new-instance v4, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;

    invoke-direct {v4, v3, v6, v9}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;-><init>(I[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit-IA;)V

    return-object v4

    .line 97
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Incomplete verified CFG graph"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .end local v6    # "edges":[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;
    .end local v7    # "index":I
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor sprite-bank edition mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static requireSequence([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "bytes"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 106
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

    .line 107
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Razor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mismatch at 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p1, v0

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 105
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

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 113
    .local v0, "sum":[B
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 114
    .local v1, "alphabet":[C
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 115
    .local v2, "out":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 116
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    .local v4, "b":I
    mul-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, v4, 0x4

    aget-char v6, v1, v6

    aput-char v6, v2, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0xf

    aget-char v6, v1, v6

    aput-char v6, v2, v5

    .line 115
    .end local v4    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 119
    .end local v0    # "sum":[B
    .end local v1    # "alphabet":[C
    .end local v2    # "out":[C
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
