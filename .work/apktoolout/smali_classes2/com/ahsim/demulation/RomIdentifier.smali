.class public final Lcom/ahsim/demulation/RomIdentifier;
.super Ljava/lang/Object;
.source "RomIdentifier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static identify(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;)Lcom/ahsim/demulation/GenesisRomIdentity$Result;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "selection"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 20
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v1, "input":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 24
    :try_start_1
    invoke-static {v1}, Lcom/ahsim/demulation/GenesisRomIdentity;->identify(Ljava/io/InputStream;)Lcom/ahsim/demulation/GenesisRomIdentity$Result;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    :cond_0
    return-object v2

    .line 20
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 22
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Selected ROM cannot be opened"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :goto_0
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    .line 25
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Read access to the selected ROM was revoked"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 17
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ROM is selected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
