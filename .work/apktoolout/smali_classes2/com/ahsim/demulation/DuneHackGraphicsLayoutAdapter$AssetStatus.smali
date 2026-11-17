.class public final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetStatus"
.end annotation


# instance fields
.field public final adapted:Z

.field public final detail:Ljava/lang/String;

.field public final length:I

.field public final relativePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "adapted"    # Z
    .param p3, "length"    # I
    .param p4, "detail"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->relativePath:Ljava/lang/String;

    .line 74
    iput-boolean p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->adapted:Z

    .line 75
    iput p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->length:I

    .line 76
    if-nez p4, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$AssetStatus;->detail:Ljava/lang/String;

    .line 77
    return-void
.end method
