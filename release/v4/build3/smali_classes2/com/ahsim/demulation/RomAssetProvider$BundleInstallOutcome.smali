.class public final Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;
.super Ljava/lang/Object;
.source "RomAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleInstallOutcome"
.end annotation


# instance fields
.field public final install:Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

.field public final mismatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final payloadBytes:J

.field public final totalEntries:I

.field public final verifiedEntries:I


# direct methods
.method private constructor <init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;)V
    .locals 1
    .param p1, "verifiedEntries"    # I
    .param p2, "totalEntries"    # I
    .param p3, "payloadBytes"    # J
    .param p6, "install"    # Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;",
            ")V"
        }
    .end annotation

    .line 37
    .local p5, "mismatches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->verifiedEntries:I

    .line 39
    iput p2, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->totalEntries:I

    .line 40
    iput-wide p3, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->payloadBytes:J

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->mismatches:Ljava/util/List;

    .line 42
    iput-object p6, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->install:Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;-><init>(IIJLjava/util/List;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;)V

    return-void
.end method


# virtual methods
.method public ready()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->install:Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->mismatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->verifiedEntries:I

    iget v1, p0, Lcom/ahsim/demulation/RomAssetProvider$BundleInstallOutcome;->totalEntries:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
