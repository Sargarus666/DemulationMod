.class public final Lcom/ahsim/demulation/RomAssetManifest$Entry;
.super Ljava/lang/Object;
.source "RomAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomAssetManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final length:I

.field public final name:Ljava/lang/String;

.field public final offset:J

.field public final relativePath:Ljava/lang/String;

.field public final resourceTableIndex:I

.field public final sha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;JILjava/lang/String;)V
    .locals 2
    .param p1, "resourceTableIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "length"    # I
    .param p6, "sha256"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->resourceTableIndex:I

    .line 22
    iput-object p2, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->name:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bootstrap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->relativePath:Ljava/lang/String;

    .line 24
    iput-wide p3, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->offset:J

    .line 25
    iput p5, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    .line 26
    iput-object p6, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->sha256:Ljava/lang/String;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;JILjava/lang/String;Lcom/ahsim/demulation/RomAssetManifest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RomAssetManifest$Entry;-><init>(ILjava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public endOffset()J
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->offset:J

    iget v2, p0, Lcom/ahsim/demulation/RomAssetManifest$Entry;->length:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
