.class public final Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;
.super Ljava/lang/Object;
.source "DuneHackR82CampaignLinkStore.java"


# static fields
.field private static final PROFILE:Ljava/lang/String; = "profile.txt"

.field private static final ROOT:Ljava/lang/String; = "r82c_campaign_links_preview_v1"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 69
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->deleteTree(Ljava/io/File;)V

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "R82C campaign directory unreadable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    return-void

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C campaign cache cleanup failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "expectedSourceSha256"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    if-eqz p0, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->confidence:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    sget-object v1, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;->UNSUPPORTED:Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Confidence;

    if-eq v0, v1, :cond_9

    if-eqz p1, :cond_9

    .line 21
    const-string v0, "[0-9a-fA-F]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->sourceSha256:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {p2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe;->profileText(Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 26
    .local v0, "profile":[B
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "r82c_campaign_links_preview_v1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "R82C campaign preview folder unavailable"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v2, "published":Ljava/io/File;
    invoke-static {v2, v0}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->valid(Ljava/io/File;[B)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cached"

    return-object v3

    .line 31
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;->sourceSha256:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v3, "staging":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 34
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "profile.txt"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v4, "payload":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 37
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 39
    .end local v5    # "out":Ljava/io/FileOutputStream;
    invoke-static {v3, v0}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->valid(Ljava/io/File;[B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->deleteTree(Ljava/io/File;)V

    .line 41
    :cond_3
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 43
    const-string v5, "stored"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->deleteTree(Ljava/io/File;)V

    .line 43
    :cond_4
    return-object v5

    .line 42
    :cond_5
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C campaign preview atomic publish failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "profile":[B
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "expectedSourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    throw v5

    .line 39
    .restart local v0    # "profile":[B
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "expectedSourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "R82C campaign preview verification failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "profile":[B
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "expectedSourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 35
    .restart local v0    # "profile":[B
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "staging":Ljava/io/File;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "expectedSourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "profile":[B
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "expectedSourceSha256":Ljava/lang/String;
    .end local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    :goto_1
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 45
    .end local v4    # "payload":Ljava/io/File;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "profile":[B
    .restart local v1    # "root":Ljava/io/File;
    .restart local v2    # "published":Ljava/io/File;
    .restart local v3    # "staging":Ljava/io/File;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "expectedSourceSha256":Ljava/lang/String;
    .restart local p2    # "result":Lcom/ahsim/demulation/DuneHackR82CampaignLinkProbe$Result;
    :catchall_2
    move-exception v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v3}, Lcom/ahsim/demulation/DuneHackR82CampaignLinkStore;->deleteTree(Ljava/io/File;)V

    .line 46
    :cond_7
    throw v4

    .line 32
    :cond_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, "R82C campaign preview staging unavailable"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    .end local v0    # "profile":[B
    .end local v1    # "root":Ljava/io/File;
    .end local v2    # "published":Ljava/io/File;
    .end local v3    # "staging":Ljava/io/File;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "R82C campaign preview source fingerprint mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/io/File;[B)Z
    .locals 7
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "bytes"    # [B

    .line 50
    new-instance v0, Ljava/io/File;

    const-string v1, "profile.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    array-length v1, p1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x8000

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    .line 54
    .local v1, "actual":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 56
    .local v4, "pos":I
    :goto_0
    :try_start_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 57
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .local v5, "n":I
    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    return v2

    .line 59
    :cond_1
    add-int/2addr v4, v5

    .line 60
    .end local v5    # "n":I
    goto :goto_0

    .line 61
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 62
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 61
    return v2

    .line 62
    .end local v4    # "pos":I
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    .end local v3    # "in":Ljava/io/FileInputStream;
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    .line 54
    .restart local v3    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "actual":[B
    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "bytes":[B
    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 62
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "actual":[B
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "bytes":[B
    :catch_0
    move-exception v3

    .local v3, "ignored":Ljava/io/IOException;
    return v2

    .line 52
    .end local v1    # "actual":[B
    .end local v3    # "ignored":Ljava/io/IOException;
    :cond_4
    :goto_2
    return v2
.end method
