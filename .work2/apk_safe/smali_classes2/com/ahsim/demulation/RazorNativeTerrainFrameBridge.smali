.class public final Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
.super Ljava/lang/Object;
.source "RazorNativeTerrainFrameBridge.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    }
.end annotation


# static fields
.field private static final HEADER:I = 0xd

.field private static final MAGIC:I = 0x525a4c46


# instance fields
.field public final gameplayReady:Z

.field private handle:J

.field public final house:I

.field private lastSequence:I

.field public final mission:I

.field public final romVariant:I

.field public final scenarioHeight:I

.field public final scenarioWidth:I

.field public final sourceSha256:Ljava/lang/String;

.field public final worldSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "dunehost"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V
    .locals 13
    .param p1, "map"    # Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->gameplayReady:Z

    .line 30
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->romVariant:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->romVariant:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->house:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->house:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->mission:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->mission:I

    .line 31
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->worldSide:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->worldSide:I

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioWidth:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioWidth:I

    .line 32
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->scenarioHeight:I

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioHeight:I

    iget-object v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->sourceSha256:Ljava/lang/String;

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->sourceSha256:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedWidth:I

    iget v1, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenCells:I

    iget v1, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedWidth:I

    iget v2, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedHeight:I

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    .line 36
    iget v2, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->romVariant:I

    iget v3, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->house:I

    iget v4, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->mission:I

    iget v5, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->worldSide:I

    iget v6, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioWidth:I

    iget v7, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioHeight:I

    iget v8, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedX:I

    iget v9, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedY:I

    iget v10, p1, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->loadedWidth:I

    .line 38
    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->packedWordsCopy()[I

    move-result-object v11

    invoke-virtual {p1}, Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;->writtenMaskCopy()[B

    move-result-object v12

    .line 36
    invoke-static/range {v2 .. v12}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->nativeOpen(IIIIIIIII[I[B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    .line 39
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native world rejected terrain loader snapshot"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native frame source is not an original loader rectangle"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static capture(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;II)Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
    .locals 2
    .param p0, "audit"    # Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;
    .param p1, "house"    # I
    .param p2, "mission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;

    invoke-virtual {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->runtimeTerrainSnapshot(II)Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;-><init>(Lcom/ahsim/demulation/RazorTerrainRuntimeSnapshot;)V

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor native frame requires offline verified ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeOpen(IIIIIIIII[I[B)J
.end method

.method private static native nativeRead(JIIII)[I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    .line 83
    .local v0, "old":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    .line 84
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->nativeClose(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    .end local v0    # "old":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized read(IIII)Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 61
    const/4 v0, 0x1

    if-lt p3, v0, :cond_5

    if-lt p4, v0, :cond_5

    const/16 v1, 0x20

    if-gt p3, v1, :cond_5

    if-gt p4, v1, :cond_5

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioWidth:I

    if-gt p3, v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioHeight:I

    if-gt p4, v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioWidth:I

    sub-int/2addr v1, p3

    if-gt p1, v1, :cond_5

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioHeight:I

    sub-int/2addr v1, p4

    if-gt p2, v1, :cond_5

    .line 65
    iget-wide v2, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->handle:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .local v4, "x":I
    .local v5, "y":I
    .local v6, "w":I
    .local v7, "h":I
    invoke-static/range {v2 .. v7}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->nativeRead(JIIII)[I

    move-result-object p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    .line 66
    .end local v6    # "w":I
    .end local v7    # "h":I
    .local v2, "x":I
    .local v3, "y":I
    .local v4, "w":I
    .local v5, "h":I
    .local p1, "result":[I
    if-eqz p1, :cond_4

    .line 67
    array-length p2, p1

    mul-int p3, v4, v5

    const/16 p4, 0xd

    add-int/2addr p3, p4

    if-ne p2, p3, :cond_3

    const/4 p2, 0x0

    aget p3, p1, p2

    const v1, 0x525a4c46

    if-ne p3, v1, :cond_3

    aget p3, p1, v0

    if-ne p3, v0, :cond_3

    const/4 p3, 0x2

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->romVariant:I

    if-ne p3, v1, :cond_3

    const/4 p3, 0x3

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->house:I

    if-ne p3, v1, :cond_3

    const/4 p3, 0x4

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->mission:I

    if-ne p3, v1, :cond_3

    const/4 p3, 0x5

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->worldSide:I

    if-ne p3, v1, :cond_3

    const/4 p3, 0x6

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioWidth:I

    if-ne p3, v1, :cond_3

    const/4 p3, 0x7

    aget p3, p1, p3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->scenarioHeight:I

    if-ne p3, v1, :cond_3

    const/16 p3, 0x8

    aget p3, p1, p3

    if-ne p3, v2, :cond_3

    const/16 p3, 0x9

    aget p3, p1, p3

    if-ne p3, v3, :cond_3

    const/16 p3, 0xa

    aget p3, p1, p3

    if-ne p3, v4, :cond_3

    const/16 p3, 0xb

    aget p3, p1, p3

    if-ne p3, v5, :cond_3

    const/16 p3, 0xc

    aget v1, p1, p3

    if-lez v1, :cond_3

    iget v1, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->lastSequence:I

    if-lez v1, :cond_0

    aget v1, p1, p3

    iget v6, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->lastSequence:I

    add-int/2addr v6, v0

    if-ne v1, v6, :cond_3

    .line 74
    .end local p0    # "this":Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;
    :cond_0
    array-length v0, p1

    invoke-static {p1, p4, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    .line 75
    .local v7, "ids":[I
    array-length p4, v7

    :goto_0
    if-ge p2, p4, :cond_2

    aget v0, v7, p2

    .local v0, "id":I
    if-ltz v0, :cond_1

    const/16 v1, 0x200

    if-ge v0, v1, :cond_1

    .end local v0    # "id":I
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 76
    .restart local v0    # "id":I
    :cond_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor native frame returned invalid metatile"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 77
    .end local v0    # "id":I
    :cond_2
    aget p2, p1, p3

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->lastSequence:I

    .line 78
    new-instance v1, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;

    iget v6, p0, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge;->lastSequence:I

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/ahsim/demulation/RazorNativeTerrainFrameBridge$Frame;-><init>(IIIII[ILcom/ahsim/demulation/RazorNativeTerrainFrameBridge-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 73
    .end local v7    # "ids":[I
    :cond_3
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Razor native world frame metadata/sequence mismatch"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 66
    :cond_4
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Native world refused unknown or invalid Razor cells"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 61
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .local p1, "x":I
    .restart local p2    # "y":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    :cond_5
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 64
    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor native viewport outside original scenario"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    .restart local p3    # "w":I
    .restart local p4    # "h":I
    :cond_6
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "x":I
    .end local p2    # "y":I
    .end local p3    # "w":I
    .end local p4    # "h":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Razor native frame host is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
