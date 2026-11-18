.class abstract Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;
.super Ljava/lang/Object;
.source "GenesisOriginalSfxPlayer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Scheduled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;",
        ">;"
    }
.end annotation


# instance fields
.field final frame:J

.field final sequence:I

.field final serial:J


# direct methods
.method constructor <init>(JJI)V
    .locals 0
    .param p1, "frame"    # J
    .param p3, "serial"    # J
    .param p5, "sequence"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->frame:J

    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->serial:J

    iput p5, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->sequence:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;)I
    .locals 5
    .param p1, "other"    # Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;

    .line 64
    iget-wide v0, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->frame:J

    iget-wide v2, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->frame:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .local v0, "c":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->serial:J

    iget-wide v3, p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->serial:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;

    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;->compareTo(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer$Scheduled;)I

    move-result p1

    return p1
.end method

.method abstract fire(Lcom/ahsim/demulation/GenesisOriginalSfxPlayer;)V
.end method
