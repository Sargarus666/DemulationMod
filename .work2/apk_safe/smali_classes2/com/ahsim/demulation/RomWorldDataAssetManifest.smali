.class public final Lcom/ahsim/demulation/RomWorldDataAssetManifest;
.super Ljava/lang/Object;
.source "RomWorldDataAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "original_world_data_v1"

.field public static final MAP_SCENARIO_LAYOUT:Ljava/lang/String; = "data/world/map_scenario_layout_v1.bin"

.field private static final MAP_SCENARIO_LAYOUT_ENTRY:Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    const-string v1, "1c789badd3ba9825448987cd14a97d9ce4d32f4bde500b65043bcaf3f450955b"

    const/4 v2, 0x0

    const-string v3, "data/world/map_scenario_layout_v1.bin"

    const v4, 0x16b31

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomWorldDataAssetManifest-IA;)V

    sput-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->MAP_SCENARIO_LAYOUT_ENTRY:Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    .line 26
    sget-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->MAP_SCENARIO_LAYOUT_ENTRY:Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->ENTRIES:Ljava/util/List;

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
            "Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 32
    const-string v0, "data/world/map_scenario_layout_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->MAP_SCENARIO_LAYOUT_ENTRY:Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 2

    .line 34
    sget-object v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest;->MAP_SCENARIO_LAYOUT_ENTRY:Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;

    iget v0, v0, Lcom/ahsim/demulation/RomWorldDataAssetManifest$Entry;->length:I

    int-to-long v0, v0

    return-wide v0
.end method
