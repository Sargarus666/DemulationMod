.class public final Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;
.super Ljava/lang/Object;
.source "RomAssetBundleManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetBundleManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final length:I

.field public final name:Ljava/lang/String;

.field public final relativePath:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;

.field public final sourceGroup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "sourceGroup"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "relativePath"    # Ljava/lang/String;
    .param p4, "length"    # I
    .param p5, "sha256"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sourceGroup:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->name:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->relativePath:Ljava/lang/String;

    .line 62
    iput p4, p0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->length:I

    .line 63
    iput-object p5, p0, Lcom/ahsim/demulation/RomAssetBundleManifest$Entry;->sha256:Ljava/lang/String;

    .line 64
    return-void
.end method
