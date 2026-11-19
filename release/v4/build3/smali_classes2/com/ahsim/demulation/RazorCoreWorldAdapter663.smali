.class public final Lcom/ahsim/demulation/RazorCoreWorldAdapter663;
.super Ljava/lang/Object;
.source "RazorCoreWorldAdapter663.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;,
        Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    }
.end annotation


# static fields
.field public static final CLASSIC_MAP_SIDE:I = 0x40

.field public static final CORE_BUILD_CAPACITY:I = 0x80

.field public static final CORE_BUILD_TYPES:I = 0x13

.field public static final CORE_UNIT_CAPACITY:I = 0x80

.field public static final CORE_UNIT_TYPES:I = 0x40

.field public static final MAX_MAP_SIDE:I = 0x80

.field public static final RAZOR_HOUSES:I = 0x5

.field public static final SCHEMA:I = 0x297


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/zip/CRC32;I)V
    .locals 1
    .param p0, "crc"    # Ljava/util/zip/CRC32;
    .param p1, "value"    # I

    .line 96
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 97
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 98
    return-void
.end method

.method public static readOnly(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;)Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;
    .locals 18
    .param p0, "m"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .param p1, "frame"    # Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->house:I

    if-ne v0, v3, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v3, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->mission:I

    if-ne v0, v3, :cond_4

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    if-ne v0, v3, :cond_4

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    if-ne v0, v3, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    if-ltz v0, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    const/4 v4, 0x1

    if-lt v0, v4, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    if-lt v0, v4, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    const/16 v4, 0x80

    if-gt v0, v4, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    if-gt v0, v4, :cond_4

    iget v0, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    if-gt v0, v4, :cond_4

    iget-object v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->unitCount:I

    if-ne v0, v5, :cond_4

    iget-object v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    if-gt v0, v4, :cond_4

    iget-object v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v0, v0

    if-gt v0, v4, :cond_4

    iget v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->gameTicks:I

    if-nez v0, :cond_4

    .line 66
    iget-object v0, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    array-length v0, v0

    new-array v0, v0, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    .line 67
    .local v0, "units":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    iget-object v4, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    array-length v4, v4

    new-array v4, v4, [Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    .line 68
    .local v4, "buildings":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    move-object v8, v5

    .line 69
    .local v8, "crc":Ljava/util/zip/CRC32;
    const/16 v5, 0x297

    invoke-static {v8, v5}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    invoke-static {v8, v5}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    invoke-static {v8, v5}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    .line 70
    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    invoke-static {v8, v5}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v5, v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static {v8, v5}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    .line 71
    const/4 v5, 0x0

    move v11, v5

    .local v11, "i":I
    :goto_0
    array-length v5, v0

    if-ge v11, v5, :cond_1

    .line 72
    iget-object v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->units:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;

    aget-object v5, v5, v11

    .line 73
    .local v5, "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->ordinal:I

    if-ne v6, v11, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ltz v6, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    if-ge v6, v3, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    if-ltz v6, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    const/16 v7, 0x40

    if-ge v6, v7, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    if-ltz v6, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    if-ge v6, v7, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    if-ltz v6, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    if-ge v6, v7, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->sourceTag:I

    if-ltz v6, :cond_0

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->sourceTag:I

    const/16 v7, 0xff

    if-gt v6, v7, :cond_0

    .line 77
    new-instance v9, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    iget v12, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->owner:I

    iget v13, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->type:I

    iget v14, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->x:I

    iget v15, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->y:I

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;->sourceTag:I

    const/16 v17, 0x0

    const/4 v10, 0x1

    move/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;-><init>(IIIIIIILcom/ahsim/demulation/RazorCoreWorldAdapter663-IA;)V

    aput-object v9, v0, v11

    .line 78
    aget-object v6, v0, v11

    invoke-static {v8, v6}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->write(Ljava/util/zip/CRC32;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;)V

    .line 71
    .end local v5    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 76
    .restart local v5    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Razor 663 unit ABI mismatch at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    .end local v5    # "u":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Unit;
    .end local v11    # "i":I
    :cond_1
    const/4 v5, 0x0

    move v11, v5

    .restart local v11    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v11, v5, :cond_3

    .line 81
    iget-object v5, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->buildings:[Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;

    aget-object v5, v5, v11

    .line 82
    .local v5, "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->ordinal:I

    if-ne v6, v11, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    if-ltz v6, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    if-ge v6, v3, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    if-ltz v6, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    if-ltz v6, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->width:I

    if-ge v6, v7, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    if-ltz v6, :cond_2

    iget v6, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    iget v7, v2, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;->height:I

    if-ge v6, v7, :cond_2

    .line 86
    new-instance v9, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    iget v12, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->owner:I

    iget v13, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->type:I

    iget v14, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->x:I

    iget v15, v5, Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;->y:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v10, 0x2

    invoke-direct/range {v9 .. v17}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;-><init>(IIIIIIILcom/ahsim/demulation/RazorCoreWorldAdapter663-IA;)V

    aput-object v9, v4, v11

    .line 87
    aget-object v6, v4, v11

    invoke-static {v8, v6}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->write(Ljava/util/zip/CRC32;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;)V

    .line 80
    .end local v5    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 85
    .restart local v5    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Razor 663 building ABI mismatch at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    .end local v5    # "b":Lcom/ahsim/demulation/RazorCampaignMapSnapshot559$Building;
    .end local v11    # "i":I
    :cond_3
    move-object v3, v0

    .end local v0    # "units":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    .local v3, "units":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    new-instance v0, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$Snapshot;-><init>(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;Lcom/ahsim/demulation/RazorCampaignMapSnapshot559;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;JLcom/ahsim/demulation/RazorCoreWorldAdapter663-IA;)V

    return-object v0

    .line 61
    .end local v3    # "units":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    .end local v4    # "buildings":[Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;
    .end local v8    # "crc":Ljava/util/zip/CRC32;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 663 world bridge rejected unrelated or unsupported source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static write(Ljava/util/zip/CRC32;Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;)V
    .locals 1
    .param p0, "crc"    # Ljava/util/zip/CRC32;
    .param p1, "e"    # Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;

    .line 92
    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->kind:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->ordinal:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->owner:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->type:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    .line 93
    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->x:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->y:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    iget v0, p1, Lcom/ahsim/demulation/RazorCoreWorldAdapter663$ObjectEntry;->identity:I

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorCoreWorldAdapter663;->add(Ljava/util/zip/CRC32;I)V

    .line 94
    return-void
.end method
