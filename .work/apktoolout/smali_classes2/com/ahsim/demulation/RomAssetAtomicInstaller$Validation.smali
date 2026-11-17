.class public final Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;
.super Ljava/lang/Object;
.source "RomAssetAtomicInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetAtomicInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validation"
.end annotation


# instance fields
.field public final formatVersion:I

.field public final generation:Ljava/lang/String;

.field public final groupId:Ljava/lang/String;

.field public final installRoot:Ljava/io/File;

.field public final reason:Ljava/lang/String;

.field public final sourceProfile:Ljava/lang/String;

.field public final sourceSha256:Ljava/lang/String;

.field public final valid:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "valid"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "generation"    # Ljava/lang/String;
    .param p4, "installRoot"    # Ljava/io/File;
    .param p5, "groupId"    # Ljava/lang/String;
    .param p6, "formatVersion"    # I
    .param p7, "sourceSha256"    # Ljava/lang/String;
    .param p8, "sourceProfile"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->valid:Z

    .line 46
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->reason:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->generation:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->installRoot:Ljava/io/File;

    .line 49
    iput-object p5, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->groupId:Ljava/lang/String;

    .line 50
    iput p6, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->formatVersion:I

    .line 51
    iput-object p7, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceSha256:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/ahsim/demulation/RomAssetAtomicInstaller$Validation;->sourceProfile:Ljava/lang/String;

    .line 53
    return-void
.end method
