.class public final Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;
.super Ljava/lang/Object;
.source "RomAssetBundleAtomicInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallResult"
.end annotation


# instance fields
.field public final generation:Ljava/lang/String;

.field public final installRoot:Ljava/io/File;

.field public final manifestFile:Ljava/io/File;

.field public final manifestSha256:Ljava/lang/String;

.field public final payloadBytes:J

.field public final verifiedEntries:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;)V
    .locals 0
    .param p1, "generation"    # Ljava/lang/String;
    .param p2, "installRoot"    # Ljava/io/File;
    .param p3, "manifestFile"    # Ljava/io/File;
    .param p4, "verifiedEntries"    # I
    .param p5, "payloadBytes"    # J
    .param p7, "manifestSha256"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->generation:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->installRoot:Ljava/io/File;

    .line 46
    iput-object p3, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->manifestFile:Ljava/io/File;

    .line 47
    iput p4, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->verifiedEntries:I

    .line 48
    iput-wide p5, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->payloadBytes:J

    .line 49
    iput-object p7, p0, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;->manifestSha256:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RomAssetBundleAtomicInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;)V

    return-void
.end method
