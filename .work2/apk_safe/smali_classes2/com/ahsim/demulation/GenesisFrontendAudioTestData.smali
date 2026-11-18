.class final Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
.super Ljava/lang/Object;
.source "GenesisFrontendAudioTestData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    }
.end annotation


# static fields
.field private static final MUSIC_TEST_TABLE:I = 0x87f44

.field private static final SOUND_TEST_TABLE:I = 0x87fdc


# instance fields
.field final music:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

.field final sound:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;


# direct methods
.method private constructor <init>([Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;)V
    .locals 0
    .param p1, "music"    # [Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    .param p2, "sound"    # [Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->music:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 22
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->sound:[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 23
    return-void
.end method

.method static fromRom([B)Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
    .locals 1
    .param p0, "rom"    # [B

    .line 26
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisAudioSource;->fromRom([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->fromSource(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisFrontendAudioTestData;

    move-result-object v0

    return-object v0
.end method

.method static fromSource(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisFrontendAudioTestData;
    .locals 4
    .param p0, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;

    .line 30
    if-eqz p0, :cond_1

    const v0, 0x87f44

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x87fdc

    invoke-virtual {p0, v2, v1}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->readTable(Lcom/ahsim/demulation/GenesisAudioSource;II)[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    move-result-object v0

    .line 34
    .local v0, "music":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    const/16 v1, 0x40

    invoke-static {p0, v2, v1}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->readTable(Lcom/ahsim/demulation/GenesisAudioSource;II)[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    move-result-object v1

    .line 35
    .local v1, "sound":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    array-length v2, v0

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    array-length v2, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 38
    new-instance v2, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;

    invoke-direct {v2, v0, v1}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;-><init>([Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;)V

    return-object v2

    .line 36
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Original OPTIONS audio-test table count mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    .end local v0    # "music":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    .end local v1    # "sound":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "READY audio source is missing OPTIONS metadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readCString(Lcom/ahsim/demulation/GenesisAudioSource;I)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p1, "offset"    # I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v1, "out":Ljava/lang/StringBuilder;
    move v2, p1

    .line 65
    .local v2, "p":I
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    .line 66
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .local v3, "p":I
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->u8(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    .line 68
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    .end local v1    # "out":Ljava/lang/StringBuilder;
    .end local v2    # "p":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OPTIONS audio-test name range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readTable(Lcom/ahsim/demulation/GenesisAudioSource;II)[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    .locals 8
    .param p0, "source"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p1, "table"    # I
    .param p2, "maxEntries"    # I

    .line 42
    new-array v0, p2, [Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 43
    .local v0, "temp":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    const/4 v1, 0x0

    .line 44
    .local v1, "count":I
    move v2, p1

    .line 45
    .local v2, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/GenesisAudioSource;->be32(I)I

    move-result v3

    .line 47
    .local v3, "namePtr":I
    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0, v4}, Lcom/ahsim/demulation/GenesisAudioSource;->be32(I)I

    move-result v4

    .line 48
    .local v4, "sequence":I
    add-int/lit8 v2, v2, 0x8

    .line 49
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    invoke-static {p0, v3}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData;->readCString(Lcom/ahsim/demulation/GenesisAudioSource;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "name":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    new-instance v7, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    invoke-direct {v7, v5, v4}, Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;-><init>(Ljava/lang/String;I)V

    aput-object v7, v0, v1

    .line 55
    .end local v3    # "namePtr":I
    .end local v4    # "sequence":I
    .end local v5    # "name":Ljava/lang/String;
    move v1, v6

    goto :goto_0

    .line 56
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_1
    :goto_1
    new-array v3, v1, [Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;

    .line 57
    .local v3, "out":[Lcom/ahsim/demulation/GenesisFrontendAudioTestData$Entry;
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v3
.end method
