.class public final Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;
.super Ljava/lang/Object;
.source "RazorTerrainAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapUsage"
.end annotation


# instance fields
.field public final compactMaps:I

.field public final directCells:J

.field public final distinctMapByteValues:I

.field public final fullMaps:I

.field private final rawByteFrequency:[J


# direct methods
.method private constructor <init>(IIJ[JI)V
    .locals 0
    .param p1, "full"    # I
    .param p2, "compact"    # I
    .param p3, "cells"    # J
    .param p5, "freq"    # [J
    .param p6, "distinct"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->fullMaps:I

    .line 47
    iput p2, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->compactMaps:I

    .line 48
    iput-wide p3, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->directCells:J

    .line 49
    iput-object p5, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->rawByteFrequency:[J

    .line 50
    iput p6, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->distinctMapByteValues:I

    .line 51
    return-void
.end method

.method synthetic constructor <init>(IIJ[JILcom/ahsim/demulation/RazorTerrainAtlas-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;-><init>(IIJ[JI)V

    return-void
.end method


# virtual methods
.method public histogramCopy()[J
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->rawByteFrequency:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public rawByteCount(I)J
    .locals 3
    .param p1, "value"    # I

    .line 53
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$MapUsage;->rawByteFrequency:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw map byte out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
