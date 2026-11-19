.class public final Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;
.super Ljava/lang/Object;
.source "RazorSpriteCfgRelocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteCfgRelocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final frameHeight:I

.field public final frameWidth:I

.field public final group:I

.field private final pixels:[B

.field public final pose:I

.field public final relativeX:I

.field public final relativeY:I

.field public final romCfgAddress:I

.field public final romPointerSlot:I

.field public final vramTile:I


# direct methods
.method private constructor <init>(IIIII[B)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "pose"    # I
    .param p3, "ptr"    # I
    .param p4, "cfg"    # I
    .param p5, "tile"    # I
    .param p6, "image"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->group:I

    iput p2, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pose:I

    iput p3, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->romPointerSlot:I

    .line 43
    iput p4, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->romCfgAddress:I

    iput p5, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->vramTile:I

    .line 44
    const/16 v0, 0x10

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->frameWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->frameHeight:I

    const/4 v0, -0x8

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->relativeX:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->relativeY:I

    .line 45
    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pixels:[B

    .line 46
    return-void
.end method

.method synthetic constructor <init>(IIIII[BLcom/ahsim/demulation/RazorSpriteCfgRelocation-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;-><init>(IIIII[B)V

    return-void
.end method


# virtual methods
.method public pixelsCopy()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteCfgRelocation$Frame;->pixels:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
