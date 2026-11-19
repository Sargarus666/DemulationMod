.class public final Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;
.super Ljava/lang/Object;
.source "RazorSpriteBankAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteBankAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final gameplayReady:Z

.field public final romSha256:Ljava/lang/String;

.field public final spriteFramesReady:Z

.field public final structureArtworkReady:Z

.field public final variant:I

.field public final verifiedBlocks:I

.field private final verifiedRom:[B


# direct methods
.method private constructor <init>(ILjava/lang/String;[B)V
    .locals 1
    .param p1, "variant"    # I
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "rom"    # [B

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/16 v0, 0x49

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->verifiedBlocks:I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->gameplayReady:Z

    .line 129
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->spriteFramesReady:Z

    .line 130
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->structureArtworkReady:Z

    .line 134
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->variant:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->romSha256:Ljava/lang/String;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->verifiedRom:[B

    .line 135
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;[BLcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;-><init>(ILjava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public entriesCopy()[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .locals 1

    .line 136
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->-$$Nest$sfgetCATALOG()[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    move-result-object v0

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    return-object v0
.end method

.method public entry(Ljava/lang/String;)Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteBankAudit;->-$$Nest$sfgetCATALOG()[Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    iget-object v4, v3, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sourceLabel:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .end local v3    # "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unverified Razor sprite fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patternPixels(Ljava/lang/String;I)[B
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "patternIndex"    # I

    .line 167
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->entry(Ljava/lang/String;)Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    move-result-object v0

    .line 168
    .local v0, "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    if-ltz p2, :cond_1

    iget v1, v0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->patternCount:I

    if-ge p2, v1, :cond_1

    .line 170
    iget v1, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->variant:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->romOffset(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x20

    add-int/2addr v1, v2

    .line 171
    .local v1, "start":I
    const/16 v2, 0x40

    new-array v2, v2, [B

    .line 172
    .local v2, "pixels":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->verifiedRom:[B

    add-int v5, v1, v3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 174
    .local v4, "packed":I
    mul-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, v4, 0x4

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 175
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v4, 0xf

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 172
    .end local v4    # "packed":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 169
    .end local v1    # "start":I
    .end local v2    # "pixels":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Razor sprite pattern outside verified block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public trikeSourcePoseIndices(I)[B
    .locals 11
    .param p1, "pose"    # I

    .line 152
    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    .line 153
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 154
    .local v0, "out":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trike"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".smd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "label":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "xTile":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 156
    const/4 v4, 0x0

    .local v4, "yTile":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 157
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->patternPixels(Ljava/lang/String;I)[B

    move-result-object v5

    .line 158
    .local v5, "pix":[B
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    .line 159
    mul-int/lit8 v8, v6, 0x8

    mul-int/lit8 v9, v4, 0x8

    add-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x10

    mul-int/lit8 v10, v2, 0x8

    add-int/2addr v9, v10

    invoke-static {v5, v8, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 156
    .end local v5    # "pix":[B
    .end local v6    # "y":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    .end local v4    # "yTile":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "xTile":I
    :cond_2
    return-object v0

    .line 152
    .end local v0    # "out":[B
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trike source pose 0..4 only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifiedBlockCopy(Ljava/lang/String;)[B
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .line 142
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->entry(Ljava/lang/String;)Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;

    move-result-object v0

    .local v0, "e":Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
    iget v1, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->variant:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->romOffset(I)I

    move-result v1

    .line 143
    .local v1, "start":I
    iget-object v2, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Result;->verifiedRom:[B

    iget v3, v0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    add-int/2addr v3, v1

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2
.end method
