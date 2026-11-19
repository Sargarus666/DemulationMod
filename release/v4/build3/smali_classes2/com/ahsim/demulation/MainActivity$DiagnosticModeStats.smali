.class final Lcom/ahsim/demulation/MainActivity$DiagnosticModeStats;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiagnosticModeStats"
.end annotation


# instance fields
.field callbackMaxNs:J

.field callbackSamples:J

.field callbackTotalNs:J

.field drawMaxNs:J

.field drawSamples:J

.field drawTotalNs:J

.field final frameHistogramMs:[J

.field frameMaxNs:J

.field frameSamples:J

.field frameTotalNs:J

.field over100:J

.field over25:J

.field over33:J

.field over50:J

.field uiWorkMaxNs:J

.field uiWorkSamples:J

.field uiWorkTotalNs:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    const/16 v0, 0x3e9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$DiagnosticModeStats;->frameHistogramMs:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/MainActivity$DiagnosticModeStats;-><init>()V

    return-void
.end method
