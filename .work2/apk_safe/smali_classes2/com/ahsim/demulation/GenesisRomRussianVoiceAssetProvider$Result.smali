.class public final Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;
.super Ljava/lang/Object;
.source "GenesisRomRussianVoiceAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final payloadBytes:J

.field public final sourceSha256:Ljava/lang/String;

.field public final stagedRoot:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 0
    .param p1, "stagedRoot"    # Ljava/io/File;
    .param p2, "sourceSha256"    # Ljava/lang/String;
    .param p3, "payloadBytes"    # J

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;->stagedRoot:Ljava/io/File;

    .line 31
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;->sourceSha256:Ljava/lang/String;

    .line 32
    iput-wide p3, p0, Lcom/ahsim/demulation/GenesisRomRussianVoiceAssetProvider$Result;->payloadBytes:J

    .line 33
    return-void
.end method
