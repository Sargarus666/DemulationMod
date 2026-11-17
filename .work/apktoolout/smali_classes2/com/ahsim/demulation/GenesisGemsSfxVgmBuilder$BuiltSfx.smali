.class final Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;
.super Ljava/lang/Object;
.source "GenesisGemsSfxVgmBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BuiltSfx"
.end annotation


# instance fields
.field final lastHardwareWriteFrame:I

.field final priority:I

.field final sequence:I

.field final ticks:I

.field final vgm:[B


# direct methods
.method constructor <init>(I[BIII)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "vgm"    # [B
    .param p3, "ticks"    # I
    .param p4, "priority"    # I
    .param p5, "lastHardwareWriteFrame"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->sequence:I

    .line 20
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->vgm:[B

    .line 21
    iput p3, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->ticks:I

    .line 22
    iput p4, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->priority:I

    .line 23
    iput p5, p0, Lcom/ahsim/demulation/GenesisGemsSfxVgmBuilder$BuiltSfx;->lastHardwareWriteFrame:I

    .line 24
    return-void
.end method
