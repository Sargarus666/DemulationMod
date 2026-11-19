.class final Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;
.super Ljava/lang/Object;
.source "GenesisCampaignTransitionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderData"
.end annotation


# instance fields
.field final byteRemap:[B

.field final commonPalette:[B

.field final finalCommonPalette:[B

.field final focusPaletteOffsets:[B

.field final houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

.field final houseModes:[B

.field final housePalettes:[[B

.field final housePatterns:[B

.field final missionRecords:[B

.field final staticGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

.field final staticModes:[B

.field final staticPatterns:[B

.field final zoomRecords:[B


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RomRuntimeFrontendAssets;)V
    .locals 6
    .param p1, "assets"    # Lcom/ahsim/demulation/RomRuntimeFrontendAssets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    const/4 v0, 0x3

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    .line 733
    const-string v0, "frontend/campaign_transition/static_geometry.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->-$$Nest$smparseGeometry([B)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    .line 734
    const-string v0, "frontend/campaign_transition/house_geometry.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer;->-$$Nest$smparseGeometry([B)Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseGeometry:Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$GeometryModel;

    .line 735
    const-string v0, "frontend/campaign_transition/static_patterns.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticPatterns:[B

    .line 736
    const-string v0, "frontend/campaign_transition/house_patterns.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePatterns:[B

    .line 737
    const-string v0, "frontend/campaign_transition/static_modes.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticModes:[B

    .line 738
    const-string v0, "frontend/campaign_transition/house_modes.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseModes:[B

    .line 739
    const-string v0, "frontend/campaign_transition/mission_records.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->missionRecords:[B

    .line 740
    const-string v0, "frontend/campaign_transition/byte_remap.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->byteRemap:[B

    .line 741
    const-string v0, "frontend/campaign_transition/zoom_records.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->zoomRecords:[B

    .line 742
    const-string v0, "frontend/campaign_transition/focus_palette_offsets.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->focusPaletteOffsets:[B

    .line 743
    const-string v0, "frontend/mentat/common_palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->commonPalette:[B

    .line 744
    const-string v0, "frontend/mentat/final_mission_common_palette.bin"

    invoke-virtual {p1, v0}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->finalCommonPalette:[B

    .line 745
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    const-string v1, "frontend/mentat/radnor_harkonnen_palette.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 746
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    const-string v1, "frontend/mentat/cyril_atreides_palette.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 747
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    const-string v1, "frontend/mentat/ammon_ordos_palette.bin"

    invoke-virtual {p1, v1}, Lcom/ahsim/demulation/RomRuntimeFrontendAssets;->read(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 748
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->staticModes:[B

    array-length v0, v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseModes:[B

    array-length v0, v0

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->missionRecords:[B

    array-length v0, v0

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->byteRemap:[B

    array-length v0, v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->zoomRecords:[B

    array-length v0, v0

    const/16 v1, 0x780

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->focusPaletteOffsets:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->commonPalette:[B

    array-length v0, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->finalCommonPalette:[B

    array-length v0, v0

    if-ne v0, v1, :cond_2

    .line 752
    iget-object v0, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->housePalettes:[[B

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "palette":[B
    array-length v5, v4

    if-ne v5, v1, :cond_0

    .end local v4    # "palette":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    .restart local v4    # "palette":[B
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed campaign House palette size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    .end local v4    # "palette":[B
    :cond_1
    return-void

    .line 751
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installed campaign provider metadata size mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method houseModesFor(II)[B
    .locals 5
    .param p1, "frontendHouse"    # I
    .param p2, "missionZero"    # I

    .line 756
    mul-int/lit8 v0, p1, 0x9

    add-int/2addr v0, p2

    const/16 v1, 0x14

    mul-int/2addr v0, v1

    .line 757
    .local v0, "offset":I
    new-array v2, v1, [B

    .local v2, "out":[B
    iget-object v3, p0, Lcom/ahsim/demulation/GenesisCampaignTransitionRenderer$ProviderData;->houseModes:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
