.class final Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;
.super Ljava/lang/Object;
.source "GenesisOriginalTitleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisOriginalTitleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptionTestEntry"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final sequence:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sequence"    # I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->name:Ljava/lang/String;

    .line 179
    iput p2, p0, Lcom/ahsim/demulation/GenesisOriginalTitleRenderer$OptionTestEntry;->sequence:I

    .line 180
    return-void
.end method
