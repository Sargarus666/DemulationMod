.class public final Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;
.super Ljava/lang/Object;
.source "DuneHackR82AsmHookProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;,
        Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;,
        Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;,
        Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    }
.end annotation


# static fields
.field private static final ALLY_FLAGS:[I

.field private static final ANDI_B_D0:[I

.field private static final BRA_BYTE:[I

.field private static final BUILD_DAMAGE:[I

.field private static final CANCEL:[I

.field private static final CY_FIX_A:[I

.field private static final CY_FIX_B:[I

.field private static final DEATH:[I

.field private static final HARVEST_SPEED:[I

.field private static final JMP:[I

.field private static final JSR:[I

.field private static final PROJECTILE:[I

.field private static final REINFORCEMENT:[I

.field private static final SPICE_CMPI_LONG:[I

.field private static final SPICE_STORAGE:[I

.field private static final UNIT_DAMAGE:[I

.field private static final WIN_TEXT:[I

.field private static final X:I = -0x1

.field private static final XMOD_DRIVE:[I

.field private static final XMOD_SCENE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    const v0, 0x9f68

    const v1, 0xa096

    const v2, 0x9ef2

    const v3, 0xa020

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->BUILD_DAMAGE:[I

    .line 59
    const v0, 0x1cc70

    const v1, 0x1cd64

    const v2, 0x1cba0

    const v3, 0x1cc94

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->UNIT_DAMAGE:[I

    .line 60
    const v0, 0x1b0d2

    const v1, 0x1b1c8

    const v2, 0x1b002

    const v3, 0x1b0f8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->DEATH:[I

    .line 61
    const/16 v0, 0x3d2c

    const/16 v1, 0x3e40

    const/16 v2, 0x3cbe

    const/16 v3, 0x3dd2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CANCEL:[I

    .line 62
    const v0, 0x16916

    const v1, 0x16a2e

    const v2, 0x1684e

    const v3, 0x16966

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->WIN_TEXT:[I

    .line 63
    const v0, 0x1335c

    const v1, 0x13474

    const v2, 0x1329c    # 1.09991E-40f

    const v3, 0x133b4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->REINFORCEMENT:[I

    .line 64
    const v0, 0x1371a

    const v1, 0x13832

    const v2, 0x1365a

    const v3, 0x13772

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->SPICE_STORAGE:[I

    .line 65
    const v0, 0x1bd80

    const v1, 0x1be76

    const v2, 0x1bcb0

    const v3, 0x1bda6

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->HARVEST_SPEED:[I

    .line 66
    const v0, 0x1c0c8

    const v1, 0x1c1bc

    const v2, 0x1bff8

    const v3, 0x1c0ec

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CY_FIX_A:[I

    .line 67
    const v0, 0x1c1fa

    const v1, 0x1c2ee

    const v2, 0x1c12a

    const v3, 0x1c21e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CY_FIX_B:[I

    .line 68
    const v0, 0x1c5a4

    const v1, 0x1c698

    const v2, 0x1c4d4

    const v3, 0x1c5c8

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->PROJECTILE:[I

    .line 69
    const v0, 0xc58c

    const v1, 0xc6c4

    const v2, 0xc4f6

    const v3, 0xc62e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->XMOD_SCENE:[I

    .line 70
    const v0, 0xf8a0

    const v1, 0xf9b8

    const v2, 0xf806

    const v3, 0xf91e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->XMOD_DRIVE:[I

    .line 71
    const v0, 0x89de

    const v1, 0x8b0c

    const v2, 0x8968

    const v3, 0x8a96

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->ALLY_FLAGS:[I

    .line 73
    const/16 v0, 0xf9

    const/16 v1, 0x4e

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    .line 74
    const/16 v0, 0xb9

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JSR:[I

    .line 75
    const/4 v0, 0x2

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->ANDI_B_D0:[I

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->SPICE_CMPI_LONG:[I

    .line 77
    const/16 v0, 0x60

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->BRA_BYTE:[I

    return-void

    :array_0
    .array-data 4
        0xc
        0xa9
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x12
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V
    .locals 16
    .param p1, "rom"    # [B
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "gate"    # Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;
    .param p5, "weak"    # Z
    .param p6, "addresses"    # [I
    .param p7, "opcode"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;",
            "Z[I[I)V"
        }
    .end annotation

    .line 87
    .local p0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    move-object/from16 v0, p6

    const/4 v1, 0x0

    .local v1, "count":I
    const/4 v2, -0x1

    .local v2, "matched":I
    const/4 v3, -0x1

    .line 88
    .local v3, "addr":I
    const/4 v4, 0x0

    move v12, v1

    .end local v1    # "count":I
    .local v4, "i":I
    .local v12, "count":I
    :goto_0
    array-length v1, v0

    if-ge v4, v1, :cond_1

    .line 89
    aget v1, v0, v4

    move-object/from16 v14, p1

    move-object/from16 v15, p7

    invoke-static {v14, v1, v15}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->matches([BI[I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v12, v12, 0x1

    move v1, v4

    .end local v2    # "matched":I
    .local v1, "matched":I
    aget v2, v0, v4

    move v3, v2

    move v2, v1

    .line 88
    .end local v1    # "matched":I
    .restart local v2    # "matched":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    move-object/from16 v15, p7

    .line 91
    .end local v4    # "i":I
    const/4 v1, 0x1

    if-nez v12, :cond_2

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->NOT_OBSERVED:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    move-object v9, v4

    goto :goto_2

    .line 92
    :cond_2
    if-le v12, v1, :cond_3

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->AMBIGUOUS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    move-object v9, v4

    goto :goto_2

    .line 93
    :cond_3
    if-eqz p5, :cond_4

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->WEAK_OPCODE:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    :goto_1
    move-object v9, v4

    :goto_2
    nop

    .line 94
    .local v9, "status":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;
    new-instance v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    const/4 v4, -0x1

    if-ne v12, v1, :cond_5

    move v10, v2

    goto :goto_3

    :cond_5
    move v10, v4

    :goto_3
    if-ne v12, v1, :cond_6

    move v11, v3

    goto :goto_4

    :cond_6
    move v11, v4

    :goto_4
    const/4 v13, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v5 .. v13}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;IIILcom/ahsim/demulation/DuneHackR82AsmHookProbe-IA;)V

    move-object/from16 v1, p0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-eqz p0, :cond_2

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_2

    array-length v0, p0

    const/high16 v1, 0x800000

    if-gt v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_2

    const/16 v0, 0x101

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_2

    const/16 v0, 0x102

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_2

    const/16 v0, 0x103

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_2

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 114
    .local v1, "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->BUILD_DAMAGE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "build_damage"

    const-string v4, "orgs.asm"

    const/4 v6, 0x0

    move-object v2, p0

    .end local p0    # "rom":[B
    .local v2, "rom":[B
    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 115
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->UNIT_DAMAGE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "unit_damage"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 116
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->DEATH:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "death_hand"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 117
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CANCEL:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "selection_cancel"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 118
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->WIN_TEXT:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "win_result"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 119
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->REINFORCEMENT:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->REINFORCEMENT:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "reinforcement"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 120
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->SPICE_STORAGE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->SPICE_CMPI_LONG:[I

    const-string v3, "spice_storage"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 121
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->HARVEST_SPEED:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->ANDI_B_D0:[I

    const-string v3, "harvest_speed"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 122
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CY_FIX_A:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->BRA_BYTE:[I

    const-string v3, "cy_upgrade_fix_1"

    const-string v4, "orgs.asm"

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 123
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALWAYS:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->CY_FIX_B:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->BRA_BYTE:[I

    const-string v3, "cy_upgrade_fix_2"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 124
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->PROJECTILES:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->PROJECTILE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "projectile_surface"

    const-string v4, "orgs.asm"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 125
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->X_MOD:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->XMOD_SCENE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JSR:[I

    const-string v3, "xmod_scenarios"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 126
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->X_MOD:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->XMOD_DRIVE:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JSR:[I

    const-string v3, "xmod_drive"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 127
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;->ALLY:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->ALLY_FLAGS:[I

    sget-object v8, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->JMP:[I

    const-string v3, "ally_flags"

    const-string v4, "orgs.asm"

    invoke-static/range {v1 .. v8}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->collect(Ljava/util/List;[BLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$SourceGate;Z[I[I)V

    .line 128
    .end local v2    # "rom":[B
    .restart local p0    # "rom":[B
    const/4 v0, 0x0

    .local v0, "seen":I
    const/4 v2, 0x0

    .line 129
    .local v2, "unknown":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move v5, v2

    .end local v0    # "seen":I
    .end local v2    # "unknown":I
    .local v4, "seen":I
    .local v5, "unknown":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;

    .line 130
    .local v0, "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    iget-object v2, v0, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;->evidence:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    sget-object v6, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;->OPCODE_AT_DOCUMENTED_OFFSET:Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Evidence;

    if-ne v2, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 132
    .end local v0    # "h":Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;
    :goto_1
    goto :goto_0

    .line 133
    :cond_1
    move-object v3, v1

    .end local v1    # "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    .local v3, "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    new-instance v1, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe;->sha256([B)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Result;-><init>(Ljava/lang/String;Ljava/util/List;IILcom/ahsim/demulation/DuneHackR82AsmHookProbe-IA;)V

    move-object v0, v1

    move-object v1, v3

    .end local v3    # "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    .restart local v1    # "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    return-object v0

    .line 111
    .end local v1    # "hooks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82AsmHookProbe$Hook;>;"
    .end local v4    # "seen":I
    .end local v5    # "unknown":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Recognized R82C Genesis ROM required for ASM hook audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matches([BI[I)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "signature"    # [I

    .line 79
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 81
    aget v2, p2, v1

    if-ltz v2, :cond_1

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 80
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_3
    :goto_1
    return v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 6
    .param p0, "rom"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 99
    .local v0, "b":[B
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 100
    .local v1, "hex":[C
    const/16 v2, 0x40

    new-array v2, v2, [C

    .line 101
    .local v2, "chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 102
    mul-int/lit8 v4, v3, 0x2

    aget-byte v5, v0, v3

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 105
    .end local v0    # "b":[B
    .end local v1    # "hex":[C
    .end local v2    # "chars":[C
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 missing"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
