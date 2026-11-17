.class public final Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;
.super Ljava/lang/Object;
.source "GenesisObjectArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisObjectArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExplosionAnimation"
.end annotation


# instance fields
.field public final durations:[I

.field public final frames:[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

.field public final totalTicks:I


# direct methods
.method constructor <init>([Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;[II)V
    .locals 0
    .param p1, "frames"    # [Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .param p2, "durations"    # [I
    .param p3, "totalTicks"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->frames:[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    .line 112
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->durations:[I

    .line 113
    iput p3, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->totalTicks:I

    .line 114
    return-void
.end method


# virtual methods
.method public frameAtTick(I)Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;
    .locals 5
    .param p1, "tick"    # I

    .line 117
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->frames:[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 119
    .local v0, "t":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->frames:[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->durations:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 121
    .local v3, "d":I
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/GenesisObjectArt$ExplosionAnimation;->frames:[Lcom/ahsim/demulation/GenesisObjectArt$SpriteFrame;

    aget-object v1, v1, v2

    return-object v1

    .line 122
    :cond_1
    sub-int/2addr v0, v3

    .line 119
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method
