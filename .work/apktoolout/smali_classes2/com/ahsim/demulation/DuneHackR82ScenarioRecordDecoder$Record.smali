.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioRecordDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Record"
.end annotation


# instance fields
.field public final index:I

.field public final kind:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final length:I

.field public final offset:I

.field public final section:I

.field private final words:[I


# direct methods
.method private constructor <init>(IIIILjava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "section"    # I
    .param p4, "index"    # I
    .param p5, "kind"    # Ljava/lang/String;
    .param p6, "label"    # Ljava/lang/String;
    .param p7, "words"    # [I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->offset:I

    .line 37
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->length:I

    .line 38
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    .line 39
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    .line 40
    iput-object p5, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->kind:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->label:Ljava/lang/String;

    .line 42
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->words:[I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(IIIILjava/lang/String;Ljava/lang/String;[ILcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;-><init>(IIIILjava/lang/String;Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public value(I)I
    .locals 1
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->words:[I

    aget v0, v0, p1

    return v0
.end method

.method public valueCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->words:[I

    array-length v0, v0

    return v0
.end method

.method public values()[I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->words:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
