.class final Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;
.super Ljava/lang/Object;
.source "DuneHackGraphicsLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuneHackStaticBank"
.end annotation


# instance fields
.field final bytes:[B

.field final detail:Ljava/lang/String;

.field final resident:[Z


# direct methods
.method constructor <init>([B[ZLjava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "resident"    # [Z
    .param p3, "detail"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->bytes:[B

    .line 199
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->resident:[Z

    .line 200
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackGraphicsLayoutAdapter$DuneHackStaticBank;->detail:Ljava/lang/String;

    .line 201
    return-void
.end method
