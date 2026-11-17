.class public final Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;
.super Ljava/lang/Object;
.source "RomAssetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallOutcome"
.end annotation


# instance fields
.field public final extraction:Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

.field public final install:Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;)V
    .locals 0
    .param p1, "extraction"    # Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;
    .param p2, "install"    # Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;->extraction:Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    .line 57
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;->install:Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;Lcom/ahsim/demulation/RomAssetProvider-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;-><init>(Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;)V

    return-void
.end method


# virtual methods
.method public ready()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;->extraction:Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;->extraction:Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;

    invoke-virtual {v0}, Lcom/ahsim/demulation/GenesisRomAssetProviderCore$Result;->allVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomAssetProvider$InstallOutcome;->install:Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
