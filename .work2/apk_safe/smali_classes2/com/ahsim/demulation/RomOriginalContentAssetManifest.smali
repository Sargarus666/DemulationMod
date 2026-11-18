.class public final Lcom/ahsim/demulation/RomOriginalContentAssetManifest;
.super Ljava/lang/Object;
.source "RomOriginalContentAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    }
.end annotation


# static fields
.field public static final ENDING_TEXT_DATA:Ljava/lang/String; = "content/ending/ending_text_v1.bin"

.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRONTEND_EXACT_TEXT:Ljava/lang/String; = "content/frontend/exact_text_v1.bin"

.field public static final GROUP_ID:Ljava/lang/String; = "original_content_ready_v1"

.field public static final MISSION_PRESENTATION_TEXT:Ljava/lang/String; = "content/mission/presentation_text_v1.bin"

.field public static final MISSION_RESULT_DATA:Ljava/lang/String; = "content/result/mission_result_data_v1.bin"

.field private static final STAGE_P_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAGE_Q_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAGE_R_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUTORIAL_EXACT_TEXT:Ljava/lang/String; = "content/tutorial/exact_text_v1.bin"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    new-instance v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    const-string v2, "content/frontend/exact_text_v1.bin"

    const/16 v3, 0x259

    const-string v4, "5d8785dc3f5a83f0e96e0009a42ed844758d39a9fde7968247c29ff214eb6c59"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentAssetManifest-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    const/16 v2, 0x3e27

    const-string v3, "186e22f098be31e36ed2304f5a0dbf60510ec80d9499187fa3c0ddd3bfa8acd6"

    const-string v4, "content/mission/presentation_text_v1.bin"

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentAssetManifest-IA;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_P_ENTRIES:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "q":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    new-instance v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    const/16 v3, 0x595

    const-string v4, "55dafc450b627c0c1ad29e18032bf17a36720cb90fff2a775a8de7aca6a2e020"

    const-string v6, "content/tutorial/exact_text_v1.bin"

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentAssetManifest-IA;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_Q_ENTRIES:Ljava/util/List;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v2, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    new-instance v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    const/16 v4, 0x1ed

    const-string v6, "4032f68d190deb3ce9706489ced2f8c298135b3542575bd1af56fe7bde80e642"

    const-string v7, "content/result/mission_result_data_v1.bin"

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentAssetManifest-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    const/16 v4, 0x54a

    const-string v6, "27cc72eb5ed9923ddc2b6fa3090885b9698d2c84177bc526c59e8fc5b468c3eb"

    const-string v7, "content/ending/ending_text_v1.bin"

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentAssetManifest-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_R_ENTRIES:Ljava/util/List;

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .local v3, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->ENTRIES:Ljava/util/List;

    .line 55
    .end local v0    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .end local v1    # "q":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .end local v2    # "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    .end local v3    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;>;"
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 69
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .local v2, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    :cond_1
    goto :goto_0

    .line 70
    :cond_2
    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    goto :goto_0

    .line 65
    :cond_0
    return-wide v0
.end method

.method public static stagePEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_P_ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static stageQEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_Q_ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static stageREntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->STAGE_R_ENTRIES:Ljava/util/List;

    return-object v0
.end method
