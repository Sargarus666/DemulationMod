.class public final Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.super Ljava/lang/Object;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;,
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;,
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;,
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;,
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;,
        Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;
    }
.end annotation


# static fields
.field private static final SHA_R79_REVOLUTION_ANG_VOICE:Ljava/lang/String; = "babff0733d860b38922408b73589537c0903effe6c628aa0a93479d60b15d440"

.field private static final SHA_R79_REVOLUTION_RUS_VOICE:Ljava/lang/String; = "6a0f21a71476c4e9153198c75886a3c6d38cdd55555b90a619539d79cfec34b1"

.field private static final SHA_R80B_LABYRINTH:Ljava/lang/String; = "b91d68b134effbb0aadea0ab7f00c184be8da555c79280990b2b2390f035892a"

.field private static final SHA_R81B_CONSUL_WAR_2:Ljava/lang/String; = "eb24c14ad5e7b0545f15fd0af5391ff9a5a80691810248ce260faa086faf75a5"

.field private static final SHA_R81B_MISSION_DEMOLITION:Ljava/lang/String; = "6d2fac8af27e3ba75b70db047245cd4bca9fc9ce80cf2a3d7194dd2ac2d3a93f"

.field private static final SHA_R81C_RAZOR_MISSIONS:Ljava/lang/String; = "b563d95cb3db589476fa44a29027a9d46e48cbd8369c5b65ccec0e627a14e578"

.field private static final SHA_REFERENCE_USA:Ljava/lang/String; = "b1bbe73186e0902fa8b2db0f227bf306e3d6a80fe592f927d1aa9d60c0f335ba"

