.class public final Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorCallRouteAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;,
        Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;,
        Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;,
        Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    }
.end annotation


# static fields
.field private static final ANCHOR_HEX:[Ljava/lang/String;

.field private static final DAMAGE_INPUTS:[Ljava/lang/String;

.field private static final MODES:[I

.field private static final OBJECT_REGS:[Ljava/lang/String;

.field private static final PATTERNS:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

.field private static final REFERENCE_SHA256:[Ljava/lang/String;

.field private static final REFERENCE_SITES:[[I


# direct methods
.method static bridge synthetic -$$Nest$smiOriginalCorrespondence(I)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->iOriginalCorrespondence(I)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 73
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->REFERENCE_SHA256:[Ljava/lang/String;

    .line 77
    const v1, 0x1c4d8

    const v2, 0x1e7ee

    const/16 v5, 0x637e

    const/16 v6, 0x713a

    const v7, 0xa872

    filled-new-array {v5, v6, v7, v1, v2}, [I

    move-result-object v1

    const v2, 0x1c5cc

    const v5, 0x1e8f2

    const/16 v6, 0x6492

    const/16 v7, 0x7256

    const v8, 0xa9a0

    filled-new-array {v6, v7, v8, v2, v5}, [I

    move-result-object v2

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->REFERENCE_SITES:[[I

    .line 85
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "42573f2effda2f0a"

    aput-object v5, v2, v3

    const-string v5, "488043f9000252cc1031000042573f002f0a"

    aput-object v5, v2, v4

    const-string v5, "342a005e48c29082e680524036006f0c42573f032f0a"

    aput-object v5, v2, v0

    const-string v5, "3e844eb805ba2848200c670e42573f072f0c"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string v5, "b4836c08342a0012d4426004740034033ebc00013f022f0b"

    const/4 v7, 0x4

    aput-object v5, v2, v7

    sput-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->ANCHOR_HEX:[Ljava/lang/String;

    .line 92
    new-array v2, v1, [Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->FRAME_LOCAL_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aput-object v5, v2, v3

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->TABLE_LOOKUP_BYTE:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aput-object v5, v2, v4

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_DELTA_SHIFTED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aput-object v5, v2, v0

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->REGISTER_WORD:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aput-object v5, v2, v6

    sget-object v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;->HP_RELATIVE_CAPPED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aput-object v5, v2, v7

    sput-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->PATTERNS:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    .line 97
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "A2"

    aput-object v5, v2, v3

    aput-object v5, v2, v4

    aput-object v5, v2, v0

    const-string v5, "A4"

    aput-object v5, v2, v6

    const-string v5, "A3"

    aput-object v5, v2, v7

    sput-object v2, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->OBJECT_REGS:[Ljava/lang/String;

    .line 98
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "-0x26(A6)"

    aput-object v2, v1, v3

    const-string v2, "byte[0x252CC + signed(type(A2))]"

    aput-object v2, v1, v4

    const-string v2, "D3 = ((HP(A2) - capped(A2)) >> 3) + 1, if positive"

    aput-object v2, v1, v0

    const-string v0, "D7"

    aput-object v0, v1, v6

    const-string v0, "D2 = min(2*HP(A2), HP(A3)>>1)"

    aput-object v0, v1, v7

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->DAMAGE_INPUTS:[Ljava/lang/String;

    .line 103
    filled-new-array {v3, v3, v3, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->MODES:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hexBytes(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 151
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 152
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

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static iOriginalCorrespondence(I)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;
    .locals 1
    .param p0, "routeIndex"    # I

    .line 109
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->SONIC_STRUCTURE_HIT:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->INFANTRY_ENTRY_WHEN_CAPTURE_FAILS:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-object v0

    .line 111
    :cond_1
    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;->NOT_IDENTIFIED:Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$OriginalCorrespondence;

    return-object v0
.end method

.method public static inspectReference([BLcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;)Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;
    .locals 18
    .param p0, "rom"    # [B
    .param p1, "combat"    # Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;
    .param p2, "calls"    # Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-boolean v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceSample:Z

    if-eqz v3, :cond_6

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    const/4 v5, 0x2

    if-gt v3, v5, :cond_6

    iget-object v3, v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->evidence:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    sget-object v6, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;->REFERENCE_CALL_SITES_VERIFIED:Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Evidence;

    if-ne v3, v6, :cond_6

    iget-object v3, v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    .line 123
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_6

    .line 125
    iget v3, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->referenceVariant:I

    sub-int/2addr v3, v4

    .line 126
    .local v3, "variant":I
    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->REFERENCE_SHA256:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v0}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->sha256([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->REFERENCE_SHA256:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v7, v1, Lcom/ahsim/demulation/DuneHackR82cRazorCombatAudit$Result;->romSha256:Ljava/lang/String;

    .line 127
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "routes":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;>;"
    const/4 v7, 0x0

    move v9, v7

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_4

    .line 131
    sget-object v7, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->REFERENCE_SITES:[[I

    aget-object v7, v7, v3

    aget v10, v7, v9

    .line 132
    .local v10, "site":I
    iget-object v7, v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->directCalls:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;

    .line 133
    .local v7, "direct":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    iget v8, v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->instructionOffset:I

    if-ne v8, v10, :cond_3

    iget-boolean v8, v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->observedStackSetup:Z

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;->resolvedTarget:I

    iget v11, v2, Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$Result;->entryOffset:I

    if-ne v8, v11, :cond_3

    .line 136
    sget-object v8, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->ANCHOR_HEX:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->hexBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 137
    .local v8, "anchor":[B
    array-length v11, v8

    sub-int v11, v10, v11

    invoke-static {v0, v11, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->match([BI[B)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 141
    if-ne v9, v5, :cond_0

    const/4 v11, 0x4

    goto :goto_1

    :cond_0
    const/4 v11, 0x6

    :goto_1
    move/from16 v16, v11

    .line 142
    .local v16, "callSize":I
    add-int v11, v10, v16

    new-array v12, v5, [B

    fill-array-data v12, :array_0

    invoke-static {v0, v11, v12}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->match([BI[B)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 144
    move-object v11, v8

    .end local v8    # "anchor":[B
    .local v11, "anchor":[B
    new-instance v8, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;

    sget-object v12, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->MODES:[I

    aget v12, v12, v9

    sget-object v13, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->PATTERNS:[Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;

    aget-object v13, v13, v9

    sget-object v14, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->OBJECT_REGS:[Ljava/lang/String;

    aget-object v14, v14, v9

    sget-object v15, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit;->DAMAGE_INPUTS:[Ljava/lang/String;

    aget-object v15, v15, v9

    move-object/from16 v17, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    .end local v11    # "anchor":[B
    .local v17, "anchor":[B
    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;-><init>(IIILcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$SourcePattern;Ljava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit-IA;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v7    # "direct":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    .end local v10    # "site":I
    .end local v16    # "callSize":I
    .end local v17    # "anchor":[B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 143
    .restart local v7    # "direct":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    .restart local v8    # "anchor":[B
    .restart local v10    # "site":I
    .restart local v16    # "callSize":I
    :cond_1
    move-object/from16 v17, v8

    .end local v8    # "anchor":[B
    .restart local v17    # "anchor":[B
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0.4.315 call cleanup changed at route "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 138
    .end local v16    # "callSize":I
    .end local v17    # "anchor":[B
    .restart local v8    # "anchor":[B
    :cond_2
    move-object/from16 v17, v8

    .end local v8    # "anchor":[B
    .restart local v17    # "anchor":[B
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0.4.315 argument source changed at route "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    .end local v17    # "anchor":[B
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0.4.315 caller provenance mismatch at route "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .end local v7    # "direct":Lcom/ahsim/demulation/DuneHackR82cStructureCallSiteAudit$CallSite;
    .end local v9    # "i":I
    .end local v10    # "site":I
    :cond_4
    new-instance v5, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Result;-><init>(Ljava/util/List;Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit-IA;)V

    return-object v5

    .line 128
    .end local v4    # "routes":Ljava/util/List;, "Ljava/util/List<Lcom/ahsim/demulation/DuneHackR82cRazorCallRouteAudit$Route;>;"
    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string v5, "0.4.315 ROM SHA mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    .end local v3    # "variant":I
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v4, "0.4.315 requires exact attested Razor caller route"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 1
        0x5ct
        -0x71t
    .end array-data
.end method

.method private static match([BI[B)Z
    .locals 4
    .param p0, "rom"    # [B
    .param p1, "position"    # I
    .param p2, "pattern"    # [B

    .line 156
    const/4 v0, 0x0

    if-ltz p1, :cond_3

    array-length v1, p0

    array-length v2, p2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 158
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_1

    return v0

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_3
    :goto_1
    return v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 164
    .local v0, "hash":[B
    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 165
    .local v1, "digits":[C
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v2, "result":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v0, v4

    .line 167
    .local v5, "value":B
    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    and-int/lit8 v6, v5, 0xf

    aget-char v6, v1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    nop

    .end local v5    # "value":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 171
    .end local v0    # "hash":[B
    .end local v1    # "digits":[C
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
