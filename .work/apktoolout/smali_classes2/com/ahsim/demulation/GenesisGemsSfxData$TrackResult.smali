.class final Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;
.super Ljava/lang/Object;
.source "GenesisGemsSfxData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisGemsSfxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackResult"
.end annotation


# instance fields
.field final controlEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$ControlEvent;",
            ">;"
        }
    .end annotation
.end field

.field final dacEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$DacEvent;",
            ">;"
        }
    .end annotation
.end field

.field hasNonSfxTimedDac:Z

.field hasNonSfxTimedHardware:Z

.field final noteEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/GenesisGemsSfxData$NoteEvent;",
            ">;"
        }
    .end annotation
.end field

.field unsupported:Z

.field usesFm:Z

.field usesPsgNoise:Z

.field usesPsgTone:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->dacEvents:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->noteEvents:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;->controlEvents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisGemsSfxData-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/ahsim/demulation/GenesisGemsSfxData$TrackResult;-><init>()V

    return-void
.end method
