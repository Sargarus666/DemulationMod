.class final Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SequencePlan"
.end annotation


# instance fields
.field final controlEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;",
            ">;"
        }
    .end annotation
.end field

.field final dacEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;",
            ">;"
        }
    .end annotation
.end field

.field final hasNonSfxTimedDac:Z

.field final hasNonSfxTimedHardware:Z

.field final hasUnsupportedControl:Z

.field final noteEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;",
            ">;"
        }
    .end annotation
.end field

.field final sequence:I

.field final trackCount:I

.field final usesFm:Z

.field final usesPsgNoise:Z

.field final usesPsgTone:Z


# direct methods
.method constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;ZZZZZZ)V
    .locals 1
    .param p1, "sequence"    # I
    .param p2, "trackCount"    # I
    .param p6, "usesFm"    # Z
    .param p7, "usesPsgTone"    # Z
    .param p8, "usesPsgNoise"    # Z
    .param p9, "hasNonSfxTimedDac"    # Z
    .param p10, "hasNonSfxTimedHardware"    # Z
    .param p11, "hasUnsupportedControl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;",
            ">;ZZZZZZ)V"
        }
    .end annotation

    .line 149
    .local p3, "dacEvents":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;>;"
    .local p4, "noteEvents":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;>;"
    .local p5, "controlEvents":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->sequence:I

    .line 151
    iput p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->trackCount:I

    .line 152
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->dacEvents:Ljava/util/List;

    .line 153
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->noteEvents:Ljava/util/List;

    .line 154
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->controlEvents:Ljava/util/List;

    .line 155
    iput-boolean p6, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesFm:Z

    .line 156
    iput-boolean p7, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgTone:Z

    .line 157
    iput-boolean p8, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgNoise:Z

    .line 158
    iput-boolean p9, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedDac:Z

    .line 159
    iput-boolean p10, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedHardware:Z

    .line 160
    iput-boolean p11, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasUnsupportedControl:Z

    .line 161
    return-void
.end method


# virtual methods
.method hasHardwareOnlyPart()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesFm:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgTone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->usesPsgNoise:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasUnsupportedControl:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedDac:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;->hasNonSfxTimedHardware:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
