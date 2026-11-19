.class final Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioRecordDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Reader"
.end annotation


# instance fields
.field final bytes:[B

.field pos:I


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    return-void
.end method


# virtual methods
.method text(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    if-ltz p1, :cond_4

    const/16 v0, 0x200

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_4

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 130
    .local v1, "ch":I
    if-eqz v1, :cond_1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C scenario non-ASCII resource name"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v1    # "ch":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 134
    .local v0, "value":Ljava/lang/String;
    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 136
    .local v2, "zero":I
    if-ltz v2, :cond_3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    return-object v1

    .line 127
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "zero":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R82C scenario text truncated at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method word()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 115
    .local v0, "n":I
    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    .line 116
    return v0

    .line 113
    .end local v0    # "n":I
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R82C scenario truncated at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method words(I)[I
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_1

    .line 121
    new-array v0, p1, [I

    .line 122
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->word()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 120
    .end local v0    # "result":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R82C scenario word array truncated at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Reader;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
