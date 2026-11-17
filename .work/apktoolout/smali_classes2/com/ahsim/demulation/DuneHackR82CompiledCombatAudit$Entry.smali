.class public final Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;
.super Ljava/lang/Object;
.source "DuneHackR82CompiledCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

.field public final id:Ljava/lang/String;

.field public final jumpDestination:I

.field public final layout:I

.field public final matchingLayouts:I

.field public final offset:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIII)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "evidence"    # Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;
    .param p3, "offset"    # I
    .param p4, "layout"    # I
    .param p5, "dest"    # I
    .param p6, "count"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->id:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->evidence:Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;

    .line 37
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->offset:I

    .line 38
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->layout:I

    .line 39
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->jumpDestination:I

    .line 40
    iput p6, p0, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;->matchingLayouts:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIIILcom/ahsim/demulation/DuneHackR82CompiledCombatAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Entry;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CompiledCombatAudit$Evidence;IIII)V

    return-void
.end method
