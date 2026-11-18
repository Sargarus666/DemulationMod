.class Lcom/ahsim/demulation/MainActivity$4;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/MainActivity;->refreshInGameSaveNameSuggestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final strictPrefixFilter:Landroid/widget/Filter;

.field final synthetic this$0:Lcom/ahsim/demulation/MainActivity;

.field final synthetic val$allNames:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/MainActivity;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .line 4022
    .local p4, "arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    iput-object p5, p0, Lcom/ahsim/demulation/MainActivity$4;->val$allNames:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4023
    new-instance p5, Lcom/ahsim/demulation/MainActivity$4$1;

    invoke-direct {p5, p0}, Lcom/ahsim/demulation/MainActivity$4$1;-><init>(Lcom/ahsim/demulation/MainActivity$4;)V

    iput-object p5, p0, Lcom/ahsim/demulation/MainActivity$4;->strictPrefixFilter:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 4085
    invoke-virtual {p0, p1, p2, p3}, Lcom/ahsim/demulation/MainActivity$4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4;->strictPrefixFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 4056
    instance-of v0, p2, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4057
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .local v0, "label":Landroid/widget/TextView;
    goto :goto_0

    .line 4059
    .end local v0    # "label":Landroid/widget/TextView;
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4060
    .restart local v0    # "label":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    const/16 v3, 0x22

    const/16 v4, 0x26

    const/16 v5, 0xf0

    const/16 v6, 0x1b

    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 4061
    const/16 v4, 0x4b

    const/16 v5, 0x67

    const/16 v6, 0x79

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 4060
    const/high16 v5, 0x40600000    # 3.5f

    invoke-static {v2, v3, v4, v5, v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$mmakeDialogBackground(Lcom/ahsim/demulation/MainActivity;IIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4063
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ahsim/demulation/MainActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4064
    const/16 v2, 0xe1

    const/16 v3, 0xcb

    const/16 v4, 0xe8

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4065
    nop

    .line 4066
    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveNameInput(Lcom/ahsim/demulation/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v2}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveNameInput(Lcom/ahsim/demulation/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x41800000    # 16.0f

    .line 4065
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4067
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4068
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 4069
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 4070
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 4071
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 4072
    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-virtual {v2}, Lcom/ahsim/demulation/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4073
    .local v2, "pad":I
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4074
    iget-object v3, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveNameInput(Lcom/ahsim/demulation/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveNameInput(Lcom/ahsim/demulation/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 4075
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v1}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveNameInput(Lcom/ahsim/demulation/MainActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getHeight()I

    move-result v1

    goto :goto_2

    .line 4076
    :cond_2
    iget-object v3, p0, Lcom/ahsim/demulation/MainActivity$4;->this$0:Lcom/ahsim/demulation/MainActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/MainActivity;->-$$Nest$fgetinGameSaveUiScale(Lcom/ahsim/demulation/MainActivity;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    nop

    .line 4077
    .local v1, "exactHeight":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 4080
    .local v3, "rowParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4081
    return-object v0
.end method
