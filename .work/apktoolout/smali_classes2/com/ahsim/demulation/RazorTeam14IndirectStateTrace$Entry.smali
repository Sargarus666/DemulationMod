.class public final Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;
.super Ljava/lang/Object;
.source "RazorTeam14IndirectStateTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final decision:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

.field public final effectiveAddress24:I

.field public final flags5:I

.field public final house:I

.field public final indirectByte7:I

.field public final rawReferenceWord:I

.field public final slot:I

.field public final unitAddress:I

.field public final unitType:I


# direct methods
.method private constructor <init>(IIIIIIIILcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;)V
    .locals 0
    .param p1, "slot"    # I
    .param p2, "addr"    # I
    .param p3, "typ"    # I
    .param p4, "owner"    # I
    .param p5, "flags"    # I
    .param p6, "raw"    # I
    .param p7, "ea"    # I
    .param p8, "byte7"    # I
    .param p9, "why"    # Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->slot:I

    iput p2, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->unitAddress:I

    iput p3, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->unitType:I

    iput p4, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->house:I

    .line 28
    iput p5, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->flags5:I

    iput p6, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->rawReferenceWord:I

    iput p7, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->effectiveAddress24:I

    .line 29
    iput p8, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->indirectByte7:I

    iput-object p9, p0, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;->decision:Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(IIIIIIIILcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Entry;-><init>(IIIIIIIILcom/ahsim/demulation/RazorTeam14IndirectStateTrace$Decision;)V

    return-void
.end method
