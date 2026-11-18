.class public final Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;
.super Ljava/lang/Object;
.source "DuneHackR82CampaignLinkProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;,
        Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;,
        Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2d

.field public static final HOUSES:I = 0x5

.field private static final MAP_BOUNDS_BYTES:I = 0x5a

.field private static final MAX_ROM:I = 0x1000000

.field public static final MISSIONS:I = 0x9

.field private static final TABLE_BYTES:I = 0xb4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static be32([BI)I
    .locals 2
    .param p0, "rom"    # [B
    .param p1, "pos"    # I

    .line 184
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static findUniqueMapAndScenarioTables([B)I
    .locals 4
    .param p0, "rom"    # [B

    .line 124
    const/4 v0, -0x1

    .line 127
    .local v0, "unique":I
    array-length v1, p0

    add-int/lit16 v1, v1, -0x168

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 128
    .local v1, "upper":I
    const/16 v2, 0x240

    .local v2, "start":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 129
    invoke-static {p0, v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->looksLikePairedTables([BI)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    if-ltz v0, :cond_1

    const/4 v3, -0x2

    return v3

    .line 131
    :cond_1
    move v0, v2

    .line 128
    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 133
    .end local v2    # "start":I
    :cond_2
    return v0
.end method

.method public static inspect([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    .locals 14
    .param p0, "rom"    # [B
    .param p1, "family"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, p0

    const/high16 v1, 0x40000

    if-lt v0, v1, :cond_7

    array-length v0, p0

    const/high16 v1, 0x1000000

    if-gt v0, v1, :cond_7

    const/16 v0, 0x100

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_7

    const/16 v0, 0x101

    aget-byte v0, p0, v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_7

    const/16 v0, 0x102

    aget-byte v0, p0, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_7

    const/16 v0, 0x103

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "fingerprint":Ljava/lang/String;
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->findUniqueMapAndScenarioTables([B)I

    move-result v0

    .line 96
    .local v0, "table":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    new-instance v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-string v7, "Ambiguous multiple 45-map/45-scenario structures"

    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    return-object v2

    .line 98
    :cond_1
    if-gez v0, :cond_2

    new-instance v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-string v7, "No independently consistent paired pointer-table layout"

    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    return-object v2

    .line 100
    :cond_2
    iget-boolean v1, p1, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->exampleFingerprintMatched:Z

    if-eqz v1, :cond_6

    .line 102
    nop

    .line 103
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82MapContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;

    move-result-object v8

    .line 104
    .local v8, "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    nop

    .line 105
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor;->extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;

    move-result-object v9

    .line 106
    .local v9, "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    const v1, 0x83c00

    if-ne v0, v1, :cond_5

    .line 108
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x9

    aput v3, v1, v2

    const/4 v2, 0x0

    const/4 v11, 0x5

    aput v11, v1, v2

    const-class v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    .line 109
    .local v1, "rows":[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    const/4 v2, 0x0

    move v6, v2

    .local v6, "h":I
    :goto_0
    if-ge v6, v11, :cond_4

    .line 110
    const/4 v2, 0x1

    move v7, v2

    .local v7, "m":I
    :goto_1
    if-gt v7, v3, :cond_3

    .line 111
    aget-object v2, v1, v6

    add-int/lit8 v12, v7, -0x1

    new-instance v5, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;-><init>(IILcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    move-object v10, v8

    move-object v13, v9

    .end local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .local v10, "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .local v13, "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    aput-object v5, v2, v12

    .line 110
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v10    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v13    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .restart local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    :cond_3
    move-object v10, v8

    move-object v13, v9

    .line 109
    .end local v7    # "m":I
    .end local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v10    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .restart local v13    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v10    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v13    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .restart local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    :cond_4
    move-object v10, v8

    move-object v13, v9

    .line 113
    .end local v6    # "h":I
    .end local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v10    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .restart local v13    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    add-int/lit16 v6, v0, 0xb4

    const-string v7, "45 paired entries verified by ASM and exact ROM SHA-256"

    const/4 v9, 0x0

    move v5, v0

    move-object v8, v1

    .end local v0    # "table":I
    .end local v1    # "rows":[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    .local v5, "table":I
    .local v8, "rows":[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    return-object v2

    .line 107
    .end local v5    # "table":I
    .end local v10    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v13    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v0    # "table":I
    .local v8, "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .restart local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    :cond_5
    move v5, v0

    .end local v0    # "table":I
    .restart local v5    # "table":I
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Audited image did not match structural map table"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    .end local v5    # "table":I
    .end local v8    # "maps":Lcom/ahsim/demulation/DuneHackR82MapContentExtractor$Result;
    .end local v9    # "scenarios":Lcom/ahsim/demulation/DuneHackR82ScenarioContentExtractor$Result;
    .restart local v0    # "table":I
    :cond_6
    move v5, v0

    .end local v0    # "table":I
    .restart local v5    # "table":I
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->STRUCTURAL_CANDIDATE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    add-int/lit16 v6, v5, 0xb4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, "45 map + 45 scenario pointers structurally consistent; house mapping and mechanics unaudited"

    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    return-object v2

    .line 91
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v5    # "table":I
    :cond_7
    :goto_2
    new-instance v6, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    sget-object v7, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v8, ""

    const/4 v9, -0x1

    const/4 v10, -0x1

    const-string v11, "ROM not recognized as a normalized R82C-family Genesis image"

    invoke-direct/range {v6 .. v13}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;Ljava/lang/String;IILjava/lang/String;[[Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe-IA;)V

    return-object v6
.end method

.method private static isScenarioHeader([BI)Z
    .locals 5
    .param p0, "rom"    # [B
    .param p1, "pos"    # I

    .line 173
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->be32([BI)I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    add-int/lit8 v0, p1, 0xc

    aget-byte v0, p0, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    add-int/lit8 v0, p1, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_5

    add-int/lit8 v0, p1, 0xe

    aget-byte v0, p0, v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_5

    add-int/lit8 v0, p1, 0xf

    aget-byte v0, p0, v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    const/4 v0, 0x4

    .local v0, "j":I
    :goto_0
    const/16 v3, 0xc

    if-ge v0, v3, :cond_4

    .line 177
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 178
    .local v3, "ch":I
    if-lt v3, v1, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 176
    .end local v3    # "ch":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .restart local v3    # "ch":I
    :cond_3
    :goto_1
    return v2

    .line 180
    .end local v0    # "j":I
    .end local v3    # "ch":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_5
    :goto_2
    return v2
.end method

.method private static looksLikePairedTables([BI)Z
    .locals 13
    .param p0, "rom"    # [B
    .param p1, "start"    # I

    .line 139
    invoke-static {p0, p1}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->be32([BI)I

    move-result v0

    .line 140
    .local v0, "first":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    add-int/lit16 v1, p1, 0x168

    if-le v0, v1, :cond_c

    array-length v1, p0

    const/16 v3, 0x400

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_0

    goto/16 :goto_5

    .line 142
    :cond_0
    move v1, v0

    .line 143
    .local v1, "previous":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x1000

    const/16 v6, 0x2d

    if-ge v4, v6, :cond_2

    .line 144
    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, p1

    invoke-static {p0, v6}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->be32([BI)I

    move-result v6

    .line 145
    .local v6, "next":I
    sub-int v7, v6, v1

    .line 146
    .local v7, "delta":I
    if-eq v7, v3, :cond_1

    if-eq v7, v5, :cond_1

    return v2

    .line 147
    :cond_1
    move v1, v6

    .line 143
    .end local v6    # "next":I
    .end local v7    # "delta":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    .end local v4    # "i":I
    :cond_2
    add-int/lit16 v4, p1, 0xb4

    .line 150
    .local v4, "scenarioTable":I
    const v7, 0x7fffffff

    .line 151
    .local v7, "firstScenario":I
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v8, "starts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_6

    .line 153
    mul-int/lit8 v10, v9, 0x4

    add-int/2addr v10, v4

    invoke-static {p0, v10}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->be32([BI)I

    move-result v10

    .line 154
    .local v10, "address":I
    and-int/lit8 v11, v10, 0x1

    if-nez v11, :cond_5

    add-int/lit16 v11, v1, 0x400

    if-lt v10, v11, :cond_5

    array-length v11, p0

    add-int/lit8 v11, v11, -0x10

    if-gt v10, v11, :cond_5

    .line 155
    invoke-static {p0, v10}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->isScenarioHeader([BI)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 156
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    .line 157
    :cond_3
    rem-int/lit8 v11, v9, 0x9

    if-eqz v11, :cond_4

    add-int/lit8 v11, v9, -0x1

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v4

    invoke-static {p0, v11}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->be32([BI)I

    move-result v11

    if-gt v10, v11, :cond_4

    .line 158
    return v2

    .line 159
    :cond_4
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 152
    .end local v10    # "address":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 156
    .restart local v10    # "address":I
    :cond_5
    :goto_2
    return v2

    .line 161
    .end local v9    # "i":I
    .end local v10    # "address":I
    :cond_6
    sub-int v9, v7, v1

    .line 162
    .local v9, "finalSize":I
    if-eq v9, v3, :cond_7

    if-eq v9, v5, :cond_7

    return v2

    .line 163
    :cond_7
    const/16 v3, 0x5a

    if-ge p1, v3, :cond_8

    return v2

    .line 164
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    const/4 v5, 0x1

    if-ge v3, v6, :cond_b

    .line 165
    add-int/lit8 v10, p1, -0x5a

    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    .line 166
    .local v10, "x":I
    add-int/lit8 v11, p1, -0x5a

    mul-int/lit8 v12, v3, 0x2

    add-int/2addr v11, v12

    add-int/2addr v11, v5

    aget-byte v5, p0, v11

    and-int/lit16 v5, v5, 0xff

    .line 167
    .local v5, "y":I
    const/16 v11, 0x1f

    if-lt v10, v11, :cond_a

    const/16 v12, 0x7f

    if-gt v10, v12, :cond_a

    if-lt v5, v11, :cond_a

    if-le v5, v12, :cond_9

    goto :goto_4

    .line 164
    .end local v5    # "y":I
    .end local v10    # "x":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 167
    .restart local v5    # "y":I
    .restart local v10    # "x":I
    :cond_a
    :goto_4
    return v2

    .line 169
    .end local v3    # "i":I
    .end local v5    # "y":I
    .end local v10    # "x":I
    :cond_b
    return v5

    .line 141
    .end local v1    # "previous":I
    .end local v4    # "scenarioTable":I
    .end local v7    # "firstScenario":I
    .end local v8    # "starts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v9    # "finalSize":I
    :cond_c
    :goto_5
    return v2
.end method

.method public static profileText(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;)Ljava/lang/String;
    .locals 7
    .param p0, "result"    # Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;

    .line 189
    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-eq v0, v1, :cond_4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3a98

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    .local v0, "out":Ljava/lang/StringBuilder;
    const-string v1, "R82C_CAMPAIGN_PREVIEW_V1\nsource_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string v2, "\nconfidence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string v2, "\nmap_pointer_table=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->mapPointerTable:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string v2, "\nscenario_pointer_table=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->scenarioPointerTable:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    const-string v2, "\nmap_slots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->structuralMapSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string v2, "\nscenario_slots="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->structuralScenarioSlots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, "\nnamed_pairs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2d

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, "\nready=false\ngameplay=false\noverlay=false\nemc_compatible=unknown\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->AUDITED_REFERENCE:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-ne v1, v2, :cond_3

    .line 201
    const-string v1, "house,mission,map_offset,map_bytes,map_max_x,map_max_y,map_sha256,scenario_offset,scenario_bytes,scenario_sha256\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .local v1, "house":I
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 203
    const/4 v2, 0x1

    .local v2, "mission":I
    :goto_2
    const/16 v3, 0x9

    if-gt v2, v3, :cond_1

    .line 204
    invoke-virtual {p0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->pair(II)Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;

    move-result-object v3

    .line 205
    .local v3, "pair":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapRomOffset:I

    .line 206
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapStoredBytes:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapMaxX:I

    .line 207
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapMaxY:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->mapSha256:Ljava/lang/String;

    .line 208
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioRomOffset:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioBytes:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;->scenarioSha256:Ljava/lang/String;

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .end local v3    # "pair":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Pair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    .end local v2    # "mission":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "house":I
    :cond_2
    goto :goto_3

    .line 214
    :cond_3
    const-string v1, "WARNING: structural layout only; house and mission pairing NOT VERIFIED\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No usable R82C campaign layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
