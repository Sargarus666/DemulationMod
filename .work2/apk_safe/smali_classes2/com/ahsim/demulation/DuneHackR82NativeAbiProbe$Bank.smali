.class public final Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;
.super Ljava/lang/Object;
.source "DuneHackR82NativeAbiProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bank"
.end annotation


# instance fields
.field public final distinctNativeIds:I

.field public final executeCount:I

.field public final executeCountsById:[I

.field public final instructionCount:I

.field public final name:Ljava/lang/String;

.field public final nativeIdMask:J


# direct methods
.method private constructor <init>(Ljava/lang/String;IIJ[I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instructions"    # I
    .param p3, "executes"    # I
    .param p4, "mask"    # J
    .param p6, "counts"    # [I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->name:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->instructionCount:I

    .line 26
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCount:I

    .line 27
    iput-wide p4, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->nativeIdMask:J

    .line 28
    invoke-static {p4, p5}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->distinctNativeIds:I

    .line 29
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCountsById:[I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIJ[ILcom/ahsim/demulation/DuneHackR82NativeAbiProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;-><init>(Ljava/lang/String;IIJ[I)V

    return-void
.end method


# virtual methods
.method public calls(I)I
    .locals 2
    .param p1, "id"    # I

    .line 35
    if-ltz p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->executeCountsById:[I

    aget v0, v0, p1

    return v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid EMC native ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokes(I)Z
    .locals 4
    .param p1, "id"    # I

    .line 32
    if-ltz p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    iget-wide v0, p0, Lcom/ahsim/demulation/DuneHackR82NativeAbiProbe$Bank;->nativeIdMask:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
