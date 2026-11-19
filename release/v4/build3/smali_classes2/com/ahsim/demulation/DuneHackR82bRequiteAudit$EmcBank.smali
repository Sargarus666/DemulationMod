.class public final Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;
.super Ljava/lang/Object;
.source "DuneHackR82bRequiteAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82bRequiteAudit;
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
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "sha"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;->offset:I

    .line 32
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;->length:I

    .line 33
    iput-object p3, p0, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;->sha256:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82bRequiteAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82bRequiteAudit$EmcBank;-><init>(IILjava/lang/String;)V

    return-void
.end method
