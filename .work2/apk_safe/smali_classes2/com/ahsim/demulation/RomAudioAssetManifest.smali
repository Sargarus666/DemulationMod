.class public final Lcom/ahsim/demulation/RomAudioAssetManifest;
.super Ljava/lang/Object;
.source "RomAudioAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "original_audio_ready_v1"

.field public static final SOURCE_PACK:Ljava/lang/String; = "audio/gems_source_pack.bin"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;

    const-string v1, "6eae92e0bda0d9d3c6ccb429fac32c6f530f424b6da6109737e412f8524dfb2f"

    const/4 v2, 0x0

    const-string v3, "audio/gems_source_pack.bin"

    const v4, 0x372d0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomAudioAssetManifest-IA;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomAudioAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/ahsim/demulation/RomAudioAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 29
    const-string v0, "audio/gems_source_pack.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomAudioAssetManifest;->ENTRIES:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomAudioAssetManifest$Entry;

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
