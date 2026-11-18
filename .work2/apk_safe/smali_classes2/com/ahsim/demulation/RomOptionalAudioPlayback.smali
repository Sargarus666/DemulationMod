.class final Lcom/ahsim/demulation/RomOptionalAudioPlayback;
.super Ljava/lang/Object;
.source "RomOptionalAudioPlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;
    }
.end annotation


# static fields
.field static final SETTINGS_FILE:Ljava/lang/String; = "dune_audio_overlay_622"

.field static final STATUS_ACTIVE:Ljava/lang/String; = "MOD_ACTIVE"

.field static final STATUS_BASE_BAD_PACK:Ljava/lang/String; = "BASE_REJECTED_PACK"

.field static final STATUS_BASE_NOT_PREPARED:Ljava/lang/String; = "BASE_NOT_PREPARED_OR_IDENTICAL"

.field static final STATUS_BASE_NO_SELECTION:Ljava/lang/String; = "BASE_NO_SELECTION"

.field static final STATUS_BASE_WRONG_SOURCE:Ljava/lang/String; = "BASE_SOURCE_CHANGED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static choose(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;
    .locals 9
    .param p0, "base"    # Lcom/ahsim/demulation/GenesisAudioSource;
    .param p1, "root"    # Ljava/io/File;
    .param p2, "readySha"    # Ljava/lang/String;
    .param p3, "chosenSha"    # Ljava/lang/String;
    .param p4, "storedBaseSha"    # Ljava/lang/String;
    .param p5, "storedChosenSha"    # Ljava/lang/String;

    .line 38
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/ahsim/demulation/GenesisAudioSource;->isCompact()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 42
    :cond_0
    invoke-static {p2}, Lcom/ahsim/demulation/RomOptionalAudioPlayback;->validSha(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p3}, Lcom/ahsim/demulation/RomOptionalAudioPlayback;->validSha(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    invoke-virtual {p3, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 46
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "candidate.aud"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "candidate":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 50
    :cond_3
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/ahsim/demulation/RomAudioOverlayPreparation;->readCandidate(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    .local v1, "compactPack":[B
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisAudioSource;->fromPack([B)Lcom/ahsim/demulation/GenesisAudioSource;

    move-result-object v2

    .line 54
    .local v2, "chosen":Lcom/ahsim/demulation/GenesisAudioSource;
    new-instance v3, Lcom/ahsim/demulation/GenesisGemsSfxData;

    invoke-direct {v3, v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;)V

    .line 55
    .local v3, "gameplay":Lcom/ahsim/demulation/GenesisGemsSfxData;
    invoke-static {v2}, Lcom/ahsim/demulation/GenesisGemsSfxData;->createTitleBank(Lcom/ahsim/demulation/GenesisAudioSource;)Lcom/ahsim/demulation/GenesisGemsSfxData;

    move-result-object v4

    .line 56
    .local v4, "title":Lcom/ahsim/demulation/GenesisGemsSfxData;
    invoke-virtual {v3}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_6

    invoke-virtual {v4}, Lcom/ahsim/demulation/GenesisGemsSfxData;->sequenceCount()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    .line 60
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move-result-object v5

    if-eqz v5, :cond_5

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 61
    const/16 v5, 0x45

    invoke-virtual {v3, v5}, Lcom/ahsim/demulation/GenesisGemsSfxData;->plan(I)Lcom/ahsim/demulation/GenesisGemsSfxData$SequencePlan;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 63
    const v5, 0x6a87e

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 64
    const/16 v5, 0xc

    const v6, 0xd06bf

    invoke-virtual {v2, v6, v5}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 65
    const v6, 0xc8160

    invoke-virtual {v2, v6, v5}, Lcom/ahsim/demulation/GenesisAudioSource;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    new-instance v5, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;

    const-string v6, "MOD_ACTIVE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checked staged GEMS pack, bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v6, v7}, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 66
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Required audio command/sample tables missing"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "candidate":Ljava/io/File;
    .end local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .end local p1    # "root":Ljava/io/File;
    .end local p2    # "readySha":Ljava/lang/String;
    .end local p3    # "chosenSha":Ljava/lang/String;
    .end local p4    # "storedBaseSha":Ljava/lang/String;
    .end local p5    # "storedChosenSha":Ljava/lang/String;
    throw v5

    .line 62
    .restart local v0    # "candidate":Ljava/io/File;
    .restart local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .restart local p1    # "root":Ljava/io/File;
    .restart local p2    # "readySha":Ljava/lang/String;
    .restart local p3    # "chosenSha":Ljava/lang/String;
    .restart local p4    # "storedBaseSha":Ljava/lang/String;
    .restart local p5    # "storedChosenSha":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Required GEMS sequences unavailable"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "candidate":Ljava/io/File;
    .end local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .end local p1    # "root":Ljava/io/File;
    .end local p2    # "readySha":Ljava/lang/String;
    .end local p3    # "chosenSha":Ljava/lang/String;
    .end local p4    # "storedBaseSha":Ljava/lang/String;
    .end local p5    # "storedChosenSha":Ljava/lang/String;
    throw v5

    .line 57
    .restart local v0    # "candidate":Ljava/io/File;
    .restart local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .restart local p1    # "root":Ljava/io/File;
    .restart local p2    # "readySha":Ljava/lang/String;
    .restart local p3    # "chosenSha":Ljava/lang/String;
    .restart local p4    # "storedBaseSha":Ljava/lang/String;
    .restart local p5    # "storedChosenSha":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "GEMS sequence table mismatch"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "candidate":Ljava/io/File;
    .end local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .end local p1    # "root":Ljava/io/File;
    .end local p2    # "readySha":Ljava/lang/String;
    .end local p3    # "chosenSha":Ljava/lang/String;
    .end local p4    # "storedBaseSha":Ljava/lang/String;
    .end local p5    # "storedChosenSha":Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "compactPack":[B
    .end local v2    # "chosen":Lcom/ahsim/demulation/GenesisAudioSource;
    .end local v3    # "gameplay":Lcom/ahsim/demulation/GenesisGemsSfxData;
    .end local v4    # "title":Lcom/ahsim/demulation/GenesisGemsSfxData;
    .restart local v0    # "candidate":Ljava/io/File;
    .restart local p0    # "base":Lcom/ahsim/demulation/GenesisAudioSource;
    .restart local p1    # "root":Ljava/io/File;
    .restart local p2    # "readySha":Ljava/lang/String;
    .restart local p3    # "chosenSha":Ljava/lang/String;
    .restart local p4    # "storedBaseSha":Ljava/lang/String;
    .restart local p5    # "storedChosenSha":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 70
    .local v1, "invalid":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BASE_REJECTED_PACK"

    invoke-direct {v2, p0, v4, v3}, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v2

    .line 48
    .end local v1    # "invalid":Ljava/lang/Exception;
    :cond_7
    :goto_2
    new-instance v1, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;

    const-string v2, "BASE_NOT_PREPARED_OR_IDENTICAL"

    const-string v3, "candidate absent or identical to BASE"

    invoke-direct {v1, p0, v2, v3}, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 45
    .end local v0    # "candidate":Ljava/io/File;
    :cond_8
    :goto_3
    new-instance v0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;

    const-string v1, "BASE_SOURCE_CHANGED"

    const-string v2, "BASE or audio ROM fingerprint changed"

    invoke-direct {v0, p0, v1, v2}, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 41
    :cond_9
    :goto_4
    new-instance v0, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;

    const-string v1, "BASE_NO_SELECTION"

    const-string v2, "no selected audio overlay"

    invoke-direct {v0, p0, v1, v2}, Lcom/ahsim/demulation/RomOptionalAudioPlayback$Result;-><init>(Lcom/ahsim/demulation/GenesisAudioSource;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A verified compact BASE audio source is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validSha(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sha"    # Ljava/lang/String;

    .line 76
    if-eqz p0, :cond_0

    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
