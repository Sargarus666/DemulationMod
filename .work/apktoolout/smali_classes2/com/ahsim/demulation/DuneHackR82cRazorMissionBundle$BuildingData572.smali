.class public final Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorMissionBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuildingData572"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    }
.end annotation


# static fields
.field public static final BANK_OFFSET:I = 0x83200

.field private static final HEIGHT:[I

.field public static final RECORDS:I = 0x13

.field public static final RECORD_BYTES:I = 0x66

.field public static final REFINERY:I = 0xc

.field public static final SCHEMA:I = 0x23c

.field private static final SHA1:Ljava/lang/String; = "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

.field private static final SHA2:Ljava/lang/String; = "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

.field private static final WIDTH:[I


# instance fields
.field private final records:[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;


# direct methods
.method static bridge synthetic -$$Nest$sfgetHEIGHT()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->HEIGHT:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetWIDTH()[I
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->WIDTH:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 132
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->WIDTH:[I

    .line 133
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->HEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
        0x3
    .end array-data
.end method

.method private constructor <init>([Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;)V
    .locals 0
    .param p1, "records"    # [Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->records:[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    return-void
.end method

.method public static fromVerifiedRazor([BI)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;
    .locals 18
    .param p0, "rom"    # [B
    .param p1, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    move-object/from16 v1, p0

    move/from16 v2, p1

    if-eqz v1, :cond_9

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_9

    :cond_0
    array-length v4, v1

    .line 160
    if-ne v2, v3, :cond_1

    const/4 v5, 0x3

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    mul-int/lit16 v5, v5, 0x400

    mul-int/lit16 v5, v5, 0x400

    if-ne v4, v5, :cond_9

    const v4, 0x83992

    array-length v5, v1

    if-gt v4, v5, :cond_9

    .line 167
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 168
    .local v4, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .local v5, "hex":Ljava/lang/StringBuilder;
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_2

    aget-byte v9, v4, v8

    .line 170
    .local v9, "c":B
    ushr-int/lit8 v10, v9, 0x4

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    and-int/lit8 v10, v9, 0xf

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    nop

    .end local v9    # "c":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 173
    :cond_2
    if-ne v2, v3, :cond_3

    const-string v3, "9dc3bcaf1fff9c37aaf729ca11857fbb0783c7c33dc7fee1173dc2ba53c2104a"

    goto :goto_2

    :cond_3
    const-string v3, "e32b1846ff38fac3163caa03b204148e60a19371131a8806fc1937c7aff383af"

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_8

    .line 177
    .end local v4    # "hash":[B
    .end local v5    # "hex":Ljava/lang/StringBuilder;
    nop

    .line 178
    const/16 v3, 0x13

    new-array v4, v3, [Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    .line 179
    .local v4, "rows":[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    const/4 v5, 0x0

    move v9, v5

    .local v9, "type":I
    :goto_3
    const/16 v5, 0x3e8

    const/16 v6, 0xc

    if-ge v9, v3, :cond_6

    .line 180
    mul-int/lit8 v8, v9, 0x66

    const v10, 0x83200

    add-int v17, v8, v10

    .line 181
    .local v17, "p":I
    add-int/lit8 v8, v17, 0x10

    invoke-static {v1, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v10

    .local v10, "hp":I
    add-int/lit8 v8, v17, 0x16

    invoke-static {v1, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v11

    .line 182
    .local v11, "cost":I
    add-int/lit8 v8, v17, 0x18

    invoke-static {v1, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v12

    .local v12, "production":I
    add-int/lit8 v8, v17, 0x3c

    invoke-static {v1, v8}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v13

    .line 183
    .local v13, "layout":I
    sget-object v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->WIDTH:[I

    array-length v8, v8

    if-ge v13, v8, :cond_5

    if-eqz v11, :cond_5

    const/16 v8, 0x4e20

    if-gt v11, v8, :cond_5

    const/16 v14, 0x7d0

    if-gt v12, v14, :cond_5

    if-gt v10, v8, :cond_5

    if-ne v9, v6, :cond_4

    if-ne v11, v5, :cond_5

    if-ne v10, v14, :cond_5

    const/16 v5, 0x14

    if-ne v12, v5, :cond_5

    const/4 v5, 0x5

    if-ne v13, v5, :cond_5

    .line 188
    :cond_4
    new-instance v8, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    add-int/lit8 v5, v17, 0x3a

    .line 189
    invoke-static {v1, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v5

    int-to-short v14, v5

    add-int/lit8 v5, v17, 0x38

    invoke-static {v1, v5}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->u16([BI)I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;-><init>(IIIIIIILcom/ahsim/demulation/DuneHackR82cRazorMissionBundle-IA;)V

    aput-object v8, v4, v9

    .line 179
    .end local v10    # "hp":I
    .end local v11    # "cost":I
    .end local v12    # "production":I
    .end local v13    # "layout":I
    .end local v17    # "p":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 187
    .restart local v10    # "hp":I
    .restart local v11    # "cost":I
    .restart local v12    # "production":I
    .restart local v13    # "layout":I
    .restart local v17    # "p":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "R82C StructureInfo bank differs from audited Razor data"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    .end local v9    # "type":I
    .end local v10    # "hp":I
    .end local v11    # "cost":I
    .end local v12    # "production":I
    .end local v13    # "layout":I
    .end local v17    # "p":I
    :cond_6
    aget-object v3, v4, v7

    iget v3, v3, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v7, 0xa

    if-ne v3, v7, :cond_7

    aget-object v0, v4, v0

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->layoutId:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    const/16 v0, 0xb

    aget-object v0, v4, v0

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v3, 0x1388

    if-ne v0, v3, :cond_7

    const/16 v0, 0x12

    aget-object v0, v4, v0

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->cost:I

    const/16 v3, 0x1f4

    if-ne v0, v3, :cond_7

    aget-object v0, v4, v6

    iget v0, v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;->storage:I

    if-ne v0, v5, :cond_7

    .line 197
    new-instance v0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;-><init>([Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;)V

    return-object v0

    .line 196
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unrecognized R82C building table signature"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .local v4, "hash":[B
    .restart local v5    # "hex":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v3, "R82C building source SHA-256 not audited"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "rom":[B
    .end local p1    # "variant":I
    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v4    # "hash":[B
    .end local v5    # "hex":Ljava/lang/StringBuilder;
    .restart local p0    # "rom":[B
    .restart local p1    # "variant":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "SHA-256 unavailable"

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 162
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unverified Razor StructureInfo source"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static u16([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "at"    # I

    .line 152
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public get(I)Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;
    .locals 2
    .param p1, "type"    # I

    .line 148
    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572;->records:[Lcom/ahsim/demulation/DuneHackR82cRazorMissionBundle$BuildingData572$Record;

    aget-object v0, v0, p1

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "structure type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
