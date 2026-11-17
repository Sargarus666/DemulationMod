.class final Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;
.super Ljava/lang/Object;
.source "GenesisEndingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisEndingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CreditLine"
.end annotation


# instance fields
.field final paletteLine:I

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paletteLine"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;->text:Ljava/lang/String;

    .line 46
    and-int/lit8 v0, p2, 0x3

    iput v0, p0, Lcom/ahsim/demulation/GenesisEndingRenderer$CreditLine;->paletteLine:I

    .line 47
    return-void
.end method
