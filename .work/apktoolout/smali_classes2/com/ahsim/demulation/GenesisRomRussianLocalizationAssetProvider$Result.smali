.class public final Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;
.super Ljava/lang/Object;
.source "GenesisRomRussianLocalizationAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final assetCount:I

.field public final glyphBitmapCount:I

.field public final payloadBytes:J

.field public final profileId:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;

.field public final stagedRoot:Ljava/io/File;

.field public final textCount:I


# direct methods
.method constructor <init>(Ljava/io/File;IIIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "stagedRoot"    # Ljava/io/File;
    .param p2, "assetCount"    # I
    .param p3, "textCount"    # I
    .param p4, "glyphBitmapCount"    # I
    .param p5, "payloadBytes"    # J
    .param p7, "sourceSha256"    # Ljava/lang/String;
    .param p8, "profileId"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->stagedRoot:Ljava/io/File;

    .line 72
    iput p2, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->assetCount:I

    .line 73
    iput p3, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->textCount:I

    .line 74
    iput p4, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->glyphBitmapCount:I

    .line 75
    iput-wide p5, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->payloadBytes:J

    .line 76
    iput-object p7, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    .line 77
    iput-object p8, p0, Lcom/ahsim/demulation/GenesisRomRussianLocalizationAssetProvider$Result;->profileId:Ljava/lang/String;

    .line 78
    return-void
.end method
