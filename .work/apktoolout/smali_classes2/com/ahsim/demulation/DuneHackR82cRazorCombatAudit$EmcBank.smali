.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCombatAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmcBank"
.end annotation


# instance fields
.field public final length:I

.field public final offset:I

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "at"    # I
    .param p2, "size"    # I
    .param p3, "digest"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;->offset:I

    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;->length:I

    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;->sha256:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$EmcBank;-><init>(IILjava/lang/String;)V

    return-void
.end method
