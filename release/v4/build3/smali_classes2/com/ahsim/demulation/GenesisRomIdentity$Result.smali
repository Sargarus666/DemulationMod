.class public final Lcom/ahsim/demulation/GenesisRomIdentity$Result;
.super Ljava/lang/Object;
.source "GenesisRomIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisRomIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public basePreparationSupported:Z

.field public computedHeaderChecksum:I

.field public consoleName:Ljava/lang/String;

.field public copyright:Ljava/lang/String;

.field public crc32:Ljava/lang/String;

.field public domesticTitle:Ljava/lang/String;

.field public hasSegaHeader:Z

.field public headerChecksumValid:Z

.field public ioSupport:Ljava/lang/String;

.field public logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public overseasTitle:Ljava/lang/String;

.field public preparationNote:Ljava/lang/String;

.field public profileId:Ljava/lang/String;

.field public profileLabel:Ljava/lang/String;

.field public r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

.field public recognition:Lcom/ahsim/demulation/GenesisRomIdentity$Recognition;

.field public regionRaw:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public sha1:Ljava/lang/String;

.field public sha256:Ljava/lang/String;

.field public size:J

.field public storedHeaderChecksum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
