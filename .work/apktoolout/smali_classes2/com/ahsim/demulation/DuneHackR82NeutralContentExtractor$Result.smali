.class public final Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;
.super Ljava/lang/Object;
.source "DuneHackR82NeutralContentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final game:[B

.field public final gameOffset:I

.field public final gameSha256:Ljava/lang/String;

.field private final region:[B

.field public final regionOffset:I

.field public final regionSha256:Ljava/lang/String;


# direct methods
.method private constructor <init>(I[B[B)V
    .locals 1
    .param p1, "gameOffset"    # I
    .param p2, "game"    # [B
    .param p3, "region"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameOffset:I

    .line 47
    add-int/lit16 v0, p1, 0x200

    iput v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionOffset:I

    .line 48
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->game:[B

    .line 49
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->region:[B

    .line 50
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->game:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->gameSha256:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->region:[B

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor;->sha256([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->regionSha256:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(I[B[BLcom/ahsim/demulation/DuneHackR82NeutralContentExtractor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;-><init>(I[B[B)V

    return-void
.end method


# virtual methods
.method public gamePalettes()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->game:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public regionPalette()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82NeutralContentExtractor$Result;->region:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
