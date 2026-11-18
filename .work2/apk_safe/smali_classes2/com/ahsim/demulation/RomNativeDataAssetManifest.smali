.class public final Lcom/ahsim/demulation/RomNativeDataAssetManifest;
.super Ljava/lang/Object;
.source "RomNativeDataAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENTRY:Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

.field public static final GROUP_ID:Ljava/lang/String; = "original_native_pure_data_v1"

.field public static final REMAINING_PURE_DATA:Ljava/lang/String; = "data/native/remaining_pure_data_v1.bin"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    const-string v1, "fb668f2ecf174efdec1982d0dcb94abe43f02b56824756ea2dd6f41496bfdd57"

    const/4 v2, 0x0

    const-string v3, "data/native/remaining_pure_data_v1.bin"

    const/16 v4, 0x2fc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomNativeDataAssetManifest-IA;)V

    sput-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    .line 26
    sget-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRIES:Ljava/util/List;

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
            "Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 31
    const-string v0, "data/native/remaining_pure_data_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 2

    .line 32
    sget-object v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest;->ENTRY:Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;

    iget v0, v0, Lcom/ahsim/demulation/RomNativeDataAssetManifest$Entry;->length:I

    int-to-long v0, v0

    return-wide v0
.end method
