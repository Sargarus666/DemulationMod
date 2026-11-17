.class public final Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
.super Ljava/lang/Object;
.source "RomGameplayDataAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGameplayDataAssetManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final length:I

.field public final relativePath:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "sha256"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->relativePath:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->length:I

    .line 18
    iput-object p3, p0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->sha256:Ljava/lang/String;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomGameplayDataAssetManifest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