.field private static final SHA_RU_SHEDEVR_LIPETSK:Ljava/lang/String; = "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyze(Ljava/io/InputStream;J)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
    .locals 26
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    if-eqz p0, :cond_4

    .line 169
    invoke-static/range {p0 .. p2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->readRawForHash(Ljava/io/InputStream;J)[B

    move-result-object v0

    .line 170
    .local v0, "raw":[B
    invoke-static {v0}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->sha256([B)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "rawSha":Ljava/lang/String;
    invoke-static {v0}, Lcom/ahsim/demulation/RomImageNormalizer;->normalize([B)Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;

    move-result-object v1

    .line 172
    .local v1, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    iget-object v2, v1, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->bytes:[B

    .line 173
    .local v2, "rom":[B
    invoke-static {v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->sha256([B)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "logicalSha":Ljava/lang/String;
    invoke-static {v2}, Lcom/ahsim/demulation/RomImageNormalizer;->hasGenesisHeader([B)Z

    move-result v8

    .line 176
    .local v8, "sega":Z
    const/16 v3, 0x150

    const-string v4, ""

    if-eqz v8, :cond_0

    const/16 v5, 0x120

    invoke-static {v2, v5, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->ascii([BII)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_0

    :cond_0
    move-object v9, v4

    .line 177
    .local v9, "domestic":Ljava/lang/String;
    :goto_0
    const/16 v5, 0x180

    if-eqz v8, :cond_1

    invoke-static {v2, v3, v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->ascii([BII)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object v10, v4

    .line 178
    .local v10, "overseas":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_2

    const/16 v3, 0x18e

    invoke-static {v2, v5, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->ascii([BII)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_2

    :cond_2
    move-object v11, v4

    .line 179
    .local v11, "serial":Ljava/lang/String;
    :goto_2
    array-length v3, v2

    const/16 v5, 0x240

    if-lt v3, v5, :cond_3

    const/16 v3, 0x220

    invoke-static {v2, v3, v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->asciiLoose([BII)Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object v13, v4

    .line 181
    .local v13, "rebuildTag":Ljava/lang/String;
    array-length v3, v2

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v7}, Lcom/ahsim/demulation/DuneHackR82Probe;->inspect([BJLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    move-result-object v14

    .line 182
    .local v14, "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    move-object v12, v13

    .end local v13    # "rebuildTag":Ljava/lang/String;
    .local v12, "rebuildTag":Ljava/lang/String;
    array-length v13, v2

    invoke-static/range {v7 .. v14}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->decideProfile(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    move-result-object v3

    .line 184
    .local v3, "decision":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    invoke-static {v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->classifyCapabilities(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;)Ljava/util/EnumMap;

    move-result-object v19

    .line 186
    .local v19, "caps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;>;"
    new-instance v4, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;

    array-length v5, v0

    move-object v13, v4

    int-to-long v4, v5

    array-length v15, v2

    move-wide/from16 v16, v4

    int-to-long v4, v15

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    .end local v8    # "sega":Z
    .local v9, "sega":Z
    .local v10, "domestic":Ljava/lang/String;
    .local v11, "overseas":Ljava/lang/String;
    .local v12, "serial":Ljava/lang/String;
    .restart local v13    # "rebuildTag":Ljava/lang/String;
    iget-object v8, v1, Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;->containerFormat:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    move-object/from16 v18, v14

    .end local v14    # "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .local v18, "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    iget-object v14, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->family:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    move-object/from16 v20, v1

    move-object v1, v15

    .end local v1    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .local v20, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    iget-object v15, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->profileId:Ljava/lang/String;

    move-object/from16 v21, v0

    .end local v0    # "raw":[B
    .local v21, "raw":[B
    iget-object v0, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-boolean v0, v3, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exact:Z

    move-object/from16 v23, v20

    .end local v20    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    .local v23, "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    const/16 v20, 0x0

    move-wide/from16 v24, v16

    move/from16 v17, v0

    move-object v0, v2

    move-object/from16 v16, v22

    move-object/from16 v22, v3

    move-wide/from16 v2, v24

    .end local v2    # "rom":[B
    .end local v3    # "decision":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    .local v0, "rom":[B
    .local v22, "decision":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    invoke-direct/range {v1 .. v20}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;-><init>(JJLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v14, v18

    .end local v13    # "rebuildTag":Ljava/lang/String;
    .end local v18    # "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .restart local v8    # "sega":Z
    .local v9, "domestic":Ljava/lang/String;
    .local v10, "overseas":Ljava/lang/String;
    .local v11, "serial":Ljava/lang/String;
    .local v12, "rebuildTag":Ljava/lang/String;
    .restart local v14    # "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    return-object v1

    .line 168
    .end local v0    # "rom":[B
    .end local v6    # "rawSha":Ljava/lang/String;
    .end local v7    # "logicalSha":Ljava/lang/String;
    .end local v8    # "sega":Z
    .end local v9    # "domestic":Ljava/lang/String;
    .end local v10    # "overseas":Ljava/lang/String;
    .end local v11    # "serial":Ljava/lang/String;
    .end local v12    # "rebuildTag":Ljava/lang/String;
    .end local v14    # "r82Probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .end local v19    # "caps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;>;"
    .end local v21    # "raw":[B
    .end local v22    # "decision":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    .end local v23    # "normalized":Lcom/ahsim/demulation/RomImageNormalizer$NormalizedImage;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM stream is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ascii([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 456
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 457
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 458
    .local v2, "value":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static asciiLoose([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 466
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 467
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 468
    .local v2, "value":I
    if-nez v2, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    .line 472
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    .end local v2    # "value":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static classifyCapabilities(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;)Ljava/util/EnumMap;
    .locals 10
    .param p0, "d"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;",
            ")",
            "Ljava/util/EnumMap<",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 325
    .local v0, "out":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 326
    .local v6, "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    new-instance v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    sget-object v8, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->UNAVAILABLE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v9, "no verified layout evidence"

    invoke-direct {v7, v8, v9, v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .end local v6    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget v1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 330
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 331
    .local v4, "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->READY_NOW:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v8, "exact verified USA profile / current provider layout"

    invoke-direct {v6, v7, v8, v5}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V

    invoke-virtual {v0, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 334
    :cond_1
    return-object v0

    .line 337
    :cond_2
    iget v1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 340
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->FRONTEND_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->PARTIAL:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "21/27 historical frontend assets decoded; modified patterns/maps remain"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MENTAT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->PARTIAL:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "45/50 historical Mentat assets decoded; localized selectors/join content changed"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->MISSION_PRESENTATION_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->PARTIAL:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "13/15 historical mission-presentation assets decoded"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 346
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TUTORIAL_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "tutorial scene table changed by translation patch"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->RESULT_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "mission-result compressed stream differs from legacy assumptions"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 350
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->ENDING_GRAPHICS_MIXED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->READY_NOW:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "8/8 ending graphics decoded with legacy layout"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 352
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->READY_NOW:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "6/6 terrain/radar assets decoded with legacy layout"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 354
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->PARTIAL:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "4/5 tactical groups decoded; static sprite bank modified"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 356
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->AUDIO_MUSIC_SFX:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "audio bytes differ; semantic GEMS extraction deferred to Y4"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 358
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "known Russian translation uses original-layout text with custom glyph mapping"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 360
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "known Russian profile requires paired localized glyph/font mapping"

    invoke-static {v0, v1, v2, v3}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 362
    return-object v0

    .line 365
    :cond_3
    iget v1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    const/4 v2, 0x3

    const/4 v4, 0x7

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    if-ne v1, v4, :cond_d

    .line 366
    :cond_5
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_c

    aget-object v5, v1, v3

    .line 367
    .local v5, "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-eq v5, v6, :cond_a

    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-ne v5, v6, :cond_6

    goto :goto_5

    .line 373
    :cond_6
    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-ne v5, v6, :cond_7

    goto :goto_4

    .line 378
    :cond_7
    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    .line 379
    iget v7, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    if-ne v7, v4, :cond_8

    .line 380
    const-string v7, "exact audited Rebuild R79 sample; non-world content is intentionally excluded from MEDIA_MOD"

    goto :goto_3

    .line 381
    :cond_8
    const-string v7, "exact audited DuneHack sample; this content family still needs a dedicated Rebuild adapter"

    .line 378
    :goto_3
    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    goto :goto_7

    .line 375
    :cond_9
    :goto_4
    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v7, "content may exist but media-mod role must ignore text/localization"

    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    goto :goto_7

    .line 369
    :cond_a
    :goto_5
    sget-object v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    .line 370
    iget v7, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->exactKind:I

    if-ne v7, v4, :cond_b

    .line 371
    const-string v7, "audited Rebuild R79 graphics bridge; each asset is structurally proved before overlay"

    goto :goto_6

    .line 372
    :cond_b
    const-string v7, "Y4 R80/R81 relocation scanner available; each graphics asset is structurally proved before overlay"

    .line 369
    :goto_6
    invoke-static {v0, v5, v6, v7}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 366
    .end local v5    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 384
    :cond_c
    return-object v0

    .line 387
    :cond_d
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$1;->$SwitchMap$com$ahsim$demulation$RomLayoutCapabilityAnalyzer$LayoutFamily:[I

    iget-object v2, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;->family:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    invoke-virtual {v2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_e

    .line 412
    :pswitch_0
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_8
    if-ge v3, v2, :cond_10

    aget-object v4, v1, v3

    .line 413
    .restart local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->WORLD_TERRAIN_RADAR:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-eq v4, v5, :cond_f

    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->TACTICAL_SPRITES:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    if-ne v4, v5, :cond_e

    goto :goto_9

    .line 418
    :cond_e
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v6, "DuneHack/Rebuild family recognized; exact image not audited"

    invoke-static {v0, v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    goto :goto_a

    .line 415
    :cond_f
    :goto_9
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v6, "DuneHack/Rebuild family recognized; R79/R80/R81 relocation scanner will validate graphics per asset"

    invoke-static {v0, v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 412
    .end local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 422
    :cond_10
    goto :goto_e

    .line 402
    :pswitch_1
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_b
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 403
    .restart local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->CANDIDATE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v6, "original-layout family recognized; exact revision not audited"

    invoke-static {v0, v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 402
    .end local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 406
    :cond_11
    goto :goto_e

    .line 396
    :pswitch_2
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_c
    if-ge v3, v2, :cond_12

    aget-object v4, v1, v3

    .line 397
    .restart local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v6, "R82C-family metadata recognized; ROM layout and active mechanics not validated"

    invoke-static {v0, v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 396
    .end local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 400
    :cond_12
    goto :goto_e

    .line 389
    :pswitch_3
    invoke-static {}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->values()[Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    move-result-object v1

    array-length v2, v1

    :goto_d
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 390
    .restart local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->ADAPTER_REQUIRED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v6, "R82B is not R82C; combat/data/graphics layout unverified; no gameplay imports"

    invoke-static {v0, v4, v5, v6}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;->set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V

    .line 389
    .end local v4    # "group":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 393
    :cond_13
    nop

    .line 426
    :goto_e
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static decideProfile(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;
    .locals 26
    .param p0, "sha"    # Ljava/lang/String;
    .param p1, "sega"    # Z
    .param p2, "domestic"    # Ljava/lang/String;
    .param p3, "overseas"    # Ljava/lang/String;
    .param p4, "serial"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "size"    # I
    .param p7, "r82"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v5, "b1bbe73186e0902fa8b2db0f227bf306e3d6a80fe592f927d1aa9d60c0f335ba"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_USA:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v8, "dune_arrakis_usa_gm_t70246_00"

    const-string v9, "USA retail / verified original layout"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 216
    :cond_0
    const-string v5, "4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v8, "translation_ru_shedevr_lipetsk_usa"

    const-string v9, "Russian translation / Shedevr & Lipetsk / original 1 MiB layout"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 222
    :cond_1
    const-string v5, "babff0733d860b38922408b73589537c0903effe6c628aa0a93479d60b15d440"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 223
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const-string v8, "dunehack_r79_revolution_ang_voice"

    const-string v9, "Dune Revolution / Rebuild R79 / English voice"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 227
    :cond_2
    const-string v5, "6a0f21a71476c4e9153198c75886a3c6d38cdd55555b90a619539d79cfec34b1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 228
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const-string v8, "dunehack_r79_revolution_rus_voice"

    const-string v9, "Dune Revolution / Rebuild R79 / Russian voice"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 232
    :cond_3
    const-string v5, "b91d68b134effbb0aadea0ab7f00c184be8da555c79280990b2b2390f035892a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 233
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v8, "dunehack_r80b_labyrinth_35_successor"

    const-string v9, "DuneHack Rebuild R80b / Labyrinth 3.5 Successor"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 237
    :cond_4
    const-string v5, "6d2fac8af27e3ba75b70db047245cd4bca9fc9ce80cf2a3d7194dd2ac2d3a93f"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const-string v8, "dunehack_r81b_mission_demolition_ru"

    const-string v9, "DuneHack Rebuild R81b / Mission Demolition [rus]"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 242
    :cond_5
    const-string v5, "eb24c14ad5e7b0545f15fd0af5391ff9a5a80691810248ce260faa086faf75a5"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 243
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x5

    const-string v8, "dunehack_r81b_consul_war_2"

    const-string v9, "DuneHack Rebuild R81b / Consul War 2"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 247
    :cond_6
    const-string v5, "b563d95cb3db589476fa44a29027a9d46e48cbd8369c5b65ccec0e627a14e578"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 248
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v7, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v10, 0x1

    const/4 v11, 0x6

    const-string v8, "dunehack_r81c_razor_missions"

    const-string v9, "DuneHack Rebuild R81c / Razor Missions"

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 253
    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->recognized()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 257
    iget-object v5, v4, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v6, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v5, v6, :cond_8

    .line 258
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C_PLUS:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    goto :goto_0

    :cond_8
    sget-object v5, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    :goto_0
    move-object v7, v5

    .line 259
    .local v7, "family":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    new-instance v6, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    invoke-virtual {v4}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->profileId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->profileLabel()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v6

    .line 265
    .end local v7    # "family":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "r82bTitles":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "r82bTag":Ljava/lang/String;
    if-eqz p1, :cond_c

    const-string v8, "REBUILD R82B"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 268
    const-string v8, "NS14JUN21_82B"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 269
    const-string v6, "a133c2b6dddcb33c843e419d9d8f75c4d4a4dcb4cd068ad1a1088a7d9d02577c"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 270
    .local v6, "requiteSample":Z
    new-instance v8, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v9, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R82B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 271
    if-eqz v6, :cond_a

    const-string v10, "candidate:dune_ii_requite_r82b"

    goto :goto_1

    :cond_a
    const-string v10, "candidate:dunehack_r82b"

    .line 272
    :goto_1
    if-eqz v6, :cond_b

    const-string v11, "Dune II Requite / Dimidrol / R82B (audit only)"

    goto :goto_2

    .line 273
    :cond_b
    const-string v11, "DuneHack Rebuild R82B family (audit only)"

    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 270
    return-object v8

    .line 276
    .end local v6    # "requiteSample":Z
    :cond_c
    if-nez p1, :cond_d

    .line 277
    new-instance v9, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v10, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "unknown:no_sega_header"

    const-string v12, "Unknown image / no canonical Genesis header"

    invoke-direct/range {v9 .. v14}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v9

    .line 281
    :cond_d
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "upperTag":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "titles":Ljava/lang/String;
    const-string v9, "REBUILD_R79"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_19

    const-string v9, "REBUILD R79"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    move-object/from16 v11, p4

    move/from16 v13, p6

    goto/16 :goto_7

    .line 288
    :cond_e
    const-string v9, "REBUILD_R80"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    const-string v9, "REBUILD R80"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object/from16 v11, p4

    move/from16 v13, p6

    goto/16 :goto_6

    .line 293
    :cond_f
    const-string v9, "81C"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "REBUILD R81C"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object/from16 v11, p4

    move/from16 v13, p6

    goto/16 :goto_5

    .line 298
    :cond_10
    const-string v9, "81B"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    const-string v9, "REBUILD_81B"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 299
    const-string v9, "REBUILD R81B"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object/from16 v11, p4

    move/from16 v13, p6

    goto/16 :goto_4

    .line 304
    :cond_11
    const-string v9, "REBUILD"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, "DUNEHACK"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 305
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_12

    move-object/from16 v11, p4

    move/from16 v13, p6

    goto :goto_3

    .line 311
    :cond_12
    const-string v9, "DUNE - THE BATTLE FOR ARRAKIS"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 312
    .local v9, "titleMatch":Z
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v11, p4

    invoke-virtual {v11, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "GM T-70246"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    .line 313
    .local v10, "serialMatch":Z
    if-eqz v9, :cond_13

    if-eqz v10, :cond_13

    const/high16 v12, 0x100000

    move/from16 v13, p6

    if-lt v13, v12, :cond_14

    .line 314
    new-instance v14, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v15, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->ORIGINAL_LAYOUT_PATCHED:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v16, "candidate:original_layout_patched"

    const-string v17, "Original-layout patched/translated candidate"

    invoke-direct/range {v14 .. v19}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v14

    .line 313
    :cond_13
    move/from16 v13, p6

    .line 319
    :cond_14
    new-instance v15, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v16, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "unknown"

    const-string v18, "Unrecognized Genesis ROM layout"

    invoke-direct/range {v15 .. v20}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v15

    .line 304
    .end local v9    # "titleMatch":Z
    .end local v10    # "serialMatch":Z
    :cond_15
    move-object/from16 v11, p4

    move/from16 v13, p6

    .line 306
    :goto_3
    new-instance v16, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v17, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_UNKNOWN:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v18, "candidate:dunehack_unknown"

    const-string v19, "DuneHack/Rebuild family candidate"

    invoke-direct/range {v16 .. v21}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v16

    .line 298
    :cond_16
    move-object/from16 v11, p4

    move/from16 v13, p6

    .line 300
    :goto_4
    new-instance v17, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v18, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v19, "candidate:dunehack_r81b"

    const-string v20, "DuneHack Rebuild R81b family candidate"

    invoke-direct/range {v17 .. v22}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v17

    .line 293
    :cond_17
    move-object/from16 v11, p4

    move/from16 v13, p6

    .line 294
    :goto_5
    new-instance v18, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v19, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R81C:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v20, "candidate:dunehack_r81c"

    const-string v21, "DuneHack Rebuild R81c family candidate"

    invoke-direct/range {v18 .. v23}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v18

    .line 288
    :cond_18
    move-object/from16 v11, p4

    move/from16 v13, p6

    .line 289
    :goto_6
    new-instance v19, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v20, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R80B:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v21, "candidate:dunehack_r80b"

    const-string v22, "DuneHack Rebuild R80 family candidate"

    invoke-direct/range {v19 .. v24}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v19

    .line 283
    :cond_19
    move-object/from16 v11, p4

    move/from16 v13, p6

    .line 284
    :goto_7
    new-instance v20, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;

    sget-object v21, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;->DUNEHACK_R79:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v22, "candidate:dunehack_r79"

    const-string v23, "DuneHack Rebuild R79 family candidate"

    invoke-direct/range {v20 .. v25}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ProfileDecision;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-object v20
.end method

.method private static readRawForHash(Ljava/io/InputStream;J)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "knownSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 438
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-wide/32 v1, 0x1000000

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 439
    long-to-int v1, p1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x100000

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 440
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const v1, 0x8000

    new-array v1, v1, [B

    .line 441
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 443
    .local v2, "total":I
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_3

    .line 444
    if-nez v4, :cond_1

    goto :goto_1

    .line 445
    :cond_1
    add-int/2addr v2, v4

    .line 446
    const/high16 v3, 0x1000000

    if-gt v2, v3, :cond_2

    .line 449
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 447
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v5, "ROM is unexpectedly large"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static set(Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;)V
    .locals 2
    .param p1, "group"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;
    .param p2, "state"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;
    .param p3, "evidence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;",
            ">;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 431
    .local p0, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;>;"
    new-instance v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 480
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 481
    .local v1, "hash":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 482
    .local v2, "chars":[C
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 483
    .local v3, "alphabet":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 484
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    .line 485
    .local v5, "v":I
    mul-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v5, 0x4

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 486
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v5, 0xf

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 483
    .end local v5    # "v":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 489
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "chars":[C
    .end local v3    # "alphabet":[C
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
