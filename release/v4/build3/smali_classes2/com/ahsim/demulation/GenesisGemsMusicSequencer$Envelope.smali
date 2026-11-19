.class final Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;
.super Ljava/lang/Object;
.source "GenesisGemsMusicSequencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsMusicSequencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Envelope"
.end annotation


# instance fields
.field active:Z

.field count:I

.field delta:I

.field pos:I

.field final raw:[B

.field value:I


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "raw"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    return-void
.end method

.method private static s16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 59
    if-ltz p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 59
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method tick()Z
    .locals 5

    .line 43
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->count:I

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 45
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    iget-object v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->active:Z

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    return v2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 47
    .local v0, "segment":I
    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->active:Z

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    return v2

    .line 48
    :cond_2
    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    iput-boolean v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->active:Z

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    return v2

    .line 49
    :cond_3
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->count:I

    .line 50
    iget-object v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    iget v3, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->s16([BI)I

    move-result v1

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->delta:I

    .line 51
    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    .line 52
    .end local v0    # "segment":I
    goto :goto_0

    .line 53
    :cond_4
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->count:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->count:I

    .line 55
    :goto_0
    iget v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    iget v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->delta:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    .line 56
    return v2
.end method

.method trigger()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->raw:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->s16([BI)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->value:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->pos:I

    .line 38
    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->count:I

    .line 39
    iput v1, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->delta:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsMusicSequencer$Envelope;->active:Z

    .line 41
    return-void
.end method
