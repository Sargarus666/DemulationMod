.class final Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoteEvent"
.end annotation


# instance fields
.field final channelAttenuation:I

.field final duration:I

.field final note:I

.field final patchIndex:I

.field final patchType:I

.field final priority:I

.field final tick:J

.field final track:I


# direct methods
.method constructor <init>(JIIIIIII)V
    .locals 0
    .param p1, "tick"    # J
    .param p3, "track"    # I
    .param p4, "patchIndex"    # I
    .param p5, "patchType"    # I
    .param p6, "note"    # I
    .param p7, "duration"    # I
    .param p8, "priority"    # I
    .param p9, "channelAttenuation"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-wide p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->tick:J

    .line 108
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->track:I

    .line 109
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchIndex:I

    .line 110
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->patchType:I

    .line 111
    iput p6, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->note:I

    .line 112
    iput p7, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->duration:I

    .line 113
    iput p8, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->priority:I

    .line 114
    iput p9, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;->channelAttenuation:I

    .line 115
    return-void
.end method
