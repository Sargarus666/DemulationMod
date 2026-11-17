.class public final Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;
.super Ljava/lang/Object;
.source "RazorSpriteBankAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteBankAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final byteLength:I

.field public final offsetRom1:I

.field public final offsetRom2:I

.field public final patternCount:I

.field public final sha256:Ljava/lang/String;

.field public final sourceLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "n"    # I
    .param p5, "hash"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sourceLabel:Ljava/lang/String;

    iput p2, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom1:I

    iput p3, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom2:I

    iput p4, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->byteLength:I

    .line 39
    div-int/lit8 v0, p4, 0x20

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->patternCount:I

    iput-object p5, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->sha256:Ljava/lang/String;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;Lcom/ahsim/demulation/RazorSpriteBankAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public romOffset(I)I
    .locals 2
    .param p1, "variant"    # I

    .line 42
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Razor ROM variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom1:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteBankAudit$Entry;->offsetRom2:I

    :goto_1
    return v0
.end method
