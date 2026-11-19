.class public final Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;
.super Ljava/lang/Object;
.source "DuneHackR82EmcDependencyProbe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Script"
.end annotation


# instance fields
.field public final dataWords:I

.field public final entries:I

.field public final length:I

.field public final name:Ljava/lang/String;

.field public final offset:I

.field public final sha256:Ljava/lang/String;

.field public final variant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "entries"    # I
    .param p5, "words"    # I
    .param p6, "hash"    # Ljava/lang/String;
    .param p7, "variant"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->name:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->offset:I

    .line 49
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->length:I

    .line 50
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->entries:I

    .line 51
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->dataWords:I

    .line 52
    iput-object p6, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->sha256:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;->variant:Ljava/lang/String;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/DuneHackR82EmcDependencyProbe$Script;-><init>(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
