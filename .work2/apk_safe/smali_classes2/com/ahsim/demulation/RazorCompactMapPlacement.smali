.class public final Lcom/ahsim/demulation/RazorCompactMapPlacement;
.super Ljava/lang/Object;
.source "RazorCompactMapPlacement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;,
        Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;
    }
.end annotation


# static fields
.field public static final END_EXCLUSIVE:I = 0x30

.field private static final FLAG_OFFSET:I = 0x2591e

.field private static final GUARD_ONE:Ljava/lang/String; = "e5dddb701beec6a0bc10de5ec832165512d67fcdabf26721d954dce466c67fdb"

.field public static final MAP_SIDE:I = 0x40

.field private static final SHA_ONE:Ljava/lang/String; = "f4f2139273163f81d38c9aecfb39766246b769c296420d49cdc0db8bf34f3559"

.field private static final SHA_TWO:Ljava/lang/String; = "8da861b223be269ecc63875fed636650eaa66846aa79b49c5a3dfac0ad3bf35a"

.field public static final SOURCE_SIDE:I = 0x20

.field public static final START_X:I = 0x10

.field public static final START_Y:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadedTile(IZ)I
    .locals 2
    .param p0, "original"    # I
    .param p1, "specialMapTileRemap"    # Z

    .line 80
    if-ltz p0, :cond_3

    const/16 v0, 0xff

    if-gt p0, v0, :cond_3

    .line 82
    if-nez p1, :cond_0

    return p0

    .line 83
    :cond_0
    const/16 v0, 0xb0

    if-ne p0, v0, :cond_1

    const/16 v0, 0x7f

    goto :goto_0

    :cond_1
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_2

    const/16 v0, 0xbf

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsigned source metatile required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static place([BLcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;)Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "evidence"    # Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->romVariant:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->compactBoundsVerified:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;

    iget-boolean v1, p1, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->specialMapTileRemap:Z

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Placement;-><init>([BZLcom/ahsim/demulation/RazorCompactMapPlacement-IA;)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Compact placement requires verified 3 MiB Razor loader"

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

    .line 128
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 129
    .local v0, "hash":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 131
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    nop

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 135
    .end local v0    # "hash":[B
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static verifyRom([BLcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;)Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
    .locals 8
    .param p0, "rom"    # [B
    .param p1, "source"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 59
    iget v0, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v0, v1, :cond_1

    const v0, 0xf826

    goto :goto_0

    :cond_1
    const v0, 0xf93e

    .line 60
    .local v0, "address":I
    :goto_0
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v2, v1, :cond_2

    const-string v2, "f4f2139273163f81d38c9aecfb39766246b769c296420d49cdc0db8bf34f3559"

    goto :goto_1

    :cond_2
    const-string v2, "8da861b223be269ecc63875fed636650eaa66846aa79b49c5a3dfac0ad3bf35a"

    .line 61
    .local v2, "expected":Ljava/lang/String;
    :goto_1
    if-ltz v0, :cond_8

    array-length v3, p0

    sub-int/2addr v3, v0

    const/16 v4, 0x94

    if-lt v3, v4, :cond_8

    array-length v3, p0

    const v4, 0x2591e

    if-le v3, v4, :cond_8

    .line 63
    add-int/lit16 v3, v0, 0x94

    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->sha256([B)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "sha":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    iget v5, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-ne v5, v1, :cond_4

    .line 68
    array-length v5, p0

    const/16 v6, 0x2f0e

    if-lt v5, v6, :cond_3

    .line 69
    const/16 v5, 0x2ec6

    invoke-static {p0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v5}, Lcom/ahsim/demulation/RazorCompactMapPlacement;->sha256([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e5dddb701beec6a0bc10de5ec832165512d67fcdabf26721d954dce466c67fdb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 70
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Razor compact playable bounds not verified"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_4
    :goto_2
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 73
    .local v4, "remapFlag":I
    if-ne v4, v1, :cond_6

    .line 74
    new-instance v5, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;

    iget v6, p1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v1, v7}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;-><init>(ILjava/lang/String;ZLcom/ahsim/demulation/RazorCompactMapPlacement-IA;)V

    return-object v5

    .line 73
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Unexpected Razor map-load remap flag"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    .end local v4    # "remapFlag":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Unknown Razor 68000 map loader"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v3    # "sha":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Razor ROM map loader truncated"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "address":I
    .end local v2    # "expected":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor map-loader ROM differs from validated mission bundle"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No validated Razor map-loader source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
