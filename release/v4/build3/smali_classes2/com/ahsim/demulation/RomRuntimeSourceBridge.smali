.class public final Lcom/ahsim/demulation/RomRuntimeSourceBridge;
.super Ljava/lang/Object;
.source "RomRuntimeSourceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static open(Landroid/content/Context;)Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    if-eqz p0, :cond_3

    .line 28
    invoke-static {p0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeBundleSourceSha256(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "expectedSha256":Ljava/lang/String;
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v1

    .line 30
    .local v1, "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 35
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v3, "input":Ljava/io/InputStream;
    :try_start_1
    iget-wide v4, v1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    invoke-static {v3, v4, v5, v0}, Lcom/ahsim/demulation/RomRuntimeSourceVerifier;->readAndVerify(Ljava/io/InputStream;JLjava/lang/String;)Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;

    move-result-object v4

    .line 38
    .local v4, "verified":Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;
    new-instance v5, Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;

    iget-object v6, v4, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;->bytes:[B

    iget-object v7, v1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->displayName:Ljava/lang/String;

    iget-object v8, v4, Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;->sha256:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/ahsim/demulation/RomRuntimeSourceBridge$Source;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :cond_0
    return-object v5

    .line 35
    .end local v4    # "verified":Lcom/ahsim/demulation/RomRuntimeSourceVerifier$Result;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "expectedSha256":Ljava/lang/String;
    .end local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 39
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v0    # "expectedSha256":Ljava/lang/String;
    .restart local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Persistent permission for the selected ROM is unavailable"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 31
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Selected user ROM is unavailable; choose the ROM again in Launcher"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 27
    .end local v0    # "expectedSha256":Ljava/lang/String;
    .end local v1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Context is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
