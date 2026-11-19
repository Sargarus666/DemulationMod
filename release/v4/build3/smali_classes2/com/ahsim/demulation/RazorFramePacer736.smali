.class public final Lcom/ahsim/demulation/RazorFramePacer736;
.super Ljava/lang/Object;
.source "RazorFramePacer736.java"


# static fields
.field public static final FRAME_NS:J = 0xfe502bL

.field public static final MAX_BATCH:I = 0x8

.field private static final MAX_DEBT_NS:J = 0x7f28158L


# instance fields
.field private debtNs:J

.field private lastNs:J

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(J)V
    .locals 2
    .param p1, "nowNs"    # J

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->started:Z

    .line 17
    iput-wide p1, p0, Lcom/ahsim/demulation/RazorFramePacer736;->lastNs:J

    .line 18
    const-wide/32 v0, 0xfe502b

    iput-wide v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    .line 19
    return-void
.end method

.method public stop()V
    .locals 2

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->started:Z

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    .line 23
    return-void
.end method

.method public takeDue(J)I
    .locals 10
    .param p1, "nowNs"    # J

    .line 25
    iget-boolean v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->lastNs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/ahsim/demulation/RazorFramePacer736;->lastNs:J

    sub-long v0, p1, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 28
    .local v0, "elapsed":J
    :goto_0
    iput-wide p1, p0, Lcom/ahsim/demulation/RazorFramePacer736;->lastNs:J

    .line 30
    const-wide/32 v2, 0x7f28158

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    goto :goto_1

    .line 31
    :cond_2
    iget-wide v4, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    .line 32
    :goto_1
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    const-wide/32 v4, 0xfe502b

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 33
    .local v2, "due":I
    const/16 v3, 0x8

    if-le v2, v3, :cond_3

    const/16 v2, 0x8

    .line 34
    :cond_3
    iget-wide v6, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    int-to-long v8, v2

    mul-long/2addr v8, v4

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ahsim/demulation/RazorFramePacer736;->debtNs:J

    .line 35
    return v2
.end method
