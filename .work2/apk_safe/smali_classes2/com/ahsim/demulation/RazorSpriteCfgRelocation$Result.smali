.class public final Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;
.super Ljava/lang/Object;
.source "RazorSpriteCfgRelocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteCfgRelocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final frames:[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

.field public final gameplayReady:Z

.field public final orientationSequenceKnown:Z

.field public final originalPaletteKnown:Z

.field public final structureArtworkReady:Z

.field public final variant:I

.field public final verifiedFrames:I


# direct methods
.method private constructor <init>(I[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;)V
    .locals 1
    .param p1, "edition"    # I
    .param p2, "found"    # [[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->verifiedFrames:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->originalPaletteKnown:Z

    .line 53
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->orientationSequenceKnown:Z

    .line 54
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->structureArtworkReady:Z

    .line 55
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->gameplayReady:Z

    .line 58
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->variant:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->frames:[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(I[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;Lcom/ahsim/demulation/RazorSpriteCfgRelocation-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;-><init>(I[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;)V

    return-void
.end method


# virtual methods
.method public frame(II)Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    .locals 2
    .param p1, "group"    # I
    .param p2, "pose"    # I

    .line 61
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Result;->frames:[[Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unverified Razor CFG frame"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
