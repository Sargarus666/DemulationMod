.class public final Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
.super Ljava/lang/Object;
.source "RomRussianLocalizationAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final kind:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

.field public final length:I

.field public final relativePath:Ljava/lang/String;

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)V
    .locals 0
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "sha256"    # Ljava/lang/String;
    .param p4, "kind"    # Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->relativePath:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->length:I

    .line 41
    iput-object p3, p0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->sha256:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->kind:Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Kind;)V

    return-void
.end method
