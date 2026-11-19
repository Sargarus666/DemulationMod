.class public final Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;
.super Ljava/lang/Object;
.source "RomRuntimeOriginalContentAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TutorialExactContent"
.end annotation


# instance fields
.field private final characterMap:[B

.field private final messages:[[B


# direct methods
.method private constructor <init>([[B[B)V
    .locals 0
    .param p1, "messages"    # [[B
    .param p2, "characterMap"    # [B

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->messages:[[B

    .line 182
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMap:[B

    .line 183
    return-void
.end method

.method synthetic constructor <init>([[B[BLcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;-><init>([[B[B)V

    return-void
.end method


# virtual methods
.method public characterMapCopy()[B
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMap:[B

    invoke-static {v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$smcopyUnchecked([B)[B

    move-result-object v0

    return-object v0
.end method

.method public characterMapSize()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMap:[B

    array-length v0, v0

    return v0
.end method

.method public characterMapValue(I)I
    .locals 2
    .param p1, "ascii"    # I

    .line 190
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMap:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->characterMap:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial character map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public message(I)[B
    .locals 2
    .param p1, "index"    # I

    .line 186
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->messages:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->messages:[[B

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->-$$Nest$smcopyUnchecked([B)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial message index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageCount()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;->messages:[[B

    array-length v0, v0

    return v0
.end method
