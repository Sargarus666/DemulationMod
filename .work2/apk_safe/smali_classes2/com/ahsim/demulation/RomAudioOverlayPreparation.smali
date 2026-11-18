.class final Lcom/ahsim/demulation/RomAudioOverlayPreparation;
.super Ljava/lang/Object;
.source "RomAudioOverlayPreparation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;,
        Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    }
.end annotation


# static fields
.field private static final LIMIT_PACK:I = 0x100000

.field private static final MAGIC:[B

.field static final STORAGE_DIR:Ljava/lang/String; = "optional_audio_overlay_v1"

.field static final STORAGE_FILE:Ljava/lang/String; = "candidate.aud"

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->MAGIC:[B

    return-void

    :array_0
    .array-data 1
        0x44t
        0x4dt
        0x41t
        0x55t
        0x44t
        0x32t
        0x32t
        0x21t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ascii(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    return-void
.end method

.method static compare([B[B)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .locals 8
    .param p0, "basePack"    # [B
    .param p1, "candidatePack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v1

    .line 71
    .local v1, "base":Lcom/ahsim/demulation/GenesisAudioSource;
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v2

    .line 74
    .local v2, "candidate":Lcom/ahsim/demulation/GenesisAudioSource;
    const v0, 0xc8160

    const v3, 0xd06bf

    const v4, 0x6a87e

    const v5, 0x87f44

    filled-new-array {v4, v5, v0, v3}, [I

    move-result-object v0

    move-object v6, v0

    .line 75
    .local v6, "anchors":[I
    array-length v0, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v4, v6, v3

    .line 76
    .local v4, "at":I
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v4, v5}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    .end local v4    # "at":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .restart local v4    # "at":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio source is missing canonical bank at 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    .end local v4    # "at":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 81
    .local v7, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;>;"
    const v4, 0x20c14

    const/4 v5, 0x0

    const-string v0, "option_names"

    const v3, 0x20874

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const v4, 0x6a9ba

    const/4 v5, 0x1

    const-string v0, "command_tables"

    const v3, 0x6a87e

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const v4, 0x88124

    const/4 v5, 0x0

    const-string v0, "option_selectors"

    const v3, 0x87f44

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    const v4, 0xd06bf

    const/4 v5, 0x1

    const-string v0, "title_gems"

    const v3, 0xc8160

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const v4, 0xfed40

    const-string v0, "gameplay_gems"

    const v3, 0xd06bf

    invoke-static/range {v0 .. v5}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;

    array-length v3, p1

    invoke-direct {v0, v7, v3}, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method private static diff(Ljava/lang/String;Lcom/ahsim/demulation/GenesisAudioSource;Lcom/ahsim/demulation/GenesisAudioSource;IIZ)Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "b"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "relevant"    # Z

    .line 91
    const-wide/16 v0, 0x0

    .line 92
    .local v0, "count":J
    move v2, p3

    move-wide v8, v0

    .end local v0    # "count":J
    .local v2, "at":I
    .local v8, "count":J
    :goto_0
    if-ge v2, p4, :cond_2

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v1

    .line 94
    .local v1, "existsA":Z
    invoke-virtual {p2, v2, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v0

    .line 95
    .local v0, "existsB":Z
    if-ne v1, v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v3

    invoke-virtual {p2, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v8, v3

    .line 92
    .end local v0    # "existsB":Z
    .end local v1    # "existsA":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "at":I
    :cond_2
    new-instance v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;

    move-object v4, p0

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "key":Ljava/lang/String;
    .end local p3    # "start":I
    .end local p4    # "end":I
    .end local p5    # "relevant":Z
    .local v4, "key":Ljava/lang/String;
    .local v5, "start":I
    .local v6, "end":I
    .local v7, "relevant":Z
    invoke-direct/range {v3 .. v9}, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Domain;-><init>(Ljava/lang/String;IIZJ)V

    return-object v3
.end method

.method private static makeHeader(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "baseSha"    # Ljava/lang/String;
    .param p1, "modSha"    # Ljava/lang/String;
    .param p2, "pack"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 148
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 149
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->write32(Ljava/io/ByteArrayOutputStream;I)V

    .line 150
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->ascii(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 151
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->ascii(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 152
    array-length v1, p2

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->write32(Ljava/io/ByteArrayOutputStream;I)V

    .line 153
    invoke-static {p2}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->sha256([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->ascii(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static read32([BI)I
    .locals 2
    .param p0, "v"    # [B
    .param p1, "pos"    # I

    .line 201
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readCandidate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "root"    # Ljava/io/File;
    .param p1, "baseSha"    # Ljava/lang/String;
    .param p2, "modSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    if-eqz p0, :cond_0

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v1, "candidate.aud"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->readCandidateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audio candidate root absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readCandidateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "baseSha"    # Ljava/lang/String;
    .param p2, "modSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-static {p1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->verifyFingerprint(Ljava/lang/String;)V

    .line 159
    invoke-static {p2}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->verifyFingerprint(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xd0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1000d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 162
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 163
    .local v0, "data":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 165
    .local v2, "done":I
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 166
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 167
    .local v3, "got":I
    if-ltz v3, :cond_0

    .line 168
    add-int/2addr v2, v3

    .line 169
    .end local v3    # "got":I
    goto :goto_0

    .line 167
    .restart local v3    # "got":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Staged audio pack truncated"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "baseSha":Ljava/lang/String;
    .end local p2    # "modSha":Ljava/lang/String;
    throw v4

    .line 170
    .end local v3    # "got":I
    .restart local v0    # "data":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "baseSha":Ljava/lang/String;
    .restart local p2    # "modSha":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 171
    .end local v2    # "done":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 172
    .end local v1    # "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->MAGIC:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    aget-byte v2, v0, v1

    sget-object v3, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->MAGIC:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Staged audio format mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->read32([BI)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 175
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xc

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v4, 0x40

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x4c

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 176
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 178
    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->read32([BI)I

    move-result v1

    .line 179
    .local v1, "len":I
    if-lez v1, :cond_5

    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_5

    array-length v2, v0

    const/16 v3, 0xd0

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    .line 181
    new-array v2, v1, [B

    .line 182
    .local v2, "pack":[B
    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    invoke-static {v2}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->sha256([B)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "actual":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x90

    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 185
    .local v5, "expected":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    .line 187
    return-object v2

    .line 185
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Staged audio SHA-256 mismatch"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    .end local v2    # "pack":[B
    .end local v3    # "actual":Ljava/lang/String;
    .end local v5    # "expected":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Staged audio payload size mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v1    # "len":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Staged audio source no longer matches selected ROMs"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Staged audio format version mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .local v1, "in":Ljava/io/FileInputStream;
    .local v2, "done":I
    :cond_8
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Staged audio pack changed during reading"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "baseSha":Ljava/lang/String;
    .end local p2    # "modSha":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "done":I
    .restart local v0    # "data":[B
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "baseSha":Ljava/lang/String;
    .restart local p2    # "modSha":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    .line 161
    .end local v0    # "data":[B
    .end local v1    # "in":Ljava/io/FileInputStream;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Staged audio pack is missing or invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 207
    .local v0, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v1, "hex":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "b":B
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02x"

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 210
    .end local v0    # "data":[B
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static stage(Ljava/io/File;[BLcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "root"    # Ljava/io/File;
    .param p1, "pack"    # [B
    .param p2, "audit"    # Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .param p3, "baseSha"    # Ljava/lang/String;
    .param p4, "modSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {p3}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->verifyFingerprint(Ljava/lang/String;)V

    .line 108
    invoke-static {p4}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->verifyFingerprint(Ljava/lang/String;)V

    .line 109
    if-eqz p0, :cond_a

    if-eqz p2, :cond_a

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot create audio staging root"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v1, "candidate.aud"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v0, "destination":Ljava/io/File;
    iget-boolean v1, p2, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->playbackDiffers:Z

    if-nez v1, :cond_4

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 114
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot clear previous audio candidate"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 117
    :cond_4
    if-eqz p1, :cond_9

    array-length v1, p1

    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_9

    array-length v1, p1

    iget v2, p2, Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;->sourcePackBytes:I

    if-ne v1, v2, :cond_9

    .line 119
    invoke-static {p1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    .line 120
    invoke-static {p3, p4, p1}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->makeHeader(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 121
    .local v1, "header":[B
    new-instance v2, Ljava/io/File;

    const-string v3, "candidate.aud.new"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v2, "temporary":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 126
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 128
    .end local v3    # "out":Ljava/io/FileOutputStream;
    invoke-static {v2, p3, p4}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->readCandidateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 129
    .local v3, "check":[B
    invoke-static {v3, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 131
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    invoke-static {v0, p3, p4}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->readCandidateFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 135
    nop

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 135
    :cond_5
    const/4 v4, 0x1

    return v4

    .line 132
    :cond_6
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Could not atomically publish staged audio pack"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "header":[B
    .end local v2    # "temporary":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "pack":[B
    .end local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .end local p3    # "baseSha":Ljava/lang/String;
    .end local p4    # "modSha":Ljava/lang/String;
    throw v4

    .line 130
    .restart local v0    # "destination":Ljava/io/File;
    .restart local v1    # "header":[B
    .restart local v2    # "temporary":Ljava/io/File;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "pack":[B
    .restart local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .restart local p3    # "baseSha":Ljava/lang/String;
    .restart local p4    # "modSha":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Staged audio pack did not survive write"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "header":[B
    .end local v2    # "temporary":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "pack":[B
    .end local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .end local p3    # "baseSha":Ljava/lang/String;
    .end local p4    # "modSha":Ljava/lang/String;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    .restart local v0    # "destination":Ljava/io/File;
    .restart local v1    # "header":[B
    .restart local v2    # "temporary":Ljava/io/File;
    .local v3, "out":Ljava/io/FileOutputStream;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "pack":[B
    .restart local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .restart local p3    # "baseSha":Ljava/lang/String;
    .restart local p4    # "modSha":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "destination":Ljava/io/File;
    .end local v1    # "header":[B
    .end local v2    # "temporary":Ljava/io/File;
    .end local p0    # "root":Ljava/io/File;
    .end local p1    # "pack":[B
    .end local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .end local p3    # "baseSha":Ljava/lang/String;
    .end local p4    # "modSha":Ljava/lang/String;
    :goto_2
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 137
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "destination":Ljava/io/File;
    .restart local v1    # "header":[B
    .restart local v2    # "temporary":Ljava/io/File;
    .restart local p0    # "root":Ljava/io/File;
    .restart local p1    # "pack":[B
    .restart local p2    # "audit":Lcom/ahsim/demulation/RomAudioOverlayPreparation$Audit;
    .restart local p3    # "baseSha":Ljava/lang/String;
    .restart local p4    # "modSha":Ljava/lang/String;
    :catchall_2
    move-exception v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 138
    :cond_8
    throw v3

    .line 118
    .end local v1    # "header":[B
    .end local v2    # "temporary":Ljava/io/File;
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid candidate pack size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "destination":Ljava/io/File;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No audio staging root/audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyFingerprint(Ljava/lang/String;)V
    .locals 2
    .param p0, "sha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    if-eqz p0, :cond_0

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audio source fingerprint is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static write32(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 198
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    return-void
.end method
