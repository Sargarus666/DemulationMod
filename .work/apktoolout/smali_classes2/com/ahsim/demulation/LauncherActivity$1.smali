.class Lcom/ahsim/demulation/LauncherActivity$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/LauncherActivity;->addRazorSessionControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/LauncherActivity;

    .line 619
    iput-object p1, p0, Lcom/ahsim/demulation/LauncherActivity$1;->this$0:Lcom/ahsim/demulation/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 621
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$1;->this$0:Lcom/ahsim/demulation/LauncherActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$fgetrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$fputrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;I)V

    .line 622
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$1;->this$0:Lcom/ahsim/demulation/LauncherActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$mcloseRazorCampaignSession(Lcom/ahsim/demulation/LauncherActivity;)V

    .line 623
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 625
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$1;->this$0:Lcom/ahsim/demulation/LauncherActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$fgetrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$fputrazorSessionSelectionGeneration(Lcom/ahsim/demulation/LauncherActivity;I)V

    .line 626
    iget-object v0, p0, Lcom/ahsim/demulation/LauncherActivity$1;->this$0:Lcom/ahsim/demulation/LauncherActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/LauncherActivity;->-$$Nest$mcloseRazorCampaignSession(Lcom/ahsim/demulation/LauncherActivity;)V

    .line 627
    return-void
.end method
