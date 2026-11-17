.class final Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;
.super Ljava/lang/Object;
.source "GenesisObjectArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisObjectArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderVisual"
.end annotation


# instance fields
.field final pieces:[B

.field final visualId:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .param p1, "visualId"    # I
    .param p2, "pieces"    # [B

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;->visualId:I

    iput-object p2, p0, Lcom/ahsim/demulation/GenesisObjectArt$ProviderVisual;->pieces:[B

    return-void
.end method
