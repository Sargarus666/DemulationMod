.class public final Lcom/ahsim/demulation/RomFrontendAssetManifest;
.super Ljava/lang/Object;
.source "RomFrontendAssetManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    }
.end annotation


# static fields
.field private static final ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_ID:Ljava/lang/String; = "frontend_generic_graphics_v1"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    .line 28
    const-string v1, "frontend/house_selector_patterns.bin"

    const/16 v2, 0x1920

    const-string v3, "68492aa6e2648e3d5cb5519b8a8a5d84f42dc9e76ec4362aae069e55597ad299"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    const-string v1, "frontend/house_selector_map.bin"

    const/16 v2, 0xe00

    const-string v3, "0e5501c31ab53d731518f11fcd8dfb8a26a6b873534a60e25b029461deae6e02"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 30
    const-string v1, "frontend/house_selector_palette.bin"

    const/16 v3, 0x80

    const-string v4, "26e5e391143b9ac4e69113050de698603c9c019d545beb21836d757944087bef"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 31
    const-string v1, "frontend/ending_next_level_patterns.bin"

    const/16 v4, 0x4000

    const-string v5, "45a85fdb8565e64554cf6d0f9b4015f957dc747dbd1c29290f4546a83dc3e811"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 32
    const-string v1, "frontend/ending_next_level_map.bin"

    const-string v5, "85fa9cde035cee93ec38622b8076cda557a5db4983eca79c82472b9828db7874"

    invoke-static {v1, v2, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 33
    const-string v1, "frontend/ending_next_level_palette.bin"

    const-string v5, "437db8c3853cbb67a29b291fc8bb581e608b4448c6074586f35eda6dcd8b0e2b"

    invoke-static {v1, v3, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 34
    const-string v1, "frontend/password_patterns.bin"

    const/16 v5, 0x2e40

    const-string v6, "988ac85e57583869a1680ddc173abf3e45e7fa4ed77ced39030538f66ec7a6e1"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 35
    const-string v1, "frontend/password_map.bin"

    const-string v5, "0073c7629acf1c7826b40f695ebd02d2105ce404f7ee580ecb9e46eb23fc8b0e"

    invoke-static {v1, v2, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 36
    const-string v1, "frontend/password_palette.bin"

    const-string v5, "5d881872ca1ecf83d6c66fbe3c6b88ac06a37a8f479822fd7faf7247420dba6b"

    invoke-static {v1, v3, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v5, 0x8

    aput-object v1, v0, v5

    .line 37
    const-string v1, "frontend/loss_patterns.bin"

    const v5, 0x9000

    const-string v6, "73f11c9182fb958b48df3504ad9c7d2ef7ecc1e4a2d61743ab4d937a0b760dd3"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    .line 38
    const-string v1, "frontend/loss_frame0.bin"

    const/16 v5, 0x1000

    const-string v6, "c1c02a4564bb1bc786dd4021dfcba9e53c3d8a59d5ec39f66fe8b8d7b5c3f40f"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v6, 0xa

    aput-object v1, v0, v6

    .line 39
    const-string v1, "frontend/loss_frame1.bin"

    const-string v6, "68aabb361cd21817ec69bf2fade58934fd274f91847b2548dc1fe1ec9cfa8f7f"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v6, 0xb

    aput-object v1, v0, v6

    .line 40
    const-string v1, "frontend/loss_frame2.bin"

    const-string v6, "d094d2359949bdd3c7fb218711b9318c3799baac684979e2ea889876ef0478cc"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v6, 0xc

    aput-object v1, v0, v6

    .line 41
    const-string v1, "frontend/loss_frame3.bin"

    const-string v6, "c37afac817770bcf8aa1d846d6db49bacb81bf2ba15526d175375a0e02699d73"

    invoke-static {v1, v5, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v6, 0xd

    aput-object v1, v0, v6

    .line 42
    const-string v1, "frontend/loss_palette.bin"

    const-string v6, "c900606a9133497f65334d6892246c14004dda6ad2348b8b72ebb6217c1c8db8"

    invoke-static {v1, v3, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v6, 0xe

    aput-object v1, v0, v6

    .line 43
    const-string v1, "frontend/win_patterns.bin"

    const-string v6, "9500edbdc2f6162ceb8a4531bba840dc82295cff41e92d2208804b46544d1421"

    invoke-static {v1, v4, v6}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    .line 44
    const-string v1, "frontend/win_frame0.bin"

    const-string v4, "5fc16998657f01a378821d1d8abeba8abd0e275b98949cc9c567d2d305091b26"

    invoke-static {v1, v5, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    .line 45
    const-string v1, "frontend/win_frame1.bin"

    const-string v4, "2891fe8c409e5a96649c6ca9ea390fd854750f19d8ac231c9d9cedebd09c40ba"

    invoke-static {v1, v5, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    .line 46
    const-string v1, "frontend/win_frame2.bin"

    const-string v4, "0459cdc3d1d49a6af938814faf2a33d62ba8215ef306c62fb9e1f7e7c77e7f78"

    invoke-static {v1, v5, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    .line 47
    const-string v1, "frontend/win_frame3.bin"

    const-string v4, "1aeeaa332535718ab8fb38a95964c0250b1c3909c2416debc866372d22f68bf2"

    invoke-static {v1, v5, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    .line 48
    const-string v1, "frontend/win_palette.bin"

    const-string v4, "174bd2b44095c6a713498fd9ecfbc61cca00453e165975a965c7165d6352b7e5"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    .line 49
    const-string v1, "frontend/title_shared_patterns.bin"

    const/16 v4, 0x7000

    const-string v5, "8b0eeeaf5d08711f940967ad18969ab9f43e22182b4ae189655a72dd7bf37173"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    .line 50
    const-string v1, "frontend/intro_arrakis_map.bin"

    const/16 v4, 0x2000

    const-string v5, "1fb4c462834f2b00ee4922f9426070f772d8522fea33e0dc7a2e9ab3b06eef47"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v5, 0x16

    aput-object v1, v0, v5

    .line 51
    const-string v1, "frontend/logo_title_map.bin"

    const-string v5, "ce618bdeaa0a25644186fa2f978957a2b373669ccd7e3cab9dcbe8946f84ed72"

    invoke-static {v1, v4, v5}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    .line 52
    const-string v1, "frontend/title_palette.bin"

    const-string v4, "060e86191c7aab77b5e566b3caeddf5452ccd03a8058169f665b2a753c45b132"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    .line 53
    const-string v1, "frontend/options_patterns.bin"

    const/16 v3, 0x5ec0

    const-string v4, "38b7c4a99f81b7695be8c3584637684626372dcc6f2365470d601b46f472e206"

    invoke-static {v1, v3, v4}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    .line 54
    const-string v1, "frontend/options_map.bin"

    const-string v3, "7ecb40ef1f62c3d1c871c2a601e6b2ac1490c67407ee67c8021bd47e9d186b32"

    invoke-static {v1, v2, v3}, Lcom/ahsim/demulation/RomFrontendAssetManifest;->e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ahsim/demulation/RomFrontendAssetManifest;->ENTRIES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(Ljava/lang/String;ILjava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "sha256"    # Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/ahsim/demulation/RomFrontendAssetManifest-IA;)V

    return-object v0
.end method

.method public static entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/ahsim/demulation/RomFrontendAssetManifest;->ENTRIES:Ljava/util/List;

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    .locals 3
    .param p0, "relativePath"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/ahsim/demulation/RomFrontendAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    .local v1, "e":Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    iget-object v2, v1, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;->relativePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .end local v1    # "e":Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static payloadBytes()J
    .locals 6

    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "total":J
    sget-object v2, Lcom/ahsim/demulation/RomFrontendAssetManifest;->ENTRIES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;

    .local v3, "e":Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    iget v4, v3, Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;->length:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .end local v3    # "e":Lcom/ahsim/demulation/RomFrontendAssetManifest$Entry;
    goto :goto_0

    .line 64
    :cond_0
    return-wide v0
.end method
