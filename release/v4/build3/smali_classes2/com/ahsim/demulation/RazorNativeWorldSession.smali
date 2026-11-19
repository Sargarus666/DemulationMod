.class public final Lcom/ahsim/demulation/RazorNativeWorldSession;
.super Ljava/lang/Object;
.source "RazorNativeWorldSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeWorldSession$Status;,
        Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;,
        Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;
    }
.end annotation


# static fields
.field private static final BLOCKED:I = 0x3f

.field private static final WORDS:I = 0x20


# instance fields
.field private final baseline:[I

.field public final house:I

.field private lastBoot541:[I

.field private lastM68kBackend535:[I

.field private lastPrecallF40533:[I

.field private lastRead:I

.field private lastRomSmoke536:[I

.field private lastSandboxGate534:[I

.field private lastTrace538:[I

.field public final mission:I

.field private final proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

.field public final sourceSha256:Ljava/lang/String;

.field private token:J

.field public final variant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(JLcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II[ILcom/ahsim/demulation/RazorMissionBootProbe$Report;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p4, "house"    # I
    .param p5, "mission"    # I
    .param p6, "initial"    # [I
    .param p7, "proof"    # Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-wide p1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-virtual {p3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    invoke-virtual {p3}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 828
    iput p4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->house:I

    iput p5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->mission:I

    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    .line 829
    const/16 v0, 0x1b

    aget v0, p6, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRead:I

    iput-object p7, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    .line 830
    return-void
.end method

.method static callerBranch657(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1757
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    .line 1763
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1765
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1766
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1767
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1768
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1767
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1769
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1773
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1774
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCallerBranch657(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1770
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1771
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1772
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1762
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 657 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static callerCounter656(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1729
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1735
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1737
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1738
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1739
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1740
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1739
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1741
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1745
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1746
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCallerCounter656(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1742
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1743
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1734
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 656 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static callerDispatch647(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1461
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1467
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1469
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1470
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1471
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1472
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1473
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1477
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1478
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCallerDispatch647(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1474
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1475
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1466
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 647 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static callerTarget648(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1491
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1497
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1499
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1500
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1501
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1502
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1501
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1503
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1507
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1508
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCallerTarget648(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1504
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1505
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1496
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 648 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static campaignBirth567(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 47
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignBirth567(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignBuildEmc715(J[B)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "bank"    # [B

    .line 317
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignBuildEmc715(J[B)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignBuildOwner716(JI)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "raw"    # I

    .line 326
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignBuildOwner716(JI)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignCadence668(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 340
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignCadence668(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignCapture584(JI)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I

    .line 85
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignCapture584(JI)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignConstruction571(JIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 278
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignConstruction571(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignCore667(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 296
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignCore667(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignCoreRoute664(JIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "unit"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 668
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignCoreRoute664(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignDemo569(JIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "handle"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 52
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignDemo569(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignDeploy726(JI)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "ordinal"    # I

    .line 321
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignDeploy726(JI)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignDynamic569(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 49
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignDynamic569(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignEconomy573(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 60
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignEconomy573(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignEmc671(J[BII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "bank"    # [B
    .param p3, "action"    # I
    .param p4, "ordinal"    # I

    .line 311
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignEmc671(J[BII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignEmc672(JII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "focus"    # I

    .line 331
    invoke-static {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignEmc672(JII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignEmcOwner673(JI)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "ordinal"    # I

    .line 337
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignEmcOwner673(JI)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignFacing666(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 673
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignFacing666(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignFinance574(JIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "cost"    # I
    .param p4, "time"    # I

    .line 66
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignFinance574(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignFinance575(JIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "frames"    # I
    .param p4, "cost"    # I
    .param p5, "time"    # I

    .line 70
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignFinance575(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignFinance576(JIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "cost"    # I
    .param p4, "time"    # I

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignFinance576(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignHud743(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 39
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignHud743(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignIntegratedStep694(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 289
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignIntegratedStep694(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignLifecycle568(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 281
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignLifecycle568(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignMap559(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 342
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignMap559(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignOrder557(JIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "unit"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 682
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignOrder557(JIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignRefinery570(JIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 57
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignRefinery570(JIII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignScheduler560(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 284
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignScheduler560(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignSpeed670(JII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "ordinal"    # I

    .line 304
    invoke-static {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignSpeed670(JII)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignSubtile565(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 37
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignSubtile565(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignTick729(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 293
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignTick729(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignTrace562(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 33
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignTrace562(J)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignUnitIdentity566(JI)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "ordinal"    # I

    .line 44
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignUnitIdentity566(JI)[I

    move-result-object v0

    return-object v0
.end method

.method static campaignVisual738(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 41
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignVisual738(J)[I

    move-result-object v0

    return-object v0
.end method

.method static clockGates649(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1520
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1526
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1528
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1529
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1530
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1531
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1530
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1532
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1536
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1537
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeClockGates649(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1533
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1534
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1525
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 649 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static closeCampaignWorld(J)Z
    .locals 1
    .param p0, "token"    # J

    .line 344
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeClose(J)Z

    move-result v0

    return v0
.end method

.method static configureCampaignTerrain561(J[B)Z
    .locals 1
    .param p0, "token"    # J
    .param p2, "lookup"    # [B

    .line 29
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConfigureTerrain561(J[B)Z

    move-result v0

    return v0
.end method

.method static configureCampaignUnitInfo669(J[B)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "verifiedRom"    # [B

    .line 299
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConfigureCampaignUnitInfo669(J[B)[I

    move-result-object v0

    return-object v0
.end method

.method static constructionAtomic631(J[B[B[BIIIII)[I
    .locals 5
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "before"    # [B
    .param p4, "observed"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a3"    # I
    .param p8, "a4"    # I
    .param p9, "a5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    if-eqz p2, :cond_0

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 190
    .local v0, "variant":I
    nop

    .line 191
    invoke-static {p2, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v1

    .line 192
    .local v1, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eq p3, p4, :cond_2

    array-length v2, p3

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_2

    array-length v2, p4

    if-ne v2, v3, :cond_2

    .line 194
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_2

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 195
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 197
    invoke-static/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionAtomic631(J[B[B[BIIIII)[I

    move-result-object v2

    return-object v2

    .line 196
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor 631 refused unverified ROM or 68K RAM pair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static constructionBridge628(J[BIII)[I
    .locals 5
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "action"    # I
    .param p4, "powerNum"    # I
    .param p5, "powerDen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    if-ltz p3, :cond_5

    const/4 v0, 0x3

    if-gt p3, v0, :cond_5

    .line 124
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    if-ne p3, v0, :cond_3

    .line 125
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    const/high16 v3, 0x300000

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    const/high16 v2, 0x400000

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    nop

    .line 127
    .local v0, "variant":I
    nop

    .line 128
    invoke-static {p2, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v1

    .line 129
    .local v1, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_4

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_4

    .line 132
    .end local v0    # "variant":I
    .end local v1    # "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionBridge628(J[BIII)[I

    move-result-object v0

    return-object v0

    .line 130
    .restart local v0    # "variant":I
    .restart local v1    # "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor 628 structure descriptor mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "variant":I
    .end local v1    # "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static constructionOracle630(J[B[B[BIIIII)[I
    .locals 5
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "before"    # [B
    .param p4, "after"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a3"    # I
    .param p8, "a4"    # I
    .param p9, "a5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    if-eqz p2, :cond_0

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 167
    .local v0, "variant":I
    nop

    .line 168
    invoke-static {p2, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v1

    .line 169
    .local v1, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    array-length v2, p3

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_2

    array-length v2, p4

    if-ne v2, v3, :cond_2

    .line 170
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_2

    .line 171
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 173
    invoke-static/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionOracle630(J[B[B[BIIIII)[I

    move-result-object v2

    return-object v2

    .line 172
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor 630 rejected unverified ROM or RAM"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static constructionSchedule632(J[B[B[BIIIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "before"    # [B
    .param p4, "observed"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a3"    # I
    .param p8, "a4"    # I
    .param p9, "a5"    # I
    .param p10, "action"    # I
    .param p11, "eventId"    # I
    .param p12, "dueFrame"    # I
    .param p13, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    move/from16 v0, p10

    move/from16 v1, p12

    move/from16 v2, p13

    if-ltz v0, :cond_6

    const/4 v3, 0x4

    if-gt v0, v3, :cond_6

    .line 216
    const v3, 0x7fffffff

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 217
    if-eqz p2, :cond_0

    array-length v5, p2

    const/high16 v6, 0x300000

    if-ne v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    .line 218
    :cond_0
    if-eqz p2, :cond_1

    array-length v5, p2

    const/high16 v6, 0x400000

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    nop

    .line 219
    .local v5, "variant":I
    nop

    .line 220
    invoke-static {p2, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v6

    .line 221
    .local v6, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eq p3, p4, :cond_2

    array-length v7, p3

    const/high16 v8, 0x10000

    if-ne v7, v8, :cond_2

    array-length v7, p4

    if-ne v7, v8, :cond_2

    .line 223
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v7

    iget v7, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    const/16 v8, 0xbb8

    if-ne v7, v8, :cond_2

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v8

    iget v8, v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_2

    .line 224
    invoke-virtual {v6, v7}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v7

    iget v7, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_2

    if-lez p11, :cond_2

    if-ltz v1, :cond_2

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor 632 requires verified one-payment evidence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v5    # "variant":I
    .end local v6    # "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    :cond_3
    :goto_1
    if-ne v0, v4, :cond_5

    if-ltz v2, :cond_4

    if-eq v2, v3, :cond_4

    goto :goto_2

    .line 229
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "frameIndex"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_5
    :goto_2
    invoke-static/range {p0 .. p13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionSchedule632(J[B[B[BIIIIIIIII)[I

    move-result-object v3

    return-object v3

    .line 215
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "action"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static constructionSession633(J[B[B[BIIIIIIIII)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "before"    # [B
    .param p4, "observed"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a3"    # I
    .param p8, "a4"    # I
    .param p9, "a5"    # I
    .param p10, "action"    # I
    .param p11, "eventId"    # I
    .param p12, "dueFrame"    # I
    .param p13, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    move/from16 v0, p10

    move/from16 v1, p12

    move/from16 v2, p13

    if-ltz v0, :cond_5

    const/4 v3, 0x4

    if-gt v0, v3, :cond_5

    .line 248
    const v3, 0x7fffffff

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 249
    if-eqz p2, :cond_1

    array-length v5, p2

    const/high16 v6, 0x300000

    if-ne v5, v6, :cond_1

    .line 251
    nop

    .line 252
    invoke-static {p2, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v5

    .line 253
    .local v5, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eq p3, p4, :cond_0

    array-length v6, p3

    const/high16 v7, 0x10000

    if-ne v6, v7, :cond_0

    array-length v6, p4

    if-ne v6, v7, :cond_0

    .line 255
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v6

    iget v6, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    const/16 v7, 0xbb8

    if-ne v6, v7, :cond_0

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v7

    iget v7, v7, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_0

    .line 256
    invoke-virtual {v5, v6}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v6

    iget v6, v6, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v7, 0x14

    if-ne v6, v7, :cond_0

    if-lez p11, :cond_0

    if-ltz v1, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor 633 refused invalid paired evidence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v5    # "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Razor 633 needs 3MiB real capture"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_2
    :goto_0
    if-ne v0, v4, :cond_4

    if-ltz v2, :cond_3

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 261
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "frameIndex"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_4
    :goto_1
    invoke-static/range {p0 .. p13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionSession633(J[B[B[BIIIIIIIII)[I

    move-result-object v3

    return-object v3

    .line 247
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "action"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static constructionWitness629(J[B[BIIIIIZ)[I
    .locals 5
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "pc"    # I
    .param p5, "a2"    # I
    .param p6, "a3"    # I
    .param p7, "a4"    # I
    .param p8, "a5"    # I
    .param p9, "dryrun"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    if-eqz p2, :cond_0

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 147
    .local v0, "variant":I
    nop

    .line 148
    invoke-static {p2, v0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    move-result-object v1

    .line 149
    .local v1, "bank":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    if-eqz p3, :cond_2

    array-length v2, p3

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_2

    .line 150
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->maxHp:I

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_2

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v3

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 151
    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    move-result-object v2

    iget v2, v2, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->productionWord:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 153
    invoke-static/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeConstructionWitness629(J[B[BIIIIIZ)[I

    move-result-object v2

    return-object v2

    .line 152
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Razor 629 invalid RAM or ROM descriptor"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static enableCampaignRoute665(J)Z
    .locals 1
    .param p0, "token"    # J

    .line 678
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeEnableCampaignRoute665(J)Z

    move-result v0

    return v0
.end method

.method static enableSubtile565(J)Z
    .locals 1
    .param p0, "token"    # J

    .line 35
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeEnableSubtile565(J)Z

    move-result v0

    return v0
.end method

.method static frameIngress634(JIJ)[I
    .locals 3
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "frameTimeNanos"    # J

    .line 350
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    if-ltz p2, :cond_1

    const/4 v2, 0x4

    if-gt p2, v2, :cond_1

    const/4 v2, 0x1

    cmp-long v0, p3, v0

    if-ne p2, v2, :cond_0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 353
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeFrameIngress634(JIJ)[I

    move-result-object v0

    return-object v0

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Razor display-frame ingress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeAdvanceObservation530(JI)[I
.end method

.method private static native nativeBeginObservation530(J[BI)Z
.end method

.method private static native nativeCallerBranch657(J[B[B[B[I)[I
.end method

.method private static native nativeCallerCounter656(J[B[B[B[I)[I
.end method

.method private static native nativeCallerDispatch647(J[B[B[B[I)[I
.end method

.method private static native nativeCallerTarget648(J[B[B[B[I)[I
.end method

.method private static native nativeCampaignBirth567(J)[I
.end method

.method private static native nativeCampaignBuildEmc715(J[B)[I
.end method

.method private static native nativeCampaignBuildOwner716(JI)[I
.end method

.method private static native nativeCampaignCadence668(J)[I
.end method

.method private static native nativeCampaignCapture584(JI)[I
.end method

.method private static native nativeCampaignConstruction571(JIII)[I
.end method

.method private static native nativeCampaignCore667(J)[I
.end method

.method private static native nativeCampaignCoreRoute664(JIII)[I
.end method

.method private static native nativeCampaignDemo569(JIIII)[I
.end method

.method private static native nativeCampaignDeploy726(JI)[I
.end method

.method private static native nativeCampaignDynamic569(J)[I
.end method

.method private static native nativeCampaignEconomy573(J)[I
.end method

.method private static native nativeCampaignEmc671(J[BII)[I
.end method

.method private static native nativeCampaignEmc672(JII)[I
.end method

.method private static native nativeCampaignEmcOwner673(JI)[I
.end method

.method private static native nativeCampaignFacing666(J)[I
.end method

.method private static native nativeCampaignFinance574(JIII)[I
.end method

.method private static native nativeCampaignFinance575(JIIII)[I
.end method

.method private static native nativeCampaignFinance576(JIII)[I
.end method

.method private static native nativeCampaignHud743(J)[I
.end method

.method private static native nativeCampaignIntegratedStep694(J)[I
.end method

.method private static native nativeCampaignLifecycle568(J)[I
.end method

.method private static native nativeCampaignMap559(J)[I
.end method

.method private static native nativeCampaignOrder557(JIIII)[I
.end method

.method private static native nativeCampaignRefinery570(JIII)[I
.end method

.method private static native nativeCampaignSandboxProbe556(J)[I
.end method

.method private static native nativeCampaignScheduler560(J)[I
.end method

.method private static native nativeCampaignSpeed670(JII)[I
.end method

.method private static native nativeCampaignSubtile565(J)[I
.end method

.method private static native nativeCampaignTick729(J)[I
.end method

.method private static native nativeCampaignTrace562(J)[I
.end method

.method private static native nativeCampaignUnitIdentity566(JI)[I
.end method

.method private static native nativeCampaignVisual738(J)[I
.end method

.method private static native nativeClockGates649(J[B[B[B[I)[I
.end method

.method private static native nativeClose(J)Z
.end method

.method private static native nativeConfigureCampaignUnitInfo669(J[B)[I
.end method

.method private static native nativeConfigureTerrain561(J[B)Z
.end method

.method private static native nativeConstructionAtomic631(J[B[B[BIIIII)[I
.end method

.method private static native nativeConstructionBridge628(J[BIII)[I
.end method

.method private static native nativeConstructionOracle630(J[B[B[BIIIII)[I
.end method

.method private static native nativeConstructionSchedule632(J[B[B[BIIIIIIIII)[I
.end method

.method private static native nativeConstructionSession633(J[B[B[BIIIIIIIII)[I
.end method

.method private static native nativeConstructionWitness629(J[B[BIIIIIZ)[I
.end method

.method private static native nativeEnableCampaignRoute665(J)Z
.end method

.method private static native nativeEnableSubtile565(J)Z
.end method

.method private static native nativeF40SandboxGate534(J)[I
.end method

.method private static native nativeFirstUnitIdentity(J)[I
.end method

.method private static native nativeFrameIngress634(JIJ)[I
.end method

.method private static native nativeGenesisBootProbe541(J[B)[I
.end method

.method private static native nativeM68kBackendStatus535(J)[I
.end method

.method private static native nativeM68kRomSmoke536(J[B)[I
.end method

.method private static native nativeM68kTrace538(J[B)[I
.end method

.method private static native nativeMapCells411(J)[B
.end method

.method private static native nativeOpen([B[BIIIII)J
.end method

.method private static native nativePaymentCalc595(JIIIIIIII)[I
.end method

.method private static native nativePaymentFromRom627(J[BIIII)[I
.end method

.method private static native nativePaymentOpcode594(JIIIIII)[I
.end method

.method private static native nativePinF40Session419(J[BI)Z
.end method

.method private static native nativePrecallF40533(J)[I
.end method

.method private static native nativeProbeFirstUnit(J[BI)[I
.end method

.method private static native nativeProbeFunctionBoundary(J[BI)[I
.end method

.method private static native nativeRead(J)[I
.end method

.method private static native nativeReadF40Session419(J[B)[I
.end method

.method private static native nativeResetObservation530(J)Z
.end method

.method private static native nativeScriptAdvance637(J[B[B[BIIIII)[I
.end method

.method private static native nativeScriptCaller643(J[B[B[BIIIIIII)[I
.end method

.method private static native nativeScriptDispatch638(J[B[B[BIIIIIIIII)[I
.end method

.method private static native nativeScriptEpilogue644(J[B[B[B[I)[I
.end method

.method private static native nativeScriptFetch636(J[B[BIIIII)[I
.end method

.method private static native nativeScriptHandler641(J[B[B[BIIIIII)[I
.end method

.method private static native nativeScriptPrejump639(J[B[B[BIIIIIIIIIII)[I
.end method

.method private static native nativeScriptReturn642(J[B[B[BIIIIIII)[I
.end method

.method private static native nativeScriptTable640(J[B[B[BIIIIIIIIIII)[I
.end method

.method private static native nativeShadowContext405(J[BI)[I
.end method

.method private static native nativeSimulationStep635(J)[I
.end method

.method private static native nativeUnitDispatch651(J[B[B[B[I)[I
.end method

.method private static native nativeUnitExit646(J[B[B[B[I)[I
.end method

.method private static native nativeUnitFlagPrestate416(J)[I
.end method

.method private static native nativeUnitHandler652(J[B[B[B[I)[I
.end method

.method private static native nativeUnitHandler653(J[B[B[B[I)[I
.end method

.method private static native nativeUnitHandler654(J[B[B[B[I)[I
.end method

.method private static native nativeUnitHandler655(J[B[B[B[I)[I
.end method

.method private static native nativeUnitLoop645(J[B[B[B[I)[I
.end method

.method private static native nativeUnitScan650(J[B[B[B[I)[I
.end method

.method private static native nativeUnitSnapshot403(J)[I
.end method

.method public static open(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeWorldSession;
    .locals 9
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    invoke-static {p0, p1, p2}, Lcom/ahsim/demulation/RazorMissionBootProbe;->inspect(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    move-result-object v7

    .line 837
    .local v7, "proof":Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    iget-boolean v0, v7, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->nativeWorldBootstrapped:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->gameplayReady:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->originalGameplayCompatible:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->emcRuntimeReady:Z

    if-nez v0, :cond_1

    .line 840
    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bootProbeMission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v8

    .line 841
    .local v8, "raw":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    invoke-virtual {v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v0

    invoke-virtual {v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v1

    iget v4, v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v5, v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v6, v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    move v2, p1

    move v3, p2

    .end local p1    # "house":I
    .end local p2    # "mission":I
    .local v2, "house":I
    .local v3, "mission":I
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeOpen([B[BIIIII)J

    move-result-wide p1

    .line 843
    .local p1, "id":J
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 845
    :try_start_0
    invoke-static {p1, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v6

    .line 846
    .local v6, "first":[I
    const/4 v0, 0x0

    invoke-static {v6, v7, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 847
    new-instance v0, Lcom/ahsim/demulation/RazorNativeWorldSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move v4, v2

    move v5, v3

    move-object v3, p0

    move-wide v1, p1

    .end local v2    # "house":I
    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p1    # "id":J
    .local v1, "id":J
    .local v3, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .local v4, "house":I
    .local v5, "mission":I
    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;-><init>(JLcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II[ILcom/ahsim/demulation/RazorMissionBootProbe$Report;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-wide p0, v1

    move v2, v4

    .end local v1    # "id":J
    .end local v4    # "house":I
    .restart local v2    # "house":I
    .local p0, "id":J
    return-object v0

    .line 848
    .end local v2    # "house":I
    .end local v6    # "first":[I
    .end local p0    # "id":J
    .restart local v1    # "id":J
    .restart local v4    # "house":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    move-wide p0, v1

    move v2, v4

    move-object p2, v0

    .end local v1    # "id":J
    .end local v4    # "house":I
    .restart local v2    # "house":I
    .restart local p0    # "id":J
    goto :goto_2

    .end local v5    # "mission":I
    .local v3, "mission":I
    .local p0, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p1    # "id":J
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    :goto_1
    move v5, v3

    move-object v3, p0

    move-wide p0, p1

    move-object p2, v0

    .line 849
    .end local p1    # "id":J
    .local v3, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v5    # "mission":I
    .local p0, "id":J
    .local p2, "ex":Ljava/lang/Throwable;
    :goto_2
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeClose(J)Z

    .line 850
    throw p2

    .line 843
    .end local v5    # "mission":I
    .end local p2    # "ex":Ljava/lang/Throwable;
    .local v3, "mission":I
    .local p0, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p1    # "id":J
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Native Razor diagnostic world busy or rejected"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 837
    .end local v2    # "house":I
    .end local v3    # "mission":I
    .end local v8    # "raw":Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;
    .local p1, "house":I
    .local p2, "mission":I
    :cond_1
    move-object v3, p0

    move v2, p1

    move v5, p2

    .line 839
    .end local p0    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p1    # "house":I
    .end local p2    # "mission":I
    .restart local v2    # "house":I
    .local v3, "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local v5    # "mission":I
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsafe Razor diagnostic session source"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static openCampaignWorld(Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;)J
    .locals 7
    .param p0, "mission"    # Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    .line 24
    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioBytes()[B

    move-result-object v1

    iget v2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->house:I

    iget v3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mission:I

    iget v4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->storedMapSide:I

    iget v5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapWidth:I

    iget v6, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->scenarioMapHeight:I

    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeOpen([B[BIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static paymentCalc595(JIIIIIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "cash"    # I
    .param p4, "paid"    # I
    .param p5, "remaining"    # I
    .param p6, "fraction"    # I
    .param p7, "d2"    # I
    .param p8, "d5"    # I
    .param p9, "typeByte"    # I

    .line 98
    invoke-static/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativePaymentCalc595(JIIIIIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static paymentFromRom627(J[BIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "a5"    # I
    .param p4, "typeByte"    # I
    .param p5, "powerNum"    # I
    .param p6, "powerDen"    # I

    .line 112
    invoke-static/range {p0 .. p6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativePaymentFromRom627(J[BIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static paymentOpcode594(JIIIIII)[I
    .locals 1
    .param p0, "token"    # J
    .param p2, "action"    # I
    .param p3, "cash"    # I
    .param p4, "paid"    # I
    .param p5, "remaining"    # I
    .param p6, "d4"    # I
    .param p7, "d5"    # I

    .line 272
    invoke-static/range {p0 .. p7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativePaymentOpcode594(JIIIIII)[I

    move-result-object v0

    return-object v0
.end method

.method static pollCampaignWorld(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 32
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    return-object v0
.end method

.method static probeCampaignObject556(J)[I
    .locals 1
    .param p0, "token"    # J

    .line 662
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeCampaignSandboxProbe556(J)[I

    move-result-object v0

    return-object v0
.end method

.method static scriptAdvance637(J[B[B[BIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a1"    # I
    .param p7, "a2"    # I
    .param p8, "d0"    # I
    .param p9, "sr"    # I

    .line 400
    move/from16 v1, p9

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 405
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 406
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 407
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 409
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 410
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 412
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 413
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 417
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 418
    invoke-static/range {p0 .. p9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptAdvance637(J[B[B[BIIIII)[I

    move-result-object v0

    return-object v0

    .line 414
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a1":I
    .end local p7    # "a2":I
    .end local p8    # "d0":I
    .end local p9    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a1":I
    .restart local p7    # "a2":I
    .restart local p8    # "d0":I
    .restart local p9    # "sr":I
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 404
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid detached Script_Run RAM"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptCaller643(J[B[B[BIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a4"    # I
    .param p8, "a7"    # I
    .param p9, "d1"    # I
    .param p10, "d5"    # I
    .param p11, "sr"    # I

    .line 578
    move/from16 v1, p11

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 582
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 583
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 584
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 586
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 587
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 589
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 590
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 594
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 595
    invoke-static/range {p0 .. p11}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptCaller643(J[B[B[BIIIIIII)[I

    move-result-object v0

    return-object v0

    .line 591
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a2":I
    .end local p7    # "a4":I
    .end local p8    # "a7":I
    .end local p9    # "d1":I
    .end local p10    # "d5":I
    .end local p11    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a2":I
    .restart local p7    # "a4":I
    .restart local p8    # "a7":I
    .restart local p9    # "d1":I
    .restart local p10    # "d5":I
    .restart local p11    # "sr":I
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 581
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid detached 643 state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptDispatch638(J[B[B[BIIIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a1"    # I
    .param p7, "a2"    # I
    .param p8, "d0"    # I
    .param p9, "d1"    # I
    .param p10, "d3"    # I
    .param p11, "d4"    # I
    .param p12, "d6"    # I
    .param p13, "sr"    # I

    .line 431
    move/from16 v1, p13

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 435
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 436
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 437
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 439
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 440
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 441
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 442
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 443
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 447
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 448
    invoke-static/range {p0 .. p13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptDispatch638(J[B[B[BIIIIIIIII)[I

    move-result-object v0

    return-object v0

    .line 444
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a1":I
    .end local p7    # "a2":I
    .end local p8    # "d0":I
    .end local p9    # "d1":I
    .end local p10    # "d3":I
    .end local p11    # "d4":I
    .end local p12    # "d6":I
    .end local p13    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a1":I
    .restart local p7    # "a2":I
    .restart local p8    # "d0":I
    .restart local p9    # "d1":I
    .restart local p10    # "d3":I
    .restart local p11    # "d4":I
    .restart local p12    # "d6":I
    .restart local p13    # "sr":I
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 434
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid detached Script_Run state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptEpilogue644(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 636
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_4

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_4

    if-eq p2, p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_4

    array-length v0, p4

    if-ne v0, v1, :cond_4

    array-length v0, p2

    const/high16 v1, 0x300000

    if-eq v0, v1, :cond_0

    array-length v0, p2

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_4

    .line 642
    :cond_0
    array-length v0, p2

    if-ne v0, v1, :cond_1

    .line 643
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 644
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v1, v0

    .line 646
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 647
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 648
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 649
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 650
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 654
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 655
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptEpilogue644(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 651
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 652
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 641
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 644 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptFetch636(J[B[BIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "pc"    # I
    .param p5, "a1"    # I
    .param p6, "a2"    # I
    .param p7, "d0"    # I
    .param p8, "sr"    # I

    .line 371
    move/from16 v1, p8

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p3, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 375
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 376
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 377
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 379
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 380
    .local v0, "h":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    .local v3, "out":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 382
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 387
    .end local v0    # "h":[B
    .end local v3    # "out":Ljava/lang/StringBuilder;
    nop

    .line 388
    invoke-static/range {p0 .. p8}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptFetch636(J[B[BIIIII)[I

    move-result-object v0

    return-object v0

    .line 384
    .restart local v0    # "h":[B
    .restart local v3    # "out":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "pc":I
    .end local p5    # "a1":I
    .end local p6    # "a2":I
    .end local p7    # "d0":I
    .end local p8    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    .end local v0    # "h":[B
    .end local v3    # "out":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "pc":I
    .restart local p5    # "a1":I
    .restart local p6    # "a2":I
    .restart local p7    # "d0":I
    .restart local p8    # "sr":I
    :catch_0
    move-exception v0

    .line 386
    .local v0, "err":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 374
    .end local v0    # "err":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Razor M68K witness"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptHandler641(J[B[B[BIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a4"    # I
    .param p8, "d1"    # I
    .param p9, "d5"    # I
    .param p10, "sr"    # I

    .line 521
    move/from16 v1, p10

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 525
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 526
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 527
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 529
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 530
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 532
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 533
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 537
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 538
    invoke-static/range {p0 .. p10}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptHandler641(J[B[B[BIIIIII)[I

    move-result-object v0

    return-object v0

    .line 534
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a2":I
    .end local p7    # "a4":I
    .end local p8    # "d1":I
    .end local p9    # "d5":I
    .end local p10    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 535
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a2":I
    .restart local p7    # "a4":I
    .restart local p8    # "d1":I
    .restart local p9    # "d5":I
    .restart local p10    # "sr":I
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 524
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid detached 641 state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptPrejump639(J[B[B[BIIIIIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a0"    # I
    .param p7, "a1"    # I
    .param p8, "a2"    # I
    .param p9, "d0"    # I
    .param p10, "d1"    # I
    .param p11, "d3"    # I
    .param p12, "d4"    # I
    .param p13, "d6"    # I
    .param p14, "d7"    # I
    .param p15, "sr"    # I

    .line 461
    move/from16 v1, p15

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 465
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 466
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 467
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 469
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 470
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 471
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 472
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 473
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 477
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 478
    invoke-static/range {p0 .. p15}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptPrejump639(J[B[B[BIIIIIIIIIII)[I

    move-result-object v0

    return-object v0

    .line 474
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a0":I
    .end local p7    # "a1":I
    .end local p8    # "a2":I
    .end local p9    # "d0":I
    .end local p10    # "d1":I
    .end local p11    # "d3":I
    .end local p12    # "d4":I
    .end local p13    # "d6":I
    .end local p14    # "d7":I
    .end local p15    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a0":I
    .restart local p7    # "a1":I
    .restart local p8    # "a2":I
    .restart local p9    # "d0":I
    .restart local p10    # "d1":I
    .restart local p11    # "d3":I
    .restart local p12    # "d4":I
    .restart local p13    # "d6":I
    .restart local p14    # "d7":I
    .restart local p15    # "sr":I
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 464
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid 639 detached state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptReturn642(J[B[B[BIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a2"    # I
    .param p7, "a4"    # I
    .param p8, "a7"    # I
    .param p9, "d1"    # I
    .param p10, "d5"    # I
    .param p11, "sr"    # I

    .line 549
    move/from16 v1, p11

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 553
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 554
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 555
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 557
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 558
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 559
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 560
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 561
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 565
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 566
    invoke-static/range {p0 .. p11}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptReturn642(J[B[B[BIIIIIII)[I

    move-result-object v0

    return-object v0

    .line 562
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a2":I
    .end local p7    # "a4":I
    .end local p8    # "a7":I
    .end local p9    # "d1":I
    .end local p10    # "d5":I
    .end local p11    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a2":I
    .restart local p7    # "a4":I
    .restart local p8    # "a7":I
    .restart local p9    # "d1":I
    .restart local p10    # "d5":I
    .restart local p11    # "sr":I
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 552
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid detached 642 state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static scriptTable640(J[B[B[BIIIIIIIIIII)[I
    .locals 10
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "pc"    # I
    .param p6, "a0"    # I
    .param p7, "a1"    # I
    .param p8, "a2"    # I
    .param p9, "d0"    # I
    .param p10, "d1"    # I
    .param p11, "d3"    # I
    .param p12, "d4"    # I
    .param p13, "d6"    # I
    .param p14, "d7"    # I
    .param p15, "sr"    # I

    .line 491
    move/from16 v1, p15

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-ne v0, v2, :cond_4

    array-length v0, p2

    const/high16 v2, 0x300000

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/high16 v3, 0x400000

    if-ne v0, v3, :cond_4

    :cond_0
    if-ltz v1, :cond_4

    const v0, 0xffff

    if-gt v1, v0, :cond_4

    .line 495
    array-length v0, p2

    if-ne v0, v2, :cond_1

    .line 496
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v2, v0

    .line 499
    .local v2, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 500
    .local v0, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v3, "encoded":Ljava/lang/StringBuilder;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v0, v5

    .local v6, "b":B
    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    and-int/lit8 v9, v6, 0xf

    .line 502
    invoke-static {v9, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 507
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 508
    invoke-static/range {p0 .. p15}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeScriptTable640(J[B[B[BIIIIIIIIIII)[I

    move-result-object v0

    return-object v0

    .line 504
    .restart local v0    # "hash":[B
    .restart local v3    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported Razor ROM SHA-256"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "pc":I
    .end local p6    # "a0":I
    .end local p7    # "a1":I
    .end local p8    # "a2":I
    .end local p9    # "d0":I
    .end local p10    # "d1":I
    .end local p11    # "d3":I
    .end local p12    # "d4":I
    .end local p13    # "d6":I
    .end local p14    # "d7":I
    .end local p15    # "sr":I
    throw v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    .end local v0    # "hash":[B
    .end local v3    # "encoded":Ljava/lang/StringBuilder;
    .restart local v2    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "pc":I
    .restart local p6    # "a0":I
    .restart local p7    # "a1":I
    .restart local p8    # "a2":I
    .restart local p9    # "d0":I
    .restart local p10    # "d1":I
    .restart local p11    # "d3":I
    .restart local p12    # "d4":I
    .restart local p13    # "d6":I
    .restart local p14    # "d7":I
    .restart local p15    # "sr":I
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 494
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid 640 detached state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static simulationStep635(J)[I
    .locals 2
    .param p0, "token"    # J

    .line 359
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 360
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeSimulationStep635(J)[I

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Razor session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 1412
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static u32([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 1415
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static unitDispatch651(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1582
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1588
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1590
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1591
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1592
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1593
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1592
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1594
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1598
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1599
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitDispatch651(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1595
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1596
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1587
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 651 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitExit646(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1430
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_4

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_4

    if-eq p4, p2, :cond_4

    if-eq p4, p3, :cond_4

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_4

    array-length v0, p4

    if-ne v0, v1, :cond_4

    array-length v0, p2

    const/high16 v1, 0x300000

    if-eq v0, v1, :cond_0

    array-length v0, p2

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_4

    .line 1436
    :cond_0
    array-length v0, p2

    if-ne v0, v1, :cond_1

    .line 1437
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 1438
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v1, v0

    .line 1440
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1441
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1442
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1443
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1442
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1444
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 1448
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1449
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitExit646(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1445
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1446
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1435
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 646 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitHandler652(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1611
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1617
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1619
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1620
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1621
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1622
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1621
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1627
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1628
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitHandler652(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1624
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1625
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1616
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 652 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitHandler653(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1641
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1647
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1649
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1650
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1651
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1652
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1651
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1653
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1657
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1658
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitHandler653(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1654
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1655
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1646
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 653 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitHandler654(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1670
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1676
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1678
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1679
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1680
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1681
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1680
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1686
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1687
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitHandler654(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1683
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1684
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1675
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 654 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitHandler655(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1700
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1706
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1708
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1709
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1710
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1711
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1710
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1712
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1716
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1717
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitHandler655(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1713
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1714
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1705
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 655 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitLoop645(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 607
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_4

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_4

    if-eq p2, p4, :cond_4

    if-eq p3, p4, :cond_4

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_4

    array-length v0, p4

    if-ne v0, v1, :cond_4

    array-length v0, p2

    const/high16 v1, 0x300000

    if-eq v0, v1, :cond_0

    array-length v0, p2

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_4

    .line 613
    :cond_0
    array-length v0, p2

    if-ne v0, v1, :cond_1

    .line 614
    const-string v0, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_0

    .line 615
    :cond_1
    const-string v0, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_0
    move-object v1, v0

    .line 617
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 618
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 619
    .local v2, "str":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 620
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 625
    .end local v0    # "hash":[B
    .end local v2    # "str":Ljava/lang/StringBuilder;
    nop

    .line 626
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitLoop645(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 622
    .restart local v0    # "hash":[B
    .restart local v2    # "str":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    .end local v0    # "hash":[B
    .end local v2    # "str":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 612
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 645 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static unitScan650(J[B[B[B[I)[I
    .locals 9
    .param p0, "token"    # J
    .param p2, "rom"    # [B
    .param p3, "ram"    # [B
    .param p4, "projectedRam"    # [B
    .param p5, "regs"    # [I

    .line 1552
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    const/16 v0, 0x11

    aget v1, p5, v0

    if-ltz v1, :cond_2

    aget v0, p5, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    if-eq p4, p2, :cond_2

    if-eq p4, p3, :cond_2

    array-length v0, p3

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_2

    array-length v0, p4

    if-ne v0, v1, :cond_2

    array-length v0, p2

    const/high16 v1, 0x300000

    if-ne v0, v1, :cond_2

    .line 1558
    const-string v1, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    .line 1560
    .local v1, "pinned":Ljava/lang/String;
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 1561
    .local v0, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1562
    .local v2, "encoded":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .local v5, "b":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v8, v5, 0xf

    .line 1563
    invoke-static {v8, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1564
    :cond_0
    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 1568
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    nop

    .line 1569
    invoke-static/range {p0 .. p5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitScan650(J[B[B[B[I)[I

    move-result-object v0

    return-object v0

    .line 1565
    .restart local v0    # "hash":[B
    .restart local v2    # "encoded":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported Razor ROM SHA-256"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "pinned":Ljava/lang/String;
    .end local p0    # "token":J
    .end local p2    # "rom":[B
    .end local p3    # "ram":[B
    .end local p4    # "projectedRam":[B
    .end local p5    # "regs":[I
    throw v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1566
    .end local v0    # "hash":[B
    .end local v2    # "encoded":Ljava/lang/StringBuilder;
    .restart local v1    # "pinned":Ljava/lang/String;
    .restart local p0    # "token":J
    .restart local p2    # "rom":[B
    .restart local p3    # "ram":[B
    .restart local p4    # "projectedRam":[B
    .restart local p5    # "regs":[I
    :catch_0
    move-exception v0

    .line 1567
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SHA-256 unavailable"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1557
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "pinned":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid detached 650 state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V
    .locals 9
    .param p0, "v"    # [I
    .param p1, "proof"    # Lcom/ahsim/demulation/RazorMissionBootProbe$Report;
    .param p2, "baseline"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    if-eqz p0, :cond_6

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    aget v1, p0, v2

    if-nez v1, :cond_6

    const/4 v1, 0x2

    aget v1, p0, v1

    iget v3, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->house:I

    if-ne v1, v3, :cond_6

    const/4 v1, 0x3

    aget v3, p0, v1

    iget v4, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->mission:I

    if-ne v3, v4, :cond_6

    const/4 v3, 0x4

    aget v4, p0, v3

    iget v5, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->gridSide:I

    if-ne v4, v5, :cond_6

    const/4 v4, 0x7

    aget v4, p0, v4

    iget v5, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->units:I

    if-ne v4, v5, :cond_6

    const/16 v4, 0x8

    aget v4, p0, v4

    iget v5, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->buildings:I

    if-ne v4, v5, :cond_6

    const/16 v4, 0x9

    aget v4, p0, v4

    iget v5, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->terrainRecords:I

    if-ne v4, v5, :cond_6

    const/16 v4, 0x12

    aget v4, p0, v4

    iget v5, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->confirmedTerrainCells:I

    if-ne v4, v5, :cond_6

    const/16 v4, 0x13

    aget v5, p0, v4

    iget v6, p1, Lcom/ahsim/demulation/RazorMissionBootProbe$Report;->uninitializedTerrainCells:I

    if-ne v5, v6, :cond_6

    const/16 v5, 0x1a

    aget v6, p0, v5

    if-ne v6, v2, :cond_6

    const/16 v6, 0x1b

    aget v7, p0, v6

    if-lez v7, :cond_6

    const/16 v7, 0x1c

    aget v8, p0, v7

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_6

    aget v1, p0, v7

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    aget v3, p0, v4

    if-nez v3, :cond_1

    move v0, v2

    :cond_1
    if-ne v1, v0, :cond_6

    const/16 v0, 0x1d

    aget v0, p0, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_6

    const/16 v0, 0x1e

    aget v0, p0, v0

    if-nez v0, :cond_6

    const/16 v0, 0x1f

    aget v0, p0, v0

    if-nez v0, :cond_6

    .line 866
    if-eqz p2, :cond_5

    .line 867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 868
    aget v1, p0, v0

    aget v2, p2, v0

    if-ne v1, v2, :cond_2

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 868
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor world changed without authorized tick"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 869
    .end local v0    # "i":I
    :cond_3
    aget v0, p0, v6

    aget v1, p2, v6

    if-le v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor world read sequence regressed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_5
    :goto_2
    return-void

    .line 865
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Native Razor lifetime or tick gate violated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 1420
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533:[I

    .line 1421
    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I

    .line 1422
    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    .line 1423
    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    .line 1424
    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I

    .line 1425
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeClose(J)Z

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_0
    monitor-exit p0

    return-void

    .line 1419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized exportF40Boundary420(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI)Ljava/lang/String;
    .locals 10
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedUnitBank"    # [B
    .param p3, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1229
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 1230
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 1231
    .local v0, "before":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1232
    invoke-virtual {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observePersistentF40Prestate419(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI)[I

    move-result-object v1

    .line 1233
    .local v1, "witness":[I
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitSnapshot403(J)[I

    move-result-object v2

    .line 1234
    .local v2, "all":[I
    iget-wide v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v3

    .line 1235
    .local v3, "after":[I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1236
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    aget v6, v3, v4

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1237
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Razor 420 host source changed during export"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1238
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    if-eqz v2, :cond_7

    array-length v4, v2

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    const/4 v4, 0x0

    aget v4, v2, v4

    const/16 v6, 0x193

    if-ne v4, v6, :cond_7

    const/4 v4, 0x2

    aget v4, v2, v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_7

    const/4 v4, 0x1

    aget v7, v2, v4

    if-lt v7, v4, :cond_7

    aget v7, v2, v4

    const/16 v8, 0x80

    if-gt v7, v8, :cond_7

    array-length v7, v2

    aget v8, v2, v4

    mul-int/2addr v8, v6

    add-int/2addr v8, v5

    if-ne v7, v8, :cond_7

    if-ltz p3, :cond_7

    aget v4, v2, v4

    if-ge p3, v4, :cond_7

    const/4 v4, 0x6

    aget v4, v1, v4

    if-ne v4, p3, :cond_7

    .line 1242
    mul-int/lit8 v4, p3, 0xc

    add-int/2addr v4, v5

    .line 1243
    .local v4, "start":I
    aget v5, v2, v4

    if-ne v5, p3, :cond_6

    add-int/lit8 v5, v4, 0x3

    aget v5, v2, v5

    const/4 v7, 0x7

    aget v7, v1, v7

    if-ne v5, v7, :cond_6

    .line 1245
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x168

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1246
    .local v5, "json":Ljava/lang/StringBuilder;
    const-string v7, "{\"schema\":\"demulation.razor.420.android419-envelope.v1\","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v7, "\"rom_sha256\":\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v7, "\"words\":["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v1

    const/16 v9, 0x2c

    if-ge v7, v8, :cond_3

    .line 1250
    if-lez v7, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    :cond_2
    aget v8, v1, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1249
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1253
    .end local v7    # "i":I
    :cond_3
    const-string v7, "],\"unit403\":["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 1255
    if-lez v7, :cond_4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    :cond_4
    add-int v8, v4, v7

    aget v8, v2, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1254
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1258
    .end local v7    # "i":I
    :cond_5
    const-string v6, "]}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    .line 1244
    .end local v5    # "json":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Razor 420 source UNIT identity mismatch"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1241
    .end local v4    # "start":I
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor 420 source UNIT frame mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1229
    .end local v0    # "before":[I
    .end local v1    # "witness":[I
    .end local v2    # "all":[I
    .end local v3    # "after":[I
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No Razor retained world for 420"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedUnitBank":[B
    .end local p3    # "ordinal":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized exportF40Correlation421(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI)Ljava/lang/String;
    .locals 12
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedUnitBank"    # [B
    .param p3, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1270
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1271
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1273
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 1274
    .local v0, "before":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1275
    invoke-virtual {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->exportF40Boundary420(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI)Ljava/lang/String;

    move-result-object v1

    .line 1276
    .local v1, "emcEnvelope":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->observeInitialUnits403(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)[I

    move-result-object v2

    .line 1277
    .local v2, "units":[I
    iget-wide v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v3

    .line 1278
    .local v3, "after":[I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1279
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    aget v6, v3, v4

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1280
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Razor 421 native world changed during export"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1281
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    const/4 v4, 0x1

    aget v5, v2, v4

    const/4 v6, 0x7

    aget v6, v0, v6

    if-ne v5, v6, :cond_6

    const/16 v5, 0x1e

    aget v6, v0, v5

    if-nez v6, :cond_6

    aget v5, v3, v5

    if-nez v5, :cond_6

    const/16 v5, 0x1f

    aget v6, v0, v5

    if-nez v6, :cond_6

    aget v5, v3, v5

    if-nez v5, :cond_6

    aget v5, v2, v4

    if-ge p3, v5, :cond_6

    .line 1284
    const/4 v5, 0x6

    aget v6, v0, v5

    ushr-int/lit8 v6, v6, 0x10

    .local v6, "width":I
    aget v5, v0, v5

    const v7, 0xffff

    and-int/2addr v5, v7

    .line 1285
    .local v5, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    aget v8, v2, v4

    mul-int/lit8 v8, v8, 0x40

    add-int/lit16 v8, v8, 0x200

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1286
    .local v7, "json":Ljava/lang/StringBuilder;
    const-string v8, "{\"schema\":\"demulation.razor.421.source-roster-context.v1\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const-string v8, "\"rom_sha256\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    const-string v8, "\"variant_mib\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1289
    const-string v8, "\"house\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->house:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    const-string v8, "\"mission\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->mission:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    const-string v8, "\"grid_side\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x5

    aget v10, v0, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    const-string v8, "\"map_width\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    const-string v8, "\"map_height\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1294
    const-string v8, "\"gameplay_ticks\":0,\"f40_executed\":false,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v8, "\"android420\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    const-string v8, "\"source_units403\":["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_1
    aget v10, v2, v4

    if-ge v8, v10, :cond_5

    .line 1298
    if-lez v8, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    :cond_2
    const/16 v10, 0x5b

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v11, 0xc

    if-ge v10, v11, :cond_4

    .line 1301
    if-lez v10, :cond_3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    :cond_3
    mul-int/lit8 v11, v8, 0xc

    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v10

    aget v11, v2, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1304
    .end local v10    # "i":I
    :cond_4
    const/16 v10, 0x5d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1297
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1306
    .end local v8    # "n":I
    :cond_5
    const-string v4, "]}"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1283
    .end local v5    # "height":I
    .end local v6    # "width":I
    .end local v7    # "json":Ljava/lang/StringBuilder;
    :cond_6
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor 421 tick gate or roster changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1272
    .end local v0    # "before":[I
    .end local v1    # "emcEnvelope":Ljava/lang/String;
    .end local v2    # "units":[I
    .end local v3    # "after":[I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 421 audit or session mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedUnitBank":[B
    .end local p3    # "ordinal":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized lastGenesisBoot541()[I
    .locals 1

    monitor-enter p0

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1133
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized lastM68kBackend535()[I
    .locals 1

    monitor-enter p0

    .line 1115
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1115
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized lastPrecallF40533()[I
    .locals 1

    monitor-enter p0

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1105
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized lastRomSmoke536()[I
    .locals 1

    monitor-enter p0

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1122
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized lastSandboxGate534()[I
    .locals 1

    monitor-enter p0

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1110
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized lastTrace538()[I
    .locals 1

    monitor-enter p0

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 1128
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized observeAttachedEmc530(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI[B)[I
    .locals 22
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedBank"    # [B
    .param p3, "ordinal"    # I
    .param p4, "authenticatedRom536"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    monitor-enter p0

    .line 977
    :try_start_0
    iget-wide v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v5, :cond_11

    iget-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 978
    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    array-length v0, v2

    const/16 v5, 0x156c

    if-ne v0, v5, :cond_11

    if-eqz v4, :cond_11

    array-length v0, v4

    .line 981
    iget v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/high16 v5, 0x300000

    goto :goto_0

    :cond_0
    const/high16 v5, 0x400000

    :goto_0
    if-ne v0, v5, :cond_11

    if-ltz v3, :cond_11

    const/16 v0, 0x80

    if-ge v3, v0, :cond_11

    .line 984
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533:[I

    .line 985
    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I

    .line 986
    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    .line 987
    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    .line 988
    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I

    .line 989
    iput-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    .line 990
    iget-wide v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v7

    .line 991
    .local v7, "before":[I
    iget-object v8, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v9, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v7, v8, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 994
    iget-wide v8, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v8, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitSnapshot403(J)[I

    move-result-object v8

    .line 995
    .local v8, "sourceUnits531":[I
    const/4 v9, 0x7

    aget v10, v7, v9

    if-ge v3, v10, :cond_10

    iget-wide v10, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v10, v11, v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeBeginObservation530(J[BI)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v10, :cond_10

    .line 997
    const/4 v10, 0x0

    .line 999
    .local v10, "last":[I
    const/4 v11, 0x0

    .local v11, "q":I
    :goto_1
    const/4 v14, 0x2

    const/16 v15, 0x20

    const/16 v16, 0x1e

    if-ge v11, v15, :cond_8

    .line 1000
    move/from16 v17, v9

    move-object/from16 v18, v10

    .end local v10    # "last":[I
    .local v18, "last":[I
    :try_start_1
    iget-wide v9, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const/4 v5, 0x4

    invoke-static {v9, v10, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeAdvanceObservation530(JI)[I

    move-result-object v9

    .line 1001
    .local v9, "words":[I
    if-eqz v9, :cond_6

    array-length v10, v9

    if-ne v10, v15, :cond_6

    const/4 v10, 0x0

    aget v10, v9, v10

    move/from16 v19, v5

    const/16 v5, 0x212

    if-ne v10, v5, :cond_6

    aget v5, v9, v6

    if-ltz v5, :cond_6

    aget v5, v9, v6

    if-gt v5, v6, :cond_6

    aget v5, v9, v14

    if-ne v5, v3, :cond_6

    const/4 v5, 0x3

    aget v10, v9, v5

    if-ltz v10, :cond_6

    aget v5, v9, v5

    if-ge v5, v15, :cond_6

    aget v5, v9, v19

    if-ltz v5, :cond_6

    aget v5, v9, v19

    const/4 v10, 0x5

    if-ge v5, v10, :cond_6

    aget v5, v9, v10

    if-ltz v5, :cond_6

    aget v5, v9, v10

    const/16 v10, 0x1b

    if-ge v5, v10, :cond_6

    const/4 v5, 0x6

    aget v19, v9, v5

    if-ltz v19, :cond_6

    aget v5, v9, v5

    move/from16 v19, v10

    const/16 v10, 0xab6

    if-ge v5, v10, :cond_6

    const/16 v5, 0x8

    aget v10, v9, v5

    if-ltz v10, :cond_6

    aget v10, v9, v5

    if-gt v10, v0, :cond_6

    const/16 v10, 0x9

    aget v20, v9, v10

    if-ltz v20, :cond_6

    aget v10, v9, v10

    const/16 v0, 0xf

    if-gt v10, v0, :cond_6

    const/16 v10, 0xa

    aget v21, v9, v10

    if-ltz v21, :cond_6

    aget v10, v9, v10

    move/from16 v21, v0

    const/16 v0, 0x11

    if-gt v10, v0, :cond_6

    aget v0, v9, v21

    const/16 v21, 0x1a

    iget-wide v12, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    long-to-int v12, v12

    if-ne v0, v12, :cond_6

    const/16 v0, 0x10

    aget v12, v9, v0

    move v13, v11

    .end local v11    # "q":I
    .local v13, "q":I
    iget-wide v10, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    ushr-long/2addr v10, v15

    long-to-int v10, v10

    if-ne v12, v10, :cond_7

    aget v10, v9, v21

    if-nez v10, :cond_7

    aget v10, v9, v19

    if-nez v10, :cond_7

    const/16 v10, 0x1c

    aget v10, v9, v10

    if-nez v10, :cond_7

    const/16 v10, 0x1d

    aget v10, v9, v10

    if-ne v10, v14, :cond_7

    aget v10, v9, v16

    if-lt v10, v6, :cond_7

    aget v10, v9, v16

    if-gt v10, v15, :cond_7

    aget v10, v9, v6

    if-ne v10, v6, :cond_1

    aget v10, v9, v17

    if-eq v10, v0, :cond_1

    aget v0, v9, v17

    const/16 v10, 0x28

    if-ne v0, v10, :cond_7

    :cond_1
    aget v0, v9, v6

    if-nez v0, :cond_2

    aget v0, v9, v17

    const v11, 0xffff

    if-ne v0, v11, :cond_7

    .line 1013
    :cond_2
    if-eqz v18, :cond_4

    aget v0, v9, v16

    aget v11, v18, v16

    if-le v0, v11, :cond_3

    aget v0, v9, v5

    aget v5, v18, v5

    if-lt v0, v5, :cond_3

    const/16 v0, 0xd

    aget v5, v9, v0

    aget v0, v18, v0

    if-ne v5, v0, :cond_3

    const/16 v0, 0xe

    aget v5, v9, v0

    aget v0, v18, v0

    if-ne v5, v0, :cond_3

    goto :goto_2

    .line 1015
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Razor 530 EMC event identity changed"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local v18    # "last":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local v18    # "last":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :cond_4
    :goto_2
    move-object v5, v9

    .line 1017
    .end local v18    # "last":[I
    .local v5, "last":[I
    :try_start_2
    aget v0, v9, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v6, :cond_5

    goto :goto_3

    .line 999
    .end local v9    # "words":[I
    :cond_5
    add-int/lit8 v11, v13, 0x1

    move-object v10, v5

    move/from16 v9, v17

    const/16 v0, 0x80

    const/4 v5, 0x0

    .end local v13    # "q":I
    .restart local v11    # "q":I
    goto/16 :goto_1

    .line 1001
    .end local v5    # "last":[I
    .restart local v9    # "words":[I
    .restart local v18    # "last":[I
    :cond_6
    move v13, v11

    .line 1012
    .end local v11    # "q":I
    .restart local v13    # "q":I
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Razor 530 unsafe EMC observation result"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local v18    # "last":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1099
    .end local v9    # "words":[I
    .end local v13    # "q":I
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local v18    # "last":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :catchall_0
    move-exception v0

    move-object/from16 v10, v18

    goto/16 :goto_a

    .line 999
    .end local v18    # "last":[I
    .restart local v10    # "last":[I
    .restart local v11    # "q":I
    :cond_8
    move/from16 v17, v9

    move-object/from16 v18, v10

    move v13, v11

    const/16 v21, 0x1a

    .end local v10    # "last":[I
    .end local v11    # "q":I
    .restart local v13    # "q":I
    .restart local v18    # "last":[I
    move-object/from16 v5, v18

    .line 1019
    .end local v13    # "q":I
    .end local v18    # "last":[I
    .restart local v5    # "last":[I
    :goto_3
    if-eqz v5, :cond_f

    :try_start_4
    aget v0, v5, v6

    if-ne v0, v6, :cond_f

    const/16 v0, 0x1f

    aget v9, v5, v0

    if-ne v9, v14, :cond_f

    .line 1021
    iget-wide v11, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v11, v12}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v9

    .line 1022
    .local v9, "after":[I
    iget-object v11, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v12, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v9, v11, v12}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1023
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move/from16 v12, v21

    if-ge v11, v12, :cond_a

    :try_start_5
    aget v13, v7, v11

    aget v14, v9, v11

    if-ne v13, v14, :cond_9

    add-int/lit8 v11, v11, 0x1

    move/from16 v21, v12

    goto :goto_4

    .line 1024
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor 530 observer mutated retained world"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "last":[I
    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1099
    .end local v9    # "after":[I
    .end local v11    # "i":I
    .restart local v5    # "last":[I
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :catchall_1
    move-exception v0

    move-object v10, v5

    goto/16 :goto_a

    .line 1028
    .restart local v9    # "after":[I
    :cond_a
    :try_start_6
    invoke-static {v5, v8, v2}, Lcom/ahsim/demulation/RazorAttachedObservationEvidence531;->verify([I[I[B)V

    .line 1029
    iget-wide v11, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v11, v12}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitSnapshot403(J)[I

    move-result-object v11

    .line 1030
    .local v11, "afterUnits531":[I
    invoke-static {v8, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1032
    aget v12, v7, v16

    if-nez v12, :cond_d

    aget v12, v9, v16

    if-nez v12, :cond_d

    aget v12, v7, v0

    if-nez v12, :cond_d

    aget v0, v9, v0

    if-nez v0, :cond_d

    .line 1036
    aget v0, v5, v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v10, 0x28

    if-ne v0, v10, :cond_c

    .line 1037
    :try_start_7
    iget-wide v12, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativePrecallF40533(J)[I

    move-result-object v0

    move-object v10, v0

    .line 1038
    .local v10, "candidate":[I
    invoke-static {v10, v5}, Lcom/ahsim/demulation/RazorF40PrecallEvidence533;->verify([I[I)V

    .line 1039
    invoke-virtual {v10}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastPrecallF40533:[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1044
    :try_start_8
    iget-wide v12, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeF40SandboxGate534(J)[I

    move-result-object v0

    move-object v12, v0

    .line 1045
    .local v12, "gate":[I
    invoke-static {v12, v10}, Lcom/ahsim/demulation/RazorF40SandboxEvidence534;->verify([I[I)V

    .line 1046
    invoke-virtual {v12}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1048
    :try_start_9
    iget-wide v13, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v13, v14}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeM68kBackendStatus535(J)[I

    move-result-object v0

    move-object v13, v0

    .line 1049
    .local v13, "backend":[I
    invoke-static {v13, v12}, Lcom/ahsim/demulation/RazorM68kBackendEvidence535;->verify([I[I)V

    .line 1050
    invoke-virtual {v13}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1054
    :try_start_a
    iget-wide v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v14, v15, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeGenesisBootProbe541(J[B)[I

    move-result-object v0

    .line 1055
    .local v0, "reset":[I
    iget v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    invoke-static {v0, v12, v14}, Lcom/ahsim/demulation/RazorGenesisBootEvidence541;->verify([I[II)V

    .line 1056
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1059
    .end local v0    # "reset":[I
    goto :goto_5

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "unavailable541":Ljava/io/IOException;
    const/4 v14, 0x0

    :try_start_b
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    .line 1064
    .end local v0    # "unavailable541":Ljava/io/IOException;
    :goto_5
    iget v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-ne v0, v6, :cond_b

    .line 1066
    :try_start_c
    iget-wide v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v14, v15, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeM68kRomSmoke536(J[B)[I

    move-result-object v0

    move-object v6, v0

    .line 1067
    .local v6, "smoke":[I
    invoke-static {v6, v13}, Lcom/ahsim/demulation/RazorM68kRomSmokeEvidence536;->verify([I[I)V

    .line 1068
    invoke-virtual {v6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1072
    :try_start_d
    iget-wide v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v14, v15, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeM68kTrace538(J[B)[I

    move-result-object v0

    .line 1073
    .local v0, "trace":[I
    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorM68kTraceEvidence538;->verify([I[I)V

    .line 1074
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1077
    .end local v0    # "trace":[I
    goto :goto_6

    .line 1075
    :catch_1
    move-exception v0

    .line 1076
    .local v0, "unavailable538":Ljava/io/IOException;
    const/4 v14, 0x0

    :try_start_e
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1081
    .end local v0    # "unavailable538":Ljava/io/IOException;
    .end local v6    # "smoke":[I
    :goto_6
    goto :goto_7

    .line 1078
    :catch_2
    move-exception v0

    .line 1079
    .local v0, "unsupported536":Ljava/io/IOException;
    const/4 v14, 0x0

    :try_start_f
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    .line 1080
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1088
    .end local v0    # "unsupported536":Ljava/io/IOException;
    .end local v13    # "backend":[I
    :cond_b
    :goto_7
    goto :goto_8

    .line 1083
    :catch_3
    move-exception v0

    .line 1084
    .local v0, "unavailable535":Ljava/io/IOException;
    const/4 v14, 0x0

    :try_start_10
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    .line 1085
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    .line 1086
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    .line 1087
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1095
    .end local v0    # "unavailable535":Ljava/io/IOException;
    .end local v12    # "gate":[I
    :goto_8
    goto :goto_9

    .line 1089
    :catch_4
    move-exception v0

    .line 1090
    .local v0, "gateNotAvailable":Ljava/io/IOException;
    const/4 v14, 0x0

    :try_start_11
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastBoot541:[I

    .line 1091
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastSandboxGate534:[I

    .line 1092
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastM68kBackend535:[I

    .line 1093
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRomSmoke536:[I

    .line 1094
    iput-object v14, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastTrace538:[I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1097
    .end local v0    # "gateNotAvailable":Ljava/io/IOException;
    .end local v10    # "candidate":[I
    :cond_c
    :goto_9
    :try_start_12
    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1099
    :try_start_13
    iget-wide v12, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeResetObservation530(J)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1097
    monitor-exit p0

    return-object v0

    .line 1033
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_d
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor 530 tick gate changed"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "last":[I
    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0

    .line 1031
    .restart local v5    # "last":[I
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor 531 unit snapshot changed during observation"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "last":[I
    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0

    .line 1020
    .end local v9    # "after":[I
    .end local v11    # "afterUnits531":[I
    .restart local v5    # "last":[I
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Razor 530 observation never reached F16/F40"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "last":[I
    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1099
    .restart local v5    # "last":[I
    .restart local v7    # "before":[I
    .restart local v8    # "sourceUnits531":[I
    .restart local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .restart local p2    # "authenticatedBank":[B
    .restart local p3    # "ordinal":I
    .restart local p4    # "authenticatedRom536":[B
    :catchall_2
    move-exception v0

    move-object v10, v5

    .end local v5    # "last":[I
    .local v10, "last":[I
    :goto_a
    :try_start_15
    iget-wide v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeResetObservation530(J)Z

    .line 1100
    throw v0

    .line 996
    .end local v10    # "last":[I
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Razor 530 retained EMC observer refused"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    .end local v7    # "before":[I
    .end local v8    # "sourceUnits531":[I
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Razor 530 diagnostic source mismatch"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedBank":[B
    .end local p3    # "ordinal":I
    .end local p4    # "authenticatedRom536":[B
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    throw v0
.end method

.method public declared-synchronized observeFirstUnitIdentity(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)[I
    .locals 11
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 910
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 911
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 913
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 914
    .local v0, "before":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 915
    const/4 v1, 0x7

    aget v2, v0, v1

    if-eqz v2, :cond_5

    .line 916
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeFirstUnitIdentity(J)[I

    move-result-object v2

    .line 917
    .local v2, "v":[I
    iget-wide v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v3

    .line 918
    .local v3, "after":[I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 919
    if-eqz v2, :cond_4

    array-length v4, v2

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    aget v4, v2, v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    aget v5, v2, v4

    if-ltz v5, :cond_4

    aget v5, v2, v4

    const/16 v6, 0xff

    if-gt v5, v6, :cond_4

    const/4 v5, 0x2

    aget v6, v2, v5

    if-ltz v6, :cond_4

    aget v5, v2, v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_4

    const/4 v5, 0x3

    aget v7, v2, v5

    if-ltz v7, :cond_4

    aget v5, v2, v5

    const/16 v7, 0x20

    if-ge v5, v7, :cond_4

    aget v5, v2, v1

    const/16 v8, 0x40

    const/16 v9, 0x80

    if-eq v5, v7, :cond_0

    aget v5, v2, v1

    if-eq v5, v8, :cond_0

    aget v5, v2, v1

    if-ne v5, v9, :cond_4

    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_0
    const/16 v5, 0x8

    aget v7, v2, v5

    if-lt v7, v4, :cond_4

    aget v7, v2, v5

    if-gt v7, v9, :cond_4

    const/16 v7, 0x9

    aget v10, v2, v7

    if-lt v10, v4, :cond_4

    aget v4, v2, v7

    if-gt v4, v9, :cond_4

    const/4 v4, 0x4

    aget v10, v2, v4

    if-ltz v10, :cond_4

    aget v10, v2, v4

    aget v5, v2, v5

    if-ge v10, v5, :cond_4

    aget v5, v2, v6

    if-ltz v5, :cond_4

    aget v5, v2, v6

    aget v7, v2, v7

    if-ge v5, v7, :cond_4

    const/4 v5, 0x6

    aget v7, v2, v5

    if-ltz v7, :cond_4

    aget v7, v2, v5

    const/16 v10, 0x3fff

    if-gt v7, v10, :cond_4

    const/16 v7, 0xa

    aget v7, v2, v7

    aget v10, v0, v1

    if-ne v7, v10, :cond_4

    aget v5, v2, v5

    aget v6, v2, v6

    .line 925
    aget v1, v2, v1

    if-ne v1, v9, :cond_1

    move v8, v9

    :cond_1
    mul-int/2addr v6, v8

    aget v1, v2, v4

    add-int/2addr v6, v1

    if-ne v5, v6, :cond_4

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1a

    if-ge v1, v4, :cond_3

    aget v4, v0, v1

    aget v5, v3, v1

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor world changed during identity read"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-object v2

    .line 926
    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Unsafe native UNIT identity read"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 915
    .end local v2    # "v":[I
    .end local v3    # "after":[I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No initial UNIT for identity witness"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    .end local v0    # "before":[I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor unit identity provenance mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized observeInitialUnits403(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)[I
    .locals 17
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 937
    :try_start_0
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v2, :cond_9

    iget-object v0, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 938
    invoke-virtual/range {p1 .. p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 940
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 941
    .local v0, "before":[I
    iget-object v2, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v3, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 942
    iget-wide v2, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitSnapshot403(J)[I

    move-result-object v2

    .line 943
    .local v2, "rows":[I
    iget-wide v3, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v3

    .line 944
    .local v3, "after":[I
    iget-object v4, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 945
    if-eqz v2, :cond_8

    array-length v4, v2

    const/4 v5, 0x3

    if-lt v4, v5, :cond_8

    const/4 v4, 0x0

    aget v4, v2, v4

    const/16 v6, 0x193

    if-ne v4, v6, :cond_8

    const/4 v4, 0x2

    aget v4, v2, v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_8

    const/4 v4, 0x1

    aget v7, v2, v4

    const/4 v8, 0x7

    aget v9, v0, v8

    if-ne v7, v9, :cond_8

    aget v7, v2, v4

    if-ltz v7, :cond_8

    aget v7, v2, v4

    const/16 v9, 0x80

    if-gt v7, v9, :cond_8

    array-length v7, v2

    aget v10, v2, v4

    mul-int/2addr v10, v6

    add-int/2addr v10, v5

    if-ne v7, v10, :cond_8

    aget v6, v3, v8

    aget v7, v0, v8

    if-ne v6, v7, :cond_8

    .line 949
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x1a

    if-ge v6, v7, :cond_1

    aget v7, v0, v6

    aget v8, v3, v6

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 950
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "World changed during native UNIT snapshot"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 951
    .end local v6    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    const/4 v6, 0x5

    aget v7, v0, v6

    if-ne v7, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0x40

    .line 952
    .local v9, "side":I
    :goto_1
    const/4 v7, 0x6

    aget v8, v0, v7

    ushr-int/lit8 v8, v8, 0x10

    .local v8, "width":I
    aget v10, v0, v7

    const v11, 0xffff

    and-int/2addr v10, v11

    .line 953
    .local v10, "height":I
    if-lt v8, v4, :cond_7

    if-lt v10, v4, :cond_7

    if-gt v8, v9, :cond_7

    if-gt v10, v9, :cond_7

    .line 955
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    aget v13, v2, v4

    if-ge v12, v13, :cond_6

    .line 956
    mul-int/lit8 v13, v12, 0xc

    add-int/2addr v13, v5

    .line 957
    .local v13, "p":I
    aget v14, v2, v13

    if-ne v14, v12, :cond_5

    add-int/lit8 v14, v13, 0x1

    aget v14, v2, v14

    if-ltz v14, :cond_5

    add-int/lit8 v14, v13, 0x1

    aget v14, v2, v14

    const/16 v15, 0xff

    if-gt v14, v15, :cond_5

    add-int/lit8 v14, v13, 0x2

    aget v14, v2, v14

    if-ltz v14, :cond_5

    add-int/lit8 v14, v13, 0x2

    aget v14, v2, v14

    if-ge v14, v6, :cond_5

    add-int/lit8 v14, v13, 0x3

    aget v14, v2, v14

    if-ltz v14, :cond_5

    add-int/lit8 v14, v13, 0x3

    aget v14, v2, v14

    const/16 v15, 0x20

    if-ge v14, v15, :cond_5

    add-int/lit8 v14, v13, 0x4

    aget v14, v2, v14

    if-ltz v14, :cond_5

    add-int/lit8 v14, v13, 0x4

    aget v14, v2, v14

    if-ge v14, v8, :cond_5

    add-int/lit8 v14, v13, 0x5

    aget v14, v2, v14

    if-ltz v14, :cond_5

    add-int/lit8 v14, v13, 0x5

    aget v14, v2, v14

    if-ge v14, v10, :cond_5

    add-int/lit8 v14, v13, 0x6

    aget v14, v2, v14

    add-int/lit8 v15, v13, 0x2

    aget v15, v2, v15

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v13, 0x7

    aget v14, v2, v14

    add-int/lit8 v15, v13, 0x3

    aget v15, v2, v15

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v13, 0x9

    aget v14, v2, v14

    add-int/lit8 v15, v13, 0x5

    aget v15, v2, v15

    mul-int/2addr v15, v9

    add-int/lit8 v16, v13, 0x4

    aget v16, v2, v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_5

    .line 965
    const/4 v14, 0x0

    .local v14, "n":I
    :goto_3
    if-ge v14, v7, :cond_4

    add-int/lit8 v15, v13, 0x6

    add-int/2addr v15, v14

    aget v15, v2, v15

    if-ltz v15, :cond_3

    add-int/lit8 v15, v13, 0x6

    add-int/2addr v15, v14

    aget v15, v2, v15

    if-gt v15, v11, :cond_3

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 966
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "UNIT source word outside unsigned 16-bit range"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 955
    .end local v13    # "p":I
    .end local v14    # "n":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 964
    .restart local v13    # "p":I
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid initial UNIT record in native snapshot"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 968
    .end local v12    # "i":I
    .end local v13    # "p":I
    :cond_6
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 954
    :cond_7
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected Razor map dimensions"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 948
    .end local v8    # "width":I
    .end local v9    # "side":I
    .end local v10    # "height":I
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Malformed or unavailable native UNIT snapshot"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 939
    .end local v0    # "before":[I
    .end local v2    # "rows":[I
    .end local v3    # "after":[I
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor UNIT snapshot provenance mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized observeMapUnitCells411(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[I)[B
    .locals 25
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "initial403"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1316
    :try_start_0
    iget-wide v3, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v3

    iget v4, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v3, v4, :cond_13

    iget-object v3, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1317
    invoke-virtual {v0}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_13

    const/4 v3, 0x0

    aget v5, v2, v3

    const/16 v6, 0x193

    if-ne v5, v6, :cond_13

    .line 1320
    iget-wide v5, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v5

    .line 1321
    .local v5, "before":[I
    iget-object v6, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v5, v6, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1322
    iget-wide v6, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeMapCells411(J)[B

    move-result-object v6

    .line 1323
    .local v6, "snapshot":[B
    iget-wide v7, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v7

    .line 1324
    .local v7, "after":[I
    iget-object v8, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v9, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v7, v8, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1325
    if-eqz v6, :cond_12

    array-length v8, v6

    const/16 v9, 0x2d

    if-lt v8, v9, :cond_12

    aget-byte v8, v6, v3

    const/16 v9, 0x52

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    aget-byte v9, v6, v8

    const/16 v10, 0x34

    if-ne v9, v10, :cond_12

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_12

    aget-byte v9, v6, v4

    if-ne v9, v10, :cond_12

    .line 1328
    const/4 v9, 0x4

    invoke-static {v6, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v9

    const/16 v10, 0x19b

    if-ne v9, v10, :cond_12

    const/16 v9, 0x26

    invoke-static {v6, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v9

    if-nez v9, :cond_12

    .line 1329
    const/16 v9, 0xe

    invoke-static {v6, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v9

    const/4 v10, 0x7

    aget v11, v5, v10

    if-ne v9, v11, :cond_12

    const/16 v9, 0x10

    invoke-static {v6, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v11

    const/16 v12, 0x8

    aget v13, v5, v12

    if-ne v11, v13, :cond_12

    aget v11, v2, v8

    aget v13, v5, v10

    if-ne v11, v13, :cond_12

    .line 1332
    const/4 v11, 0x6

    invoke-static {v6, v11}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v13

    .local v13, "side":I
    invoke-static {v6, v12}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v14

    .local v14, "width":I
    const/16 v15, 0xa

    invoke-static {v6, v15}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v15

    .line 1333
    .local v15, "height":I
    const/16 v3, 0xc

    invoke-static {v6, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v3

    .line 1334
    .local v3, "stride":I
    move/from16 v16, v4

    mul-int v4, v13, v13

    .line 1335
    .local v4, "cells":I
    move/from16 v17, v9

    const/16 v9, 0x20

    move/from16 v18, v10

    const/16 v10, 0x40

    move/from16 v19, v11

    const/16 v11, 0x80

    if-eq v13, v9, :cond_1

    if-eq v13, v10, :cond_1

    if-ne v13, v11, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v23, v3

    goto/16 :goto_5

    .line 1336
    :cond_1
    :goto_0
    if-ne v13, v11, :cond_2

    move v10, v11

    :cond_2
    if-ne v3, v10, :cond_11

    if-lt v14, v8, :cond_11

    if-lt v15, v8, :cond_11

    if-gt v14, v13, :cond_11

    if-gt v15, v13, :cond_11

    .line 1338
    const/16 v9, 0x12

    invoke-static {v6, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u32([BI)J

    move-result-wide v9

    move v11, v8

    move-wide/from16 v20, v9

    int-to-long v8, v4

    cmp-long v8, v20, v8

    if-nez v8, :cond_10

    array-length v8, v6

    mul-int/lit8 v9, v4, 0x5

    add-int/lit8 v9, v9, 0x28

    if-ne v8, v9, :cond_10

    const/4 v8, 0x5

    aget v8, v5, v8

    if-ne v13, v8, :cond_10

    aget v8, v5, v19

    ushr-int/lit8 v8, v8, 0x10

    if-ne v14, v8, :cond_10

    aget v8, v5, v19

    const v9, 0xffff

    and-int/2addr v8, v9

    if-ne v15, v8, :cond_10

    .line 1342
    iget v8, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->house:I

    iget v9, v1, Lcom/ahsim/demulation/RazorNativeWorldSession;->mission:I

    invoke-virtual {v0, v8, v9}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->bootProbeMission(II)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$Mission;->mapBytes()[B

    move-result-object v8

    .line 1343
    .local v8, "original":[B
    array-length v9, v8

    if-ne v9, v4, :cond_f

    .line 1344
    const/4 v9, 0x0

    .local v9, "uSum":I
    const/4 v10, 0x0

    .line 1345
    .local v10, "bSum":I
    move/from16 v17, v11

    new-array v11, v4, [I

    .line 1346
    .local v11, "occupancy":[I
    const/16 v19, 0x0

    move/from16 v24, v19

    move/from16 v19, v12

    move/from16 v12, v24

    .local v12, "i":I
    :goto_1
    if-ge v12, v4, :cond_6

    .line 1347
    mul-int/lit8 v20, v12, 0x5

    add-int/lit8 v20, v20, 0x28

    .local v20, "p":I
    add-int/lit8 v0, v20, 0x1

    invoke-static {v6, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v0

    .local v0, "uc":I
    move/from16 v21, v0

    .end local v0    # "uc":I
    .local v21, "uc":I
    add-int/lit8 v0, v20, 0x3

    invoke-static {v6, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v0

    .line 1348
    .local v0, "bc":I
    move/from16 v22, v0

    .end local v0    # "bc":I
    .local v22, "bc":I
    aget-byte v0, v6, v20

    move/from16 v23, v3

    .end local v3    # "stride":I
    .local v23, "stride":I
    aget-byte v3, v8, v12

    if-ne v0, v3, :cond_5

    rem-int v0, v12, v13

    if-ge v0, v14, :cond_3

    div-int v0, v12, v13

    if-lt v0, v15, :cond_4

    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_3
    if-nez v21, :cond_5

    if-nez v22, :cond_5

    .line 1351
    :cond_4
    add-int v9, v9, v21

    add-int v10, v10, v22

    aput v21, v11, v12

    .line 1346
    .end local v20    # "p":I
    .end local v21    # "uc":I
    .end local v22    # "bc":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v3, v23

    goto :goto_1

    .line 1350
    .restart local v20    # "p":I
    .restart local v21    # "uc":I
    .restart local v22    # "bc":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Razor host tile/source map mismatch"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    .end local v20    # "p":I
    .end local v21    # "uc":I
    .end local v22    # "bc":I
    .end local v23    # "stride":I
    .restart local v3    # "stride":I
    :cond_6
    move/from16 v23, v3

    .line 1353
    .end local v3    # "stride":I
    .end local v12    # "i":I
    .restart local v23    # "stride":I
    aget v0, v5, v18

    if-ne v9, v0, :cond_e

    aget v0, v5, v19

    if-ne v10, v0, :cond_e

    .line 1355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    aget v3, v2, v17

    if-ge v0, v3, :cond_9

    .line 1356
    mul-int/lit8 v3, v0, 0xc

    add-int/lit8 v3, v3, 0x3

    .line 1357
    .local v3, "p":I
    add-int/lit8 v12, v3, 0xb

    move/from16 v18, v3

    .end local v3    # "p":I
    .local v18, "p":I
    array-length v3, v2

    if-ge v12, v3, :cond_8

    aget v3, v2, v18

    if-ne v3, v0, :cond_8

    .line 1359
    add-int/lit8 v3, v18, 0x4

    aget v3, v2, v3

    .local v3, "x":I
    add-int/lit8 v12, v18, 0x5

    aget v12, v2, v12

    .line 1360
    .local v12, "y":I
    if-ge v3, v14, :cond_7

    if-ge v12, v15, :cond_7

    mul-int v19, v12, v13

    add-int v19, v19, v3

    aget v20, v11, v19

    add-int/lit8 v20, v20, -0x1

    aput v20, v11, v19

    if-ltz v20, :cond_7

    .line 1355
    .end local v3    # "x":I
    .end local v12    # "y":I
    .end local v18    # "p":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1361
    .restart local v3    # "x":I
    .restart local v12    # "y":I
    .restart local v18    # "p":I
    :cond_7
    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "UNIT coordinate missing from map occupancy"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    .end local v3    # "x":I
    .end local v12    # "y":I
    .end local v16    # "i":I
    .restart local v0    # "i":I
    :cond_8
    move/from16 v16, v0

    .line 1358
    .end local v0    # "i":I
    .restart local v16    # "i":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid 403 unit row"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    .end local v16    # "i":I
    .end local v18    # "p":I
    .restart local v0    # "i":I
    :cond_9
    move/from16 v16, v0

    .line 1363
    .end local v0    # "i":I
    array-length v0, v11

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_b

    aget v2, v11, v3

    .local v2, "remaining":I
    if-nez v2, :cond_a

    .end local v2    # "remaining":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1364
    .restart local v2    # "remaining":I
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unmatched native map UNIT occupancy"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    .end local v2    # "remaining":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_d

    aget v2, v5, v0

    aget v3, v7, v0

    if-ne v2, v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1366
    :cond_c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Native world changed during map snapshot"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1367
    .end local v0    # "i":I
    :cond_d
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1354
    :cond_e
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor host occupancy totals disagree"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    .end local v9    # "uSum":I
    .end local v10    # "bSum":I
    .end local v11    # "occupancy":[I
    .end local v23    # "stride":I
    .local v3, "stride":I
    :cond_f
    move/from16 v23, v3

    .end local v3    # "stride":I
    .restart local v23    # "stride":I
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected Razor source map size"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    .end local v8    # "original":[B
    .end local v23    # "stride":I
    .restart local v3    # "stride":I
    :cond_10
    move/from16 v23, v3

    .end local v3    # "stride":I
    .restart local v23    # "stride":I
    goto :goto_5

    .line 1336
    .end local v23    # "stride":I
    .restart local v3    # "stride":I
    :cond_11
    move/from16 v23, v3

    .line 1341
    .end local v3    # "stride":I
    .restart local v23    # "stride":I
    :goto_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor map dimensions do not match native world"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    .end local v4    # "cells":I
    .end local v13    # "side":I
    .end local v14    # "width":I
    .end local v15    # "height":I
    .end local v23    # "stride":I
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid read-only map/UNIT snapshot"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    .end local v5    # "before":[I
    .end local v6    # "snapshot":[B
    .end local v7    # "after":[I
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Razor map snapshot source mismatch"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "initial403":[I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized observePersistentF40Prestate419(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BI)[I
    .locals 12
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedUnitBank"    # [B
    .param p3, "ordinal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1190
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1191
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    array-length v0, p2

    const/16 v1, 0x156c

    if-ne v0, v1, :cond_4

    if-ltz p3, :cond_4

    const/16 v0, 0x80

    if-ge p3, v0, :cond_4

    .line 1195
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 1196
    .local v0, "before":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1197
    const/4 v1, 0x7

    aget v2, v0, v1

    if-ge p3, v2, :cond_3

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativePinF40Session419(J[BI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1199
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v2, v3, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeReadF40Session419(J[B)[I

    move-result-object v2

    .line 1200
    .local v2, "first":[I
    iget-wide v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4, p2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeReadF40Session419(J[B)[I

    move-result-object v3

    .line 1201
    .local v3, "second":[I
    iget-wide v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v4

    .line 1202
    .local v4, "after":[I
    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v6, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1203
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    array-length v5, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    array-length v5, v3

    if-ne v5, v6, :cond_2

    .line 1204
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget v5, v2, v5

    const/16 v7, 0x1a3

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    aget v7, v2, v5

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const/4 v9, 0x2

    aget v10, v2, v9

    int-to-long v10, v10

    shl-long/2addr v10, v6

    or-long/2addr v7, v10

    iget-wide v10, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    const/4 v7, 0x3

    aget v7, v2, v7

    if-lez v7, :cond_2

    const/4 v7, 0x6

    aget v7, v2, v7

    if-ne v7, p3, :cond_2

    aget v7, v2, v1

    if-ltz v7, :cond_2

    aget v1, v2, v1

    if-ge v1, v6, :cond_2

    const/16 v1, 0x8

    aget v6, v2, v1

    if-ltz v6, :cond_2

    aget v1, v2, v1

    const/16 v6, 0x1b

    if-ge v1, v6, :cond_2

    const/16 v1, 0x9

    aget v6, v2, v1

    if-ltz v6, :cond_2

    aget v1, v2, v1

    const/16 v6, 0xab6

    if-ge v1, v6, :cond_2

    const/16 v1, 0xa

    aget v7, v2, v1

    if-ltz v7, :cond_2

    aget v1, v2, v1

    if-ge v1, v6, :cond_2

    const/16 v1, 0xc

    aget v6, v2, v1

    if-lt v6, v5, :cond_2

    aget v1, v2, v1

    if-gt v1, v9, :cond_2

    const/16 v1, 0xd

    aget v5, v2, v1

    if-ltz v5, :cond_2

    aget v1, v2, v1

    const/16 v5, 0x18

    if-gt v1, v5, :cond_2

    const/16 v1, 0xe

    aget v1, v2, v1

    const/16 v5, 0x28

    if-ne v1, v5, :cond_2

    const/16 v1, 0xf

    aget v5, v2, v1

    if-ltz v5, :cond_2

    aget v5, v2, v1

    if-gt v5, v1, :cond_2

    const/16 v5, 0x10

    aget v6, v2, v5

    if-ltz v6, :cond_2

    aget v6, v2, v5

    if-gt v6, v1, :cond_2

    aget v6, v2, v1

    aget v5, v2, v5

    sub-int/2addr v1, v5

    if-ne v6, v1, :cond_2

    const/16 v1, 0x11

    aget v5, v2, v1

    if-ltz v5, :cond_2

    aget v5, v2, v1

    if-gt v5, v1, :cond_2

    const/16 v1, 0x1c

    aget v1, v2, v1

    if-nez v1, :cond_2

    const/16 v1, 0x1d

    aget v1, v2, v1

    if-nez v1, :cond_2

    const/16 v1, 0x1e

    aget v1, v2, v1

    if-nez v1, :cond_2

    const/16 v1, 0x1f

    aget v1, v2, v1

    if-nez v1, :cond_2

    .line 1215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x1a

    if-ge v1, v5, :cond_1

    aget v5, v0, v1

    aget v6, v4, v1

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Razor 419 modified the host snapshot"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1217
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1214
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Razor 419 persistent shadow consistency failed"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1198
    .end local v2    # "first":[I
    .end local v3    # "second":[I
    .end local v4    # "after":[I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pre-F40 native shadow could not be pinned"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1194
    .end local v0    # "before":[I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 419 shadow provenance mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedUnitBank":[B
    .end local p3    # "ordinal":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized observeShadowContext405(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[BLcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;[I)[I
    .locals 10
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedUnitBank"    # [B
    .param p3, "slice"    # Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .param p4, "initial403"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1143
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1144
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    array-length v0, p2

    const/16 v1, 0x156c

    if-ne v0, v1, :cond_a

    if-eqz p3, :cond_a

    if-eqz p4, :cond_a

    array-length v0, p4

    const/16 v1, 0xf

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    aget v2, p4, v0

    const/16 v3, 0x193

    if-ne v2, v3, :cond_a

    const/4 v2, 0x1

    aget v3, p4, v2

    if-lt v3, v2, :cond_a

    .line 1149
    iget-wide v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v3, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v3

    .line 1150
    .local v3, "before":[I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v3, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1151
    iget-wide v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v4, v5, p2, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeShadowContext405(J[BI)[I

    move-result-object v4

    .line 1152
    .local v4, "state":[I
    iget-wide v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v5

    .line 1153
    .local v5, "after":[I
    iget-object v6, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v7, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v5, v6, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1154
    if-eqz v4, :cond_9

    array-length v6, v4

    const/16 v7, 0x25

    if-ne v6, v7, :cond_9

    aget v6, v4, v0

    const/16 v7, 0x195

    if-ne v6, v7, :cond_9

    aget v6, v4, v2

    if-nez v6, :cond_9

    const/16 v6, 0x10

    aget v7, v4, v6

    if-ltz v7, :cond_9

    aget v7, v4, v6

    const/16 v8, 0x18

    if-gt v7, v8, :cond_9

    const/16 v7, 0x11

    aget v7, v4, v7

    if-ne v7, v2, :cond_9

    const/16 v2, 0x12

    aget v2, v4, v2

    iget v7, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->pendingNativeFunction:I

    if-ne v2, v7, :cond_9

    const/16 v2, 0x13

    aget v2, v4, v2

    iget v7, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->vmError:I

    if-ne v2, v7, :cond_9

    const/16 v2, 0xd

    aget v2, v4, v2

    iget v7, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->scriptEntry:I

    if-ne v2, v7, :cond_9

    const/16 v2, 0xe

    aget v2, v4, v2

    iget v7, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->startPc:I

    if-ne v2, v7, :cond_9

    aget v1, v4, v1

    iget v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->stopPc:I

    if-ne v1, v2, :cond_9

    aget v1, v4, v6

    iget v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->executedInstructions:I

    if-ne v1, v2, :cond_9

    const/16 v1, 0x14

    aget v1, v4, v1

    iget-object v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackDepth:I

    if-ne v1, v2, :cond_9

    const/16 v1, 0x15

    aget v1, v4, v1

    iget-object v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackPointer:I

    if-ne v1, v2, :cond_9

    const/16 v1, 0x16

    aget v1, v4, v1

    iget-object v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcFramePointer:I

    if-ne v1, v2, :cond_9

    const/16 v1, 0x17

    aget v1, v4, v1

    iget-object v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcReturnValue:I

    if-ne v1, v2, :cond_9

    const/16 v1, 0x22

    aget v1, v4, v1

    if-nez v1, :cond_9

    const/16 v1, 0x23

    aget v1, v4, v1

    if-nez v1, :cond_9

    const/16 v1, 0x24

    aget v1, v4, v1

    if-nez v1, :cond_9

    const/4 v1, 0x2

    aget v1, v4, v1

    const/4 v2, 0x4

    aget v6, p4, v2

    if-ne v1, v6, :cond_9

    const/4 v1, 0x3

    aget v1, v4, v1

    const/4 v6, 0x5

    aget v7, p4, v6

    if-ne v1, v7, :cond_9

    aget v1, v4, v2

    const/4 v7, 0x6

    aget v8, p4, v7

    if-ne v1, v8, :cond_9

    aget v1, v4, v6

    const/4 v8, 0x7

    aget v8, p4, v8

    if-ne v1, v8, :cond_9

    aget v1, v4, v7

    const/16 v8, 0x8

    aget v8, p4, v8

    if-ne v1, v8, :cond_9

    .line 1168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    add-int/lit8 v8, v1, 0x7

    aget v8, v4, v8

    add-int/lit8 v9, v1, 0x9

    aget v9, p4, v9

    if-ne v8, v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "EMC shadow UNIT source words changed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1170
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    add-int/lit8 v7, v1, 0x18

    aget v7, v4, v7

    .line 1171
    iget-object v8, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget-object v8, v8, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 1172
    iget-object v8, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget-object v8, v8, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    aget v8, v8, v1

    goto :goto_2

    :cond_2
    move v8, v0

    :goto_2
    if-ne v7, v8, :cond_3

    .line 1170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1173
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "EMC shadow stack changed between probes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v6, :cond_6

    add-int/lit8 v1, v0, 0x1c

    aget v1, v4, v1

    iget-object v2, p3, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    iget-object v2, v2, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcVariables:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1175
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EMC shadow variables changed between probes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1176
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_8

    aget v1, v3, v0

    aget v2, v5, v0

    if-ne v1, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1177
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor world mutated during shadow probe"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1167
    :cond_9
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Inconsistent isolated EMC shadow context"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    .end local v3    # "before":[I
    .end local v4    # "state":[I
    .end local v5    # "after":[I
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor shadow source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedUnitBank":[B
    .end local p3    # "slice":Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .end local p4    # "initial403":[I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized observeUnitFlagPrestate416(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[I[B)[I
    .locals 12
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "source403"    # [I
    .param p3, "map411"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1374
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 1375
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x0

    aget v2, p2, v0

    const/16 v3, 0x193

    if-ne v2, v3, :cond_7

    const/4 v2, 0x2

    aget v3, p2, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_7

    if-eqz p3, :cond_7

    array-length v3, p3

    const/16 v5, 0x2d

    if-lt v3, v5, :cond_7

    aget-byte v3, p3, v0

    const/16 v5, 0x52

    if-ne v3, v5, :cond_7

    const/4 v3, 0x1

    aget-byte v5, p3, v3

    const/16 v6, 0x34

    if-ne v5, v6, :cond_7

    aget-byte v5, p3, v2

    const/16 v6, 0x31

    if-ne v5, v6, :cond_7

    aget-byte v5, p3, v1

    if-ne v5, v6, :cond_7

    .line 1382
    iget-wide v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v5

    .line 1383
    .local v5, "before":[I
    iget-object v6, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v7, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v5, v6, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1384
    iget-wide v6, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v6, v7}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeUnitFlagPrestate416(J)[I

    move-result-object v6

    .line 1385
    .local v6, "snapshot":[I
    iget-wide v7, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v7

    .line 1386
    .local v7, "after":[I
    iget-object v8, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v9, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v7, v8, v9}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 1387
    if-eqz v6, :cond_6

    array-length v8, v6

    const/4 v9, 0x6

    if-lt v8, v9, :cond_6

    aget v0, v6, v0

    const/16 v8, 0x1a0

    if-ne v0, v8, :cond_6

    aget v0, v6, v2

    if-ne v0, v4, :cond_6

    aget v0, v6, v1

    if-ne v0, v3, :cond_6

    const/4 v0, 0x4

    aget v2, v6, v0

    if-nez v2, :cond_6

    const/4 v2, 0x5

    aget v2, v6, v2

    if-nez v2, :cond_6

    aget v2, v6, v3

    aget v8, p2, v3

    if-ne v2, v8, :cond_6

    aget v2, v6, v3

    const/4 v8, 0x7

    aget v8, v5, v8

    if-ne v2, v8, :cond_6

    aget v2, v6, v3

    if-ltz v2, :cond_6

    aget v2, v6, v3

    const/16 v8, 0x80

    if-gt v2, v8, :cond_6

    array-length v2, v6

    aget v8, v6, v3

    mul-int/2addr v8, v4

    add-int/2addr v8, v9

    if-ne v2, v8, :cond_6

    array-length v2, p2

    aget v8, v6, v3

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    if-ne v2, v8, :cond_6

    .line 1394
    invoke-static {p3, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v0

    const/16 v2, 0x19b

    if-ne v0, v2, :cond_6

    const/16 v0, 0xe

    invoke-static {p3, v0}, Lcom/ahsim/demulation/RazorNativeWorldSession;->u16([BI)I

    move-result v0

    aget v2, v6, v3

    if-ne v0, v2, :cond_6

    .line 1396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    aget v2, v6, v3

    if-ge v0, v2, :cond_3

    .line 1397
    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v2, v9

    .local v2, "p":I
    mul-int/lit8 v4, v0, 0xc

    add-int/2addr v4, v1

    .line 1398
    .local v4, "q":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    if-ge v8, v9, :cond_1

    add-int v10, v2, v8

    aget v10, v6, v10

    add-int v11, v4, v8

    aget v11, p2, v11

    if-ne v10, v11, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1399
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Razor 416 UNIT identity disagrees with 403"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1400
    .end local v8    # "k":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    add-int/lit8 v8, v2, 0x6

    aget v8, v6, v8

    add-int/lit8 v10, v4, 0x9

    aget v10, p2, v10

    if-ne v8, v10, :cond_2

    add-int/lit8 v8, v2, 0x7

    aget v8, v6, v8

    if-nez v8, :cond_2

    add-int/lit8 v8, v2, 0x8

    aget v8, v6, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_2

    add-int/lit8 v8, v2, 0x9

    aget v8, v6, v8

    if-ne v8, v10, :cond_2

    add-int/lit8 v8, v2, 0xa

    aget v8, v6, v8

    if-ne v8, v10, :cond_2

    add-int/lit8 v8, v2, 0xb

    aget v8, v6, v8

    if-nez v8, :cond_2

    .line 1396
    .end local v2    # "p":I
    .end local v4    # "q":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    .restart local v2    # "p":I
    .restart local v4    # "q":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unverified 68K object flag ABI exposed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    .end local v0    # "i":I
    .end local v2    # "p":I
    .end local v4    # "q":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_5

    aget v1, v5, v0

    aget v2, v7, v0

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1407
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor native world changed during 416 read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1408
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v6}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1395
    :cond_6
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported or malformed Razor UNIT ABI"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    .end local v5    # "before":[I
    .end local v6    # "snapshot":[I
    .end local v7    # "after":[I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 416 provenance mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "source403":[I
    .end local p3    # "map411":[B
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized poll(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)Lcom/ahsim/demulation/RazorNativeWorldSession$Status;
    .locals 5
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 875
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 876
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 879
    .local v0, "current":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 880
    const/16 v1, 0x1b

    aget v2, v0, v1

    iget v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRead:I

    if-le v2, v3, :cond_0

    .line 881
    aget v1, v0, v1

    iput v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->lastRead:I

    .line 882
    new-instance v1, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;

    iget v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    iget-object v3, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/ahsim/demulation/RazorNativeWorldSession$Status;-><init>(ILjava/lang/String;[ILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 880
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor status not monotonic"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 877
    .end local v0    # "current":[I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor session closed or ROM provenance changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized probeFirstUnit(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;[B)Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
    .locals 7
    .param p1, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p2, "authenticatedUnitBank"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 890
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romVariant()I

    move-result v0

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->sourceSha256:Ljava/lang/String;

    .line 891
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->romSourceSha256()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p2

    const/16 v1, 0x156c

    if-ne v0, v1, :cond_3

    .line 894
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v0

    .line 895
    .local v0, "before":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 896
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 897
    iget-wide v1, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeProbeFirstUnit(J[BI)[I

    move-result-object v1

    .line 898
    .local v1, "result":[I
    iget-wide v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeRead(J)[I

    move-result-object v2

    .line 899
    .local v2, "after":[I
    iget-object v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->proof:Lcom/ahsim/demulation/RazorMissionBootProbe$Report;

    iget-object v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->baseline:[I

    invoke-static {v2, v4, v5}, Lcom/ahsim/demulation/RazorNativeWorldSession;->validate([ILcom/ahsim/demulation/RazorMissionBootProbe$Report;[I)V

    .line 900
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_1

    aget v5, v0, v4

    aget v6, v2, v4

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 901
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Razor world changed during EMC probe"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 902
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeWorldSession;
    :cond_1
    iget-wide v4, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->token:J

    invoke-static {v4, v5, p2, v3}, Lcom/ahsim/demulation/RazorNativeWorldSession;->nativeProbeFunctionBoundary(J[BI)[I

    move-result-object v3

    .line 903
    .local v3, "boundary":[I
    new-instance v4, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;

    iget v5, p0, Lcom/ahsim/demulation/RazorNativeWorldSession;->variant:I

    const/4 v6, 0x0

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;-><init>([I[IILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 896
    .end local v1    # "result":[I
    .end local v2    # "after":[I
    .end local v3    # "boundary":[I
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Selected Razor mission has no starting UNIT"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 893
    .end local v0    # "before":[I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor EMC probe source mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    .end local p1    # "audit":Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .end local p2    # "authenticatedUnitBank":[B
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
