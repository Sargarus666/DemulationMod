.class public final Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
.super Ljava/lang/Object;
.source "RomFrontendAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomFrontendAssetManifest;
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;->relativePath:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;->length:I

    .line 19
    iput-object p3, p0, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;->sha256:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomFrontendAssetManifest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
