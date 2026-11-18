.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioRecordDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# instance fields
.field public final byteCount:I

.field public final fifthHouseRecords:I

.field public final recordCount:I

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;",
            ">;"
        }
    .end annotation
.end field

.field public final reinforcementCount:I

.field public final sectionCounts:[I

.field public final seed:I

.field public final structureCount:I

.field public final teamCount:I

.field public final unitCount:I


# direct methods
.method private constructor <init>(I[ILjava/util/List;I)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "sections"    # [I
    .param p4, "seed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;",
            ">;I)V"
        }
    .end annotation

    .line 60
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->byteCount:I

    .line 62
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->recordCount:I

    .line 63
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->sectionCounts:[I

    .line 64
    const/16 v0, 0x8

    aget v0, p2, v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->unitCount:I

    .line 65
    const/16 v0, 0x9

    aget v0, p2, v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->structureCount:I

    .line 66
    const/4 v0, 0x7

    aget v0, p2, v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->teamCount:I

    .line 67
    const/16 v0, 0xa

    aget v0, p2, v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->reinforcementCount:I

    .line 68
    const/16 v0, 0xb

    aget v0, p2, v0

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->fifthHouseRecords:I

    .line 69
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->seed:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records:Ljava/util/List;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(I[ILjava/util/List;ILcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;-><init>(I[ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public records()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records:Ljava/util/List;

    return-object v0
.end method
