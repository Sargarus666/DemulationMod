.class final Lcom/ahsim/demulation/GenesisUnitHudIdentity;
.super Ljava/lang/Object;
.source "GenesisUnitHudIdentity.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static russianName(II)Ljava/lang/String;
    .locals 2
    .param p0, "unitType"    # I
    .param p1, "houseId"    # I

    .line 13
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const-string v0, "\u041d\u0410\u0415\u041c\u041d\u0418\u041a\u0418"

    goto :goto_0

    :cond_0
    const-string v0, "\u0428\u0422\u0423\u0420\u041c\u041e\u0412\u0418\u041a\u0418"

    :goto_0
    return-object v0

    .line 14
    :cond_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    if-ne p1, v0, :cond_2

    const-string v0, "\u041d\u0410\u0415\u041c\u041d\u0418\u041a"

    goto :goto_1

    :cond_2
    const-string v0, "\u0428\u0422\u0423\u0420\u041c\u041e\u0412\u0418\u041a"

    :goto_1
    return-object v0

    .line 15
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
