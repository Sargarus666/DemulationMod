.class final Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;
.super Ljava/lang/Object;
.source "RomOfficialRegionAssetVariants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exactSupportedProfile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "profileId"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->findById(Ljava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v0

    .line 35
    .local v0, "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static expected(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .locals 4
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "baseLength"    # I
    .param p3, "baseSha256"    # Ljava/lang/String;

    .line 146
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    const-string v0, "frontend/direct/title_font.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ending/font.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-static {p1}, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest;->find(Ljava/lang/String;)Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;

    move-result-object v0

    .line 153
    .local v0, "ru":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    iget v2, v0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->length:I

    iget-object v3, v0, Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;->sha256:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 155
    .end local v0    # "ru":Lcom/ahsim/demulation/RomRussianLocalizationAssetManifest$Entry;
    :cond_0
    const-string v0, "content/frontend/exact_text_v1.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x2a9

    const-string v2, "b55b91afac8ab84f16078366f433da1132887d4702d1a167396b48bfb8ef3686"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 157
    :cond_1
    const-string v0, "frontend/mission_sequence/loss_banner_patterns.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x2a0

    const-string v2, "f792b7f860bb94e55760c0daa727d58d13ba96276a2b52f29a645c8e08e73ec1"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 159
    :cond_2
    const-string v0, "frontend/mission_sequence/win_banner_patterns.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x360

    const-string v2, "ca29ee114910211a89694fc2f0ebc2d93e89dc61a5b8f0b1269252ef04e4686b"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 161
    :cond_3
    const-string v0, "tactical/static_patterns_922_2047.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const v1, 0x8cc0

    const-string v2, "8c050a000eda8dcfcb555fbf9bde4d4405316819897c86558242ee91607c9fab"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 163
    :cond_4
    const-string v0, "audio/gems_source_pack.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const v1, 0x372d0

    const-string v2, "efdc235dca200546aba2495d1101ea0309d87f38b5b988358bfc8f205455a690"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 166
    :cond_5
    const-string v0, "dune_arrakis_europe_gm_t70246_00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    const-string v0, "frontend/ending_next_level_patterns.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "9a56e65eed913ac6349f150e97950f8b343b3c0b4130613cd84b500f5a984057"

    const/16 v2, 0x3f60

    if-eqz v0, :cond_6

    .line 168
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    invoke-direct {v0, v2, v1}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 169
    :cond_6
    const-string v0, "frontend/title_shared_patterns.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x7000

    const-string v2, "55d517a4f65707d381c71a63d6a9641868ed73a20efffc06ae199f3a820320f2"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 171
    :cond_7
    const-string v0, "frontend/logo_title_map.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x2000

    const-string v2, "feaa6dd56a133f8f87a8c8e2c621ad54b090215bba28f5cdb900f59f67e6b772"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 173
    :cond_8
    const-string v0, "tutorial/text/font.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    const/16 v1, 0x1520

    const-string v2, "219821591ed977a5ea71a2d985a662cb1fa92a4e958048089b1c133f567286a4"

    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 175
    :cond_9
    const-string v0, "ending/planet_patterns.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    invoke-direct {v0, v2, v1}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 178
    :cond_a
    new-instance v0, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    invoke-direct {v0, p2, p3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static expectedForInstall(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    .locals 16
    .param p0, "installRoot"    # Ljava/io/File;
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "baseLength"    # I
    .param p4, "baseSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v0, "-1"

    invoke-static/range {p1 .. p2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->manifestBoundAsset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p1 .. p4}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expected(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 115
    new-instance v4, Ljava/io/File;

    const-string v5, "manifest.properties"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v4, "manifest":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 118
    .local v5, "p":Ljava/util/Properties;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 119
    .end local v6    # "in":Ljava/io/FileInputStream;
    const-string v6, "source.profile"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p1

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 121
    invoke-static {v8}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->findById(Ljava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v6

    .line 122
    .local v6, "exact":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    if-eqz v6, :cond_6

    iget-boolean v9, v6, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->sha256:Ljava/lang/String;

    .line 123
    const-string v10, "source.sha256"

    invoke-virtual {v5, v10, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 126
    :try_start_1
    const-string v9, "entries.total"

    invoke-virtual {v5, v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .local v9, "total":I
    nop

    .line 128
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_5

    .line 129
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "asset.%03d."

    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "prefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "path"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 128
    .end local v11    # "prefix":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 132
    .restart local v11    # "prefix":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "length"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .local v0, "length":I
    nop

    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sha256"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "sha":Ljava/lang/String;
    const-string v12, "tactical/classic_purchase_icons.bin"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 136
    if-ne v0, v3, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v2, v3, v0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validSourceBoundLength(Ljava/lang/String;II)Z

    move-result v12

    :goto_1
    nop

    .line 138
    .local v12, "lengthOk":Z
    if-eqz v12, :cond_4

    invoke-static {v7}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->isSha256(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 140
    new-instance v13, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    invoke-direct {v13, v0, v7}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;-><init>(ILjava/lang/String;)V

    return-object v13

    .line 139
    :cond_4
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Source-bound READY asset declaration is invalid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 133
    .end local v0    # "length":I
    .end local v7    # "sha":Ljava/lang/String;
    .end local v12    # "lengthOk":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v12, "Source-bound READY asset length is invalid"

    invoke-direct {v7, v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 142
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "i":I
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Source-bound READY asset is not declared: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    .end local v9    # "total":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v9, "Source-bound READY manifest entry count is invalid"

    invoke-direct {v7, v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Source-bound READY source fingerprint mismatch"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    .end local v6    # "exact":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Source-bound READY source profile mismatch"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    .local v6, "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    move-object v7, v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v7

    .line 116
    .end local v5    # "p":Ljava/util/Properties;
    .end local v6    # "in":Ljava/io/FileInputStream;
    :cond_8
    move-object/from16 v8, p1

    new-instance v0, Ljava/io/IOException;

    const-string v5, "Source-bound READY manifest is missing"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    .end local v4    # "manifest":Ljava/io/File;
    :cond_9
    move-object/from16 v8, p1

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Source-bound READY generation is unavailable"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static germanFixedLength(Ljava/lang/String;I)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseLength"    # I

    .line 184
    const-string v0, "frontend/ending_next_level_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3f60

    if-eqz v0, :cond_0

    return v1

    .line 185
    :cond_0
    const-string v0, "frontend/password_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3000

    if-eqz v0, :cond_1

    return v2

    .line 186
    :cond_1
    const-string v0, "frontend/mission_sequence/loss_banner_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e0

    return v0

    .line 187
    :cond_2
    const-string v0, "frontend/mission_sequence/win_banner_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x420

    return v0

    .line 188
    :cond_3
    const-string v0, "frontend/mentat/radnor_harkonnen_join_text.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11e

    return v0

    .line 189
    :cond_4
    const-string v0, "frontend/mentat/cyril_atreides_join_text.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xca

    return v0

    .line 190
    :cond_5
    const-string v0, "frontend/mentat/ammon_ordos_join_text.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xc7

    return v0

    .line 191
    :cond_6
    const-string v0, "ending/planet_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 194
    :cond_7
    const-string v0, "audio/gems_source_pack.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x35702

    return v0

    .line 198
    :cond_8
    const-string v0, "tutorial/scenes/scene00_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 199
    :cond_9
    const-string v0, "tutorial/scenes/scene00_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x12c7

    return v0

    .line 200
    :cond_a
    const-string v0, "tutorial/scenes/scene01_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x5000

    return v0

    .line 201
    :cond_b
    const-string v0, "tutorial/scenes/scene01_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x17aa

    return v0

    .line 202
    :cond_c
    const-string v0, "tutorial/scenes/scene03_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 203
    :cond_d
    const-string v0, "tutorial/scenes/scene04_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x5960

    return v0

    .line 204
    :cond_e
    const-string v0, "tutorial/scenes/scene04_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x19a

    return v0

    .line 205
    :cond_f
    const-string v0, "tutorial/scenes/scene06_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    .line 206
    :cond_10
    const-string v0, "tutorial/scenes/scene06_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x9a4

    return v0

    .line 207
    :cond_11
    const-string v0, "tutorial/scenes/scene07_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x589

    return v0

    .line 208
    :cond_12
    const-string v0, "tutorial/scenes/scene09_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    .line 209
    :cond_13
    const-string v0, "tutorial/scenes/scene11_patterns.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1000

    return v0

    .line 210
    :cond_14
    const-string v0, "tutorial/scenes/scene11_plane0.delta"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xaa

    return v0

    .line 211
    :cond_15
    return p1
.end method

.method private static isSha256(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 231
    if-eqz p0, :cond_0

    const-string v0, "(?i)[0-9a-f]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isVariableGermanContent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 214
    const-string v0, "content/frontend/exact_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    const-string v0, "content/mission/presentation_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    const-string v0, "content/tutorial/exact_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    const-string v0, "content/result/mission_result_data_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const-string v0, "content/ending/ending_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 214
    :goto_1
    return v0
.end method

.method static manifestBoundAsset(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->sourceBoundProfile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 27
    :cond_0
    const-string v0, "tactical/classic_purchase_icons.bin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 28
    :cond_1
    const-string v0, "dune_arrakis_usa_gm_t70246_00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 29
    :cond_2
    invoke-static {p0}, Lcom/ahsim/demulation/RomCompatibilityProfiles;->findById(Ljava/lang/String;)Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;

    move-result-object v0

    .line 30
    .local v0, "p":Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;
    if-eqz v0, :cond_3

    iget-boolean v3, v0, Lcom/ahsim/demulation/RomCompatibilityProfiles$Profile;->basePreparationSupported:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method static matchesExtracted(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Z
    .locals 5
    .param p0, "profileId"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "baseLength"    # I
    .param p4, "baseSha256"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 88
    :cond_0
    const-string v1, "tactical/classic_purchase_icons.bin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-static {p0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->exactSupportedProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const-string v1, "dune_arrakis_usa_gm_t70246_00"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    invoke-static {p2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validClassicPack([B)Z

    move-result v0

    return v0

    .line 93
    :cond_1
    invoke-static {p0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->sourceBoundProfile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 94
    invoke-static {p0, p1, p3, p4}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->expected(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;

    move-result-object v1

    .line 95
    .local v1, "v":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    array-length v3, p2

    iget v4, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->length:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;->sha256:Ljava/lang/String;

    invoke-static {p2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->sha256([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 97
    .end local v1    # "v":Lcom/ahsim/demulation/RomOfficialRegionAssetVariants$Expected;
    :cond_3
    invoke-static {p1}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->isVariableGermanContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v0, p2

    invoke-static {p1, v0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validGermanContentLength(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 98
    :cond_4
    invoke-static {p1, p3}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->germanFixedLength(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "germanLength":I
    array-length v3, p2

    if-eq v3, p3, :cond_5

    array-length v3, p2

    if-ne v3, v1, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    return v0
.end method

.method private static sha256([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 237
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 238
    .local v1, "hash":[B
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 239
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

    .line 240
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 241
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hash":[B
    .end local v2    # "out":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "SHA-256 is unavailable"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static sourceBoundProfile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "profileId"    # Ljava/lang/String;

    .line 17
    const-string v0, "dune_arrakis_germany_gm_t70246_00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static validClassicPack([B)Z
    .locals 25
    .param p0, "data"    # [B

    .line 39
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v2, v0

    const v3, 0x281b8

    const v4, 0x27eb0

    const v5, 0x9530

    const/16 v6, 0x45c8

    if-eq v2, v6, :cond_0

    array-length v2, v0

    if-eq v2, v5, :cond_0

    array-length v2, v0

    if-eq v2, v4, :cond_0

    array-length v2, v0

    if-ne v2, v3, :cond_1

    :cond_0
    array-length v2, v0

    const/16 v7, 0x10

    if-ge v2, v7, :cond_2

    :cond_1
    move/from16 v17, v1

    goto/16 :goto_9

    .line 41
    :cond_2
    aget-byte v2, v0, v1

    const/16 v8, 0x43

    if-ne v2, v8, :cond_18

    const/4 v2, 0x1

    aget-byte v9, v0, v2

    const/16 v10, 0x50

    if-ne v9, v10, :cond_18

    const/4 v9, 0x2

    aget-byte v10, v0, v9

    const/16 v11, 0x49

    if-ne v10, v11, :cond_18

    const/4 v10, 0x3

    aget-byte v11, v0, v10

    if-eq v11, v8, :cond_3

    move/from16 v17, v1

    goto/16 :goto_8

    .line 42
    :cond_3
    const/4 v8, 0x4

    aget-byte v11, v0, v8

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x8

    shl-int/2addr v11, v12

    const/4 v13, 0x5

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    .line 43
    .local v11, "version":I
    const/4 v13, 0x6

    aget-byte v14, v0, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v12

    const/4 v15, 0x7

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    .line 44
    .local v14, "width":I
    aget-byte v15, v0, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v12

    const/16 v16, 0x9

    move/from16 v17, v1

    aget-byte v1, v0, v16

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v15

    .line 45
    .local v1, "height":I
    const/16 v15, 0xa

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v12

    const/16 v16, 0xb

    aget-byte v3, v0, v16

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v15

    .line 46
    .local v3, "iconBytes":I
    const/16 v15, 0xc

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v12

    const/16 v16, 0xd

    aget-byte v4, v0, v16

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v15

    .line 47
    .local v4, "structures":I
    const/16 v15, 0xe

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v12

    const/16 v16, 0xf

    move/from16 v19, v7

    aget-byte v7, v0, v16

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v15

    .line 48
    .local v7, "units":I
    const/16 v15, 0x20

    if-ne v14, v15, :cond_17

    move/from16 v16, v12

    const/16 v12, 0x18

    if-ne v1, v12, :cond_17

    const/16 v15, 0x180

    if-ne v3, v15, :cond_17

    const/16 v15, 0x13

    if-ne v4, v15, :cond_17

    const/16 v5, 0x1b

    if-eq v7, v5, :cond_4

    move/from16 v16, v1

    goto/16 :goto_7

    .line 49
    :cond_4
    if-ne v11, v2, :cond_6

    array-length v5, v0

    if-ne v5, v6, :cond_5

    move/from16 v17, v2

    :cond_5
    return v17

    .line 50
    :cond_6
    if-eq v11, v9, :cond_7

    if-eq v11, v10, :cond_7

    if-ne v11, v8, :cond_8

    :cond_7
    array-length v6, v0

    if-ge v6, v12, :cond_9

    :cond_8
    return v17

    .line 51
    :cond_9
    aget-byte v6, v0, v19

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/16 v19, 0x11

    move/from16 v22, v12

    aget-byte v12, v0, v19

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v6, v12

    .line 52
    .local v6, "actions":I
    const/16 v12, 0x12

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    aget-byte v10, v0, v15

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v12

    .line 53
    .local v10, "infoStructures":I
    const/16 v12, 0x14

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/16 v23, 0x15

    aget-byte v2, v0, v23

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v12

    .line 54
    .local v2, "infoUnits":I
    if-ne v6, v13, :cond_16

    if-ne v10, v15, :cond_16

    if-eq v2, v5, :cond_a

    move/from16 v16, v1

    move/from16 v18, v2

    goto/16 :goto_6

    .line 55
    :cond_a
    const/16 v12, 0x17

    const/16 v13, 0x16

    if-ne v11, v9, :cond_c

    .line 56
    aget-byte v5, v0, v13

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v8, v0, v12

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    .line 57
    .local v5, "reserved":I
    array-length v8, v0

    const v9, 0x9530

    if-ne v8, v9, :cond_b

    if-nez v5, :cond_b

    const/16 v17, 0x1

    :cond_b
    return v17

    .line 59
    .end local v5    # "reserved":I
    :cond_c
    move/from16 v21, v12

    array-length v12, v0

    move/from16 v18, v13

    if-ne v11, v8, :cond_d

    const v13, 0x281b8

    goto :goto_0

    :cond_d
    const v13, 0x27eb0

    :goto_0
    if-ne v12, v13, :cond_15

    array-length v12, v0

    const/16 v13, 0x20

    if-ge v12, v13, :cond_e

    move/from16 v16, v1

    move/from16 v18, v2

    goto/16 :goto_5

    .line 60
    :cond_e
    aget-byte v12, v0, v18

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    aget-byte v13, v0, v21

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    .line 61
    .local v12, "detailStructures":I
    aget-byte v13, v0, v22

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/16 v18, 0x19

    aget-byte v9, v0, v18

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v13

    .line 62
    .local v9, "detailUnits":I
    const/16 v13, 0x1a

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    aget-byte v8, v0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v13

    .line 63
    .local v8, "detailWidth":I
    const/16 v13, 0x1c

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/16 v20, 0x1d

    aget-byte v5, v0, v20

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v13

    .line 64
    .local v5, "detailHeight":I
    const/16 v13, 0x1e

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/16 v16, 0x1f

    aget-byte v15, v0, v16

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    .line 65
    .local v13, "detailBytes":I
    const/16 v15, 0x13

    if-ne v12, v15, :cond_14

    const/16 v15, 0x1b

    if-ne v9, v15, :cond_14

    const/16 v15, 0x60

    if-ne v8, v15, :cond_14

    const/16 v15, 0x38

    if-ne v5, v15, :cond_14

    const/16 v15, 0xa80

    if-eq v13, v15, :cond_f

    move/from16 v16, v1

    move/from16 v18, v2

    goto :goto_4

    .line 67
    :cond_f
    const/4 v15, 0x4

    if-ne v11, v15, :cond_13

    .line 68
    const v15, 0x27eb0

    .line 69
    .local v15, "offset":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "key":I
    :goto_1
    move/from16 v16, v1

    const/4 v1, 0x2

    .end local v1    # "height":I
    .local v16, "height":I
    if-ge v0, v1, :cond_12

    .line 70
    aget-byte v1, p0, v15

    and-int/lit16 v1, v1, 0xff

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "infoUnits":I
    .local v18, "infoUnits":I
    if-ne v1, v2, :cond_11

    add-int/lit8 v1, v15, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    add-int/lit8 v1, v15, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_11

    add-int/lit8 v1, v15, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v0, :cond_10

    goto :goto_2

    .line 69
    :cond_10
    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v15, v15, 0x184

    move/from16 v1, v16

    move/from16 v2, v18

    goto :goto_1

    .line 72
    :cond_11
    :goto_2
    return v17

    .line 69
    .end local v18    # "infoUnits":I
    .restart local v2    # "infoUnits":I
    :cond_12
    move/from16 v18, v2

    .end local v2    # "infoUnits":I
    .restart local v18    # "infoUnits":I
    goto :goto_3

    .line 67
    .end local v0    # "key":I
    .end local v15    # "offset":I
    .end local v16    # "height":I
    .end local v18    # "infoUnits":I
    .restart local v1    # "height":I
    .restart local v2    # "infoUnits":I
    :cond_13
    move/from16 v16, v1

    move/from16 v18, v2

    .line 75
    .end local v1    # "height":I
    .end local v2    # "infoUnits":I
    .restart local v16    # "height":I
    .restart local v18    # "infoUnits":I
    :goto_3
    const/16 v24, 0x1

    return v24

    .line 65
    .end local v16    # "height":I
    .end local v18    # "infoUnits":I
    .restart local v1    # "height":I
    .restart local v2    # "infoUnits":I
    :cond_14
    move/from16 v16, v1

    move/from16 v18, v2

    .line 66
    .end local v1    # "height":I
    .end local v2    # "infoUnits":I
    .restart local v16    # "height":I
    .restart local v18    # "infoUnits":I
    :goto_4
    return v17

    .line 59
    .end local v5    # "detailHeight":I
    .end local v8    # "detailWidth":I
    .end local v9    # "detailUnits":I
    .end local v12    # "detailStructures":I
    .end local v13    # "detailBytes":I
    .end local v16    # "height":I
    .end local v18    # "infoUnits":I
    .restart local v1    # "height":I
    .restart local v2    # "infoUnits":I
    :cond_15
    move/from16 v16, v1

    move/from16 v18, v2

    .end local v1    # "height":I
    .end local v2    # "infoUnits":I
    .restart local v16    # "height":I
    .restart local v18    # "infoUnits":I
    :goto_5
    return v17

    .line 54
    .end local v16    # "height":I
    .end local v18    # "infoUnits":I
    .restart local v1    # "height":I
    .restart local v2    # "infoUnits":I
    :cond_16
    move/from16 v16, v1

    move/from16 v18, v2

    .end local v1    # "height":I
    .end local v2    # "infoUnits":I
    .restart local v16    # "height":I
    .restart local v18    # "infoUnits":I
    :goto_6
    return v17

    .line 48
    .end local v6    # "actions":I
    .end local v10    # "infoStructures":I
    .end local v16    # "height":I
    .end local v18    # "infoUnits":I
    .restart local v1    # "height":I
    :cond_17
    move/from16 v16, v1

    .end local v1    # "height":I
    .restart local v16    # "height":I
    :goto_7
    return v17

    .line 41
    .end local v3    # "iconBytes":I
    .end local v4    # "structures":I
    .end local v7    # "units":I
    .end local v11    # "version":I
    .end local v14    # "width":I
    .end local v16    # "height":I
    :cond_18
    move/from16 v17, v1

    :goto_8
    return v17

    .line 39
    :cond_19
    move/from16 v17, v1

    .line 40
    :goto_9
    return v17
.end method

.method private static validGermanContentLength(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 222
    const-string v0, "content/frontend/exact_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 223
    :cond_1
    const-string v0, "content/mission/presentation_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x100

    if-lt p1, v0, :cond_2

    const/high16 v0, 0x10000

    if-gt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 224
    :cond_3
    const-string v0, "content/tutorial/exact_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x80

    if-eqz v0, :cond_5

    if-lt p1, v3, :cond_4

    const/16 v0, 0x4000

    if-gt p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 225
    :cond_5
    const-string v0, "content/result/mission_result_data_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1ed

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    .line 226
    :cond_7
    const-string v0, "content/ending/ending_text_v1.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-lt p1, v3, :cond_8

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1

    .line 227
    :cond_9
    return v2
.end method

.method static validSourceBoundLength(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseLength"    # I
    .param p2, "actualLength"    # I

    .line 103
    invoke-static {p0}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->isVariableGermanContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->validGermanContentLength(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomOfficialRegionAssetVariants;->germanFixedLength(Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "germanLength":I
    if-eq p2, p1, :cond_2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
