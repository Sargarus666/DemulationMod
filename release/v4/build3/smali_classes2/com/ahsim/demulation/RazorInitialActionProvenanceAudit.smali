.class public final Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;
.super Ljava/lang/Object;
.source "RazorInitialActionProvenanceAudit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;
    }
.end annotation


# static fields
.field private static final CREATE:[I

.field private static final QUEUE_JSR:[I

.field private static final QUEUE_WRITER:[I

.field private static final SCRIPT_INIT:[I

.field private static final SCRIPT_LOAD:[I

.field private static final SET_ACTION:[I


# direct methods
.method static bridge synthetic -$$Nest$sfgetCREATE()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->CREATE:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetQUEUE_WRITER()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_WRITER:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetSET_ACTION()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SET_ACTION:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 16
    const v0, 0x1c92e

    const v1, 0x1ca22

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->CREATE:[I

    .line 17
    const v0, 0x19ebc

    const v1, 0x19fac

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SET_ACTION:[I

    .line 18
    const v0, 0xcf8e

    const v1, 0xd0ca

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SCRIPT_INIT:[I

    .line 19
    const v0, 0xcff2

    const v1, 0xd12e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SCRIPT_LOAD:[I

    .line 20
    const v0, 0xa2d6

    const v1, 0xa404

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_JSR:[I

    .line 21
    const v0, 0xa310

    const v1, 0xa43e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_WRITER:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;
    .locals 14
    .param p0, "rom"    # [B
    .param p1, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    nop

    .line 65
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit;->inspect([BLjava/lang/String;)Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;

    move-result-object v0

    .line 66
    .local v0, "previous":Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;
    iget v1, v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->variant:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 67
    .local v1, "v":I
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    const-string v5, "variant"

    invoke-static {v4, v5}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 68
    sget-object v4, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->CREATE:[I

    aget v4, v4, v1

    .local v4, "base":I
    sget-object v5, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SET_ACTION:[I

    aget v5, v5, v1

    .local v5, "action":I
    sget-object v6, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_WRITER:[I

    aget v6, v6, v1

    .line 69
    .local v6, "queue":I
    iget v7, v0, Lcom/ahsim/demulation/RazorUnitCreateCallGraphAudit$Evidence;->unitCreateRomAddress:I

    if-ne v7, v4, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const-string v8, "authenticated constructor"

    invoke-static {v7, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 70
    add-int/lit16 v7, v4, 0xc0

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    const/16 v8, 0xff

    const/4 v9, 0x3

    const/16 v10, 0x157c

    if-ne v7, v10, :cond_3

    add-int/lit16 v7, v4, 0xc2

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    if-ne v7, v8, :cond_3

    add-int/lit16 v7, v4, 0xc4

    .line 71
    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    if-ne v7, v9, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v3

    .line 70
    :goto_3
    const-string v11, "constructor writes sentinel to Unit+03"

    invoke-static {v7, v11}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 72
    add-int/lit16 v7, v4, 0xcc

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    const/16 v11, 0x54

    if-ne v7, v10, :cond_4

    add-int/lit16 v7, v4, 0xce

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    if-ne v7, v9, :cond_4

    add-int/lit16 v7, v4, 0xd0

    .line 73
    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    if-ne v7, v11, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v3

    .line 72
    :goto_4
    const-string v12, "constructor initializes Unit+54 separately"

    invoke-static {v7, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 74
    add-int/lit16 v7, v4, 0xe6

    sget-object v12, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SCRIPT_INIT:[I

    aget v12, v12, v1

    invoke-static {p0, v7, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->jsrAbs([BII)Z

    move-result v7

    const-string v12, "constructor Script_Init"

    invoke-static {v7, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 76
    add-int/lit16 v7, v4, 0x1ee

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    const/16 v12, 0x4a45

    if-ne v7, v12, :cond_5

    add-int/lit16 v7, v4, 0x1f0

    invoke-static {p0, v7}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v7

    const/16 v12, 0x6746

    if-ne v7, v12, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v3

    :goto_5
    const-string v12, "conditional action branch"

    invoke-static {v7, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 78
    add-int/lit16 v7, v4, 0x1f2

    add-int/lit8 v7, v7, 0x46

    .line 79
    .local v7, "bypass":I
    add-int/lit16 v12, v4, 0x212

    if-le v7, v12, :cond_6

    add-int/lit16 v12, v4, 0x250

    if-ge v7, v12, :cond_6

    move v12, v2

    goto :goto_6

    :cond_6
    move v12, v3

    :goto_6
    const-string v13, "branch bypasses SetAction call"

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 81
    add-int/lit16 v12, v4, 0x212

    invoke-static {p0, v12, v5}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->jsrPc([BII)Z

    move-result v12

    const-string v13, "conditional Unit_SetAction call"

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 82
    invoke-static {p0, v5}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v12

    const/16 v13, 0x48e7

    if-ne v12, v13, :cond_7

    add-int/lit8 v12, v5, 0x2

    invoke-static {p0, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v12

    const/16 v13, 0x1030

    if-ne v12, v13, :cond_7

    move v12, v2

    goto :goto_7

    :cond_7
    move v12, v3

    :goto_7
    const-string v13, "verified action function entry"

    invoke-static {v12, v13}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 84
    add-int/lit16 v12, v5, 0xa6

    invoke-static {p0, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v12

    const/16 v13, 0x1543

    if-ne v12, v13, :cond_8

    add-int/lit16 v12, v5, 0xa8

    invoke-static {p0, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v12

    if-ne v12, v11, :cond_8

    move v11, v2

    goto :goto_8

    :cond_8
    move v11, v3

    :goto_8
    const-string v12, "SetAction writes Unit+54"

    invoke-static {v11, v12}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 86
    add-int/lit16 v11, v5, 0xaa

    invoke-static {p0, v11}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v11

    if-ne v11, v10, :cond_9

    add-int/lit16 v10, v5, 0xac

    invoke-static {p0, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v10

    if-ne v10, v8, :cond_9

    add-int/lit16 v8, v5, 0xae

    .line 87
    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x55

    if-ne v8, v10, :cond_9

    move v8, v2

    goto :goto_9

    :cond_9
    move v8, v3

    .line 86
    :goto_9
    const-string v10, "SetAction resets Unit+55"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 88
    add-int/lit16 v8, v5, 0xc2

    sget-object v10, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SCRIPT_INIT:[I

    aget v10, v10, v1

    invoke-static {p0, v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->jsrAbs([BII)Z

    move-result v8

    const-string v10, "SetAction reinitializes VM"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 89
    add-int/lit16 v8, v5, 0xda

    sget-object v10, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->SCRIPT_LOAD:[I

    aget v10, v10, v1

    invoke-static {p0, v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->jsrAbs([BII)Z

    move-result v8

    const-string v10, "SetAction calls Script_Load"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 90
    add-int/lit16 v8, v5, 0xd2

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x4880

    if-ne v8, v10, :cond_a

    add-int/lit16 v8, v5, 0xd4

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x3f00

    if-ne v8, v10, :cond_a

    add-int/lit16 v8, v5, 0xd6

    .line 91
    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x486a

    if-ne v8, v10, :cond_a

    add-int/lit16 v8, v5, 0xd8

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x16

    if-ne v8, v10, :cond_a

    move v8, v2

    goto :goto_a

    :cond_a
    move v8, v3

    .line 90
    :goto_a
    const-string v10, "original type and VM context passed to Script_Load"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 93
    sget-object v8, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_JSR:[I

    aget v8, v8, v1

    invoke-static {p0, v8, v4}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->jsrAbs([BII)Z

    move-result v8

    const-string v10, "queue creates original UNIT"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 94
    sget-object v8, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_JSR:[I

    aget v8, v8, v1

    add-int/lit8 v8, v8, 0xa

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x2648

    if-ne v8, v10, :cond_b

    move v8, v2

    goto :goto_b

    :cond_b
    move v8, v3

    :goto_b
    const-string v10, "queue copies creation result A0 into A3"

    invoke-static {v8, v10}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 96
    invoke-static {p0, v6}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    const/16 v10, 0x1740

    if-ne v8, v10, :cond_c

    add-int/lit8 v8, v6, 0x2

    invoke-static {p0, v8}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v8

    if-ne v8, v9, :cond_c

    move v8, v2

    goto :goto_c

    :cond_c
    move v8, v3

    :goto_c
    const-string v9, "queue writes D0 to Unit+03 via A3"

    invoke-static {v8, v9}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 98
    sget-object v8, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_JSR:[I

    aget v8, v8, v1

    if-le v6, v8, :cond_d

    sget-object v8, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->QUEUE_JSR:[I

    aget v8, v8, v1

    sub-int v8, v6, v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_d

    goto :goto_d

    :cond_d
    move v2, v3

    :goto_d
    const-string v3, "queue write occurs after creation result"

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->require(ZLjava/lang/String;)V

    .line 100
    new-instance v2, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit$Evidence;-><init>(ILcom/ahsim/demulation/RazorInitialActionProvenanceAudit-IA;)V

    return-object v2
.end method

.method private static jsrAbs([BII)Z
    .locals 2
    .param p0, "b"    # [B
    .param p1, "at"    # I
    .param p2, "destination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v0

    const/16 v1, 0x4eb9

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->longWord([BI)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static jsrPc([BII)Z
    .locals 2
    .param p0, "b"    # [B
    .param p1, "at"    # I
    .param p2, "destination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v0

    const/16 v1, 0x4eba

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static longWord([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RazorInitialActionProvenanceAudit;->word([BI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static require(ZLjava/lang/String;)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    if-eqz p0, :cond_0

    .line 56
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Razor initial action provenance mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static word([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 49
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor address outside ROM"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
