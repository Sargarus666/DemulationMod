.class public final Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
.super Ljava/lang/Object;
.source "RomImageNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomImageNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedImage"
.end annotation


# instance fields
.field public final bytes:[B

.field public final containerFormat:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

.field public final strippedHeaderBytes:I


# direct methods
.method private constructor <init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;I)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "containerFormat"    # Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    .param p3, "strippedHeaderBytes"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 38
    iput-object p2, p0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->containerFormat:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    .line 39
    iput p3, p0, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->strippedHeaderBytes:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ILcom/ahsim/demulation/RomImageNormalizer-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;-><init>([BLcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;I)V

    return-void
.end method
