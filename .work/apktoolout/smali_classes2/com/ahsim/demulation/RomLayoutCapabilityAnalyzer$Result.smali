.class public final Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;
.super Ljava/lang/Object;
.source "RomLayoutCapabilityAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;",
            ">;"
        }
    .end annotation
.end field

.field public final containerFormat:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

.field public final domesticTitle:Ljava/lang/String;

.field public final exactAuditedProfile:Z

.field public final hasGenesisHeader:Z

.field public final layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

.field public final normalizedSha256:Ljava/lang/String;

.field public final normalizedSize:J

.field public final overseasTitle:Ljava/lang/String;

.field public final profileId:Ljava/lang/String;

.field public final profileLabel:Ljava/lang/String;

.field public final r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

.field public final rawSha256:Ljava/lang/String;

.field public final rawSize:J

.field public final rebuildTag:Ljava/lang/String;

.field public final serial:Ljava/lang/String;


# direct methods
.method private constructor <init>(JJLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/util/EnumMap;)V
    .locals 16
    .param p1, "rawSize"    # J
    .param p3, "normalizedSize"    # J
    .param p5, "rawSha256"    # Ljava/lang/String;
    .param p6, "normalizedSha256"    # Ljava/lang/String;
    .param p7, "containerFormat"    # Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;
    .param p8, "hasGenesisHeader"    # Z
    .param p9, "domesticTitle"    # Ljava/lang/String;
    .param p10, "overseasTitle"    # Ljava/lang/String;
    .param p11, "serial"    # Ljava/lang/String;
    .param p12, "rebuildTag"    # Ljava/lang/String;
    .param p13, "layoutFamily"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;
    .param p14, "profileId"    # Ljava/lang/String;
    .param p15, "profileLabel"    # Ljava/lang/String;
    .param p16, "exactAuditedProfile"    # Z
    .param p17, "r82Probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ahsim/demulation/DuneHackR82Probe$Result;",
            "Ljava/util/EnumMap<",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;",
            "Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p18, "capabilities":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 100
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->rawSize:J

    .line 101
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSize:J

    .line 102
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->rawSha256:Ljava/lang/String;

    .line 103
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->normalizedSha256:Ljava/lang/String;

    .line 104
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->containerFormat:Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;

    .line 105
    move/from16 v8, p8

    iput-boolean v8, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->hasGenesisHeader:Z

    .line 106
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->domesticTitle:Ljava/lang/String;

    .line 107
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->overseasTitle:Ljava/lang/String;

    .line 108
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->serial:Ljava/lang/String;

    .line 109
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->rebuildTag:Ljava/lang/String;

    .line 110
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->layoutFamily:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;

    .line 111
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileId:Ljava/lang/String;

    .line 112
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->profileLabel:Ljava/lang/String;

    .line 113
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->exactAuditedProfile:Z

    .line 114
    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->r82Probe:Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 115
    invoke-static/range {p18 .. p18}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capabilities:Ljava/util/Map;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/util/EnumMap;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p18}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;-><init>(JJLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomImageNormalizer$ContainerFormat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$LayoutFamily;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe$Result;Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public capability(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    .locals 5
    .param p1, "group"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 119
    iget-object v0, p0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Result;->capabilities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    .line 120
    .local v0, "value":Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;
    if-nez v0, :cond_0

    new-instance v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;

    sget-object v2, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;->UNAVAILABLE:Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;

    const-string v3, "not classified"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$Capability;-><init>(Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$CapabilityState;Ljava/lang/String;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer-IA;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public roleMayUseGroup(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;)Z
    .locals 3
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .param p2, "group"    # Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;

    .line 125
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$1;->$SwitchMap$com$ahsim$demulation$RomLayoutCapabilityAnalyzer$ContentGroup:[I

    invoke-virtual {p2}, Lcom/ahsim/demulation/RomLayoutCapabilityAnalyzer$ContentGroup;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    return v0

    .line 138
    :pswitch_0
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {p1, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    return v0

    .line 135
    :pswitch_1
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {p1, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    return v0

    .line 132
    :pswitch_2
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {p1, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    return v0

    .line 129
    :pswitch_3
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {p1, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    return v0

    .line 125
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
