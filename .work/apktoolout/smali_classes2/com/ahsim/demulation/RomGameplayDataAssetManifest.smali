.class public final Lcom/ahsim/demulation/RomGameplayDataAssetManifest;
.super Ljava/lang/Object;
.source "RomGameplayDataAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY:Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

.field public static final GROUP_ID:Ljava/lang/String; = "original_gameplay_data_v1"

.field public static final UNIT_STRUCTURE_PARAMETERS:Ljava/lang/String; = "data/gameplay/unit_structure_parameters_v1.bin"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    const-string v1, "10e071a3347da2023d4f4532dc2b09e0f29dc8bbf562d3766fe3a46ec1363e05"

    const/4 v2, 0x0

    const-string v3, "data/gameplay/unit_structure_parameters_v1.bin"

    const/16 v4, 0x9ea

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomGameplayDataAssetManifest-IA;)V

    sput-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    .line 26
    sget-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 31
    const-string v0, "data/gameplay/unit_structure_parameters_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 2

    .line 32
    sget-object v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;

    iget v0, v0, Lcom/ahsim/demulation/RomGameplayDataAssetManifest$Entry;->length:I

    int-to-long v0, v0

    return-wide v0
.end method
