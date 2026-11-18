.class public final Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;
.super Ljava/lang/Object;
.source "RomAssetAtomicInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetAtomicInstaller;
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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->generation:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->installRoot:Ljava/io/File;

    .line 68
    iput-object p3, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->manifestFile:Ljava/io/File;

    .line 69
    iput p4, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->verifiedEntries:I

    .line 70
    iput-wide p5, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->payloadBytes:J

    .line 71
    iput-object p7, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;->manifestSha256:Ljava/lang/String;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;Lcom/ahsim/demulation/RomAssetAtomicInstaller-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RomAssetAtomicInstaller$InstallResult;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;IJLjava/lang/String;)V

    return-void
.end method
