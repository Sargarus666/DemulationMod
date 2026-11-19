.class public final Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorDamageOriginAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;,
        Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;,
        Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    }
.end annotation


# static fields
.field private static final ANCHOR_DISPLACEMENTS:[[I

.field private static final ANCHOR_HEX:[[Ljava/lang/String;

.field private static final CALLING_WINDOWS:[[[I

.field private static final CONTEXTS:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->EXPLOSION_AREA_STRUCTURE_IMPACT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->PERIODIC_BUILDING_DEGRADATION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->POWER_ADJUSTED_MAX_HP_REDUCTION:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;->INFANTRY_FAILED_CAPTURE:Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->CONTEXTS:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    .line 70
    const/4 v0, -0x8

    const/16 v1, -0x12e

    const/16 v7, -0x10e

    const/16 v8, -0x24

    filled-new-array {v1, v7, v8, v0}, [I

    move-result-object v0

    const/16 v1, -0x30

    const/16 v7, -0x20

    const/16 v9, -0x10

    const/4 v10, -0x6

    filled-new-array {v1, v7, v9, v10}, [I

    move-result-object v1

    const/16 v7, -0x40

    filled-new-array {v7, v8, v9, v10}, [I

    move-result-object v7

    filled-new-array {v0, v1, v7}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->ANCHOR_DISPLACEMENTS:[[I

    .line 75
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v7, "0c450006661a"

    aput-object v7, v1, v2

    const-string v7, "0c45000b6604"

    aput-object v7, v1, v3

    const-string v7, "30280010e240"

    aput-object v7, v1, v4

    const-string v7, "42573f2effda2f0a"

    aput-object v7, v1, v5

    aput-object v1, v0, v2

    new-array v1, v6, [Ljava/lang/String;

    const-string v7, "4a38c7266732"

    aput-object v7, v1, v2

    const-string v7, "0010e240b06a"

    aput-object v7, v1, v3

    const-string v8, "43f9000252cc"

    aput-object v8, v1, v4

    const-string v8, "42573f002f0a"

    aput-object v8, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    aput-object v7, v1, v2

    const-string v2, "005eb06a0012"

    aput-object v2, v1, v3

    const-string v2, "9082e6805240"

    aput-object v2, v1, v4

    const-string v2, "42573f032f0a"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->ANCHOR_HEX:[[Ljava/lang/String;

    .line 82
    const/16 v0, 0x6236

    const/16 v1, 0x641c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x7000

    const/16 v2, 0x7762

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const v2, 0xa7b0

    const v3, 0xa888

    filled-new-array {v2, v3}, [I

    move-result-object v2

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    const/16 v1, 0x634a

    const/16 v2, 0x6530

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x711c

    const/16 v3, 0x787e

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const v3, 0xa8de

    const v4, 0xa9b6

    filled-new-array {v3, v4}, [I

    move-result-object v3

    filled-new-array {v1, v2, v3}, [[I

    move-result-object v1

    filled-new-array {v0, v1}, [[[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->CALLING_WINDOWS:[[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static has([BILjava/lang/String;)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "p"    # I
    .param p2, "hex"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 135
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "val":I
    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_1

    return v0

    .line 134
    .end local v2    # "val":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 138
    .end local v1    # "k":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_3
    :goto_1
    return v0
.end method

.method public static inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;
    .locals 18
    .param p0, "rom"    # [B
    .param p1, "combat"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .param p2, "callers"    # Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .param p3, "previous"    # Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    if-eqz p2, :cond_a

    if-eqz v2, :cond_a

    iget-boolean v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v3, :cond_a

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_a

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v5, 0x2

    if-gt v3, v5, :cond_a

    iget-object v3, v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    .line 95
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_a

    .line 99
    nop

    .line 100
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;

    move-result-object v3

    .line 101
    .local v3, "verified":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v7, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x0

    if-ge v8, v6, :cond_3

    .line 103
    iget-object v10, v3, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;

    .line 104
    .local v10, "r":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    iget-object v11, v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;->routes:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;

    .line 105
    .local v11, "prev":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    iget v12, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->ordinal:I

    iget v13, v11, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->ordinal:I

    if-ne v12, v13, :cond_2

    iget v12, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->callOffset:I

    iget v13, v11, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->callOffset:I

    if-ne v12, v13, :cond_2

    iget-object v12, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->sourcePattern:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    iget-object v13, v11, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->sourcePattern:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    if-ne v12, v13, :cond_2

    iget v12, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->argumentModeWord:I

    iget v13, v11, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->argumentModeWord:I

    if-ne v12, v13, :cond_2

    .line 109
    const/4 v12, 0x3

    if-ge v8, v12, :cond_1

    .line 110
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    sget-object v13, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->ANCHOR_DISPLACEMENTS:[[I

    aget-object v13, v13, v8

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 111
    iget v13, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->callOffset:I

    sget-object v14, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->ANCHOR_DISPLACEMENTS:[[I

    aget-object v14, v14, v8

    aget v14, v14, v12

    add-int/2addr v13, v14

    sget-object v14, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->ANCHOR_HEX:[[Ljava/lang/String;

    aget-object v14, v14, v8

    aget-object v14, v14, v12

    invoke-static {v0, v13, v14}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->has([BILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 110
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 112
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0.4.316 caller context changed at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v8, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    .end local v12    # "j":I
    :cond_1
    new-instance v12, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;

    iget v13, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->ordinal:I

    iget v14, v10, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;->callOffset:I

    sget-object v15, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->CONTEXTS:[Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;

    aget-object v15, v15, v8

    invoke-direct {v12, v13, v14, v15, v9}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;-><init>(IILcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Context;Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit-IA;)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v10    # "r":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    .end local v11    # "prev":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 108
    .restart local v10    # "r":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    .restart local v11    # "prev":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "0.4.316 previous evidence mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v8    # "i":I
    .end local v10    # "r":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    .end local v11    # "prev":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v8, "possibleIndirect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v10, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit;->CALLING_WINDOWS:[[[I

    iget v11, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    sub-int/2addr v11, v4

    aget-object v10, v10, v11

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    if-ge v13, v11, :cond_9

    aget-object v14, v10, v13

    .line 119
    .local v14, "window":[I
    aget v15, v14, v12

    if-ltz v15, :cond_8

    aget v15, v14, v4

    move/from16 v16, v4

    array-length v4, v0

    if-gt v15, v4, :cond_8

    aget v4, v14, v12

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    .line 121
    aget v4, v14, v12

    .local v4, "p":I
    :goto_3
    add-int/lit8 v15, v4, 0x1

    aget v12, v14, v16

    if-ge v15, v12, :cond_7

    .line 122
    aget-byte v12, v0, v4

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v15, v4, 0x1

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v12, v15

    .line 123
    .local v12, "op":I
    const v17, 0xffc0

    and-int v15, v12, v17

    const/16 v9, 0x4e80

    if-eq v15, v9, :cond_4

    and-int v9, v12, v17

    const/16 v15, 0x4ec0

    if-eq v9, v15, :cond_4

    goto :goto_4

    .line 124
    :cond_4
    ushr-int/lit8 v9, v12, 0x3

    and-int/lit8 v9, v9, 0x7

    .line 125
    .local v9, "mode":I
    if-eq v9, v5, :cond_5

    if-eq v9, v6, :cond_5

    const/4 v15, 0x6

    if-ne v9, v15, :cond_6

    .line 126
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v9    # "mode":I
    .end local v12    # "op":I
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_3

    .line 118
    .end local v4    # "p":I
    .end local v14    # "window":[I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v9, 0x0

    const/4 v12, 0x0

    goto :goto_2

    .line 120
    .restart local v14    # "window":[I
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "0.4.316 call window outside ROM"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    .end local v14    # "window":[I
    :cond_9
    new-instance v4, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v8, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$Result;-><init>(Ljava/util/List;Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit-IA;)V

    return-object v4

    .line 96
    .end local v3    # "verified":Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .end local v7    # "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/DuneHackR82cRazorDamageOriginAudit$ObservedRoute;>;"
    .end local v8    # "possibleIndirect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "0.4.316 requires attested Razor call context"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
