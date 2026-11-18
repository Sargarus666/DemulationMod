.class final Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutosaveSnapshot"
.end annotation


# instance fields
.field final cameraValid:Z

.field final cameraX:F

.field final cameraY:F

.field final captureNs:J

.field final favorites:Ljava/lang/String;

.field final hudMenuOffset:I

.field final metadata:Ljava/util/Properties;

.field final spiceHarvested:I

.field final state:[B

.field final structuresDestroyed:I

.field final thumbnail:Landroid/graphics/Bitmap;

.field final ticks:I

.field final unitsDestroyed:I


# direct methods
.method constructor <init>([BLjava/util/Properties;Landroid/graphics/Bitmap;ZFFILjava/lang/String;IIIIJ)V
    .locals 1
    .param p1, "state"    # [B
    .param p2, "metadata"    # Ljava/util/Properties;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "cameraValid"    # Z
    .param p5, "cameraX"    # F
    .param p6, "cameraY"    # F
    .param p7, "hudMenuOffset"    # I
    .param p8, "favorites"    # Ljava/lang/String;
    .param p9, "spiceHarvested"    # I
    .param p10, "unitsDestroyed"    # I
    .param p11, "structuresDestroyed"    # I
    .param p12, "ticks"    # I
    .param p13, "captureNs"    # J

    .line 6430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6431
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->state:[B

    .line 6432
    iput-object p2, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->metadata:Ljava/util/Properties;

    .line 6433
    iput-object p3, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->thumbnail:Landroid/graphics/Bitmap;

    .line 6434
    iput-boolean p4, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->cameraValid:Z

    .line 6435
    iput p5, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->cameraX:F

    .line 6436
    iput p6, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->cameraY:F

    .line 6437
    iput p7, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->hudMenuOffset:I

    .line 6438
    if-nez p8, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p8

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->favorites:Ljava/lang/String;

    .line 6439
    iput p9, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->spiceHarvested:I

    .line 6440
    iput p10, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->unitsDestroyed:I

    .line 6441
    iput p11, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->structuresDestroyed:I

    .line 6442
    iput p12, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->ticks:I

    .line 6443
    iput-wide p13, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->captureNs:J

    .line 6444
    return-void
.end method


# virtual methods
.method recycleThumbnail()V
    .locals 1

    .line 6447
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$AutosaveSnapshot;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6448
    :cond_0
    return-void
.end method
