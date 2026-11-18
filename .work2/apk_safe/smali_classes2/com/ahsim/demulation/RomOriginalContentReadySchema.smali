.class public final Lcom/ahsim/demulation/RomOriginalContentReadySchema;
.super Ljava/lang/Object;
.source "RomOriginalContentReadySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;,
        Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;
    }
.end annotation


# static fields
.field public static final CURRENT_READY_FORMAT_VERSION:I = 0xd

.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_CONTENT_READY_FORMAT_VERSION:I = 0x8

.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    sget-object v3, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->EXACT_TEXT:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 61
    const-string v1, "frontend_exact_text"

    const-string v2, "content/frontend/exact_text_v1.bin"

    const-string v4, "04.235P"

    const/16 v5, 0x8

    const/4 v6, 0x1

    const-string v7, "pointer-free title/menu and House-join strings; original byte order retained"

    invoke-static/range {v1 .. v7}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->EXACT_TEXT:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 64
    const-string v3, "mission_presentation_text"

    const-string v4, "content/mission/presentation_text_v1.bin"

    const-string v6, "04.235P"

    const/16 v7, 0x8

    const/4 v8, 0x1

    const-string v9, "27 mission records x briefing/victory/defeat/advice; pointer-free indexed strings"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->EXACT_TEXT:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 67
    const-string v3, "tutorial_exact_text"

    const-string v4, "content/tutorial/exact_text_v1.bin"

    const-string v6, "04.235Q"

    const/16 v7, 0x9

    const-string v9, "25 inline prose strings plus 128-byte character mapping; interpreter/control opcodes stay compiled"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->PRESENTATION_DATA:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 70
    const-string v3, "mission_result_data"

    const-string v4, "content/result/mission_result_data_v1.bin"

    const-string v6, "04.235R"

    const/16 v7, 0xa

    const-string v9, "rank thresholds/names, House labels and 27 next-mission passwords; no ROM pointers"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->EXACT_TEXT:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 73
    const-string v3, "ending_text_data"

    const-string v4, "content/ending/ending_text_v1.bin"

    const-string v6, "04.235R"

    const-string v9, "credit stream bytes with palette control markers; timing/fade logic stays compiled"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->SCENARIO_WORLD_DATA:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 76
    const-string v3, "map_scenario_layout_data"

    const-string v4, "data/world/map_scenario_layout_v1.bin"

    const-string v6, "04.235T"

    const/16 v7, 0xb

    const-string v9, "pointer-free normalized map/scenario/layout projection classified by 04.235S; control algorithms stay compiled"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->GAME_PARAMETER_DATA:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 79
    const-string v3, "unit_structure_parameters"

    const-string v4, "data/gameplay/unit_structure_parameters_v1.bin"

    const-string v6, "04.235U"

    const/16 v7, 0xc

    const-string v9, "normalized UnitInfo/StructureInfo and related pure parameters; combat/AI/economy algorithms stay compiled"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v5, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;->PURE_NATIVE_DATA:Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;

    .line 82
    const-string v3, "remaining_native_pure_data"

    const-string v4, "data/native/remaining_pure_data_v1.bin"

    const-string v6, "04.235V"

    const/16 v7, 0xd

    const-string v9, "remaining classified read-only ROM tables only; no executable/control-flow bytes"

    invoke-static/range {v3 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 60
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZLjava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "kind"    # Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;
    .param p3, "stage"    # Ljava/lang/String;
    .param p4, "readyVersion"    # I
    .param p5, "exactOriginal"    # Z
    .param p6, "normalization"    # Ljava/lang/String;

    .line 54
    if-eqz p1, :cond_1

    const-string v0, "content/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema$Kind;Ljava/lang/String;IZZLjava/lang/String;Lcom/ahsim/demulation/RomOriginalContentReadySchema-IA;)V

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Original content/data READY path must use content/ or data/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 93
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomOriginalContentReadySchema;->ENTRIES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;

    .local v2, "entry":Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;
    iget-object v3, v2, Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;->id:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .end local v2    # "entry":Lcom/ahsim/demulation/RomOriginalContentReadySchema$Entry;
    :cond_1
    goto :goto_0

    .line 94
    :cond_2
    return-object v0
.end method
