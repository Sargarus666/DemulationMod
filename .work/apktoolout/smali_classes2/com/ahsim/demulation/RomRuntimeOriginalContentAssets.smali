.class public final Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
.super Ljava/lang/Object;
.source "RomRuntimeOriginalContentAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;,
        Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;,
        Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;,
        Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final ROM_BYTES:Ljava/nio/charset/Charset;

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final installRoot:Ljava/io/File;

.field private final localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

.field private final sourceProfile:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetROM_BYTES()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->ROM_BYTES:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcopyUnchecked([B)[B
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->copyUnchecked([B)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->ASCII:Ljava/nio/charset/Charset;

    .line 17
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->ROM_BYTES:Ljava/nio/charset/Charset;

    .line 18
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "installRoot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;)V
    .locals 1
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "localization"    # Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;-><init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;Ljava/lang/String;)V
    .locals 2
    .param p1, "installRoot"    # Ljava/io/File;
    .param p2, "localization"    # Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;
    .param p3, "sourceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->installRoot:Ljava/io/File;

    .line 40
    iput-object p2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    .line 41
    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->sourceProfile:Ljava/lang/String;

    .line 42
    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Original-content READY root is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_0

    .line 368
    new-array v0, p2, [B

    .line 369
    .local v0, "out":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    return-object v0

    .line 367
    .end local v0    # "out":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content copy range"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyUnchecked([B)[B
    .locals 3
    .param p0, "data"    # [B

    .line 373
    array-length v0, p0

    new-array v0, v0, [B

    .line 374
    .local v0, "out":[B
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    return-object v0
.end method

.method static decodeCString([BI[I)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "next"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    if-eqz p0, :cond_4

    if-ltz p1, :cond_4

    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 328
    move v0, p1

    .line 329
    .local v0, "end":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    .line 330
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 331
    .local v1, "ch":I
    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 332
    nop

    .end local v1    # "ch":I
    add-int/lit8 v0, v0, 0x1

    .line 333
    goto :goto_0

    .line 331
    .restart local v1    # "ch":I
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Content text contains unsupported control byte"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    .end local v1    # "ch":I
    :cond_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 335
    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 336
    :cond_2
    new-instance v1, Ljava/lang/String;

    sub-int v2, v0, p1

    sget-object v3, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->ROM_BYTES:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1

    .line 334
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Content text is unterminated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "end":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content text cursor outside asset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeUtf8Name([BIILjava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-le p2, p1, :cond_1

    .line 119
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    sget-object v2, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HUD object name is blank: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HUD object name is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findZero([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    if-ltz p1, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    .line 110
    move v0, p1

    .line 111
    .local v0, "p":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 113
    return v0

    .line 112
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Russian HUD object name is unterminated"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "p":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Russian HUD object-name payload is truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readExactly(Ljava/io/File;I)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 379
    .local v0, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 380
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x2000

    :try_start_1
    new-array v2, v2, [B

    .line 381
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 383
    .local v3, "total":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 384
    .local v4, "count":I
    if-gez v4, :cond_1

    .line 390
    .end local v4    # "count":I
    if-ne v3, p1, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 391
    return-object v4

    .line 390
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Original-content asset changed while reading"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v4

    .line 385
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "count":I
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    .line 386
    :cond_2
    add-int/2addr v3, v4

    .line 387
    if-gt v3, p1, :cond_3

    .line 388
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    .end local v4    # "count":I
    goto :goto_0

    .line 387
    .restart local v4    # "count":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Original-content asset grew while reading"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .end local v2    # "buffer":[B
    .end local v3    # "total":I
    .end local v4    # "count":I
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    .end local p1    # "expectedLength":I
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v1    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    .restart local p1    # "expectedLength":I
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private readLocalizedContent(Ljava/lang/String;)[B
    .locals 1
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, p1}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "root"    # Ljava/io/File;
    .param p2, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 361
    .local v0, "child":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "rp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "cp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    return-object v0

    .line 363
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Original-content path escapes active generation"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 397
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 398
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v2, "out":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .local v5, "b":B
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%02x"

    and-int/lit16 v8, v5, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 401
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static validateFixedText([BLjava/lang/String;Z)V
    .locals 5
    .param p0, "record"    # [B
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "allowHighBit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v2, p0, v1

    .line 341
    .local v2, "value":B
    and-int/lit16 v3, v2, 0xff

    .line 342
    .local v3, "ch":I
    if-eqz v3, :cond_1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    if-nez p2, :cond_1

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " contains unsupported byte/padding"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    .end local v2    # "value":B
    .end local v3    # "ch":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    return-void
.end method


# virtual methods
.method public endingTextData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const-string v0, "content/ending/ending_text_v1.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->readLocalizedContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 310
    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    array-length v1, v0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_8

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "p":I
    const/4 v2, 0x0

    .line 313
    .local v2, "terminated":Z
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 314
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "p":I
    .local v3, "p":I
    aget-byte v1, v0, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    .line 315
    .local v1, "ch":I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    move v1, v3

    goto :goto_3

    .line 316
    :cond_0
    if-ne v1, v4, :cond_3

    .line 317
    array-length v5, v0

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "p":I
    .local v5, "p":I
    aget-byte v3, v0, v3

    and-int/2addr v3, v4

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    move v1, v5

    goto :goto_2

    :cond_1
    move v3, v5

    .end local v5    # "p":I
    .restart local v3    # "p":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Ending READY palette marker mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :cond_3
    const/16 v4, 0xa

    if-eq v1, v4, :cond_5

    const/16 v4, 0x20

    if-lt v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x7e

    if-gt v1, v4, :cond_4

    goto :goto_1

    .line 319
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Ending READY stream contains unsupported byte"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 321
    .end local v1    # "ch":I
    :cond_5
    :goto_1
    move v1, v3

    .end local v3    # "p":I
    .local v1, "p":I
    :goto_2
    goto :goto_0

    .line 322
    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    array-length v3, v0

    if-ne v1, v3, :cond_7

    .line 323
    return-object v0

    .line 322
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Ending READY stream terminator mismatch"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    .end local v1    # "p":I
    .end local v2    # "terminated":Z
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Ending content stream size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public germanBaseActive()Z
    .locals 2

    .line 66
    const-string v0, "dune_arrakis_germany_gm_t70246_00"

    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->sourceProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public houseJoinTextBytes(I)[B
    .locals 6
    .param p1, "romHouse"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    .line 149
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 150
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "frontend/mentat/radnor_harkonnen_join_text.bin"

    aput-object v4, v1, v3

    const-string v4, "frontend/mentat/cyril_atreides_join_text.bin"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "frontend/mentat/ammon_ordos_join_text.bin"

    aput-object v4, v1, v0

    .line 155
    .local v1, "paths":[Ljava/lang/String;
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    aget-object v4, v1, p1

    invoke-virtual {v0, v4}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 157
    .end local v1    # "paths":[Ljava/lang/String;
    :cond_0
    const-string v0, "content/frontend/exact_text_v1.bin"

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    .local v0, "data":[B
    new-instance v1, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;

    invoke-direct {v1, v0, v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;-><init>([BI)V

    .line 159
    .local v1, "c":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->nextCString()Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 161
    iget v4, v1, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    .line 162
    .local v4, "start":I
    invoke-virtual {v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->nextCString()Ljava/lang/String;

    .line 163
    if-ne v3, p1, :cond_2

    .line 164
    iget v2, v1, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    sub-int/2addr v2, v4

    .line 165
    .local v2, "length":I
    invoke-static {v0, v4, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->copy([BII)[B

    move-result-object v5

    return-object v5

    .line 160
    .end local v2    # "length":I
    .end local v4    # "start":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 168
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "House join text is missing"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v0    # "data":[B
    .end local v1    # "c":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid ROM House index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public installRoot()Ljava/io/File;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->installRoot:Ljava/io/File;

    return-object v0
.end method

.method public missionPresentationText()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const-string v1, "content/mission/presentation_text_v1.bin"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public missionResultExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const-string v0, "content/result/mission_result_data_v1.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->readLocalizedContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 269
    .local v0, "data":[B
    array-length v1, v0

    const/16 v2, 0x1ed

    if-ne v1, v2, :cond_d

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "p":I
    const/16 v2, 0x8

    new-array v4, v2, [I

    .line 272
    .local v4, "thresholds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 273
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, v4, v3

    .line 272
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 274
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x7

    aget v3, v4, v2

    const v5, 0xffff

    if-ne v3, v5, :cond_c

    .line 275
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    aget v5, v4, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v4, v6

    if-le v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Mission-result thresholds are not increasing"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v5, 0x1

    const/16 v6, 0x11

    aput v6, v3, v5

    const/4 v7, 0x0

    const/16 v8, 0x9

    aput v8, v3, v7

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    .line 279
    .local v3, "ranks":[[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_3

    .line 280
    aget-object v10, v3, v9

    invoke-static {v0, v1, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x11

    .line 281
    aget-object v10, v3, v9

    const-string v11, "Mission-result rank record"

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->validateFixedText([BLjava/lang/String;Z)V

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 283
    .end local v9    # "i":I
    :cond_3
    new-array v6, v2, [I

    aput v8, v6, v5

    const/4 v9, 0x3

    aput v9, v6, v7

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 284
    .local v6, "houses":[[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    array-length v11, v6

    if-ge v10, v11, :cond_4

    .line 285
    aget-object v11, v6, v10

    invoke-static {v0, v1, v11, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x9

    .line 286
    aget-object v11, v6, v10

    const-string v12, "Mission-result House label"

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->validateFixedText([BLjava/lang/String;Z)V

    .line 284
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 288
    .end local v10    # "i":I
    :cond_4
    new-array v10, v9, [I

    const/16 v11, 0xa

    aput v11, v10, v2

    aput v9, v10, v5

    aput v8, v10, v7

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[B

    .line 289
    .local v2, "passwords":[[[B
    const/4 v5, 0x0

    .local v5, "mission":I
    :goto_4
    if-ge v5, v8, :cond_a

    .line 290
    const/4 v10, 0x0

    .local v10, "house":I
    :goto_5
    if-ge v10, v9, :cond_9

    .line 291
    move v12, v1

    .line 292
    .local v12, "start":I
    :goto_6
    array-length v13, v0

    if-ge v1, v13, :cond_6

    aget-byte v13, v0, v1

    if-eqz v13, :cond_6

    .line 293
    aget-byte v13, v0, v1

    and-int/lit16 v13, v13, 0xff

    .line 294
    .local v13, "ch":I
    const/16 v14, 0x20

    if-lt v13, v14, :cond_5

    const/16 v14, 0x7e

    if-gt v13, v14, :cond_5

    .line 295
    nop

    .end local v13    # "ch":I
    add-int/lit8 v1, v1, 0x1

    .line 296
    goto :goto_6

    .line 294
    .restart local v13    # "ch":I
    :cond_5
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Mission-result password is not ASCII"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 297
    .end local v13    # "ch":I
    :cond_6
    array-length v13, v0

    if-ge v1, v13, :cond_8

    .line 298
    sub-int v13, v1, v12

    if-ne v13, v11, :cond_7

    .line 299
    aget-object v13, v2, v5

    aget-object v13, v13, v10

    invoke-static {v0, v12, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    nop

    .end local v12    # "start":I
    add-int/lit8 v1, v1, 0x1

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 298
    .restart local v12    # "start":I
    :cond_7
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Mission-result password length mismatch"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 297
    :cond_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Mission-result password is unterminated"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    .end local v10    # "house":I
    .end local v12    # "start":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 303
    .end local v5    # "mission":I
    :cond_a
    array-length v5, v0

    if-ne v1, v5, :cond_b

    .line 304
    move-object v5, v3

    .end local v3    # "ranks":[[B
    .local v5, "ranks":[[B
    new-instance v3, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;

    const/4 v8, 0x0

    move-object v7, v2

    .end local v2    # "passwords":[[[B
    .local v7, "passwords":[[[B
    invoke-direct/range {v3 .. v8}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$MissionResultExactContent;-><init>([I[[B[[B[[[BLcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V

    return-object v3

    .line 303
    .end local v5    # "ranks":[[B
    .end local v7    # "passwords":[[[B
    .restart local v2    # "passwords":[[[B
    .restart local v3    # "ranks":[[B
    :cond_b
    move-object v7, v2

    move-object v5, v3

    .end local v2    # "passwords":[[[B
    .end local v3    # "ranks":[[B
    .restart local v5    # "ranks":[[B
    .restart local v7    # "passwords":[[[B
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mission-result READY trailing bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    .end local v5    # "ranks":[[B
    .end local v6    # "houses":[[B
    .end local v7    # "passwords":[[[B
    :cond_c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mission-result threshold sentinel mismatch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    .end local v1    # "p":I
    .end local v4    # "thresholds":[I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mission-result READY size mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/lang/String;)[B
    .locals 7
    .param p1, "relativePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lcom/ahsim/demulation/RomOriginalContentAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;

    move-result-object v0

    .line 48
    .local v0, "entry":Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;
    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->installRoot:Ljava/io/File;

    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->sourceProfile:Ljava/lang/String;

    iget-object v3, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    iget v4, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->length:I

    iget-object v5, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expectedForInstall(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v1

    .line 51
    .local v1, "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    iget-object v2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->installRoot:Ljava/io/File;

    iget-object v3, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->safeChild(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget v5, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 55
    iget v3, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    invoke-static {v2, v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->readExactly(Ljava/io/File;I)[B

    move-result-object v3

    .line 56
    .local v3, "data":[B
    iget-object v4, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    invoke-static {v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->sha256([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    return-object v3

    .line 57
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installed original-content asset fingerprint mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    .end local v3    # "data":[B
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed original-content asset is missing or has wrong size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/ahsim/demulation/RomOriginalContentAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v1    # "expected":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Original-content asset is not declared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public russianHudObjectNames()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const-string v2, "content/hud/object_names_utf8_v1.bin"

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, v2}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    .local v0, "data":[B
    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/String;

    .line 92
    .local v2, "units":[Ljava/lang/String;
    const/16 v3, 0x13

    new-array v3, v3, [Ljava/lang/String;

    .line 93
    .local v3, "structures":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "p":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 95
    invoke-static {v0, v4}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->findZero([BI)I

    move-result v6

    .line 96
    .local v6, "end":I
    const-string v7, "Unit"

    invoke-static {v0, v4, v6, v7, v5}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->decodeUtf8Name([BIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 97
    add-int/lit8 v4, v6, 0x1

    .line 94
    .end local v6    # "end":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 100
    invoke-static {v0, v4}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->findZero([BI)I

    move-result v6

    .line 101
    .restart local v6    # "end":I
    const-string v7, "Structure"

    invoke-static {v0, v4, v6, v7, v5}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->decodeUtf8Name([BIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 102
    add-int/lit8 v4, v6, 0x1

    .line 99
    .end local v6    # "end":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    .end local v5    # "i":I
    :cond_2
    array-length v5, v0

    if-ne v4, v5, :cond_3

    .line 105
    new-instance v5, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    invoke-direct {v5, v2, v3, v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;-><init>([Ljava/lang/String;[Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V

    return-object v5

    .line 104
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Russian HUD object-name payload has trailing data"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v0    # "data":[B
    .end local v2    # "units":[Ljava/lang/String;
    .end local v3    # "structures":[Ljava/lang/String;
    .end local v4    # "p":I
    :cond_4
    :goto_2
    return-object v1
.end method

.method public russianLocalizationActive()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public titleStrings()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    const-string v3, "frontend/direct/title_strings.bin"

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->provides(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->localization:Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RomRuntimeRussianLocalizationAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "data":[B
    goto :goto_1

    .line 135
    .end local v0    # "data":[B
    :cond_0
    const-string v0, "content/frontend/exact_text_v1.bin"

    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    .line 136
    .local v0, "exact":[B
    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v1}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->copy([BII)[B

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 138
    .local v0, "data":[B
    :goto_1
    new-instance v3, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;

    invoke-direct {v3, v0, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;-><init>([BI)V

    .line 139
    .local v3, "c":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 140
    .local v2, "out":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->nextCString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v3, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    if-ne v4, v1, :cond_3

    goto :goto_3

    .line 142
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Frontend title-string block size mismatch"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_4
    :goto_3
    return-object v2
.end method

.method public tutorialExactContent()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-string v0, "content/tutorial/exact_text_v1.bin"

    invoke-direct {p0, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->readLocalizedContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    .local v0, "data":[B
    const/16 v1, 0x19

    new-array v1, v1, [[B

    .line 201
    .local v1, "messages":[[B
    const/4 v2, 0x0

    .line 202
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 203
    move v4, v2

    .line 204
    .local v4, "start":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_2

    aget-byte v5, v0, v2

    if-eqz v5, :cond_2

    .line 205
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    .line 206
    .local v5, "ch":I
    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_0

    goto :goto_2

    .line 207
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Tutorial READY text contains unsupported byte"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_1
    :goto_2
    nop

    .end local v5    # "ch":I
    add-int/lit8 v2, v2, 0x1

    .line 210
    goto :goto_1

    .line 211
    :cond_2
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 212
    sub-int v5, v2, v4

    invoke-static {v0, v4, v5}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->copy([BII)[B

    move-result-object v5

    aput-object v5, v1, v3

    .line 213
    nop

    .end local v4    # "start":I
    add-int/lit8 v2, v2, 0x1

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .restart local v4    # "start":I
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Tutorial READY message is unterminated"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    .end local v3    # "i":I
    .end local v4    # "start":I
    :cond_4
    invoke-virtual {p0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->germanBaseActive()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x96

    goto :goto_3

    :cond_5
    const/16 v3, 0x80

    .line 216
    .local v3, "characterMapBytes":I
    :goto_3
    array-length v4, v0

    sub-int/2addr v4, v2

    if-ne v4, v3, :cond_6

    .line 218
    new-instance v4, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;

    invoke-static {v0, v2, v3}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->copy([BII)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$TutorialExactContent;-><init>([[B[BLcom/ahsim/demulation/RomRuntimeOriginalContentAssets-IA;)V

    return-object v4

    .line 217
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Tutorial READY character-map size mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
