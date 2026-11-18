.class final Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiagnosticWorstFrame"
.end annotation


# instance fields
.field final intervalNs:J

.field final mode:Ljava/lang/String;

.field final phase:Ljava/lang/String;

.field final renderTick:I

.field final wallTimeMs:J


# direct methods
.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "intervalNs"    # J
    .param p3, "wallTimeMs"    # J
    .param p5, "mode"    # Ljava/lang/String;
    .param p6, "phase"    # Ljava/lang/String;
    .param p7, "renderTick"    # I

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-wide p1, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;->intervalNs:J

    .line 824
    iput-wide p3, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;->wallTimeMs:J

    .line 825
    iput-object p5, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;->mode:Ljava/lang/String;

    .line 826
    iput-object p6, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;->phase:Ljava/lang/String;

    .line 827
    iput p7, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticWorstFrame;->renderTick:I

    .line 828
    return-void
.end method
