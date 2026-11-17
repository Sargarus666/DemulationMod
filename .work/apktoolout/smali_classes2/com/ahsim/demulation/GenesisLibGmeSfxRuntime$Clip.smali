.class final Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;
.super Ljava/lang/Object;
.source "GenesisLibGmeSfxRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Clip"
.end annotation


# instance fields
.field final attenuation:I

.field final frames:I

.field final logicalFrames:I

.field final priority:I

.field final sequence:I

.field serial:J

.field final stereo:[S


# direct methods
.method constructor <init>(III[SIIJ)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "attenuation"    # I
    .param p3, "priority"    # I
    .param p4, "stereo"    # [S
    .param p5, "frames"    # I
    .param p6, "logicalFrames"    # I
    .param p7, "serial"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->sequence:I

    .line 33
    iput p2, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->attenuation:I

    .line 34
    iput p3, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->priority:I

    .line 35
    iput-object p4, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->stereo:[S

    .line 36
    iput p5, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->frames:I

    .line 37
    iput p6, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->logicalFrames:I

    .line 38
    iput-wide p7, p0, Lcom/ahsim/demulation/GenesisLibGmeSfxRuntime$Clip;->serial:J

    .line 39
    return-void
.end method
