.class final Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;
.super Ljava/lang/Object;
.source "GenesisObjectArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisObjectArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderDynamic"
.end annotation


# instance fields
.field final minPattern:I

.field final patternCount:I

.field final pixels:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 0
    .param p1, "minPattern"    # I
    .param p2, "patternCount"    # I
    .param p3, "pixels"    # [B

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->minPattern:I

    iput p2, p0, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->patternCount:I

    iput-object p3, p0, Lcom/ahsim/demulation/GenesisObjectArt$ProviderDynamic;->pixels:[B

    .line 102
    return-void
.end method
