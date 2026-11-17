.class public final Lcom/ahsim/demulation/GenesisRomIdentity;
.super Ljava/lang/Object;
.source "GenesisRomIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisRomIdentity$Result;,
        Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;,
        Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    }
.end annotation


# static fields
.field private static final HEADER_END:I = 0x200

.field private static final ROM_PROBE_END:I = 0x240


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static ascii([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 189
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 190
    .local v2, "value":I
    if-nez v2, :cond_0

    .line 191
    goto :goto_1

    .line 193
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static digest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required digest is not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 206
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 207
    .local v0, "alphabet":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 208
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 209
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 210
    .local v3, "value":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 211
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 208
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static identify(Ljava/io/InputStream;)Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .locals 21
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    move-object/from16 v0, p0

    if-eqz v0, :cond_d

    .line 62
    const-string v1, "SHA-1"

    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomIdentity;->digest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 63
    .local v1, "sha1":Ljava/security/MessageDigest;
    const-string v2, "SHA-256"

    invoke-static {v2}, Lcom/ahsim/demulation/GenesisRomIdentity;->digest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 64
    .local v2, "sha256":Ljava/security/MessageDigest;
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 65
    .local v3, "crc32":Ljava/util/zip/CRC32;
    const/16 v4, 0x240

    new-array v4, v4, [B

    .line 66
    .local v4, "header":[B
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 67
    .local v5, "buffer":[B
    const-wide/16 v6, 0x0

    .line 68
    .local v6, "position":J
    const/4 v8, 0x0

    .line 69
    .local v8, "checksum":I
    const/4 v9, -0x1

    .line 72
    .local v9, "checksumHigh":I
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v11, v10

    .local v11, "count":I
    const/4 v15, 0x0

    if-ltz v10, :cond_5

    .line 73
    if-nez v11, :cond_0

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1, v5, v15, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    invoke-virtual {v2, v5, v15, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 78
    invoke-virtual {v3, v5, v15, v11}, Ljava/util/zip/CRC32;->update([BII)V

    .line 80
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_4

    .line 81
    const v16, 0xffff

    const-wide/16 v17, 0x200

    int-to-long v12, v10

    add-long/2addr v12, v6

    .line 82
    .local v12, "absolute":J
    aget-byte v14, v5, v10

    and-int/lit16 v14, v14, 0xff

    .line 83
    .local v14, "value":I
    const-wide/16 v19, 0x240

    cmp-long v15, v12, v19

    if-gez v15, :cond_1

    .line 84
    long-to-int v15, v12

    aget-byte v19, v5, v10

    aput-byte v19, v4, v15

    .line 86
    :cond_1
    cmp-long v15, v12, v17

    if-ltz v15, :cond_3

    .line 87
    if-gez v9, :cond_2

    .line 88
    move v9, v14

    goto :goto_2

    .line 90
    :cond_2
    shl-int/lit8 v15, v9, 0x8

    add-int/2addr v15, v8

    add-int/2addr v15, v14

    and-int v8, v15, v16

    .line 91
    const/4 v9, -0x1

    .line 80
    .end local v12    # "absolute":J
    .end local v14    # "value":I
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 95
    .end local v10    # "i":I
    :cond_4
    int-to-long v12, v11

    add-long/2addr v6, v12

    goto :goto_0

    .line 97
    :cond_5
    const v16, 0xffff

    const-wide/16 v17, 0x200

    if-ltz v9, :cond_6

    .line 98
    shl-int/lit8 v10, v9, 0x8

    add-int/2addr v10, v8

    and-int v8, v10, v16

    .line 101
    :cond_6
    new-instance v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    invoke-direct {v10}, Lcom/ahsim/demulation/GenesisRomIdentity$Result;-><init>()V

    .line 102
    .local v10, "result":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    iput-wide v6, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->size:J

    .line 103
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-static {v12}, Lcom/ahsim/demulation/GenesisRomIdentity;->hex([B)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha1:Ljava/lang/String;

    .line 104
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v12

    invoke-static {v12}, Lcom/ahsim/demulation/GenesisRomIdentity;->hex([B)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    .line 105
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%08x"

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->crc32:Ljava/lang/String;

    .line 107
    cmp-long v12, v6, v17

    const/16 v13, 0x100

    const/16 v14, 0x110

    if-ltz v12, :cond_7

    .line 108
    invoke-static {v4, v13, v14}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    const-string v15, "SEGA"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->hasSegaHeader:Z

    .line 109
    iget-boolean v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->hasSegaHeader:Z

    const-string v15, ""

    if-eqz v12, :cond_9

    .line 110
    invoke-static {v4, v13, v14}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->consoleName:Ljava/lang/String;

    .line 111
    const/16 v12, 0x120

    invoke-static {v4, v14, v12}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->copyright:Ljava/lang/String;

    .line 112
    const/16 v13, 0x150

    invoke-static {v4, v12, v13}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->domesticTitle:Ljava/lang/String;

    .line 113
    const/16 v12, 0x180

    invoke-static {v4, v13, v12}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->overseasTitle:Ljava/lang/String;

    .line 114
    const/16 v13, 0x18e

    invoke-static {v4, v12, v13}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    .line 115
    aget-byte v12, v4, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/16 v13, 0x18f

    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    iput v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->storedHeaderChecksum:I

    .line 116
    const/16 v12, 0x190

    const/16 v13, 0x1a0

    invoke-static {v4, v12, v13}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->ioSupport:Ljava/lang/String;

    .line 117
    const/16 v12, 0x1f0

    const/16 v13, 0x200

    invoke-static {v4, v12, v13}, Lcom/ahsim/demulation/GenesisRomIdentity;->ascii([BII)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->regionRaw:Ljava/lang/String;

    .line 118
    iput v8, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->computedHeaderChecksum:I

    .line 119
    iget v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->storedHeaderChecksum:I

    iget v13, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->computedHeaderChecksum:I

    if-ne v12, v13, :cond_8

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    iput-boolean v14, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->headerChecksumValid:Z

    goto :goto_5

    .line 121
    :cond_9
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->consoleName:Ljava/lang/String;

    .line 122
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->copyright:Ljava/lang/String;

    .line 123
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->domesticTitle:Ljava/lang/String;

    .line 124
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->overseasTitle:Ljava/lang/String;

    .line 125
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    .line 126
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->ioSupport:Ljava/lang/String;

    .line 127
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->regionRaw:Ljava/lang/String;

    .line 128
    const/4 v12, 0x0

    iput v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->storedHeaderChecksum:I

    .line 129
    iput v8, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->computedHeaderChecksum:I

    .line 130
    iput-boolean v12, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->headerChecksumValid:Z

    .line 133
    :goto_5
    invoke-static {v10}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->findExact(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v12

    .line 134
    .local v12, "exact":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    iget-wide v13, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->size:J

    iget-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    invoke-static {v4, v13, v14, v0}, Lcom/ahsim/demulation/DuneHackR82Probe;->inspect([BJLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    move-result-object v0

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 135
    if-eqz v12, :cond_a

    .line 136
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->EXACT_PROFILE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 137
    iget-object v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->id:Ljava/lang/String;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 138
    iget-object v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->displayLabel:Ljava/lang/String;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    .line 139
    iget-object v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 140
    iget-object v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 141
    iget-boolean v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    iput-boolean v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    .line 142
    iget-object v0, v12, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->preparationNote:Ljava/lang/String;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->preparationNote:Ljava/lang/String;

    goto/16 :goto_6

    .line 143
    :cond_a
    iget-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 148
    iget-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->profileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 149
    iget-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    invoke-virtual {v0}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->profileLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 151
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    .line 153
    const-string v0, "R82C family detected; gameplay and content adapters are not ready."

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->preparationNote:Ljava/lang/String;

    goto :goto_6

    .line 154
    :cond_b
    invoke-static {v10}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->looksLikeGameFamily(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 155
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->GAME_FAMILY_CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "candidate:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->serial:Ljava/lang/String;

    invoke-static {v13}, Lcom/ahsim/demulation/GenesisRomIdentity;->safeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 157
    const-string v0, "Recognized game family / unverified revision"

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->UNVERIFIED:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 163
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->CANDIDATE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    .line 165
    const-string v0, "This revision has not been audited for BASE preparation."

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->preparationNote:Ljava/lang/String;

    goto :goto_6

    .line 167
    :cond_c
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;->UNRECOGNIZED:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

    .line 168
    const-string v0, "unrecognized"

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileId:Ljava/lang/String;

    .line 169
    const-string v0, "Unrecognized ROM"

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->profileLabel:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 171
    sget-object v0, Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;->INCOMPATIBLE:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->basePreparationSupported:Z

    .line 173
    iput-object v15, v10, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->preparationNote:Ljava/lang/String;

    .line 175
    :goto_6
    return-object v10

    .line 59
    .end local v1    # "sha1":Ljava/security/MessageDigest;
    .end local v2    # "sha256":Ljava/security/MessageDigest;
    .end local v3    # "crc32":Ljava/util/zip/CRC32;
    .end local v4    # "header":[B
    .end local v5    # "buffer":[B
    .end local v6    # "position":J
    .end local v8    # "checksum":I
    .end local v9    # "checksumHigh":I
    .end local v10    # "result":Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .end local v11    # "count":I
    .end local v12    # "exact":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static safeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .line 199
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^A-Za-z0-9._-]+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method
