.class public final Lcom/ahsim/demulation/DuneHackR82Probe;
.super Ljava/lang/Object;
.source "DuneHackR82Probe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82Probe$Result;,
        Lcom/ahsim/demulation/DuneHackR82Probe$Family;,
        Lcom/ahsim/demulation/DuneHackR82Probe$FeatureState;
    }
.end annotation


# static fields
.field private static final KNOWN_EDH_ROM_SHA256:Ljava/lang/String; = "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ascii([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 121
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 122
    .local v2, "v":I
    if-nez v2, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static asciiLoose([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "out":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 131
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 132
    .local v2, "v":I
    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 133
    :cond_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .end local v2    # "v":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hasToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "haystack"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "from":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "p":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 111
    .local v3, "end":I
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v4

    .line 112
    .local v5, "before":Z
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v3, v6, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v2, v4

    .line 113
    .local v2, "after":Z
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    return v4

    .line 114
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 115
    .end local v1    # "p":I
    .end local v2    # "after":Z
    .end local v3    # "end":I
    .end local v5    # "before":Z
    goto :goto_0
.end method

.method public static inspect([BJLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    .locals 25
    .param p0, "prefix"    # [B
    .param p1, "imageSize"    # J
    .param p3, "sha256"    # Ljava/lang/String;

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-eqz v0, :cond_12

    array-length v2, v0

    const/16 v3, 0x240

    if-lt v2, v3, :cond_12

    const-wide/32 v4, 0x40000

    cmp-long v2, p1, v4

    if-ltz v2, :cond_12

    const/16 v2, 0x100

    aget-byte v2, v0, v2

    const/16 v4, 0x53

    if-ne v2, v4, :cond_12

    const/16 v2, 0x101

    aget-byte v2, v0, v2

    const/16 v4, 0x45

    if-ne v2, v4, :cond_12

    const/16 v2, 0x102

    aget-byte v2, v0, v2

    const/16 v4, 0x47

    if-ne v2, v4, :cond_12

    const/16 v2, 0x103

    aget-byte v2, v0, v2

    const/16 v4, 0x41

    if-eq v2, v4, :cond_0

    goto/16 :goto_b

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x120

    const/16 v5, 0x150

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/DuneHackR82Probe;->ascii([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    const/16 v4, 0x180

    invoke-static {v0, v5, v4}, Lcom/ahsim/demulation/DuneHackR82Probe;->ascii([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "title":Ljava/lang/String;
    const/16 v2, 0x220

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/DuneHackR82Probe;->asciiLoose([BII)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "tag":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "normalizedSha":Ljava/lang/String;
    :goto_0
    const-string v3, "09bfe4bef56c7642edef7dea47c41274bdcce595fd95fbb85e64af4d3308d0ce"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 81
    .local v3, "known":Z
    const-string v4, "82C"

    invoke-static {v9, v4}, Lcom/ahsim/demulation/DuneHackR82Probe;->hasToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v6, "R82C"

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-nez v5, :cond_3

    invoke-static {v9, v6}, Lcom/ahsim/demulation/DuneHackR82Probe;->hasToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v10

    :goto_2
    move v12, v5

    .line 82
    .local v12, "r82Tag":Z
    invoke-static {v8, v6}, Lcom/ahsim/demulation/DuneHackR82Probe;->hasToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v8, v4}, Lcom/ahsim/demulation/DuneHackR82Probe;->hasToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v7

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v10

    .line 83
    .local v4, "r82Title":Z
    :goto_4
    const-string v5, "DUNEHACK"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "DUNE HACK"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    move v5, v7

    goto :goto_6

    :cond_7
    :goto_5
    move v5, v10

    :goto_6
    move v13, v5

    .line 89
    .local v13, "duneHackTitle":Z
    const-string v5, "DUNE"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "REBUILD R82C"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v10

    goto :goto_7

    :cond_8
    move v5, v7

    :goto_7
    move v14, v5

    .line 90
    .local v14, "rebuildTitle":Z
    const-string v5, "NS[0-9]{2}[A-Z]{3}[0-9]{2}_82C"

    invoke-virtual {v9, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    .line 91
    .local v15, "assemblerTag":Z
    if-eqz v14, :cond_9

    if-eqz v15, :cond_9

    move v5, v10

    goto :goto_8

    :cond_9
    move v5, v7

    :goto_8
    move/from16 v16, v5

    .line 92
    .local v16, "confirmedRebuildPair":Z
    if-nez v3, :cond_b

    if-eqz v13, :cond_a

    if-nez v12, :cond_b

    if-nez v4, :cond_b

    :cond_a
    if-nez v16, :cond_b

    .line 93
    new-instance v5, Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    sget-object v6, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "no paired R82C title/build evidence"

    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe-IA;)V

    return-object v5

    .line 95
    :cond_b
    if-nez v3, :cond_c

    const-string v5, "EMPEROR175"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "EDH3"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 96
    const-string v5, "EDH4"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "R82C+"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    move v7, v10

    :cond_d
    move/from16 v17, v7

    .line 97
    .local v17, "plus":Z
    if-eqz v17, :cond_e

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C_PLUS:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    goto :goto_9

    :cond_e
    sget-object v5, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->R82C:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    :goto_9
    move-object v6, v5

    .line 98
    .local v6, "family":Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    if-eqz v3, :cond_f

    const-string v5, "known example SHA-256; R82C-family ROM, mechanics not audited"

    move-object v7, v5

    goto :goto_a

    .line 99
    :cond_f
    if-eqz v16, :cond_10

    const-string v5, "Genesis Dune Rebuild R82C title plus assembler build tag"

    move-object v7, v5

    goto :goto_a

    .line 100
    :cond_10
    if-eqz v12, :cond_11

    const-string v5, "DuneHack title plus embedded R82C build tag"

    move-object v7, v5

    goto :goto_a

    .line 101
    :cond_11
    const-string v5, "DuneHack title plus R82C version marker"

    move-object v7, v5

    :goto_a
    nop

    .line 102
    .local v7, "evidence":Ljava/lang/String;
    new-instance v5, Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    const/4 v11, 0x0

    move v10, v3

    .end local v3    # "known":Z
    .local v10, "known":Z
    invoke-direct/range {v5 .. v11}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe-IA;)V

    return-object v5

    .line 69
    .end local v2    # "normalizedSha":Ljava/lang/String;
    .end local v4    # "r82Title":Z
    .end local v6    # "family":Lcom/ahsim/demulation/DuneHackR82Probe$Family;
    .end local v7    # "evidence":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "known":Z
    .end local v12    # "r82Tag":Z
    .end local v13    # "duneHackTitle":Z
    .end local v14    # "rebuildTitle":Z
    .end local v15    # "assemblerTag":Z
    .end local v16    # "confirmedRebuildPair":Z
    .end local v17    # "plus":Z
    :cond_12
    :goto_b
    new-instance v18, Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    sget-object v19, Lcom/ahsim/demulation/DuneHackR82Probe$Family;->NONE:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v20, "missing Genesis header / too short"

    const-string v21, ""

    const-string v22, ""

    invoke-direct/range {v18 .. v24}, Lcom/ahsim/demulation/DuneHackR82Probe$Result;-><init>(Lcom/ahsim/demulation/DuneHackR82Probe$Family;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ahsim/demulation/DuneHackR82Probe-IA;)V

    return-object v18
.end method
