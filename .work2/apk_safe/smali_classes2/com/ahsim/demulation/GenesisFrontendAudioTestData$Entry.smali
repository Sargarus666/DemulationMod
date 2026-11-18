.class final Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
.super Ljava/lang/Object;
.source "GenesisFrontendAudioTestData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final sequence:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sequence"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;->name:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;->sequence:I

    .line 14
    return-void
.end method
