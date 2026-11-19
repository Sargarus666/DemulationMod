.class public final Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;
.super Ljava/lang/Object;
.source "RazorSpriteSatCallGraphAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Edge"
.end annotation


# instance fields
.field public final gfxSha256:Ljava/lang/String;

.field public final group:I

.field public final height:I

.field public final pointerSlot:I

.field public final pose:I

.field public final relocatedCfg:I

.field public final vramTile:I

.field public final width:I


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;)V
    .locals 1
    .param p1, "cfg"    # Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->width:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->height:I

    .line 45
    iget v0, p1, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->group:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->group:I

    iget v0, p1, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pose:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->pose:I

    iget v0, p1, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->romPointerSlot:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->pointerSlot:I

    .line 46
    iget v0, p1, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->romCfgAddress:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->relocatedCfg:I

    iget v0, p1, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->vramTile:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->vramTile:I

    .line 47
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pixelsCopy()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit;->-$$Nest$smsha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;->gfxSha256:Ljava/lang/String;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatCallGraphAudit$Edge;-><init>(Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;)V

    return-void
.end method
