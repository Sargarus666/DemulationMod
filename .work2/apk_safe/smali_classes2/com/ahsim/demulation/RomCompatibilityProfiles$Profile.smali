.class public final Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
.super Ljava/lang/Object;
.source "RomCompatibilityProfiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomCompatibilityProfiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# instance fields
.field public final assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public final basePreparationSupported:Z

.field public final crc32:Ljava/lang/String;

.field public final displayLabel:Ljava/lang/String;

.field public final headerChecksum:I

.field public final id:Ljava/lang/String;

.field public final logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

.field public final preparationNote:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final serial:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final size:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/GenesisRomIdentity$Compatibility;Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;ZLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayLabel"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "sha1"    # Ljava/lang/String;
    .param p6, "sha256"    # Ljava/lang/String;
    .param p7, "crc32"    # Ljava/lang/String;
    .param p8, "serial"    # Ljava/lang/String;
    .param p9, "region"    # Ljava/lang/String;
    .param p10, "headerChecksum"    # I
    .param p11, "logicCompatibility"    # Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .param p12, "assetCompatibility"    # Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;
    .param p13, "basePreparationSupported"    # Z
    .param p14, "preparationNote"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->displayLabel:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->size:J

    iput-object p5, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha1:Ljava/lang/String;

    iput-object p6, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha256:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->crc32:Ljava/lang/String;

    iput-object p8, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->serial:Ljava/lang/String;

    iput-object p9, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->region:Ljava/lang/String;

    iput p10, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->headerChecksum:I

    .line 33
    iput-object p11, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->logicCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    iput-object p12, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->assetCompatibility:Lcom/ahsim/demulation/GenesisRomIdentity$Compatibility;

    .line 34
    iput-boolean p13, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    iput-object p14, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->preparationNote:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public matches(Lcom/ahsim/demulation/GenesisRomIdentity$Result;)Z
    .locals 4
    .param p1, "r"    # Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    .line 37
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->size:J

    iget-wide v2, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha1:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha256:Ljava/lang/String;

    iget-object v1, p1, Lcom/ahsim/demulation/GenesisRomIdentity$Result;->sha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
