.class final Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
.super Ljava/lang/Object;
.source "RomOfficialRegionAssetVariants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Expected"
.end annotation


# instance fields
.field final length:I

.field final sha256:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    iput-object p2, p0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    return-void
.end method
