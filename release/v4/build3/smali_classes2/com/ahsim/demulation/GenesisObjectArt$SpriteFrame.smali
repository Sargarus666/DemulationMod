.class public final Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
.super Ljava/lang/Object;
.source "GenesisObjectArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisObjectArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpriteFrame"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final minX:I

.field public final minY:I

.field public final transform:I

.field public final visualId:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "minX"    # I
    .param p3, "minY"    # I
    .param p4, "visualId"    # I
    .param p5, "transform"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 139
    iput p2, p0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minX:I

    .line 140
    iput p3, p0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->minY:I

    .line 141
    iput p4, p0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->visualId:I

    .line 142
    iput p5, p0, Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;->transform:I

    .line 143
    return-void
.end method
