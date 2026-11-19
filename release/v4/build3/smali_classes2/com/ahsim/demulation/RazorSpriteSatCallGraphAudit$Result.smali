.class public final Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;
.super Ljava/lang/Object;
.source "RazorSpriteSatCallGraphAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final coordinateMathIsNotSpriteDispatch:Z

.field public final coordinateRoutineOffset:I

.field private final edges:[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

.field public final edition:I

.field public final facingToSpritePoseLinked:Z

.field public final flipFlagsLinked:Z

.field public final gameplayRenderReady:Z

.field public final objectTypeToCfgLinked:Z

.field public final vdpSatProducerLinked:Z

.field public final vdpSetupOffset:I

.field public final verifiedCfgToOriginalRomGfx:Z

.field public final verifiedVdpControlDataPortSetup:Z


# direct methods
.method private constructor <init>(I[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "graph"    # [Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->verifiedVdpControlDataPortSetup:Z

    .line 53
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->verifiedCfgToOriginalRomGfx:Z

    .line 54
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->coordinateMathIsNotSpriteDispatch:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->objectTypeToCfgLinked:Z

    .line 56
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->facingToSpritePoseLinked:Z

    .line 57
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->vdpSatProducerLinked:Z

    .line 58
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->flipFlagsLinked:Z

    .line 59
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->gameplayRenderReady:Z

    .line 62
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->edition:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->-$$Nest$sfgetVDP_SETUP_OFFSET()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->vdpSetupOffset:I

    .line 63
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->-$$Nest$sfgetCOORD_MATH_OFFSET()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->coordinateRoutineOffset:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->edges:[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(I[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;-><init>(I[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;)V

    return-void
.end method


# virtual methods
.method public runtimeCfgForObject(II)Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "rawHeading"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor object->CFG SAT dispatch is not traced"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runtimeSatAttribute(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "rawHeading"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor frame/flip/palette/SAT linkage is not traced"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifiedEdgesCopy()[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Result;->edges:[Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    invoke-virtual {v0}, [Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;

    return-object v0
.end method
