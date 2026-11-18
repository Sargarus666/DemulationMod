.class public final Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;
.super Ljava/lang/Object;
.source "RazorNativeWorldSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeWorldSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirstBoundary"
.end annotation


# static fields
.field private static final HANDLERS:[[I

.field private static final IDS:[I


# instance fields
.field public final contextByteDisplacement:I

.field public final emcFramePointer:I

.field public final emcReturnValue:I

.field public final emcStackDepth:I

.field public final emcStackPointer:I

.field public final emcVariables:[I

.field public final functionId:I

.field public final genesisCallContextKnown:Z

.field public final globalPointerCell:I

.field public final motorolaStackArgumentOffset:I

.field public final nativeCallbackExecuted:Z

.field public final opcode:I

.field public final opcodeWords:I

.field public final originalRomAddress:I

.field public final pointerSourceMask:I

.field public final topOfEmcStack:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 734
    const v0, 0x1aa4a

    const v1, 0x1bc96

    const/16 v2, 0x828

    const v3, 0xadc0

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const v1, 0x1ab40

    const v2, 0x1bd8c

    const/16 v3, 0x808

    const v4, 0xaef4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->HANDLERS:[[I

    .line 738
    const/16 v0, 0x1b

    const/16 v1, 0x28

    const/4 v2, 0x0

    const/16 v3, 0x10

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->IDS:[I

    return-void
.end method

.method private constructor <init>([I[II)V
    .locals 21
    .param p1, "d"    # [I
    .param p2, "old"    # [I
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 746
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->genesisCallContextKnown:Z

    .line 747
    iput-boolean v3, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->nativeCallbackExecuted:Z

    .line 749
    if-eqz v1, :cond_13

    array-length v4, v1

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    if-lt v2, v4, :cond_13

    const/4 v5, 0x2

    if-gt v2, v5, :cond_13

    const/4 v6, 0x5

    aget v7, v1, v6

    if-ne v7, v4, :cond_13

    const/4 v7, 0x7

    aget v7, v1, v7

    if-nez v7, :cond_13

    const/16 v7, 0x8

    aget v8, v1, v7

    if-nez v8, :cond_13

    const/16 v8, 0x9

    aget v8, v1, v8

    if-nez v8, :cond_13

    const/4 v8, 0x6

    aget v9, v1, v8

    if-ltz v9, :cond_13

    aget v9, v1, v8

    const/16 v10, 0x40

    if-ge v9, v10, :cond_13

    const/16 v9, 0xa

    aget v10, v1, v9

    if-ltz v10, :cond_13

    aget v10, v1, v9

    const v11, 0xffff

    if-gt v10, v11, :cond_13

    const/16 v10, 0xb

    aget v12, v1, v10

    if-lt v12, v4, :cond_13

    aget v12, v1, v10

    if-gt v12, v5, :cond_13

    const/16 v12, 0xc

    aget v13, v1, v12

    if-ltz v13, :cond_13

    aget v13, v1, v12

    const/16 v14, 0xf

    if-gt v13, v14, :cond_13

    const/16 v13, 0xd

    aget v15, v1, v13

    if-ltz v15, :cond_13

    aget v15, v1, v13

    if-gt v15, v14, :cond_13

    aget v15, v1, v12

    aget v16, v1, v13

    rsub-int/lit8 v14, v16, 0xf

    if-ne v15, v14, :cond_13

    const/16 v14, 0xe

    aget v15, v1, v14

    if-ltz v15, :cond_13

    aget v15, v1, v14

    const/16 v3, 0x11

    if-gt v15, v3, :cond_13

    aget v3, v1, v9

    const v15, 0x8000

    and-int/2addr v3, v15

    if-nez v3, :cond_13

    aget v3, v1, v9

    shr-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x1f

    if-ne v3, v14, :cond_13

    .line 756
    aget v3, v1, v9

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    aget v3, v1, v9

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_0

    move v3, v5

    :goto_0
    aget v7, v1, v10

    if-ne v3, v7, :cond_13

    .line 758
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_3

    aget v7, v1, v3

    aget v15, p2, v3

    if-ne v7, v15, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 759
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EMC boundary disagrees with original slice"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xf

    .restart local v3    # "i":I
    :goto_2
    const/16 v7, 0x19

    if-ge v3, v7, :cond_5

    aget v7, v1, v3

    if-ltz v7, :cond_4

    aget v7, v1, v3

    if-gt v7, v11, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 761
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid EMC state field"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 762
    .end local v3    # "i":I
    :cond_5
    const/4 v3, -0x1

    .line 763
    .local v3, "handler":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    sget-object v15, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->IDS:[I

    array-length v15, v15

    if-ge v11, v15, :cond_7

    sget-object v15, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->IDS:[I

    aget v15, v15, v11

    aget v4, v1, v8

    if-ne v15, v4, :cond_6

    sget-object v4, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->HANDLERS:[[I

    add-int/lit8 v15, v2, -0x1

    aget-object v4, v4, v15

    aget v3, v4, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 764
    .end local v11    # "i":I
    :cond_7
    if-ltz v3, :cond_12

    .line 766
    aget v4, v1, v8

    const/16 v11, 0x28

    const/16 v15, 0x1b

    if-ne v4, v15, :cond_8

    const/4 v4, 0x3

    goto :goto_4

    :cond_8
    aget v4, v1, v8

    if-ne v4, v11, :cond_9

    move v4, v5

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    .line 767
    .local v4, "expectedMask":I
    :goto_4
    aget v5, v1, v8

    move/from16 v17, v7

    const/4 v7, 0x4

    if-ne v5, v15, :cond_a

    move v5, v12

    goto :goto_5

    :cond_a
    aget v5, v1, v8

    if-ne v5, v11, :cond_b

    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    move v5, v7

    .line 768
    .local v5, "expectedSp":I
    :goto_5
    move/from16 v18, v8

    aget v8, v1, v18

    if-ne v8, v11, :cond_c

    const/16 v8, 0xff

    goto :goto_6

    :cond_c
    move v8, v10

    .line 769
    .local v8, "expectedByte":I
    :goto_6
    move/from16 v19, v9

    aget v9, v1, v18

    if-eq v9, v15, :cond_e

    aget v9, v1, v18

    if-ne v9, v11, :cond_d

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/16 v9, -0x2160

    move/from16 v16, v9

    :goto_8
    move/from16 v9, v16

    .line 770
    .local v9, "expectedRam":I
    aget v11, v1, v17

    if-ne v11, v4, :cond_11

    const/16 v11, 0x1a

    move/from16 v16, v10

    aget v10, v1, v11

    if-ne v10, v5, :cond_11

    aget v10, v1, v15

    if-ne v10, v8, :cond_11

    const/16 v20, 0x1c

    aget v10, v1, v20

    if-ne v10, v9, :cond_11

    .line 773
    aget v10, v1, v17

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->pointerSourceMask:I

    aget v10, v1, v11

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->motorolaStackArgumentOffset:I

    .line 774
    aget v10, v1, v15

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->contextByteDisplacement:I

    aget v10, v1, v20

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->globalPointerCell:I

    .line 775
    aget v10, v1, v18

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->functionId:I

    iput v3, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->originalRomAddress:I

    aget v10, v1, v19

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->opcode:I

    aget v10, v1, v16

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->opcodeWords:I

    .line 776
    aget v10, v1, v12

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackDepth:I

    aget v10, v1, v13

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackPointer:I

    aget v10, v1, v14

    iput v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcFramePointer:I

    .line 777
    iget v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcStackDepth:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v7, v7, [I

    iput-object v7, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    .line 778
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    iget-object v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    array-length v10, v10

    if-ge v7, v10, :cond_f

    iget-object v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    add-int/lit8 v11, v7, 0xf

    aget v11, v1, v11

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 779
    .end local v7    # "i":I
    :cond_f
    const/16 v7, 0x13

    aget v7, v1, v7

    iput v7, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcReturnValue:I

    new-array v7, v6, [I

    iput-object v7, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcVariables:[I

    .line 780
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    if-ge v7, v6, :cond_10

    iget-object v10, v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->emcVariables:[I

    add-int/lit8 v11, v7, 0x14

    aget v11, v1, v11

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 781
    .end local v7    # "i":I
    :cond_10
    return-void

    .line 772
    :cond_11
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Razor native pointer ABI mismatch"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 764
    .end local v4    # "expectedMask":I
    .end local v5    # "expectedSp":I
    .end local v8    # "expectedByte":I
    .end local v9    # "expectedRam":I
    :cond_12
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unverified first Razor FUNCTION ID"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    .end local v3    # "handler":I
    :cond_13
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unsafe or invalid Razor FUNCTION boundary"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic constructor <init>([I[IILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;-><init>([I[II)V

    return-void
.end method


# virtual methods
.method public shortStack()Ljava/lang/String;
    .locals 3

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 785
    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;->topOfEmcStack:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u2205"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method
