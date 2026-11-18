.class public final Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
.super Ljava/lang/Object;
.source "RazorEmcTickDependencyAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field public final build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

.field public final gameplayTickReady:Z

.field public final nativeAbiVerified:Z

.field public final romVariant:I

.field public final scriptIdentityVerified:Z

.field public final sourceSha256:Ljava/lang/String;

.field public final team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

.field public final unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;


# direct methods
.method private constructor <init>(ILjava/lang/String;[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;)V
    .locals 2
    .param p1, "variant"    # I
    .param p2, "sha"    # Ljava/lang/String;
    .param p3, "banks"    # [Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->scriptIdentityVerified:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->nativeAbiVerified:Z

    iput-boolean v1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->gameplayTickReady:Z

    .line 79
    iput p1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    iput-object p2, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->sourceSha256:Ljava/lang/String;

    .line 80
    aget-object v1, p3, v1

    iput-object v1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    aget-object v0, p3, v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;Lcom/ahsim/demulation/RazorEmcTickDependencyAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;-><init>(ILjava/lang/String;[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;)V

    return-void
.end method


# virtual methods
.method public blockedNodes()I
    .locals 1

    .line 98
    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetDEPENDENCIES()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public dependencyName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 88
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetDEPENDENCIES()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 90
    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetDEPENDENCIES()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown tick prerequisite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dependencyVerified(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 83
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetDEPENDENCIES()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 85
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown tick prerequisite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prerequisiteIds(I)[I
    .locals 2
    .param p1, "id"    # I

    .line 93
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetREQUIRES()[[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 95
    invoke-static {}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->-$$Nest$sfgetREQUIRES()[[I

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown tick prerequisite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public totalNativeCalls()I
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v0, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCalls:I

    iget-object v1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v1, v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCalls:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v1, v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->nativeCalls:I

    add-int/2addr v0, v1

    return v0
.end method

.method public verifiedNodes()I
    .locals 1

    .line 97
    const/4 v0, 0x4

    return v0
.end method
