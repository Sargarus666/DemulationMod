.class final Lcom/ahsim/demulation/RomObjectNameEditorPanel;
.super Landroid/widget/LinearLayout;
.source "RomObjectNameEditorPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    }
.end annotation


# static fields
.field private static final ACCENT:I

.field private static final BLUE:I

.field private static final CARD:I

.field private static final CARD_STROKE:I

.field private static final EDITABLE_UNITS:[I

.field private static final FIRST_EDITABLE_STRUCTURE:I = 0x1

.field private static final MUTED:I

.field private static final STRUCTURES:[Ljava/lang/String;

.field private static final UNITS:[Ljava/lang/String;

.field private static final WHITE:I


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final buildingsTab:Landroid/widget/Button;

.field private category:I

.field private final editor:Landroid/widget/LinearLayout;

.field private final enabled:Landroid/widget/CheckBox;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private frigatePreview:Landroid/graphics/Bitmap;

.field private iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

.field private loadGeneration:I

.field private loaded:Z

.field private profile:Ljava/lang/String;

.field private final rows:Landroid/widget/LinearLayout;

.field private sha256:Ljava/lang/String;

.field private sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

.field private final status:Landroid/widget/TextView;

.field private final unitsTab:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$8rRfR-gfU3PBfMyOUFsNrdV04Bo(Lcom/ahsim/demulation/RomObjectNameEditorPanel;ILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$loadDataIfNeeded$3(ILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9foAYaonkssnyOeV_wsGF6PEPWo(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/app/AlertDialog;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$edit$8(Landroid/app/AlertDialog;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qG97Rjj2hvXQ4umZR0Hxr0_ymY(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CRNklD-Lp27c25Fh-vhjKl-0Lok(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$new$2(Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NSCM5MEmMFBKWtQwfhXM0h2fsTo(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RUUX0F_TH8wWc3BqLk6pypKUMQg(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$rebuild$5(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_uyY8G_G5olqfiyhuOykAy6pYLc(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$loadDataIfNeeded$4(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7KFP_B2IXgG11lKwEPYw6uWVoU(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$edit$7(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDiKbRNC8rcCECSmaBy_BKZmhn4(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->lambda$edit$6(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 28
    const/16 v0, 0xef

    const/16 v1, 0xf0

    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->WHITE:I

    .line 29
    const/16 v0, 0xb6

    const/16 v1, 0xc2

    const/16 v2, 0xaa

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    .line 30
    const/16 v0, 0xb2

    const/16 v1, 0x6c

    const/16 v2, 0xd9

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->ACCENT:I

    .line 31
    const/16 v0, 0x97

    const/16 v1, 0xda

    const/16 v2, 0x58

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->BLUE:I

    .line 32
    const/16 v0, 0x2a

    const/16 v1, 0x34

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD:I

    .line 33
    const/16 v0, 0x3e

    const/16 v1, 0x48

    const/16 v2, 0x36

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD_STROKE:I

    .line 34
    const/16 v0, 0x13

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CONCRETE"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "PALACE"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "VEHICLE FACTORY"

    const/4 v6, 0x3

    aput-object v3, v1, v6

    const-string v3, "HEAVY FACTORY"

    const/4 v7, 0x4

    aput-object v3, v1, v7

    const-string v3, "HIGH TECH"

    const/4 v8, 0x5

    aput-object v3, v1, v8

    const-string v3, "HOUSE IX"

    const/4 v9, 0x6

    aput-object v3, v1, v9

    const-string v3, "WOR"

    const/4 v10, 0x7

    aput-object v3, v1, v10

    const-string v3, "CONSTRUCTION YARD"

    const/16 v11, 0x8

    aput-object v3, v1, v11

    const-string v3, "WINDTRAP"

    const/16 v12, 0x9

    aput-object v3, v1, v12

    const-string v3, "BARRACKS"

    const/16 v13, 0xa

    aput-object v3, v1, v13

    const-string v3, "STARPORT"

    const/16 v14, 0xb

    aput-object v3, v1, v14

    const-string v3, "REFINERY"

    const/16 v15, 0xc

    aput-object v3, v1, v15

    const-string v3, "REPAIR"

    const/16 v16, 0xd

    aput-object v3, v1, v16

    const-string v3, "WALL"

    const/16 v17, 0xe

    aput-object v3, v1, v17

    const-string v3, "TURRET"

    const/16 v18, 0xf

    aput-object v3, v1, v18

    const-string v3, "ROCKET TURRET"

    const/16 v19, 0x10

    aput-object v3, v1, v19

    const-string v3, "SILO"

    const/16 v20, 0x11

    aput-object v3, v1, v20

    const-string v3, "OUTPOST"

    const/16 v21, 0x12

    aput-object v3, v1, v21

    sput-object v1, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->STRUCTURES:[Ljava/lang/String;

    .line 40
    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "CARRYALL"

    aput-object v3, v1, v2

    const-string v2, "ORNITHOPTER"

    aput-object v2, v1, v4

    const-string v2, "INFANTRY"

    aput-object v2, v1, v5

    const-string v2, "TROOPERS"

    aput-object v2, v1, v6

    const-string v2, "SOLDIER"

    aput-object v2, v1, v7

    const-string v2, "TROOPER"

    aput-object v2, v1, v8

    const-string v2, "SABOTEUR"

    aput-object v2, v1, v9

    const-string v2, "LAUNCHER"

    aput-object v2, v1, v10

    const-string v2, "DEVIATOR"

    aput-object v2, v1, v11

    const-string v2, "TANK"

    aput-object v2, v1, v12

    const-string v2, "SIEGE TANK"

    aput-object v2, v1, v13

    const-string v2, "DEVASTATOR"

    aput-object v2, v1, v14

    const-string v2, "SONIC TANK"

    aput-object v2, v1, v15

    const-string v2, "TRIKE"

    aput-object v2, v1, v16

    const-string v2, "RAIDER"

    aput-object v2, v1, v17

    const-string v2, "QUAD"

    aput-object v2, v1, v18

    const-string v2, "HARVESTER"

    aput-object v2, v1, v19

    const-string v2, "MCV"

    aput-object v2, v1, v20

    const-string v2, "DEATH HAND"

    aput-object v2, v1, v21

    const-string v2, "ROCKET"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "AROCKET"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "GROCKET"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "MINIROCKET"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "BULLET"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "SONIC BLAST"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "SANDWORM"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "FRIGATE"

    aput-object v2, v1, v0

    sput-object v1, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->UNITS:[Ljava/lang/String;

    .line 52
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->EDITABLE_UNITS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x19
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    .line 67
    const/4 v2, 0x0

    iput v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    .line 73
    iput-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setOrientation(I)V

    .line 75
    const/16 v4, 0xc

    invoke-direct {v0, v4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v4

    .line 76
    .local v4, "pad":I
    const/16 v5, 0xa

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v7

    invoke-virtual {v0, v4, v6, v4, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setPadding(IIII)V

    .line 77
    sget v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD:I

    sget v7, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD_STROKE:I

    const/16 v8, 0x10

    invoke-direct {v0, v6, v7, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    .line 79
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    sget v7, Lcom/ahsim/demulation/R$string;->editor_title:I

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setText(I)V

    .line 80
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    const/high16 v7, 0x41480000    # 12.5f

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 81
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    sget v7, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->WHITE:I

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 82
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    sget v7, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->BLUE:I

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v8

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v9

    invoke-virtual {v6, v8, v2, v9, v2}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 84
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    .line 86
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    const/4 v8, 0x5

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v13

    invoke-direct {v0, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v8

    invoke-virtual {v6, v11, v13, v8, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    sget v6, Lcom/ahsim/demulation/R$string;->editor_info:I

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    const/high16 v11, 0x41380000    # 11.5f

    invoke-direct {v0, v6, v11, v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v6

    .line 90
    .local v6, "explanation":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v8, "tabs":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    sget v13, Lcom/ahsim/demulation/R$string;->editor_buildings:I

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->tab(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v13

    iput-object v13, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->buildingsTab:Landroid/widget/Button;

    .line 94
    sget v13, Lcom/ahsim/demulation/R$string;->editor_units:I

    invoke-virtual {v1, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->tab(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v13

    iput-object v13, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->unitsTab:Landroid/widget/Button;

    .line 95
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v14, 0x2a

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v15

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 96
    .local v13, "leftTab":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 97
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v14

    invoke-direct {v15, v2, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 98
    .local v15, "rightTab":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v12

    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 99
    iget-object v12, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->buildingsTab:Landroid/widget/Button;

    invoke-virtual {v8, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v12, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->unitsTab:Landroid/widget/Button;

    invoke-virtual {v8, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v12, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->buildingsTab:Landroid/widget/Button;

    new-instance v14, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda4;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v12, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->unitsTab:Landroid/widget/Button;

    new-instance v14, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda5;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;)V

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v12, "tabsLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v5

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 105
    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v5

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 106
    iget-object v5, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const-string v5, ""

    sget v10, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    invoke-direct {v0, v5, v11, v10}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->status:Landroid/widget/TextView;

    .line 108
    iget-object v5, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->status:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 110
    .local v5, "scroll":Landroid/widget/ScrollView;
    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 111
    invoke-virtual {v5, v3}, Landroid/widget/ScrollView;->setNestedScrollingEnabled(Z)V

    .line 112
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    .line 113
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v3

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v10

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v7

    const/4 v11, 0x2

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v11

    invoke-virtual {v2, v3, v10, v7, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 115
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 116
    const/16 v2, 0x22

    const/16 v3, 0x2b

    const/16 v7, 0x1c

    invoke-static {v7, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    sget v3, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD_STROKE:I

    const/16 v7, 0xb

    invoke-direct {v0, v2, v3, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x120

    invoke-direct {v0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v7

    invoke-direct {v3, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    new-instance v3, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda6;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-virtual {v0, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setVisibility(I)V

    .line 127
    return-void
.end method

.method private baseName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    .line 292
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    if-nez v0, :cond_2

    .line 293
    sget-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->STRUCTURES:[Ljava/lang/String;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    aget-object v0, v0, v1

    .line 294
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->isRussian()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    iget v2, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structure(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    iget v2, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->structure(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->isGerman()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-static {v1}, Lcom/ahsim/demulation/GermanHudNames;->structure(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-static {v1}, Lcom/ahsim/demulation/GermanHudNames;->structure(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_1
    :goto_0
    return-object v0

    .line 303
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->isGerman()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    const-string v0, "FREMEN"

    goto :goto_1

    .line 304
    :cond_3
    iget v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string v0, "\u041d\u0410\u0415\u041c\u041d\u0418\u041a\u0418"

    goto :goto_1

    :cond_4
    const-string v0, "\u041d\u0410\u0415\u041c\u041d\u0418\u041a"

    .line 303
    :goto_1
    return-object v0

    .line 305
    :cond_5
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->isRussian()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    iget v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/GenesisUnitHudIdentity;->russianName(II)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "identity":Ljava/lang/String;
    if-eqz v0, :cond_6

    return-object v0

    .line 308
    :cond_6
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    iget v2, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->unit(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    iget v2, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v1, v2}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;->unit(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 310
    .end local v0    # "identity":Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->isGerman()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->UNITS:[Ljava/lang/String;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/ahsim/demulation/GermanUiText;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->UNITS:[Ljava/lang/String;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    aget-object v0, v0, v1

    :goto_2
    return-object v0
.end method

.method private dp(I)I
    .locals 2
    .param p1, "value"    # I

    .line 358
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private edit(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)V
    .locals 8
    .param p1, "entry"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    .line 254
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->baseName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "base":Ljava/lang/String;
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    iget v5, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    iget-boolean v6, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    invoke-static/range {v1 .. v6}, Lcom/ahsim/demulation/RomObjectNameCorrections;->saved(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "saved":Ljava/lang/String;
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 258
    .local v2, "text":Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 259
    const/16 v4, 0x4001

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 260
    new-array v4, v3, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 261
    if-nez v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 263
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 264
    .local v4, "frame":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 265
    const/16 v3, 0x16

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v5

    const/4 v7, 0x6

    invoke-direct {p0, v7}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v7

    invoke-direct {p0, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v3

    invoke-virtual {v4, v5, v7, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 266
    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v5, Lcom/ahsim/demulation/R$string;->editor_original:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41400000    # 12.0f

    sget v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    invoke-direct {p0, v3, v5, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    iget-boolean v5, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v7, Lcom/ahsim/demulation/R$string;->editor_fremen:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2014 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->englishName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->englishName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 270
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->editor_save:I

    .line 271
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->editor_reset:I

    new-instance v7, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda7;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)V

    .line 272
    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v5, Lcom/ahsim/demulation/R$string;->editor_cancel:I

    .line 277
    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 278
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v3, p1, v2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda8;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Landroid/app/AlertDialog;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 288
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method private englishName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    .line 314
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->UNITS:[Ljava/lang/String;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->STRUCTURES:[Ljava/lang/String;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    aget-object v0, v0, v1

    .line 315
    .local v0, "english":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    if-eqz v2, :cond_1

    const-string v2, " \u00b7 FREMEN (Palace)"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private image(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "e"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    .line 319
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_0
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getStructurePurchaseIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 321
    :cond_1
    iget v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->frigatePreview:Landroid/graphics/Bitmap;

    return-object v0

    .line 322
    :cond_2
    iget-boolean v0, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getFremenClassicSelectedIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    return-object v0

    .line 326
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    iget v1, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;->getUnitPurchaseIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isGerman()Z
    .locals 2

    .line 330
    const-string v0, "dune_arrakis_germany_gm_t70246_00"

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRussian()Z
    .locals 2

    .line 329
    const-string v0, "translation_ru_shedevr_lipetsk_usa"

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private label(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "color"    # I

    .line 332
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, "v":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    return-object v0
.end method

.method private synthetic lambda$edit$6(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "entry"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 273
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    iget v4, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    iget-boolean v5, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/RomObjectNameCorrections;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rebuild()V

    .line 276
    return-void
.end method

.method private synthetic lambda$edit$7(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 7
    .param p1, "entry"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    .param p2, "text"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/app/AlertDialog;
    .param p4, "v"    # Landroid/view/View;

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    iget v4, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    iget-boolean v5, p1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    .line 281
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-static/range {v0 .. v6}, Lcom/ahsim/demulation/RomObjectNameCorrections;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rebuild()V

    .line 283
    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "bad":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v2, Lcom/ahsim/demulation/R$string;->editor_invalid:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 287
    .end local v0    # "bad":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$edit$8(Landroid/app/AlertDialog;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "entry"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    .param p3, "text"    # Landroid/widget/EditText;
    .param p4, "ignored"    # Landroid/content/DialogInterface;

    .line 278
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda3;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$loadDataIfNeeded$3(ILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "generation"    # I
    .param p2, "wantedProfile"    # Ljava/lang/String;
    .param p3, "wantedSha"    # Ljava/lang/String;
    .param p4, "resultNames"    # Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .param p5, "resultIcons"    # Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    .param p6, "resultFrigate"    # Landroid/graphics/Bitmap;
    .param p7, "error"    # Ljava/lang/String;

    .line 187
    iget v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    .line 188
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    iput-object p4, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    .line 190
    iput-object p5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    .line 191
    iput-object p6, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->frigatePreview:Landroid/graphics/Bitmap;

    .line 192
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->status:Landroid/widget/TextView;

    if-nez p7, :cond_1

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v2, Lcom/ahsim/demulation/R$string;->editor_ready:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v2, Lcom/ahsim/demulation/R$string;->editor_failed:I

    filled-new-array {p7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rebuild()V

    .line 195
    return-void

    .line 188
    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$loadDataIfNeeded$4(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "wantedProfile"    # Ljava/lang/String;
    .param p2, "wantedSha"    # Ljava/lang/String;
    .param p3, "generation"    # I

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "names":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    const/4 v3, 0x0

    .line 169
    .local v3, "icons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    const/4 v9, 0x0

    .line 170
    .local v9, "frigate":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 172
    .local v4, "failure":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ahsim/demulation/RomAssetInstallState;->activeRuntimeBundle(Landroid/content/Context;)Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;

    move-result-object v0

    .line 173
    .local v0, "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    iget-object v5, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceProfile:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->sourceSha256:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v7, p2

    :try_start_1
    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    iget-object v5, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->originalContentAssets:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;

    invoke-virtual {v5}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->russianHudObjectNames()Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    move-result-object v5

    move-object v2, v5

    .line 176
    new-instance v5, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    iget-object v8, v0, Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;->worldAssets:Lcom/ahsim/demulation/RomRuntimeWorldAssets;

    invoke-direct {v5, v8}, Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;-><init>(Lcom/ahsim/demulation/RomRuntimeWorldAssets;)V

    move-object v3, v5

    .line 181
    .end local v0    # "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto :goto_2

    .line 173
    .restart local v0    # "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    :cond_0
    move-object/from16 v7, p2

    .line 174
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "\u0412\u044b\u0431\u0440\u0430\u043d\u0430 \u0434\u0440\u0443\u0433\u0430\u044f ROM"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "names":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .end local v3    # "icons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    .end local v4    # "failure":Ljava/lang/String;
    .end local v9    # "frigate":Landroid/graphics/Bitmap;
    .end local p1    # "wantedProfile":Ljava/lang/String;
    .end local p2    # "wantedSha":Ljava/lang/String;
    .end local p3    # "generation":I
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .end local v0    # "bundle":Lcom/ahsim/demulation/RomAssetInstallState$RuntimeBundle;
    .restart local v2    # "names":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .restart local v3    # "icons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    .restart local v4    # "failure":Ljava/lang/String;
    .restart local v9    # "frigate":Landroid/graphics/Bitmap;
    .restart local p1    # "wantedProfile":Ljava/lang/String;
    .restart local p2    # "wantedSha":Ljava/lang/String;
    .restart local p3    # "generation":I
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v7, p2

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "\u0420\u0435\u0441\u0443\u0440\u0441\u044b \u043d\u0435 \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u044b"

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v4, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "names":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .end local v3    # "icons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    .end local v4    # "failure":Ljava/lang/String;
    .local v10, "names":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    .local v11, "icons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    .local v12, "failure":Ljava/lang/String;
    :goto_2
    move-object v5, v10

    .line 183
    .local v5, "resultNames":Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;
    move-object v6, v11

    .line 184
    .local v6, "resultIcons":Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;
    move-object v7, v9

    .line 185
    .local v7, "resultFrigate":Landroid/graphics/Bitmap;
    move-object v8, v12

    .line 186
    .local v8, "error":Ljava/lang/String;
    iget-object v13, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda2;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;ILjava/lang/String;Ljava/lang/String;Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rebuild()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rebuild()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/app/Activity;Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "button"    # Landroid/widget/CompoundButton;
    .param p3, "checked"    # Z

    .line 119
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    invoke-static {p1, v0, v1, p3}, Lcom/ahsim/demulation/RomObjectNameCorrections;->setEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 121
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadDataIfNeeded()V

    goto :goto_1

    .line 123
    :cond_2
    iget v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    iput-boolean v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loaded:Z

    .line 124
    :goto_1
    return-void

    .line 119
    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$rebuild$5(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;Landroid/view/View;)V
    .locals 0
    .param p1, "e"    # Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    .param p2, "v"    # Landroid/view/View;

    .line 249
    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->edit(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)V

    return-void
.end method

.method private loadDataIfNeeded()V
    .locals 6

    .line 160
    iget-boolean v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loaded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loaded:Z

    .line 162
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->status:Landroid/widget/TextView;

    sget v2, Lcom/ahsim/demulation/R$string;->editor_loading:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    .line 164
    .local v1, "generation":I
    iget-object v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    .line 165
    .local v0, "wantedProfile":Ljava/lang/String;
    iget-object v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    .line 166
    .local v2, "wantedSha":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda0;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v5, "DemulationNameEditorLoad"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 197
    return-void

    .line 160
    .end local v0    # "wantedProfile":Ljava/lang/String;
    .end local v1    # "generation":I
    .end local v2    # "wantedSha":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private rebuild()V
    .locals 16

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 201
    :cond_0
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->buildingsTab:Landroid/widget/Button;

    iget v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->styleTab(Landroid/widget/Button;Z)V

    .line 203
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->unitsTab:Landroid/widget/Button;

    iget v2, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->styleTab(Landroid/widget/Button;Z)V

    .line 204
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    iget v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->category:I

    const/4 v2, 0x3

    const/4 v5, 0x5

    if-nez v1, :cond_4

    .line 206
    const/4 v1, 0x1

    .local v1, "t":I
    :goto_2
    sget-object v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->STRUCTURES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 207
    iget-object v6, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    new-instance v7, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    invoke-direct {v7, v3, v1, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;-><init>(ZIZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "t":I
    :cond_3
    goto :goto_4

    .line 209
    :cond_4
    sget-object v1, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->EDITABLE_UNITS:[I

    array-length v6, v1

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_5

    aget v8, v1, v7

    .local v8, "t":I
    iget-object v9, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    new-instance v10, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    invoke-direct {v10, v4, v8, v3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;-><init>(ZIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "t":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 210
    :cond_5
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    new-instance v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    invoke-direct {v6, v4, v2, v4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;-><init>(ZIZ)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    new-instance v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    invoke-direct {v6, v4, v5, v4}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;-><init>(ZIZ)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :goto_4
    iget-object v1, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;

    .line 214
    .local v6, "e":Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    invoke-direct {v0, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->baseName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "base":Ljava/lang/String;
    iget-object v8, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    iget-object v9, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v10, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    iget-boolean v11, v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->unit:Z

    iget v12, v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->type:I

    iget-boolean v13, v6, Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;->fremen:Z

    invoke-static/range {v8 .. v13}, Lcom/ahsim/demulation/RomObjectNameCorrections;->saved(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "custom":Ljava/lang/String;
    if-nez v8, :cond_6

    move-object v9, v7

    goto :goto_6

    :cond_6
    move-object v9, v8

    .line 217
    .local v9, "name":Ljava/lang/String;
    :goto_6
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    .local v10, "line":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 220
    const/4 v11, 0x4

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v13

    invoke-direct {v0, v11}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v11

    invoke-direct {v0, v5}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v14

    invoke-virtual {v10, v12, v13, v11, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    invoke-direct {v0, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->image(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 222
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0x3a

    const/16 v13, 0x2a

    if-eqz v11, :cond_7

    .line 223
    new-instance v14, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v14, "preview":Landroid/widget/ImageView;
    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v5

    invoke-direct {v15, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .end local v14    # "preview":Landroid/widget/ImageView;
    goto :goto_7

    .line 230
    :cond_7
    const/high16 v5, 0x41600000    # 14.0f

    sget v14, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    const-string v15, "\u2014"

    invoke-direct {v0, v15, v5, v14}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v5

    .line 231
    .local v5, "placeholder":Landroid/widget/TextView;
    const/16 v14, 0x11

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v12

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v15

    invoke-direct {v14, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v5    # "placeholder":Landroid/widget/TextView;
    :goto_7
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v5, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .local v5, "labels":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    if-eqz v8, :cond_8

    sget v12, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->ACCENT:I

    goto :goto_8

    :cond_8
    sget v12, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->WHITE:I

    :goto_8
    const/high16 v14, 0x41500000    # 13.0f

    invoke-direct {v0, v9, v14, v12}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v12

    .line 237
    .local v12, "title":Landroid/widget/TextView;
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->englishName(Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v8, :cond_9

    const-string v15, ""

    goto :goto_9

    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  \u00b7  "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v15, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    sget v2, Lcom/ahsim/demulation/R$string;->editor_original:I

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v2, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x4124cccd    # 10.3f

    sget v13, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->MUTED:I

    invoke-direct {v0, v2, v4, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    .line 239
    .local v2, "subtitle":Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, -0x2

    invoke-direct {v4, v3, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 241
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, 0x7

    invoke-direct {v0, v13}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 242
    invoke-virtual {v10, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const/high16 v13, 0x41c00000    # 24.0f

    sget v15, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->ACCENT:I

    const-string v3, "\u203a"

    invoke-direct {v0, v3, v13, v15}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 244
    .local v3, "arrow":Landroid/widget/TextView;
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    const/16 v13, 0x32

    const/16 v15, 0x3d

    const/16 v14, 0x2a

    invoke-static {v14, v13, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    sget v14, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->CARD_STROKE:I

    const/16 v15, 0xa

    invoke-direct {v0, v13, v14, v15}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v13, "rowLp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v14, 0x3

    invoke-direct {v0, v14}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v15

    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 248
    iget-object v15, v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v15, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v6}, Lcom/ahsim/demulation/RomObjectNameEditorPanel$$ExternalSyntheticLambda1;-><init>(Lcom/ahsim/demulation/RomObjectNameEditorPanel;Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;)V

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .end local v2    # "subtitle":Landroid/widget/TextView;
    .end local v3    # "arrow":Landroid/widget/TextView;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "labels":Landroid/widget/LinearLayout;
    .end local v6    # "e":Lcom/ahsim/demulation/RomObjectNameEditorPanel$Entry;
    .end local v7    # "base":Ljava/lang/String;
    .end local v8    # "custom":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "line":Landroid/widget/LinearLayout;
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "title":Landroid/widget/TextView;
    .end local v13    # "rowLp":Landroid/widget/LinearLayout$LayoutParams;
    move v2, v14

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    goto/16 :goto_5

    .line 251
    :cond_a
    return-void

    .line 200
    :cond_b
    :goto_a
    return-void
.end method

.method private rounded(III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "color"    # I
    .param p2, "stroke"    # I
    .param p3, "radiusDp"    # I

    .line 352
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 353
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 354
    invoke-direct {p0, p3}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 355
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 356
    return-object v0
.end method

.method private styleTab(Landroid/widget/Button;Z)V
    .locals 4
    .param p1, "b"    # Landroid/widget/Button;
    .param p2, "selected"    # Z

    .line 347
    if-eqz p2, :cond_0

    const/16 v0, 0x17

    const/16 v1, 0x12

    const/16 v2, 0x18

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->WHITE:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 348
    if-eqz p2, :cond_1

    sget v0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->ACCENT:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x32

    const/16 v1, 0x3d

    const/16 v2, 0x2a

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 349
    :goto_1
    if-eqz p2, :cond_2

    const/16 v1, 0x57

    const/16 v2, 0x30

    const/16 v3, 0x6f

    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    goto :goto_2

    :cond_2
    sget v1, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->BLUE:I

    .line 348
    :goto_2
    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rounded(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method

.method private tab(Ljava/lang/String;)Landroid/widget/Button;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 339
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "b":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 341
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const/high16 v1, 0x41480000    # 12.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 343
    const/16 v1, 0x2a

    invoke-direct {p0, v1}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 344
    return-object v0
.end method


# virtual methods
.method setSource(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ready"    # Z
    .param p2, "nextProfile"    # Ljava/lang/String;
    .param p3, "nextSha256"    # Ljava/lang/String;

    .line 130
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    invoke-static {p2, p3}, Lcom/ahsim/demulation/RomObjectNameCorrections;->supported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    .line 142
    .local v4, "changed":Z
    :goto_2
    iput-object p2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    .line 144
    invoke-virtual {p0, v2}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setVisibility(I)V

    .line 145
    if-eqz v4, :cond_4

    .line 146
    iget v5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    .line 147
    iput-boolean v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loaded:Z

    .line 148
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    .line 149
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    .line 150
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->frigatePreview:Landroid/graphics/Bitmap;

    .line 151
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->rows:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    iget-object v5, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    invoke-static {v1, v3, v5}, Lcom/ahsim/demulation/RomObjectNameCorrections;->isEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 154
    .local v1, "active":Z
    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->enabled:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    iget-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->editor:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadDataIfNeeded()V

    .line 157
    :cond_6
    return-void

    .line 131
    .end local v1    # "active":Z
    .end local v4    # "changed":Z
    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->setVisibility(I)V

    .line 132
    iget v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loadGeneration:I

    .line 133
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->profile:Ljava/lang/String;

    .line 134
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sha256:Ljava/lang/String;

    .line 135
    iput-boolean v2, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->loaded:Z

    .line 136
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->sourceNames:Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$HudObjectNames;

    .line 137
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->iconArt:Lcom/ahsim/demulation/GenesisClassicPurchaseIconArt;

    .line 138
    iput-object v3, p0, Lcom/ahsim/demulation/RomObjectNameEditorPanel;->frigatePreview:Landroid/graphics/Bitmap;

    .line 139
    return-void
.end method
