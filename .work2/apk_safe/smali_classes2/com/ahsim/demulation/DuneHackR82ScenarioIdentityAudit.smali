.class public final Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;
.super Ljava/lang/Object;
.source "DuneHackR82ScenarioIdentityAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;,
        Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    }
.end annotation


# static fields
.field public static final HOUSE_COUNT:I = 0x5

.field private static final HOUSE_NAMES:[Ljava/lang/String;

.field private static final STRUCTURE_NAMES:[Ljava/lang/String;

.field public static final STRUCTURE_TYPE_COUNT:I = 0x13

.field private static final UNIT_NAMES:[Ljava/lang/String;

.field public static final UNIT_TYPE_COUNT:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 24
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Harkonnen"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Atreides"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Ordos"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Fremen"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "Sardaukar"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->HOUSE_NAMES:[Ljava/lang/String;

    .line 27
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Carryall"

    aput-object v2, v1, v3

    const-string v2, "Ornithopter"

    aput-object v2, v1, v4

    const-string v2, "Infantry"

    aput-object v2, v1, v5

    const-string v2, "Troopers"

    aput-object v2, v1, v6

    const-string v2, "Soldier"

    aput-object v2, v1, v7

    const-string v2, "Trooper"

    aput-object v2, v1, v0

    const-string v2, "Saboteur"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "Launcher"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const-string v2, "Deviator"

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v2, "Tank"

    const/16 v11, 0x9

    aput-object v2, v1, v11

    const-string v2, "Siege Tank"

    const/16 v12, 0xa

    aput-object v2, v1, v12

    const-string v2, "Devastator"

    const/16 v13, 0xb

    aput-object v2, v1, v13

    const-string v2, "Sonic Tank"

    const/16 v14, 0xc

    aput-object v2, v1, v14

    const-string v2, "Trike"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "Raider Trike"

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const-string v2, "Quad"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "Harvester"

    const/16 v18, 0x10

    aput-object v2, v1, v18

    const-string v2, "MCV"

    const/16 v19, 0x11

    aput-object v2, v1, v19

    const-string v2, "Death Hand"

    const/16 v20, 0x12

    aput-object v2, v1, v20

    const-string v2, "Rocket"

    move/from16 v21, v0

    const/16 v0, 0x13

    aput-object v2, v1, v0

    const/16 v2, 0x14

    const-string v22, "ARocket"

    aput-object v22, v1, v2

    const/16 v2, 0x15

    const-string v22, "GRocket"

    aput-object v22, v1, v2

    const/16 v2, 0x16

    const-string v22, "MiniRocket"

    aput-object v22, v1, v2

    const/16 v2, 0x17

    const-string v22, "Bullet"

    aput-object v22, v1, v2

    const/16 v2, 0x18

    const-string v22, "Sonic Blast"

    aput-object v22, v1, v2

    const/16 v2, 0x19

    const-string v22, "Sandworm"

    aput-object v22, v1, v2

    const/16 v2, 0x1a

    const-string v22, "Frigate"

    aput-object v22, v1, v2

    const/16 v2, 0x1b

    const-string v22, "Hurricane"

    aput-object v22, v1, v2

    const/16 v2, 0x1c

    const-string v22, "RocketQuad"

    aput-object v22, v1, v2

    const/16 v2, 0x1d

    const-string v22, "Laser Tank"

    aput-object v22, v1, v2

    const/16 v2, 0x1e

    const-string v22, "HoverTank"

    aput-object v22, v1, v2

    const/16 v2, 0x1f

    const-string v22, "Orka"

    aput-object v22, v1, v2

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->UNIT_NAMES:[Ljava/lang/String;

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Concrete"

    aput-object v1, v0, v3

    const-string v1, "Concrete 2x2"

    aput-object v1, v0, v4

    const-string v1, "Palace"

    aput-object v1, v0, v5

    const-string v1, "Vehicle Factory"

    aput-object v1, v0, v6

    const-string v1, "Heavy Factory"

    aput-object v1, v0, v7

    const-string v1, "Hi-Tech"

    aput-object v1, v0, v21

    const-string v1, "House IX"

    aput-object v1, v0, v8

    const-string v1, "WOR"

    aput-object v1, v0, v9

    const-string v1, "Construction Yard"

    aput-object v1, v0, v10

    const-string v1, "Windtrap"

    aput-object v1, v0, v11

    const-string v1, "Barracks"

    aput-object v1, v0, v12

    const-string v1, "Starport"

    aput-object v1, v0, v13

    const-string v1, "Refinery"

    aput-object v1, v0, v14

    const-string v1, "Repair"

    aput-object v1, v0, v15

    const-string v1, "Wall"

    aput-object v1, v0, v16

    const-string v1, "Turret"

    aput-object v1, v0, v17

    const-string v1, "R-Turret"

    aput-object v1, v0, v18

    const-string v1, "Spice Silo"

    aput-object v1, v0, v19

    const-string v1, "Outpost"

    aput-object v1, v0, v20

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->STRUCTURE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static audit(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;)V
    .locals 6
    .param p0, "document"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .param p1, "totals"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;->records()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;

    .line 134
    .local v1, "record":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->section:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 167
    :pswitch_0
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->fifth:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->fifth:I

    .line 168
    goto/16 :goto_2

    .line 161
    :pswitch_1
    invoke-static {p1, v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 162
    invoke-static {p1, v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->unit(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 163
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->reinforcements:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->reinforcements:I

    .line 164
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    .line 165
    goto :goto_2

    .line 147
    :pswitch_2
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v3, 0x49

    if-ne v2, v3, :cond_0

    .line 148
    invoke-static {p1, v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 149
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v2

    const/16 v3, 0x13

    const-string v5, "structure type"

    invoke-static {v2, v3, v5, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->bound(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;)I

    move-result v2

    .line 150
    .local v2, "type":I
    iget-object v3, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->structureTypes:[I

    aget v5, v3, v2

    add-int/2addr v5, v4

    aput v5, v3, v2

    .line 151
    iget v3, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->placed:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->placed:I

    .line 152
    .end local v2    # "type":I
    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->index:I

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1

    .line 153
    invoke-static {p1, v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 156
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->generic:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->generic:I

    .line 158
    :goto_1
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    .line 159
    goto :goto_2

    .line 157
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected R82C structure record at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_3
    invoke-static {p1, v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 142
    invoke-static {p1, v1, v4}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->unit(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 143
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->units:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->units:I

    .line 144
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    .line 145
    goto :goto_2

    .line 136
    :pswitch_4
    invoke-static {p1, v1, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V

    .line 137
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->teams:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->teams:I

    .line 138
    iget v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->checked:I

    .line 139
    nop

    .line 172
    .end local v1    # "record":Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    :goto_2
    goto/16 :goto_0

    .line 173
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static auditBank(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    .locals 5
    .param p0, "bank"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    if-eqz p0, :cond_2

    .line 122
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;-><init>(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V

    .line 123
    .local v0, "totals":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    const/4 v2, 0x0

    .local v2, "house":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 124
    const/4 v3, 0x1

    .local v3, "mission":I
    :goto_1
    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Bank;->document(II)Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->audit(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "mission":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "house":I
    :cond_1
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v0, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;-><init>(ILcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V

    return-object v2

    .line 121
    .end local v0    # "totals":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing R82C scenario bank"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static auditDocument(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;)Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;
    .locals 4
    .param p0, "document"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    if-eqz p0, :cond_0

    .line 115
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;-><init>(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V

    .line 116
    .local v0, "totals":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    invoke-static {p0, v0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->audit(Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Document;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;)V

    .line 117
    new-instance v2, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Result;-><init>(ILcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit-IA;)V

    return-object v2

    .line 114
    .end local v0    # "totals":Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing R82C scenario document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bound(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "exclusive"    # I
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "record"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 95
    return p0

    .line 92
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R82C "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range at scenario byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static houseName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 81
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->HOUSE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->name([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static name([Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "id"    # I

    .line 85
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 86
    aget-object v0, p0, p1

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R82C object ID out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static owner(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V
    .locals 4
    .param p0, "totals"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    .param p1, "r"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->owners:[I

    invoke-virtual {p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v1

    const/4 v2, 0x5

    const-string v3, "house"

    invoke-static {v1, v2, v3, p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->bound(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;)I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 101
    return-void
.end method

.method public static structureTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 83
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->STRUCTURE_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->name([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unit(Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;I)V
    .locals 4
    .param p0, "totals"    # Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;
    .param p1, "r"    # Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit$Totals;->unitTypes:[I

    invoke-virtual {p1, p2}, Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;->value(I)I

    move-result v1

    const/16 v2, 0x20

    const-string v3, "unit type"

    invoke-static {v1, v2, v3, p1}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->bound(IILjava/lang/String;Lcom/ahsim/demulation/DuneHackR82ScenarioRecordDecoder$Record;)I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 106
    return-void
.end method

.method public static unitTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 82
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->UNIT_NAMES:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ahsim/demulation/DuneHackR82ScenarioIdentityAudit;->name([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
