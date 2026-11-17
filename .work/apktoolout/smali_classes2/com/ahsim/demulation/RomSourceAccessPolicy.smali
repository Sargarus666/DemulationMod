.class public final Lcom/ahsim/demulation/RomSourceAccessPolicy;
.super Ljava/lang/Object;
.source "RomSourceAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowedCapabilities(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Ljava/util/List;
    .locals 6
    .param p0, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ahsim/demulation/RomSelectionStore$SourceRole;",
            ")",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;>;"
    invoke-static {}, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->values()[Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 67
    .local v4, "capability":Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    invoke-static {p0, v4}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v4    # "capability":Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z
    .locals 3
    .param p0, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .param p1, "capability"    # Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 32
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->EXECUTABLE_ROM_CODE:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-ne p1, v1, :cond_1

    return v0

    .line 34
    :cond_1
    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$1;->$SwitchMap$com$ahsim$demulation$RomSelectionStore$SourceRole:[I

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomSelectionStore$SourceRole;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 46
    return v0

    .line 43
    :pswitch_0
    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_TEXT:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->LOCALIZATION_GLYPHS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    .line 41
    :pswitch_1
    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-ne p1, v1, :cond_4

    move v0, v2

    :cond_4
    return v0

    .line 38
    :pswitch_2
    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_GRAPHICS_NEUTRAL:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->MEDIA_AUDIO:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    if-ne p1, v1, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    return v0

    .line 36
    :pswitch_3
    return v2

    .line 32
    :cond_7
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static canAffectMechanics(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;)Z
    .locals 1
    .param p0, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;

    .line 59
    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->SCENARIO_WORLD_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->GAMEPLAY_PARAMETERS:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 60
    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;->NATIVE_PURE_DATA:Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;

    .line 61
    invoke-static {p0, v0}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 59
    :goto_1
    return v0
.end method

.method public static requireAllowed(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)V
    .locals 3
    .param p0, "role"    # Lcom/ahsim/demulation/RomSelectionStore$SourceRole;
    .param p1, "capability"    # Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p0, p1}, Lcom/ahsim/demulation/RomSourceAccessPolicy;->allows(Lcom/ahsim/demulation/RomSelectionStore$SourceRole;Lcom/ahsim/demulation/RomSourceAccessPolicy$Capability;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ROM source role "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
