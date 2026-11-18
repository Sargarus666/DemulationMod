.class public final Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;
.super Ljava/lang/Object;
.source "RazorSpritePalettePoseAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpritePalettePoseAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final checkedMissions:I

.field public final facingToPoseDispatchVerified:Z

.field public final gameplayReady:Z

.field public final liveCramUploadVerified:Z

.field public final objectToCfgDispatchVerified:Z

.field public final paletteSourceSha256:Ljava/lang/String;

.field private final poseIndices:[[B

.field public final raiders:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

.field public final romVariant:I

.field private final sourceCram:[[I

.field public final sourcePaletteCandidateFound:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final sourceType13NamedTrike:Z

.field public final spriteCfgPaletteBitsVerified:Z

.field public final transparentColorRuleVerified:Z

.field public final trikes:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;[[I[[B)V
    .locals 1
    .param p1, "variant"    # I
    .param p2, "romHash"    # Ljava/lang/String;
    .param p3, "cramHash"    # Ljava/lang/String;
    .param p4, "missions"    # I
    .param p5, "t"    # Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;
    .param p6, "r"    # Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;
    .param p7, "sourceCrams"    # [[I
    .param p8, "poses"    # [[B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourceType13NamedTrike:Z

    .line 47
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourcePaletteCandidateFound:Z

    .line 48
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->spriteCfgPaletteBitsVerified:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->liveCramUploadVerified:Z

    .line 50
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->objectToCfgDispatchVerified:Z

    .line 51
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->facingToPoseDispatchVerified:Z

    .line 52
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->transparentColorRuleVerified:Z

    .line 53
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->gameplayReady:Z

    .line 59
    iput p1, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->romVariant:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourceSha256:Ljava/lang/String;

    iput-object p3, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->paletteSourceSha256:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->checkedMissions:I

    iput-object p5, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->trikes:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    iput-object p6, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->raiders:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    .line 61
    iput-object p7, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourceCram:[[I

    .line 62
    iput-object p8, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->poseIndices:[[B

    .line 63
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;[[I[[BLcom/ahsim/demulation/RazorSpritePalettePoseAudit-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;[[I[[B)V

    return-void
.end method


# virtual methods
.method public candidateArgb(II)[I
    .locals 9
    .param p1, "set"    # I
    .param p2, "pose"    # I

    .line 79
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 81
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 82
    .local v0, "pixels":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->poseIndices:[[B

    aget-object v2, v2, p2

    aget-byte v2, v2, v1

    and-int/lit8 v2, v2, 0xf

    .line 84
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourceCramWord(III)I

    move-result v3

    .line 85
    .local v3, "w":I
    ushr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7

    .local v4, "r":I
    ushr-int/lit8 v5, v3, 0x5

    and-int/lit8 v5, v5, 0x7

    .local v5, "g":I
    ushr-int/lit8 v6, v3, 0x9

    and-int/lit8 v6, v6, 0x7

    .line 86
    .local v6, "b":I
    mul-int/lit16 v7, v4, 0xff

    add-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    mul-int/lit16 v8, v5, 0xff

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    mul-int/lit16 v8, v6, 0xff

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    aput v7, v0, v1

    .line 82
    .end local v2    # "index":I
    .end local v3    # "w":I
    .end local v4    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 80
    .end local v0    # "pixels":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor CRAM/pose out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runtimePoseFor(II)I
    .locals 2
    .param p1, "sourceType"    # I
    .param p2, "rawFacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor runtime object/pose dispatch not yet authenticated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sourceCramWord(III)I
    .locals 2
    .param p1, "set"    # I
    .param p2, "line"    # I
    .param p3, "color"    # I

    .line 65
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    const/16 v0, 0x10

    if-ge p3, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->sourceCram:[[I

    aget-object v0, v0, p1

    mul-int/lit8 v1, p2, 0x10

    add-int/2addr v1, p3

    aget v0, v0, v1

    return v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor CRAM index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifiedPoseIndices(I)[B
    .locals 2
    .param p1, "pose"    # I

    .line 70
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->poseIndices:[[B

    aget-object v0, v0, p1

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor pose outside 0..4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
