.class public final Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
.super Ljava/lang/Object;
.source "RazorRuntimeDiagnostics749.java"


# static fields
.field private static final MAX_ERRORS:I = 0xc

.field private static final MAX_EVENTS:I = 0x100

.field private static final MAX_TRACE:I = 0x2ee0


# instance fields
.field private final errors:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serial:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->events:Ljava/util/ArrayDeque;

    .line 23
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errors:Ljava/util/ArrayDeque;

    return-void
.end method

.method private static clean(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "limit"    # I

    .line 45
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...[TRUNCATED]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$createZip$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    const-string v0, "demulation_razor_runtime_749_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$createZip$1(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p0, "a"    # Ljava/io/File;
    .param p1, "b"    # Ljava/io/File;

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "zip"    # Ljava/util/zip/ZipOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 63
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 64
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 65
    return-void
.end method


# virtual methods
.method public createZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "folder"    # Ljava/io/File;
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "frame"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    if-eqz p1, :cond_3

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot create diagnostic directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd-HHmmss-SSS"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "stamp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "demulation_razor_runtime_749_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->eventText()Ljava/lang/String;

    move-result-object v2

    .local v2, "capturedEvents":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errorText()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "capturedErrors":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v4, "zip":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    const-string v5, "README.txt"

    const-string v6, "Demulation Razor runtime diagnostics 0.4.749\nCreated on user request. No ROM bytes, RAM dump or screenshot is included.\nError messages may mention device paths or file identifiers; review before sharing.\nstate.txt: live activity snapshot; frame.txt: canvas render diagnostics.\nevents.txt: recent selection/render/scheduler actions; errors.txt: exceptions.\n"

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v5, "state.txt"

    const/16 v6, 0x7530

    invoke-static {p2, v6}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v5, "frame.txt"

    const/16 v6, 0x2ee0

    invoke-static {p3, v6}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v5, "events.txt"

    invoke-static {v4, v5, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "errors.txt"

    invoke-static {v4, v5, v3}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->put(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    nop

    .line 90
    new-instance v4, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 92
    .local v4, "old":[Ljava/io/File;
    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x6

    if-le v5, v6, :cond_2

    .line 93
    new-instance v5, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 94
    const/4 v5, 0x6

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v5    # "i":I
    :cond_2
    return-object v1

    .line 74
    .local v4, "zip":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "stamp":Ljava/lang/String;
    .end local v1    # "zipFile":Ljava/io/File;
    .end local v2    # "capturedEvents":Ljava/lang/String;
    .end local v3    # "capturedErrors":Ljava/lang/String;
    .end local p1    # "folder":Ljava/io/File;
    .end local p2    # "state":Ljava/lang/String;
    .end local p3    # "frame":Ljava/lang/String;
    :goto_2
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    .end local v4    # "zip":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "stamp":Ljava/lang/String;
    .restart local v1    # "zipFile":Ljava/io/File;
    .restart local v2    # "capturedEvents":Ljava/lang/String;
    .restart local v3    # "capturedErrors":Ljava/lang/String;
    .restart local p1    # "folder":Ljava/io/File;
    .restart local p2    # "state":Ljava/lang/String;
    .restart local p3    # "frame":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    throw v4

    .line 69
    .end local v0    # "stamp":Ljava/lang/String;
    .end local v1    # "zipFile":Ljava/io/File;
    .end local v2    # "capturedEvents":Ljava/lang/String;
    .end local v3    # "capturedErrors":Ljava/lang/String;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No diagnostic storage directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v0, "sw":Ljava/io/StringWriter;
    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 37
    .end local p0    # "this":Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-static {v1, v2}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception object unavailable"

    move-object v1, v2

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errors:Ljava/util/ArrayDeque;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x64

    invoke-static {p1, v4}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errors:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errors:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_2
    const-string v2, "ERROR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_3

    const-string v4, ""

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->event(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 34
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "description":Ljava/lang/String;
    .end local p1    # "category":Ljava/lang/String;
    .end local p2    # "error":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized errorText()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->errors:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n---\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    .end local v2    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 55
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    monitor-enter p0

    .line 27
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%06d %s [%s] %s"

    iget-wide v2, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->serial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->serial:J

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 29
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    invoke-static {p1, v4}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2bc

    invoke-static {p2, v5}, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    .end local p0    # "this":Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
    :cond_0
    monitor-exit p0

    return-void

    .line 26
    .end local v0    # "entry":Ljava/lang/String;
    .end local p1    # "category":Ljava/lang/String;
    .end local p2    # "detail":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized eventText()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;->events:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    .end local v2    # "line":Ljava/lang/String;
    .end local p0    # "this":Lcom/ahsim/demulation/RazorRuntimeDiagnostics749;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 49
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
