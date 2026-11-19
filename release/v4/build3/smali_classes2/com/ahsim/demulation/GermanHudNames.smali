.class final Lcom/ahsim/demulation/GermanHudNames;
.super Ljava/lang/Object;
.source "GermanHudNames.java"


# static fields
.field private static final STRUCTURES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BETON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PALAST"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LEICHTE FABRIK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SCHWERE FABRIK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HI-TECH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HAUS IX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WOR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BAUHOF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "WINDFALLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "KASERNE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "STARPORT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RAFFINERIE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "REPARATUR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MAUER"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TURM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RAKETENTURM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "SILO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "VORPOSTEN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ahsim/demulation/GermanHudNames;->STRUCTURES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static structure(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 15
    if-ltz p0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/GermanHudNames;->STRUCTURES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/GermanHudNames;->STRUCTURES:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
