.class final Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;
.super Ljava/lang/Object;
.source "GenesisRecoveredTutorialControlData.java"


# static fields
.field static final CONTROL_BYTES:I = 0x868

.field static final MESSAGE_COUNT:I = 0x19

.field private static final MESSAGE_LENGTHS:[I

.field private static final MESSAGE_NEXT_PC:[I

.field private static final MESSAGE_STARTS:[I

.field static final MESSAGE_TEXT_BYTES:I = 0x4fc

.field static final SCRIPT_COUNT:I = 0x6

.field private static final SCRIPT_STARTS:[I

.field private static final SEGMENTS:[[B

.field private static final SEGMENT_STARTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SCRIPT_STARTS:[I

    .line 20
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENT_STARTS:[I

    .line 24
    nop

    .line 25
    const-string v0, "0004000000060001000600000010000307FC0002009600120006000600000002019000140012000E000600000018001E000201900014000E0000"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v1

    .line 26
    const-string v0, "0004000100060001000600000010000331B4000200C80006000100060000000200C80012000D000600000018004600020190001400120003000600000018004600020019001400020096000E0000"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v2

    .line 27
    const-string v0, "000400030006000100060000001000036DF2000200C8000600010006000000020032002200F6006C00000028000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v3

    .line 28
    const-string v0, "0002019000320002001900220096006C0004001200020006000000020014001400220096006C0003001200020006000000020014001400220096006C0000000200320030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v4

    .line 29
    const-string v0, "0002019000320002001900220096006C0005001800280002003200220096006C000000020032000E00260096000000040004000600010006000000100003917600020032000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v5

    .line 30
    const-string v0, "000201900032000200190022009600000003000600000002000A00180019000600000002000A002C00041F5600060000001800190002000A00220096000000000002008C0030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v6

    .line 31
    const-string v0, "0002019000320002001900220096000000050018002800020032002200960000000000020032000E00040003001600010001000600010016000000070006000000260096006C001000036DF2001800520012000400060000000200320014001800410002006400220096006C000500180028000600000002003200220096006C00000002004B0030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v7

    .line 32
    const-string v0, "0002019000320002001900220096006C0003001200030006000000020014001400220096006C0000000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v8

    .line 33
    const-string v0, "0002019000320002001900220096006C0005001800280002003200220096006C00000018004600060000002A000600000002001400120002001C0016000000100006000000020014000600000002001400140018004B0008000600000002000A000AFFFF001C0016000000120006000000020096000E0000"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v9

    .line 34
    const-string v0, "00040006000600010006000000100003C98800020064000600010006000000020064002200F6000000000028000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v10

    .line 35
    const-string v0, "0002019000320002001900220096000000040012000200060000000200140014002200960000000300120002000600000002001400140022009600000000000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v11

    .line 36
    const-string v0, "000201900032000200190022009600000005001800280018004F00060000000200320022009600000000000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v12

    .line 37
    const-string v0, "0002019000320002001900220096000000020012000300060000000200140014002200960000000300120003000600000002001400140022009600000000000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v13

    .line 38
    const-string v0, "0002019000320002001900220096000000050018004400060000000200320022009600000000000200190022009600000001001200030006000000020014001400220096000000000012000200060000000200140014002200960000000300120003000600000002001400140022009600000000000200320030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v14

    .line 39
    const-string v0, "000201900032000200190030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v15

    .line 40
    const-string v16, "00020190003200020019002200960000000500060000001800280018004F0002003200220096000000000030"

    invoke-static/range {v16 .. v16}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v16

    .line 41
    const-string v17, "000201900032000200190002001900220096000000010006000000020014002200960000000400120002000600000002001400140004000700060000000200140022009600000000000200320030"

    invoke-static/range {v17 .. v17}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v17

    .line 42
    const-string v18, "00020190003200020019002200960000000500060000001800440002003200220096000000000002003200220096000000040006000000020019002200960000000000080006000000020014000AFFFF002A00020032000E0000"

    invoke-static/range {v18 .. v18}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v18

    .line 43
    const-string v19, "00040009000600010006000000100003F4EE00020064000600010006000000020032002200F6006C00000028000200320030"

    invoke-static/range {v19 .. v19}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v19

    .line 44
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v20

    .line 45
    const-string v21, "0002019000320002001900220096006C0004001200020006000000020014001400220096006C0003001200020006000000020014001400220096006C0000000200640030"

    invoke-static/range {v21 .. v21}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v21

    .line 46
    const-string v22, "0002019000320002001900220096006C000500060000001800280018004F0002003200220096006C0000000200140030"

    invoke-static/range {v22 .. v22}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v22

    .line 47
    const-string v23, "0002019000320002001900220096006C0001001200030006000000020014001400220096006C0004001200030006000000020014001400220096006C0000000200640030"

    invoke-static/range {v23 .. v23}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v23

    .line 48
    const-string v24, "0002019000320002001900220096006C00050006000000180017001800440002003200220096006C00000002003200220096006C0002000600000002001400220096006C0000000200640018004500120006000600000002000A00140002000A001C00160000001000060000000200960018004500120004000600000002000A00140002000A001C00160000001000060000000200960018004500120004000600000002000A001400180047001200020006000000020014001400220096006C000200060000000600010002001400220096006C00000030"

    invoke-static/range {v24 .. v24}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v24

    .line 49
    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v25

    .line 50
    const-string v0, "0002019000320002001900220096006C000300120002000600000002000A00140004000A000600000002000A0006000000220096006C0000000200640030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v26

    .line 51
    const-string v0, "0002019000320002001900220096006C000500060000001800280018004F0002003200220096006C0000000200320030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v27

    .line 52
    const-string v0, "0002019000320002001900220096006C0001001200030006000000020014001400220096006C0004001200030006000000020014001400220096006C00000030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v28

    .line 53
    const-string v0, "000201900032000200190002006400220096006C000500060000001800440002003200220096006C00000002003200220096006C0004001200020006000000020014001400220096006C00000012000400060000000200140014002A0030"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v29

    .line 54
    const-string v0, "000201900032000200190018004500120004000600000002000A00140002000A001C00160000000F00060000000200960018004500120004000600000002000A00140018004700120002000600000002000A0014001600010001000600010006000000020096000E0000"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v30

    .line 55
    const-string v0, "0004000B0034000600000010000412FE00020190000E0000"

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->hex(Ljava/lang/String;)[B

    move-result-object v31

    filled-new-array/range {v1 .. v31}, [[B

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENTS:[[B

    .line 58
    const/16 v0, 0x19

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_STARTS:[I

    .line 61
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_LENGTHS:[I

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_NEXT_PC:[I

    return-void

    :array_0
    .array-data 4
        0x41b48
        0x41b82
        0x41bd0
        0x41fd6
        0x423cc
        0x42936
    .end array-data

    :array_1
    .array-data 4
        0x41b48
        0x41b82
        0x41bd0
        0x41c3a
        0x41cb4
        0x41d34
        0x41db0
        0x41e7a
        0x41ede
        0x41fd6
        0x4203c
        0x420b4
        0x4211a
        0x4219a
        0x42248
        0x42288
        0x422e8
        0x42372
        0x423cc
        0x4241c
        0x4245e
        0x424d6
        0x42540
        0x425b8
        0x426aa
        0x426ec
        0x4275e
        0x427c4
        0x42838
        0x428cc
        0x42936
    .end array-data

    :array_2
    .array-data 4
        0x41c02
        0x41c7e
        0x41cfe
        0x41d7a
        0x41e38
        0x41ea8
        0x42008
        0x42080    # 3.79001E-40f
        0x420e4
        0x4215e
        0x42214
        0x42254
        0x422b4
        0x42336
        0x423fe
        0x42428
        0x424a2
        0x42506
        0x42584
        0x42690
        0x426b6
        0x4272a
        0x4278e
        0x42804
        0x42896
    .end array-data

    :array_3
    .array-data 4
        0x37
        0x35
        0x35
        0x34
        0x40
        0x34
        0x33
        0x33
        0x35
        0x3b
        0x32
        0x33
        0x33
        0x3a
        0x1c
        0x34
        0x33
        0x39
        0x33
        0x18
        0x35
        0x33
        0x35
        0x32
        0x35
    .end array-data

    :array_4
    .array-data 4
        0x41c3a
        0x41cb4
        0x41d34
        0x41db0
        0x41e7a
        0x41ede
        0x4203c
        0x420b4
        0x4211a
        0x4219a
        0x42248
        0x42288
        0x422e8
        0x42372
        0x4241c
        0x4245e
        0x424d6
        0x42540
        0x425b8
        0x426aa
        0x426ec
        0x4275e
        0x427c4
        0x42838
        0x428cc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteAt(I)I
    .locals 3
    .param p0, "absoluteAddress"    # I

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENT_STARTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 84
    sget-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENT_STARTS:[I

    aget v1, v1, v0

    sub-int v1, p0, v1

    .line 85
    .local v1, "rel":I
    if-ltz v1, :cond_0

    sget-object v2, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENTS:[[B

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SEGMENTS:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 83
    .end local v1    # "rel":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static hex(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 118
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 119
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 120
    .local v2, "hi":I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 121
    .local v3, "lo":I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 122
    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 118
    .end local v2    # "hi":I
    .end local v3    # "lo":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .restart local v2    # "hi":I
    .restart local v3    # "lo":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "hex digit"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    .end local v1    # "i":I
    .end local v2    # "hi":I
    .end local v3    # "lo":I
    :cond_1
    return-object v0

    .line 116
    .end local v0    # "out":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static messageIndexAt(I)I
    .locals 2
    .param p0, "absoluteTextStart"    # I

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_STARTS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    sget-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_STARTS:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static messageLength(I)I
    .locals 2
    .param p0, "index"    # I

    .line 98
    if-ltz p0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_LENGTHS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 100
    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_LENGTHS:[I

    aget v0, v0, p0

    return v0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial message index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static messageStart(I)I
    .locals 2
    .param p0, "index"    # I

    .line 110
    if-ltz p0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_STARTS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 112
    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_STARTS:[I

    aget v0, v0, p0

    return v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial message index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static nextPcAfterMessage(I)I
    .locals 3
    .param p0, "absoluteTextStart"    # I

    .line 104
    invoke-static {p0}, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->messageIndexAt(I)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 106
    sget-object v1, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->MESSAGE_NEXT_PC:[I

    aget v1, v1, v0

    return v1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tutorial message PC"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static scriptStart(I)I
    .locals 2
    .param p0, "index"    # I

    .line 76
    if-ltz p0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SCRIPT_STARTS:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 78
    sget-object v0, Lcom/ahsim/demulation/GenesisRecoveredTutorialControlData;->SCRIPT_STARTS:[I

    aget v0, v0, p0

    return v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tutorial script index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
