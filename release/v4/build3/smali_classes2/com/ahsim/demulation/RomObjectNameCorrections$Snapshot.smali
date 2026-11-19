.class final Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;
.super Ljava/lang/Object;
.source "RomObjectNameCorrections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomObjectNameCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# static fields
.field static final EMPTY:Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;


# instance fields
.field private final fremenGroup:Ljava/lang/String;

.field private final fremenSingle:Ljava/lang/String;

.field private final structures:[Ljava/lang/String;

.field private final units:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->EMPTY:Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "units"    # [Ljava/lang/String;
    .param p2, "structures"    # [Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "single"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->units:[Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->structures:[Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenGroup:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenSingle:Ljava/lang/String;

    .line 116
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomObjectNameCorrections-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method structure(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "original"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->structures:[Ljava/lang/String;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->structures:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->structures:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->structures:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 119
    :cond_1
    :goto_0
    return-object p2
.end method

.method unit(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "house"    # I
    .param p3, "original"    # Ljava/lang/String;

    .line 123
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenGroup:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 124
    :cond_1
    if-ne p2, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenSingle:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, p3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->fremenSingle:Ljava/lang/String;

    :goto_1
    return-object v0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->units:[Ljava/lang/String;

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->units:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->units:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    goto :goto_2

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameCorrections$Snapshot;->units:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 125
    :cond_5
    :goto_2
    return-object p3
.end method
