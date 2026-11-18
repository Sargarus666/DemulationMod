.class public final Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;
.super Ljava/lang/Object;
.source "RazorNativeFunctionDispatcherAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;,
        Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;,
        Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
    }
.end annotation


# static fields
.field public static final BUILD:I = 0x0

.field private static final DISPATCH:[I

.field private static final DISPATCH_BYTES:[B

.field private static final EXAMPLE_NATIVE_0:[[I

.field private static final INDIRECT_JSR:[I

.field private static final INITIALIZER_POINTER_OPERANDS:[[I

.field public static final RAM_DESCRIPTOR_ADDRESSES:[I

.field private static final TABLE:[[I

.field public static final TEAM:I = 0x1

.field private static final TEAM_14:[I

.field private static final TEAM_14_BODY:[B

.field public static final UNIT:I = 0x2


# direct methods
.method static bridge synthetic -$$Nest$sfgetDISPATCH()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->DISPATCH:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINDIRECT_JSR()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->INDIRECT_JSR:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    const/16 v0, -0x3e1c

    const/16 v1, -0x3e50

    const/16 v2, -0x3e34

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->RAM_DESCRIPTOR_ADDRESSES:[I

    .line 14
    const v0, 0xd25e

    const v1, 0xd39a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->DISPATCH:[I

    .line 15
    const v0, 0xd274

    const v1, 0xd3b0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->INDIRECT_JSR:[I

    .line 16
    const v0, 0x211f0

    const v1, 0x2122c

    const v2, 0x20570

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const v1, 0x21300

    const v2, 0x2133c

    const v3, 0x20680

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TABLE:[[I

    .line 20
    const v0, 0xcef8

    const v1, 0xceac

    const v2, 0xced2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    const v1, 0xd034

    const v2, 0xcfe8

    const v3, 0xd00e

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->INITIALIZER_POINTER_OPERANDS:[[I

    .line 24
    const v0, 0xadc0

    const/16 v1, 0x828

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    const v1, 0xaef4

    const/16 v2, 0x808

    filled-new-array {v1, v1, v2}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->EXAMPLE_NATIVE_0:[[I

    .line 28
    const v0, 0x1956e

    const v1, 0x1965e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TEAM_14:[I

    .line 31
    const-string v0, "48e710202278c8943429001043f900ff0dac3638c226044300196b3e7202701003290005662cb02900026626b429000866203469005a082a0007000766142078c8942169000a0014317c000200187004600a43e9008c51cbffc870004cdf04084e75"

    invoke-static {v0}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->hex(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TEAM_14_BODY:[B

    .line 87
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->DISPATCH_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0x20t
        0x6at
        0x0t
        0x4t
        0x20t
        0x68t
        0x0t
        0x10t
        0x2t
        0x41t
        0x0t
        -0x1t
        -0x2et
        0x41t
        -0x2et
        0x41t
        0x20t
        0x70t
        0x10t
        0x0t
        0x2ft
        0xat
        0x4et
        -0x70t
        0x58t
        -0x71t
        0x35t
        0x40t
        0x0t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluateTeam14Guards(II[Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;)Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;
    .locals 11
    .param p0, "teamWord10"    # I
    .param p1, "ramC226"    # I
    .param p2, "units"    # [Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-eqz p2, :cond_8

    .line 72
    if-ltz p1, :cond_7

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_7

    .line 73
    add-int/lit8 v0, p1, -0x18

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 74
    .local v0, "scans":I
    array-length v1, p2

    if-gt v0, v1, :cond_6

    .line 75
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 76
    aget-object v1, p2, v4

    .line 77
    .local v1, "u":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
    if-eqz v1, :cond_4

    .line 78
    iget v2, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->flags5:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->type2:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    iget v2, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->house8:I

    and-int/lit16 v3, p0, 0xff

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-boolean v2, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->referenceResolved:Z

    if-eqz v2, :cond_2

    .line 80
    iget v2, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->pointedFlags7:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    new-instance v2, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;

    iget v5, v1, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->position0A:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x4

    invoke-direct/range {v2 .. v7}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;-><init>(IIIILcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit-IA;)V

    return-object v2

    .line 79
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unresolved MOVEA.W +0x5A indirect RAM read"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v1    # "u":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .restart local v1    # "u":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Incomplete TEAM14 record"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v1    # "u":Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
    .end local v4    # "i":I
    :cond_5
    new-instance v5, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14Decision;-><init>(IIIILcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit-IA;)V

    return-object v5

    .line 74
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing TEAM14 unit record(s)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "scans":I
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid signed TEAM14 loop word"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing read-only TEAM14 fixtures"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hex(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 38
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static inspect([BLcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;)Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;
    .locals 19
    .param p0, "rom"    # [B
    .param p1, "evidence"    # Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    .param p2, "previous"    # Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 131
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit;->inspect([BLcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;)Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;

    move-result-object v3

    .line 132
    .local v3, "current":Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    iget v4, v2, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->variant:I

    iget v5, v3, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->variant:I

    if-ne v4, v5, :cond_c

    iget v4, v2, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->pointerTableAddress:I

    iget v5, v3, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->pointerTableAddress:I

    if-ne v4, v5, :cond_c

    iget-boolean v4, v2, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->executablePointerLoadsVerified:Z

    if-eqz v4, :cond_c

    .line 133
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v4, v3, Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;->variant:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 136
    .local v4, "v":I
    sget-object v6, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->DISPATCH:[I

    aget v6, v6, v4

    sget-object v7, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->DISPATCH_BYTES:[B

    const-string v8, "Original FUNCTION dispatcher"

    invoke-static {v0, v6, v7, v8}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->match([BI[BLjava/lang/String;)V

    .line 137
    const/4 v6, 0x3

    new-array v7, v6, [I

    .line 138
    .local v7, "counts":[I
    new-array v8, v6, [Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    iget-object v9, v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->build:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->team:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    aput-object v9, v8, v5

    iget-object v9, v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;->unit:Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    .line 139
    .local v8, "banks":[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
    const/4 v9, 0x0

    .local v9, "bank":I
    :goto_0
    const/16 v12, 0xe

    if-ge v9, v6, :cond_a

    .line 140
    sget-object v13, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->INITIALIZER_POINTER_OPERANDS:[[I

    aget-object v13, v13, v4

    aget v13, v13, v9

    .line 141
    .local v13, "at":I
    if-lt v13, v11, :cond_9

    add-int/lit8 v14, v13, 0x4

    array-length v15, v0

    if-gt v14, v15, :cond_9

    add-int/lit8 v14, v13, -0x2

    invoke-static {v0, v14}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v14

    const/16 v15, 0x22fc

    if-ne v14, v15, :cond_9

    .line 142
    invoke-static {v0, v13}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u32([BI)I

    move-result v14

    sget-object v15, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TABLE:[[I

    aget-object v15, v15, v4

    aget v15, v15, v9

    if-ne v14, v15, :cond_9

    .line 145
    const/4 v14, 0x0

    .local v14, "id":I
    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_8

    aget-object v15, v8, v9

    invoke-virtual {v15, v14}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;->countNativeId(I)I

    move-result v15

    if-lez v15, :cond_6

    .line 146
    aget v15, v7, v9

    add-int/2addr v15, v5

    aput v15, v7, v9

    .line 147
    sget-object v15, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TABLE:[[I

    aget-object v15, v15, v4

    aget v15, v15, v9

    mul-int/lit8 v16, v14, 0x4

    add-int v15, v15, v16

    .line 148
    .local v15, "p":I
    add-int/lit8 v6, v15, 0x4

    move/from16 v17, v10

    array-length v10, v0

    if-gt v6, v10, :cond_5

    .line 149
    invoke-static {v0, v15}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u32([BI)I

    move-result v6

    .line 150
    .local v6, "target":I
    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_4

    const/16 v10, 0x200

    if-lt v6, v10, :cond_4

    array-length v10, v0

    add-int/lit8 v10, v10, -0x8

    if-gt v6, v10, :cond_4

    .line 151
    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v10

    if-eqz v10, :cond_4

    .line 152
    invoke-static {v0, v6}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v10

    move/from16 v18, v11

    const/16 v11, 0x46fc

    if-ne v10, v11, :cond_0

    add-int/lit8 v10, v6, 0x2

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v10

    const/16 v11, 0x2700

    if-eq v10, v11, :cond_4

    .line 154
    :cond_0
    if-nez v14, :cond_2

    sget-object v10, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->EXAMPLE_NATIVE_0:[[I

    aget-object v10, v10, v4

    aget v10, v10, v9

    if-ne v6, v10, :cond_1

    goto :goto_2

    .line 155
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v10, "Original FUNCTION 0 target mismatch"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_2
    :goto_2
    if-ne v9, v5, :cond_7

    if-ne v14, v12, :cond_7

    sget-object v10, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TEAM_14:[I

    aget v10, v10, v4

    if-ne v6, v10, :cond_3

    goto :goto_3

    .line 157
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v10, "TEAM native 14 target mismatch"

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid/blocked original native target "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    .end local v6    # "target":I
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Native pointer out of table bounds"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 145
    .end local v15    # "p":I
    :cond_6
    move/from16 v17, v10

    move/from16 v18, v11

    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    move/from16 v11, v18

    const/4 v6, 0x3

    goto/16 :goto_1

    :cond_8
    move/from16 v17, v10

    move/from16 v18, v11

    .line 139
    .end local v13    # "at":I
    .end local v14    # "id":I
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x3

    goto/16 :goto_0

    .line 143
    .restart local v13    # "at":I
    :cond_9
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Original FUNCTION table initialization not proven: bank "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    .end local v13    # "at":I
    :cond_a
    move/from16 v17, v10

    move/from16 v18, v11

    .line 160
    .end local v9    # "bank":I
    aget v6, v7, v17

    if-ne v6, v12, :cond_b

    aget v5, v7, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_b

    aget v5, v7, v18

    const/16 v6, 0x35

    if-ne v5, v6, :cond_b

    .line 165
    sget-object v5, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TEAM_14:[I

    aget v5, v5, v4

    .line 166
    .local v5, "team":I
    sget-object v6, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TEAM_14_BODY:[B

    const-string v9, "TEAM14 original complete 98-byte guard graph"

    invoke-static {v0, v5, v6, v9}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->match([BI[BLjava/lang/String;)V

    .line 167
    new-instance v6, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;

    add-int/lit8 v9, v4, 0x1

    sget-object v10, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->TABLE:[[I

    aget-object v10, v10, v4

    const/4 v11, 0x0

    invoke-direct {v6, v9, v10, v7, v11}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Result;-><init>(I[I[ILcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit-IA;)V

    return-object v6

    .line 161
    .end local v5    # "team":I
    :cond_b
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Original native ID inventory mismatch"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v4    # "v":I
    .end local v7    # "counts":[I
    .end local v8    # "banks":[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
    :cond_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Razor source/previous attestation changed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    .end local v3    # "current":Lcom/ahsim/demulation/RazorNativeFunctionAbiAudit$Result;
    :cond_d
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Missing original evidence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static match([BI[BLjava/lang/String;)V
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "at"    # I
    .param p2, "wanted"    # [B
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    if-ltz p1, :cond_2

    array-length v0, p0

    array-length v1, p2

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 99
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    aget-byte v2, p2, v0

    if-ne v1, v2, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": opcode at +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I

    .line 94
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

    .line 95
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;->u16([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
