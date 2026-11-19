.class Lcom/ahsim/demulation/GenesisGemsSfxData$3;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/GenesisGemsSfxData;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/GenesisGemsSfxData;

    .line 331
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$3;->this$0:Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;)I
    .locals 4
    .param p1, "a"    # Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;
    .param p2, "b"    # Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    .line 333
    iget-wide v0, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    iget-wide v2, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->tick:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 334
    .local v0, "t":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->track:I

    iget v2, p2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;->track:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 331
    check-cast p1, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    check-cast p2, Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;

    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/GenesisGemsSfxData$3;->compare(Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;)I

    move-result p1

    return p1
.end method
