.class final Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;
.super Ljava/lang/Object;
.source "RomOptionalAudioPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomOptionalAudioPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Result"
.end annotation


# instance fields
.field final detail:Ljava/lang/String;

.field final source:Lcom/ahsim/demulation/GenesisAudioSource;

.field final status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;->source:Lcom/ahsim/demulation/GenesisAudioSource;

    .line 26
    iput-object p2, p0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;->status:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;->detail:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method isModded()Z
    .locals 2

    .line 29
    const-string v0, "MOD_ACTIVE"

    iget-object v1, p0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
