.class public final Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;
.super Ljava/lang/Object;
.source "DuneHackR82GameplayParameterProbe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    }
.end annotation


# static fields
.field private static final AUDITED_ROM_SHA256:Ljava/lang/String; = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

.field public static final ROM_OFFSET:I = 0x25d86

.field private static final SOURCE_VALUES:[[I

.field public static final TABLE_BYTES:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    const/4 v0, 0x4

    const/4 v1, 0x5

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    const/16 v1, 0x1e

    const/16 v2, 0xa

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    const/16 v3, 0x19

    filled-new-array {v2, v3, v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x10e

    const/16 v4, 0x64

    const/16 v5, 0x190

    const/16 v6, 0x85

    filled-new-array {v5, v6, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    filled-new-array {v4, v4, v5, v5}, [I

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;->SOURCE_VALUES:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract([BLcom/ahsim/demulation/DuneHackR82Probe$Result;)Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;
    .locals 7
    .param p0, "rom"    # [B
    .param p1, "probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    if-ne v0, v1, :cond_3

    array-length v0, p0

    const v1, 0x25dae

    if-lt v0, v1, :cond_3

    .line 47
    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_0
    const/4 v2, 0x5

    const v3, 0x25d86

    if-ge v0, v2, :cond_2

    .line 51
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    .line 52
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    .line 53
    .local v4, "p":I
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 54
    .local v5, "word":I
    sget-object v6, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe;->SOURCE_VALUES:[[I

    aget-object v6, v6, v0

    aget v6, v6, v2

    if-ne v5, v6, :cond_0

    .line 51
    .end local v4    # "p":I
    .end local v5    # "word":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    .restart local v4    # "p":I
    .restart local v5    # "word":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "R82C parameter table differs from ASM reference"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v2    # "col":I
    .end local v4    # "p":I
    .end local v5    # "word":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "row":I
    :cond_2
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;

    invoke-static {p0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/DuneHackR82GameplayParameterProbe$Result;-><init>([BLcom/ahsim/demulation/DuneHackR82GameplayParameterProbe-IA;)V

    return-object v0

    .line 48
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C param layout unaudited"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
