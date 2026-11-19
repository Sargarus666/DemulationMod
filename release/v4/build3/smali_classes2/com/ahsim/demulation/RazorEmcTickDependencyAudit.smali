.class public final Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;
.super Ljava/lang/Object;
.source "RazorEmcTickDependencyAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;,
        Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    }
.end annotation


# static fields
.field public static final BANK_IDENTITY:I = 0x1

.field private static final BANK_SHA:[Ljava/lang/String;

.field private static final DEPENDENCIES:[Ljava/lang/String;

.field private static final ENTRIES:[I

.field public static final EXTENDED_OBJECT_DISPATCH:I = 0x5

.field public static final GAMEPLAY_TICK:I = 0x8

.field private static final INSTRUCTIONS:[I

.field private static final LENGTHS:[I

.field private static final NAMES:[Ljava/lang/String;

.field public static final NATIVE_ABI:I = 0x4

.field public static final NUMERIC_NATIVE_REFERENCES:I = 0x3

.field private static final OFFSETS:[[I

.field public static final ORDR_ENTRY_TABLES:I = 0x2

.field public static final ORIGINAL_TICK_ORDER:I = 0x6

.field public static final RAZOR_AI_OWNER_SCHEDULER:I = 0x7

.field private static final REQUIRES:[[I

.field private static final ROM_SHA:[Ljava/lang/String;

.field public static final SOURCE_IDENTITY:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetBANK_SHA()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->BANK_SHA:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEPENDENCIES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->DEPENDENCIES:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetENTRIES()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->ENTRIES:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLENGTHS()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->LENGTHS:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetNAMES()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetREQUIRES()[[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->REQUIRES:[[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    .line 19
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->ROM_SHA:[Ljava/lang/String;

    .line 23
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "BUILD"

    aput-object v5, v2, v3

    const-string v5, "TEAM"

    aput-object v5, v2, v4

    const-string v5, "UNIT"

    aput-object v5, v2, v0

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->NAMES:[Ljava/lang/String;

    .line 24
    const v2, 0x1b20e8

    const v5, 0x1b2242

    const v6, 0x1b1cba

    filled-new-array {v6, v2, v5}, [I

    move-result-object v2

    const v5, 0x8cc34

    const v6, 0x8cd8e

    const v7, 0x8c806

    filled-new-array {v7, v5, v6}, [I

    move-result-object v5

    filled-new-array {v2, v5}, [[I

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->OFFSETS:[[I

    .line 28
    const/16 v2, 0x15a

    const/16 v5, 0x156c

    const/16 v6, 0x42e

    filled-new-array {v6, v2, v5}, [I

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->LENGTHS:[I

    .line 29
    const/16 v2, 0x1b

    const/16 v5, 0x13

    const/4 v6, 0x6

    filled-new-array {v5, v6, v2}, [I

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->ENTRIES:[I

    .line 30
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "d813c5732056b6e8e42daeb8eba5572da8724e212a134331e0ba947da7ab2551"

    aput-object v5, v2, v3

    const-string v5, "f35fa2e0347e70e55d13c70d67197ded0e8ddf548dac81ec2bbfcc0f981e1195"

    aput-object v5, v2, v4

    const-string v5, "69b6d466d48c5aa5aa89856fec73b4e88ba0510e8f49c44d720ab51584068306"

    aput-object v5, v2, v0

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->BANK_SHA:[Ljava/lang/String;

    .line 35
    const/16 v2, 0x86

    const/16 v5, 0x9a4

    const/16 v7, 0x1b0

    filled-new-array {v7, v2, v5}, [I

    move-result-object v2

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->INSTRUCTIONS:[I

    .line 40
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "source_identity"

    aput-object v5, v2, v3

    const-string v5, "compiled_emc_identity"

    aput-object v5, v2, v4

    const-string v5, "entry_table_integrity"

    aput-object v5, v2, v0

    const-string v5, "numeric_native_id_inventory"

    aput-object v5, v2, v1

    const-string v5, "native_function_semantics"

    const/4 v7, 0x4

    aput-object v5, v2, v7

    const-string v5, "razor_object_dispatch"

    const/4 v8, 0x5

    aput-object v5, v2, v8

    const-string v5, "original_tick_cadence"

    aput-object v5, v2, v6

    const-string v5, "razor_owner_and_ai_callbacks"

    const/4 v9, 0x7

    aput-object v5, v2, v9

    const/16 v5, 0x8

    const-string v10, "authorized_gameplay_tick"

    aput-object v10, v2, v5

    sput-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->DEPENDENCIES:[Ljava/lang/String;

    .line 46
    new-array v11, v3, [I

    filled-new-array {v3}, [I

    move-result-object v12

    filled-new-array {v4}, [I

    move-result-object v13

    filled-new-array {v0}, [I

    move-result-object v14

    filled-new-array {v1}, [I

    move-result-object v15

    filled-new-array {v0, v7}, [I

    move-result-object v16

    filled-new-array {v7, v8}, [I

    move-result-object v17

    filled-new-array {v6, v8}, [I

    move-result-object v18

    filled-new-array {v9, v6, v7}, [I

    move-result-object v19

    filled-new-array/range {v11 .. v19}, [[I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->REQUIRES:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;
    .locals 11
    .param p0, "rom"    # [B
    .param p1, "expectedSha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v0, p0

    const/high16 v1, 0x300000

    if-eq v0, v1, :cond_0

    array-length v0, p0

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_b

    .line 177
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->sha([BII)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "actual":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    sget-object v2, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->ROM_SHA:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 181
    .local v2, "variant":I
    if-ltz v2, :cond_9

    .line 182
    sget-object v3, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->OFFSETS:[[I

    aget-object v3, v3, v2

    .local v3, "offsets":[I
    const/4 v4, 0x3

    new-array v5, v4, [Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    .line 183
    .local v5, "banks":[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 184
    aget v7, v3, v6

    invoke-static {p0, v7, v6}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->parse([BII)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    move-result-object v7

    aput-object v7, v5, v6

    .line 185
    if-lez v6, :cond_2

    aget v7, v3, v6

    add-int/lit8 v8, v6, -0x1

    aget v8, v3, v8

    sget-object v9, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->LENGTHS:[I

    add-int/lit8 v10, v6, -0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Razor EMC bank order not contiguous"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 190
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    .line 191
    .local v6, "found":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_2
    array-length v8, p0

    add-int/lit8 v8, v8, -0xc

    if-gt v7, v8, :cond_7

    .line 192
    const-string v8, "FORM"

    invoke-static {p0, v7, v8}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v7, 0x8

    const-string v9, "EMC2"

    invoke-static {p0, v8, v9}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 193
    aget v8, v3, v1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x1

    aget v8, v3, v8

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    aget v8, v3, v8

    if-ne v7, v8, :cond_4

    goto :goto_3

    .line 194
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized Razor EMC bank at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 191
    :cond_6
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 197
    .end local v7    # "p":I
    :cond_7
    if-ne v6, v4, :cond_8

    .line 198
    new-instance v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;

    add-int/lit8 v4, v2, 0x1

    const/4 v7, 0x0

    invoke-direct {v1, v4, v0, v5, v7}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Evidence;-><init>(ILjava/lang/String;[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;Lcom/ahsim/demulation/RazorEmcTickDependencyAudit-IA;)V

    return-object v1

    .line 197
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Razor EMC bank count mismatch"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v3    # "offsets":[I
    .end local v5    # "banks":[Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
    .end local v6    # "found":I
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unknown Razor EMC source ROM"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    .end local v2    # "variant":I
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor EMC source fingerprint changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0    # "actual":Ljava/lang/String;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor EMC requires authenticated 3/4 MiB ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parse([BII)Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;
    .locals 24
    .param p0, "rom"    # [B
    .param p1, "offset"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    move/from16 v3, p1

    sget-object v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->LENGTHS:[I

    aget v11, v1, p2

    .local v11, "length":I
    sget-object v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->ENTRIES:[I

    aget v12, v1, p2

    .line 129
    .local v12, "entryCount":I
    if-ltz v3, :cond_d

    array-length v1, v0

    sub-int/2addr v1, v11

    if-gt v3, v1, :cond_d

    const-string v1, "FORM"

    invoke-static {v0, v3, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, v3, 0x8

    .line 130
    const-string v2, "EMC2"

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, v3, 0xc

    const-string v2, "ORDR"

    invoke-static {v0, v1, v2}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v1, v3, 0x4

    .line 131
    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u32([BI)I

    move-result v1

    if-ne v1, v11, :cond_d

    add-int/lit8 v1, v3, 0x10

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u32([BI)I

    move-result v1

    mul-int/lit8 v2, v12, 0x2

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->BANK_SHA:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 132
    invoke-static {v0, v3, v11}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->sha([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 134
    add-int/lit8 v1, v3, 0x14

    mul-int/lit8 v2, v12, 0x2

    add-int v13, v1, v2

    .line 135
    .local v13, "dataTag":I
    const-string v1, "DATA"

    invoke-static {v0, v13, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->tag([BILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 136
    add-int/lit8 v1, v13, 0x4

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u32([BI)I

    move-result v14

    .local v14, "bytes":I
    add-int/lit8 v15, v13, 0x8

    .line 137
    .local v15, "dataOffset":I
    if-lez v14, :cond_b

    and-int/lit8 v1, v14, 0x1

    if-nez v1, :cond_b

    add-int v1, v15, v14

    add-int v2, v3, v11

    if-ne v1, v2, :cond_b

    .line 139
    div-int/lit8 v4, v14, 0x2

    .local v4, "words":I
    add-int/lit8 v16, v3, 0x14

    .line 140
    .local v16, "ordr":I
    new-array v1, v4, [Z

    .line 141
    .local v1, "instructionStart":[Z
    const/16 v2, 0x40

    new-array v9, v2, [I

    .local v9, "counts":[I
    const-wide/16 v5, 0x0

    .local v5, "mask":J
    const/4 v2, 0x0

    .local v2, "calls":I
    const/4 v7, 0x0

    .line 142
    .local v7, "instructions":I
    const/4 v8, 0x0

    move-wide/from16 v22, v5

    move v6, v2

    move v5, v7

    move v2, v8

    move-wide/from16 v7, v22

    .local v2, "pc":I
    .local v5, "instructions":I
    .local v6, "calls":I
    .local v7, "mask":J
    :goto_0
    if-ge v2, v4, :cond_7

    .line 143
    const/4 v10, 0x1

    aput-boolean v10, v1, v2

    .line 144
    mul-int/lit8 v17, v2, 0x2

    move/from16 v18, v10

    add-int v10, v15, v17

    invoke-static {v0, v10}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u16([BI)I

    move-result v10

    .local v10, "word":I
    add-int/lit8 v2, v2, 0x1

    .line 147
    const v17, 0x8000

    and-int v17, v10, v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    .local v17, "opcode":I
    move-object/from16 v19, v1

    .end local v1    # "instructionStart":[Z
    .local v19, "instructionStart":[Z
    and-int/lit16 v1, v10, 0x7fff

    move/from16 v22, v17

    move/from16 v17, v2

    move/from16 v2, v22

    .local v1, "param":I
    goto :goto_1

    .line 149
    .end local v17    # "opcode":I
    .end local v19    # "instructionStart":[Z
    .local v1, "instructionStart":[Z
    :cond_0
    move-object/from16 v19, v1

    .end local v1    # "instructionStart":[Z
    .restart local v19    # "instructionStart":[Z
    ushr-int/lit8 v1, v10, 0x8

    and-int/lit8 v17, v1, 0x1f

    .line 150
    .restart local v17    # "opcode":I
    and-int/lit16 v1, v10, 0x4000

    if-eqz v1, :cond_1

    int-to-byte v1, v10

    move/from16 v22, v17

    move/from16 v17, v2

    move/from16 v2, v22

    .local v1, "param":I
    goto :goto_1

    .line 151
    .end local v1    # "param":I
    :cond_1
    and-int/lit16 v1, v10, 0x2000

    if-eqz v1, :cond_3

    .line 152
    if-ge v2, v4, :cond_2

    .line 153
    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v15

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u16([BI)I

    move-result v1

    .restart local v1    # "param":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v22, v17

    move/from16 v17, v2

    move/from16 v2, v22

    goto :goto_1

    .line 152
    .end local v1    # "param":I
    :cond_2
    new-instance v1, Ljava/io/IOException;

    move/from16 v20, v2

    .end local v2    # "pc":I
    .local v20, "pc":I
    const-string v2, "Truncated Razor EMC operand"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .end local v20    # "pc":I
    .restart local v2    # "pc":I
    :cond_3
    move/from16 v20, v2

    .end local v2    # "pc":I
    .restart local v20    # "pc":I
    const/4 v1, 0x0

    move/from16 v2, v17

    move/from16 v17, v20

    .line 156
    .end local v20    # "pc":I
    .restart local v1    # "param":I
    .local v2, "opcode":I
    .local v17, "pc":I
    :goto_1
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 157
    const/16 v3, 0xe

    if-ne v2, v3, :cond_5

    .line 158
    if-ltz v1, :cond_4

    const/16 v3, 0x3f

    if-gt v1, v3, :cond_4

    .line 159
    const-wide/16 v20, 0x1

    shl-long v20, v20, v1

    or-long v7, v7, v20

    aget v3, v9, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v9, v1

    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v1

    goto :goto_2

    .line 158
    :cond_4
    new-instance v3, Ljava/io/IOException;

    move/from16 v18, v1

    .end local v1    # "param":I
    .local v18, "param":I
    const-string v1, "Razor native function ID out of range"

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v18    # "param":I
    .restart local v1    # "param":I
    :cond_5
    move/from16 v18, v1

    .line 161
    .end local v1    # "param":I
    .restart local v18    # "param":I
    :goto_2
    nop

    .end local v2    # "opcode":I
    .end local v10    # "word":I
    .end local v18    # "param":I
    add-int/lit8 v5, v5, 0x1

    .line 162
    move/from16 v3, p1

    move/from16 v2, v17

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 156
    .restart local v1    # "param":I
    .restart local v2    # "opcode":I
    .restart local v10    # "word":I
    :cond_6
    move/from16 v18, v1

    .end local v1    # "param":I
    .restart local v18    # "param":I
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unsupported Razor EMC opcode"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    .end local v10    # "word":I
    .end local v17    # "pc":I
    .end local v18    # "param":I
    .end local v19    # "instructionStart":[Z
    .local v1, "instructionStart":[Z
    .local v2, "pc":I
    :cond_7
    move-object/from16 v19, v1

    .line 163
    .end local v1    # "instructionStart":[Z
    .end local v2    # "pc":I
    .restart local v19    # "instructionStart":[Z
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_3
    if-ge v1, v12, :cond_9

    .line 164
    mul-int/lit8 v2, v1, 0x2

    add-int v2, v16, v2

    invoke-static {v0, v2}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->u16([BI)I

    move-result v2

    .line 165
    .local v2, "entry":I
    if-ge v2, v4, :cond_8

    aget-boolean v3, v19, v2

    if-eqz v3, :cond_8

    .line 163
    .end local v2    # "entry":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 166
    .restart local v2    # "entry":I
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v10, "Razor EMC ORDR entry not on instruction boundary"

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    .end local v1    # "n":I
    .end local v2    # "entry":I
    :cond_9
    sget-object v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->INSTRUCTIONS:[I

    aget v1, v1, p2

    if-ne v5, v1, :cond_a

    if-eqz v6, :cond_a

    .line 170
    new-instance v1, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;

    const/4 v10, 0x0

    move/from16 v3, p1

    move/from16 v2, p2

    invoke-direct/range {v1 .. v10}, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit$Bank;-><init>(IIIIIJ[ILcom/ahsim/demulation/RazorEmcTickDependencyAudit-IA;)V

    return-object v1

    .line 169
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor EMC instruction inventory mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    .end local v4    # "words":I
    .end local v5    # "instructions":I
    .end local v6    # "calls":I
    .end local v7    # "mask":J
    .end local v9    # "counts":[I
    .end local v16    # "ordr":I
    .end local v19    # "instructionStart":[Z
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Razor EMC DATA bounds invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v14    # "bytes":I
    .end local v15    # "dataOffset":I
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing Razor EMC DATA chunk"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v13    # "dataTag":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Razor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ahsim/demulation/RazorEmcTickDependencyAudit;->NAMES:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EMC fingerprint or header mismatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sha([BII)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 117
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v1, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 120
    .local v5, "value":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    and-int/lit8 v6, v5, 0xf

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    nop

    .end local v5    # "value":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 124
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA256 missing"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static tag([BILjava/lang/String;)Z
    .locals 4
    .param p0, "src"    # [B
    .param p1, "pos"    # I
    .param p2, "match"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_3
    :goto_1
    return v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "src"    # [B
    .param p1, "at"    # I

    .line 103
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
    .param p0, "src"    # [B
    .param p1, "at"    # I

    .line 106
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method
