.class public final Lcom/ahsim/demulation/RazorGameRomStore;
.super Ljava/lang/Object;
.source "RazorGameRomStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    }
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "source_name"

.field private static final KEY_SHA:Ljava/lang/String; = "verified_sha256"

.field private static final KEY_URI:Ljava/lang/String; = "source_uri"

.field private static final PREFS:Ljava/lang/String; = "razor_native_game_rom_v554"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 97
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->storedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "previous":Landroid/net/Uri;
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    invoke-static {p0, v0}, Lcom/ahsim/demulation/RazorGameRomStore;->safeReleaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 100
    return-void
.end method

.method public static load(Landroid/content/Context;)Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "source_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "raw":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v2

    .line 38
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v4, :cond_2

    .line 41
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 42
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v3, Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "source_name"

    const-string v6, "ROM"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "verified_sha256"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/ahsim/demulation/RazorGameRomStore$Entry;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    return-object v3

    .line 40
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "ROM is no longer readable"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "raw":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local p0    # "c":Landroid/content/Context;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    .restart local v0    # "raw":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local p0    # "c":Landroid/content/Context;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "raw":Ljava/lang/String;
    .end local p0    # "c":Landroid/content/Context;
    :cond_3
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 44
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "raw":Ljava/lang/String;
    .restart local p0    # "c":Landroid/content/Context;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->clear(Landroid/content/Context;)V

    .line 46
    return-object v2
.end method

.method public static persist(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_9

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    .local v1, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 55
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 58
    nop

    .line 59
    const-string v7, "ROM"

    .line 60
    .local v7, "name":Ljava/lang/String;
    :try_start_1
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_display_name"

    const/4 v8, 0x0

    aput-object v0, v3, v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v2, "uri":Landroid/net/Uri;
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .local p1, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v0

    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz p1, :cond_0

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "name":Ljava/lang/String;
    .end local p0    # "c":Landroid/content/Context;
    .end local p2    # "flags":I
    :cond_0
    :goto_0
    throw v3

    .line 63
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p0    # "c":Landroid/content/Context;
    .restart local p2    # "flags":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .end local p1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v2    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v2, p1

    .line 64
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_2
    :try_start_6
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2

    .line 65
    .local p1, "in":Ljava/io/InputStream;
    if-eqz p1, :cond_6

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ltz v0, :cond_6

    .line 66
    if-eqz p1, :cond_3

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2

    .line 67
    .end local p1    # "in":Ljava/io/InputStream;
    :cond_3
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->storedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 68
    .local p1, "previous":Landroid/net/Uri;
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "source_uri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "source_name"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    const-string v3, "verified_sha256"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorGameRomStore;->safeReleaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    :cond_4
    new-instance v0, Lcom/ahsim/demulation/RazorGameRomStore$Entry;

    const-string v3, ""

    invoke-direct {v0, v2, v7, v3}, Lcom/ahsim/demulation/RazorGameRomStore$Entry;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not persist Razor ROM selection"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    .local p1, "in":Ljava/io/InputStream;
    :cond_6
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ROM file is empty or inaccessible"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "name":Ljava/lang/String;
    .end local p0    # "c":Landroid/content/Context;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "flags":I
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 64
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p0    # "c":Landroid/content/Context;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "flags":I
    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz p1, :cond_7

    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "name":Ljava/lang/String;
    .end local p0    # "c":Landroid/content/Context;
    .end local p2    # "flags":I
    :cond_7
    :goto_3
    throw v3
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2

    .line 66
    .end local p1    # "in":Ljava/io/InputStream;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p0    # "c":Landroid/content/Context;
    .restart local p2    # "flags":I
    :catch_2
    move-exception v0

    move-object p1, v0

    .local p1, "e":Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ROM access denied"

    invoke-direct {v0, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 56
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "name":Ljava/lang/String;
    .local p1, "uri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .line 57
    .restart local v2    # "uri":Landroid/net/Uri;
    .local p1, "e":Ljava/lang/SecurityException;
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Select a ROM provider granting persistent read access"

    invoke-direct {v0, v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 53
    .end local v2    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :cond_8
    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ROM read permission missing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_9
    move-object v2, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ROM URI missing"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 32
    const-string v0, "razor_native_game_rom_v554"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static recordFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RazorGameRomStore$Entry;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "expected"    # Lcom/ahsim/demulation/RazorGameRomStore$Entry;
    .param p2, "sha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, "[a-f0-9]{64}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p1, Lcom/ahsim/demulation/RazorGameRomStore$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "source_uri"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified_sha256"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to store Razor fingerprint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ROM selection changed during audit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Razor source fingerprint"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static referencesUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 82
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->storedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static safeReleaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 90
    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorGameRomStore;->referencesUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomSelectionStore;->isUriReferenced(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 95
    return-void

    .line 90
    :cond_1
    :goto_1
    return-void
.end method

.method private static storedUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 85
    invoke-static {p0}, Lcom/ahsim/demulation/RazorGameRomStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "source_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "raw":Ljava/lang/String;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    return-object v2
.end method
