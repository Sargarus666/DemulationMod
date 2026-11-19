.class final Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;
.super Ljava/lang/Object;
.source "GenesisSoundEventBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisSoundEventBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Command"
.end annotation


# instance fields
.field final operation:I

.field final route:I

.field final sampleIndex:I

.field final sequence:I

.field final sourceId:I

.field final sourceKind:I

.field final sourceSequence:I


# direct methods
.method constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "sourceSequence"    # I
    .param p3, "operation"    # I
    .param p4, "route"    # I
    .param p5, "sourceKind"    # I
    .param p6, "sourceId"    # I
    .param p7, "sampleIndex"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sequence:I

    .line 38
    iput p2, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceSequence:I

    .line 39
    iput p3, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->operation:I

    .line 40
    iput p4, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->route:I

    .line 41
    iput p5, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceKind:I

    .line 42
    iput p6, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sourceId:I

    .line 43
    iput p7, p0, Lcom/ahsim/demulation/GenesisSoundEventBridge$Command;->sampleIndex:I

    .line 44
    return-void
.end method
