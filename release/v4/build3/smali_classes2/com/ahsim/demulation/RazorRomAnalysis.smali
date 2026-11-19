.class public final Lcom/ahsim/demulation/RazorRomAnalysis;
.super Ljava/lang/Object;
.source "RazorRomAnalysis.java"


# static fields
.field private static final LIMIT:I = 0x800000


# instance fields
.field public final bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

.field public final bytes:I

.field public final evidence:Ljava/lang/String;

.field public final family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

.field public final largeMaps:I

.field public final missions:I

.field public final recognized:Z

.field public final sha256:Ljava/lang/String;

.field public final unavailableSlots:I

.field public final variant:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/DuneHackR82Probe$Result;)V
    .locals 2
    .param p1, "sha"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "result"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .param p4, "probe"    # Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->sha256:Ljava/lang/String;

    iput p2, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->bytes:I

    iput-object p3, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->bundle:Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    .line 23
    iget-object v0, p4, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->family:Lcom/ahsim/demulation/DuneHackR82Probe$Family;

    iget-object v0, p4, Lcom/ahsim/demulation/DuneHackR82Probe$Result;->evidence:Ljava/lang/String;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->evidence:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->recognized:Z

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    iget v1, p3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->variant:I

    :goto_1
    iput v1, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->variant:I

    .line 25
    if-nez p3, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    iget v1, p3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->missionsDecoded:I

    :goto_2
    iput v1, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->missions:I

    .line 26
    if-nez p3, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    iget v1, p3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->expandedMapMissions:I

    :goto_3
    iput v1, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->largeMaps:I

    .line 27
    if-nez p3, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;->unsupportedScenarioSlots:I

    :goto_4
    iput v0, p0, Lcom/ahsim/demulation/RazorRomAnalysis;->unavailableSlots:I

    .line 28
    return-void
.end method

.method public static inspect(Ljava/io/InputStream;)Lcom/ahsim/demulation/RazorRomAnalysis;
    .locals 10
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    if-eqz p0, :cond_8

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 33
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 34
    .local v2, "total":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 35
    const-string v3, "ROM exceeds 8 MiB limit"

    const/high16 v6, 0x800000

    if-nez v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .local v7, "one":I
    if-ne v7, v5, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    if-ge v2, v6, :cond_1

    .line 37
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 38
    .end local v7    # "one":I
    :cond_2
    sub-int/2addr v6, v4

    if-gt v2, v6, :cond_3

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v2, v4

    goto :goto_0

    .line 38
    :cond_3
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 42
    .local v3, "rom":[B
    array-length v5, v3

    const/16 v6, 0x200

    if-lt v5, v6, :cond_7

    const/16 v5, 0x100

    aget-byte v5, v3, v5

    const/16 v6, 0x53

    if-ne v5, v6, :cond_7

    const/16 v5, 0x101

    aget-byte v5, v3, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_7

    const/16 v5, 0x102

    aget-byte v5, v3, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_7

    const/16 v5, 0x103

    aget-byte v5, v3, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_7

    .line 45
    invoke-static {v3}, Lcom/ahsim/demulation/RazorRomAnalysis;->sha256([B)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "sha":Ljava/lang/String;
    const/4 v6, 0x0

    .line 47
    .local v6, "audited":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    array-length v7, v3

    const/high16 v8, 0x300000

    if-eq v7, v8, :cond_5

    array-length v7, v3

    const/high16 v8, 0x400000

    if-ne v7, v8, :cond_6

    .line 48
    :cond_5
    :try_start_0
    invoke-static {v3, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 51
    goto :goto_2

    .line 49
    :catch_0
    move-exception v7

    .line 53
    :cond_6
    :goto_2
    array-length v7, v3

    int-to-long v7, v7

    invoke-static {v3, v7, v8, v5}, Lcom/ahsim/demulation/DuneHackR82Probe;->inspect([BJLjava/lang/String;)Lcom/ahsim/demulation/DuneHackR82Probe$Result;

    move-result-object v7

    .line 54
    .local v7, "probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    new-instance v8, Lcom/ahsim/demulation/RazorRomAnalysis;

    array-length v9, v3

    invoke-direct {v8, v5, v9, v6, v7}, Lcom/ahsim/demulation/RazorRomAnalysis;-><init>(Ljava/lang/String;ILcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;Lcom/ahsim/demulation/DuneHackR82Probe$Result;)V

    return-object v8

    .line 44
    .end local v5    # "sha":Ljava/lang/String;
    .end local v6    # "audited":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Result;
    .end local v7    # "probe":Lcom/ahsim/demulation/DuneHackR82Probe$Result;
    :cond_7
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Selected file is not a normalized Sega Genesis ROM"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    .end local v0    # "b":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "chunk":[B
    .end local v2    # "total":I
    .end local v3    # "rom":[B
    .end local v4    # "n":I
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM input unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 59
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v1, "out":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .local v4, "value":B
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    and-int/lit8 v5, v4, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    nop

    .end local v4    # "value":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 63
    .end local v0    # "digest":[B
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
