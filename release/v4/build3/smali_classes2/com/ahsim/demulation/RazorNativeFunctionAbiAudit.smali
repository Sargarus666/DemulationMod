.class public final Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;
.super Ljava/lang/Object;
.source "RazorNativeFunctionAbiAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    }
.end annotation


# static fields
.field public static final BANK_BUILD:I = 0x0

.field public static final BANK_TEAM:I = 0x1

.field public static final BANK_UNIT:I = 0x2

.field private static final CALL_SITES:[[I

.field private static final FOLLOWING_LEA_DISPLACEMENT:[[I

.field public static final TABLE_ADDRESS:I = 0x841ec


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    const v0, 0xcee0

    const v1, 0xce94

    const v2, 0xceba

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const v1, 0xd01c

    const v2, 0xcfd0

    const v3, 0xcff6

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->CALL_SITES:[[I

    .line 23
    const/16 v0, 0x42

    const/16 v1, 0x28

    const/16 v2, 0x52

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    filled-new-array {v3, v0}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->FOLLOWING_LEA_DISPLACEMENT:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;)Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    .locals 9
    .param p0, "rom"    # [B
    .param p1, "earlier"    # Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 57
    iget-object v0, p1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->sourceSha256:Ljava/lang/String;

    .line 58
    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    move-result-object v0

    .line 59
    .local v0, "fresh":Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    iget v1, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    iget v2, p1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    if-ne v1, v2, :cond_4

    .line 61
    iget v1, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    add-int/lit8 v1, v1, -0x1

    .line 62
    .local v1, "v":I
    iget-object v2, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v2, v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->romOffset:I

    iget-object v3, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v3, v3, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->romOffset:I

    iget-object v4, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget v4, v4, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->romOffset:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    .line 63
    .local v2, "banks":[I
    const v3, 0x841f8

    array-length v4, p0

    if-gt v3, v4, :cond_3

    .line 64
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 65
    mul-int/lit8 v4, v3, 0x4

    const v5, 0x841ec

    add-int/2addr v4, v5

    .line 66
    .local v4, "slot":I
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u32([BI)I

    move-result v5

    aget v6, v2, v3

    if-ne v5, v6, :cond_1

    .line 68
    sget-object v5, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->CALL_SITES:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    .line 69
    .local v5, "site":I
    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    add-int/lit8 v6, v5, 0x8

    array-length v7, p0

    if-gt v6, v7, :cond_0

    add-int/lit8 v6, v5, -0x2

    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u16([BI)I

    move-result v6

    const/16 v7, 0x2079

    if-ne v6, v7, :cond_0

    .line 70
    invoke-static {p0, v5}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u32([BI)I

    move-result v6

    if-ne v6, v4, :cond_0

    add-int/lit8 v6, v5, 0x4

    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u16([BI)I

    move-result v6

    const/16 v7, 0x45e8

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v5, 0x6

    .line 71
    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u16([BI)I

    move-result v6

    sget-object v7, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->FOLLOWING_LEA_DISPLACEMENT:[[I

    aget-object v7, v7, v1

    aget v7, v7, v3

    if-ne v6, v7, :cond_0

    .line 64
    .end local v4    # "slot":I
    .end local v5    # "site":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .restart local v4    # "slot":I
    .restart local v5    # "site":I
    :cond_0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Razor executable EMC reference mismatch at bank "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    .end local v5    # "site":I
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Razor EMC pointer table mismatch at bank "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    .end local v3    # "b":I
    .end local v4    # "slot":I
    :cond_2
    new-instance v3, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;

    iget v4, v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->romVariant:I

    sget-object v5, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->CALL_SITES:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;-><init>(I[I[ILcom/ahsim/demulation/RazorNativeFunctionAbiAudit-IA;)V

    return-object v3

    .line 63
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "EMC table outside ROM"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    .end local v1    # "v":I
    .end local v2    # "banks":[I
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor ROM variant changed during audit"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "fresh":Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Razor ROM or EMC evidence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 28
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static u32([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 29
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u16([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->u16([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
