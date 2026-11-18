.class public final Lcom/ahsim/demulation/RomSelectionStore;
.super Ljava/lang/Object;
.source "RomSelectionStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;,
        Lcom/ahsim/demulation/RomSelectionStore$Selection;,
        Lcom/ahsim/demulation/RomSelectionStore$SourceRole;,
        Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;,
        Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;
    }
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "display_name"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile_id"

.field private static final KEY_SHA256:Ljava/lang/String; = "sha256"

.field private static final KEY_SIZE:Ljava/lang/String; = "size"

.field private static final KEY_URI:Ljava/lang/String; = "uri"

.field private static final PREFS:Ljava/lang/String; = "rom_selection"


# direct methods
.method static bridge synthetic -$$Nest$smclean(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 410
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/ahsim/demulation/RomSelectionStore;->clearStoredMetadata(Landroid/content/SharedPreferences;)V

    .line 176
    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 244
    invoke-static {p1}, Lcom/ahsim/demulation/RomSelectionStore;->requireOverlayRole(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 245
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 247
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlayMetadata(Landroid/content/SharedPreferences;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 248
    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 249
    :cond_0
    return-void
.end method

.method private static clearOverlayMetadata(Landroid/content/SharedPreferences;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sha256"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profile_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    return-void
.end method

.method private static clearStoredMetadata(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .line 389
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 390
    const-string v1, "sha256"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profile_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 391
    return-void
.end method

.method private static hasPersistedReadPermission(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 342
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    .line 344
    .local v2, "permission":Landroid/content/UriPermission;
    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    .line 345
    .end local v2    # "permission":Landroid/content/UriPermission;
    :cond_0
    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isReferenced(Landroid/content/SharedPreferences;Landroid/net/Uri;)Z
    .locals 10
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 362
    const-string v0, "uri"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 363
    :cond_0
    invoke-static {}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->values()[Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .line 364
    .local v7, "role":Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    invoke-virtual {v7}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->isOverlay()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    return v3

    .line 363
    .end local v7    # "role":Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_3
    return v5
.end method

.method static isUriReferenced(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 358
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ahsim/demulation/RomSelectionStore;->isReferenced(Landroid/content/SharedPreferences;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    const-string v0, ""

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "uri"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 149
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_0

    return-object v3

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 151
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2, v5}, Lcom/ahsim/demulation/RomSelectionStore;->hasPersistedReadPermission(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->clearStoredMetadata(Landroid/content/SharedPreferences;)V

    .line 153
    return-object v3

    .line 159
    :cond_1
    :try_start_0
    invoke-static {v2, v5}, Lcom/ahsim/demulation/RomSelectionStore;->readMetadataAndVerify(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;

    move-result-object v4

    move-object v12, v4

    .line 160
    .local v12, "refreshed":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "display_name"

    iget-object v7, v12, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    .line 161
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "size"

    iget-wide v7, v12, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    .line 162
    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 163
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    new-instance v4, Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v6, v12, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    iget-wide v7, v12, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    const-string v9, "sha256"

    .line 165
    invoke-interface {v1, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "profile_id"

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/ahsim/demulation/RomSelectionStore$Selection;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-object v4

    .line 166
    .end local v12    # "refreshed":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->clear(Landroid/content/Context;)V

    .line 168
    return-object v3
.end method

.method public static loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 218
    move-object/from16 v1, p1

    const-string v0, ""

    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->requireOverlayRole(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 220
    .local v9, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    invoke-interface {v9, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 222
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_0

    return-object v11

    .line 223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 224
    .local v12, "resolver":Landroid/content/ContentResolver;
    invoke-static {v12, v2}, Lcom/ahsim/demulation/RomSelectionStore;->hasPersistedReadPermission(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    invoke-static {v9, v1}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlayMetadata(Landroid/content/SharedPreferences;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 226
    return-object v11

    .line 229
    :cond_1
    :try_start_0
    invoke-static {v12, v2}, Lcom/ahsim/demulation/RomSelectionStore;->readMetadataAndVerify(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;

    move-result-object v3

    move-object v13, v3

    .line 230
    .local v13, "refreshed":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v13, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    .line 231
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v13, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    .line 232
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 233
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    new-instance v3, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-object v4, v3

    iget-object v3, v13, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    move-object v6, v4

    iget-wide v4, v13, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sha256"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-interface {v9, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "profile_id"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-interface {v9, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    move-object v15, v7

    move-object v7, v0

    move-object v0, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;-><init>(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-object v0

    .line 237
    .end local v13    # "refreshed":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-static/range {p0 .. p1}, Lcom/ahsim/demulation/RomSelectionStore;->clearOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 239
    return-object v11
.end method

.method private static parseUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 381
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    return-object v0

    .line 379
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static persist(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    if-eqz p1, :cond_4

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, p1, p2}, Lcom/ahsim/demulation/RomSelectionStore;->retainReadableGrant(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 113
    :try_start_0
    invoke-static {v1, p1}, Lcom/ahsim/demulation/RomSelectionStore;->readMetadataAndVerify(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;

    move-result-object v0

    .line 114
    .local v0, "metadata":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    new-instance v2, Lcom/ahsim/demulation/RomSelectionStore$Selection;

    iget-object v4, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    const-string v7, ""

    const-string v8, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v9, 0x0

    move-object v3, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v3, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/ahsim/demulation/RomSelectionStore$Selection;-><init>(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v0    # "metadata":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    .local v2, "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    nop

    .line 123
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 124
    .local p1, "prefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    const-string v4, "uri"

    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, "previous":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 126
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, v2, Lcom/ahsim/demulation/RomSelectionStore$Selection;->displayName:Ljava/lang/String;

    .line 127
    const-string v6, "display_name"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-wide v5, v2, Lcom/ahsim/demulation/RomSelectionStore$Selection;->size:J

    .line 128
    const-string v7, "size"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 129
    const-string v5, "sha256"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 130
    const-string v5, "profile_id"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 131
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 132
    .local v4, "saved":Z
    if-nez v4, :cond_2

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    :cond_0
    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 136
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Could not save the selected document reference"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 142
    :cond_3
    return-object v2

    .line 118
    .end local v0    # "previous":Landroid/net/Uri;
    .end local v2    # "selection":Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .end local v4    # "saved":Z
    .end local p1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 115
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 118
    .end local v3    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 119
    .restart local v3    # "uri":Landroid/net/Uri;
    .local p1, "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Selected document cannot be read"

    invoke-direct {v0, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 115
    .end local v3    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :catch_3
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 116
    .restart local v3    # "uri":Landroid/net/Uri;
    .local p1, "e":Ljava/io/IOException;
    :goto_1
    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 117
    throw p1

    .line 107
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    .local p1, "uri":Landroid/net/Uri;
    :cond_4
    move-object v3, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No document URI returned"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static persistOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;I)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-static/range {p1 .. p1}, Lcom/ahsim/demulation/RomSelectionStore;->requireOverlayRole(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 183
    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 185
    .local v11, "resolver":Landroid/content/ContentResolver;
    move/from16 v12, p3

    invoke-static {v11, v4, v12}, Lcom/ahsim/demulation/RomSelectionStore;->retainReadableGrant(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 189
    :try_start_0
    invoke-static {v11, v4}, Lcom/ahsim/demulation/RomSelectionStore;->readMetadataAndVerify(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v0, "metadata":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    nop

    .line 198
    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 199
    .local v13, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "uri"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v13, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 201
    .local v15, "previous":Landroid/net/Uri;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "display_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    .line 203
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    .line 204
    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sha256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "profile_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 207
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v16

    .line 208
    .local v16, "saved":Z
    if-eqz v16, :cond_1

    .line 212
    if-eqz v15, :cond_0

    invoke-virtual {v15, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v15}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 213
    :cond_0
    new-instance v2, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    iget-object v5, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->displayName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;->size:J

    const-string v9, ""

    const/4 v10, 0x0

    const-string v8, ""

    invoke-direct/range {v2 .. v10}, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;-><init>(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomSelectionStore-IA;)V

    return-object v2

    .line 209
    :cond_1
    invoke-static {v1, v4}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 210
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not save the overlay document reference"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    .end local v0    # "metadata":Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v15    # "previous":Landroid/net/Uri;
    .end local v16    # "saved":Z
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v1, v4}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 195
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Selected overlay document cannot be read"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v4}, Lcom/ahsim/demulation/RomSelectionStore;->releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V

    .line 192
    throw v0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    move/from16 v12, p3

    new-instance v0, Ljava/io/IOException;

    const-string v2, "No document URI returned"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 385
    const-string v0, "rom_selection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static readMetadataAndVerify(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const-string v0, "_size"

    const-string v1, "_display_name"

    const/4 v2, 0x0

    .line 313
    .local v2, "name":Ljava/lang/String;
    const-wide/16 v3, -0x1

    .line 314
    .local v3, "size":J
    const/4 v5, 0x2

    :try_start_0
    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v8, v5

    const/4 v5, 0x1

    aput-object v0, v8, v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .local v6, "resolver":Landroid/content/ContentResolver;
    .local v7, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    .local p0, "cursor":Landroid/database/Cursor;
    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 318
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 319
    .local p1, "nameIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "sizeIndex":I
    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 321
    :cond_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v3, v8

    .end local v3    # "size":J
    .local v8, "size":J
    goto :goto_1

    .line 314
    .end local v0    # "sizeIndex":I
    .end local v8    # "size":J
    .end local p1    # "nameIndex":I
    .restart local v3    # "size":J
    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "size":J
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw p1

    .line 323
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "size":J
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 325
    .end local p0    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_2

    .line 323
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .local p0, "resolver":Landroid/content/ContentResolver;
    .local p1, "uri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v6, p0

    move-object v7, p1

    .line 327
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "uri":Landroid/net/Uri;
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    :goto_2
    const-string p0, "r"

    invoke-virtual {v6, v7, p0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 328
    .local p0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz p0, :cond_b

    .line 329
    :try_start_5
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 330
    .local v0, "statSize":J
    const-wide/16 v8, 0x0

    cmp-long p1, v3, v8

    if-gez p1, :cond_4

    cmp-long p1, v0, v8

    if-ltz p1, :cond_4

    move-wide v3, v0

    .line 331
    .end local v0    # "statSize":J
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 333
    .end local p0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 334
    :cond_6
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 335
    .local p0, "tail":Ljava/lang/String;
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move-object p1, p0

    goto :goto_4

    :cond_8
    :goto_3
    const-string p1, "Selected ROM"

    :goto_4
    move-object v2, p1

    .line 337
    .end local p0    # "tail":Ljava/lang/String;
    :cond_9
    cmp-long p0, v3, v8

    if-eqz p0, :cond_a

    .line 338
    new-instance p0, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;

    invoke-direct {p0, v2, v3, v4}, Lcom/ahsim/demulation/RomSelectionStore$DocumentMetadata;-><init>(Ljava/lang/String;J)V

    return-object p0

    .line 337
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Selected file is empty"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    .local p0, "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_5

    .line 328
    :cond_b
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Document provider returned no readable file descriptor"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "size":J
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local p0    # "pfd":Landroid/os/ParcelFileDescriptor;
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 327
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "size":J
    .restart local v6    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local p0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    if-eqz p0, :cond_c

    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_6
    throw p1
.end method

.method public static recordBaseFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$Selection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expected"    # Lcom/ahsim/demulation/RomSelectionStore$Selection;
    .param p2, "sha256"    # Ljava/lang/String;
    .param p3, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 255
    invoke-static {p2}, Lcom/ahsim/demulation/RomSelectionStore;->validateSha256(Ljava/lang/String;)V

    .line 256
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, "current":Landroid/net/Uri;
    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$Selection;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sha256"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 260
    invoke-static {p3}, Lcom/ahsim/demulation/RomSelectionStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "profile_id"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    return-void

    .line 261
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not save BASE source fingerprint"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "BASE selection changed during analysis"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "current":Landroid/net/Uri;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BASE selection is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static recordOverlayFingerprint(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expected"    # Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;
    .param p2, "sha256"    # Ljava/lang/String;
    .param p3, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {v0}, Lcom/ahsim/demulation/RomSelectionStore;->requireOverlayRole(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V

    .line 270
    invoke-static {p2}, Lcom/ahsim/demulation/RomSelectionStore;->validateSha256(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->role:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    iget-object v2, v2, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ahsim/demulation/RomSelectionStore;->parseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 274
    .local v2, "current":Landroid/net/Uri;
    iget-object v3, p1, Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sha256"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profile_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {p3}, Lcom/ahsim/demulation/RomSelectionStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    return-void

    .line 277
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not save overlay source fingerprint"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Overlay selection changed during analysis"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "current":Landroid/net/Uri;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Overlay selection is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static releaseIfUnreferenced(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 350
    if-nez p1, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 352
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0, p1}, Lcom/ahsim/demulation/RomSelectionStore;->isReferenced(Landroid/content/SharedPreferences;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lcom/ahsim/demulation/RazorGameRomStore;->referencesUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ahsim/demulation/RomSelectionStore;->safeRelease(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 354
    return-void

    .line 352
    :cond_2
    :goto_0
    return-void
.end method

.method private static requireOverlayRole(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)V
    .locals 2
    .param p0, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 400
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->isOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MEDIA_MOD or TRANSLATION role required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static retainReadableGrant(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    and-int/lit8 v0, p2, 0x1

    .line 290
    .local v0, "offered":I
    if-eqz v0, :cond_1

    .line 292
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomSelectionStore;->hasPersistedReadPermission(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    return-void

    .line 297
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Persistent read permission was not retained"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Document provider did not allow persistent access"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 290
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Document provider did not grant read access"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static safeRelease(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 372
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 376
    :goto_0
    return-void
.end method

.method public static snapshot(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 282
    new-instance v0, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;

    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->load(Landroid/content/Context;)Lcom/ahsim/demulation/RomSelectionStore$Selection;

    move-result-object v1

    sget-object v2, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->MEDIA_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    invoke-static {p0, v2}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v2

    sget-object v3, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->TRANSLATION:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 283
    invoke-static {p0, v3}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v3

    sget-object v4, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->AUDIO_MOD:Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 284
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RomSelectionStore;->loadOverlay(Landroid/content/Context;Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ahsim/demulation/RomSelectionStore$SourceSetSnapshot;-><init>(Lcom/ahsim/demulation/RomSelectionStore$Selection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore$OverlaySelection;Lcom/ahsim/demulation/RomSelectionStore-IA;)V

    .line 282
    return-object v0
.end method

.method private static validateSha256(Ljava/lang/String;)V
    .locals 3
    .param p0, "sha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-static {p0}, Lcom/ahsim/demulation/RomSelectionStore;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "s":Ljava/lang/String;
    const-string v1, "[0-9A-Fa-f]{64}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    return-void

    .line 407
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SHA-256 fingerprint"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
