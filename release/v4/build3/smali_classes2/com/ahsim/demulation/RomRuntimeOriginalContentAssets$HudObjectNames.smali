.class public final Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
.super Ljava/lang/Object;
.source "RomRuntimeOriginalContentAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HudObjectNames"
.end annotation


# instance fields
.field private final structures:[Ljava/lang/String;

.field private final units:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "units"    # [Ljava/lang/String;
    .param p2, "structures"    # [Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->units:[Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structures:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public structure(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 83
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structures:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structures:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public structureCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structures:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public unit(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 80
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->units:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->units:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public unitCount()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->units:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
