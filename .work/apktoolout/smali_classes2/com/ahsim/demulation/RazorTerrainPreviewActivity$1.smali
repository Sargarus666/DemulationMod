.class Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;
.super Ljava/lang/Object;
.source "RazorTerrainPreviewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    .line 285
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
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

    .line 287
    .local p1, "p":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetselectorsReady(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsource(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetchangingMission674(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastProbeEvidenceZip(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/io/File;)V

    .line 289
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const-string v1, "NOT_RUN"

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastProbeOutcome(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fputlastProbeFailure(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshareProbeButton(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v0}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetshareProbeButton(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetsource(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Lcom/ahsim/demulation/RazorTerrainPreviewSource;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    iget-object v3, p0, Lcom/ahsim/demulation/RazorTerrainPreviewActivity$1;->this$0:Lcom/ahsim/demulation/RazorTerrainPreviewActivity;

    invoke-static {v3}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$fgetpaletteSpinner(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;)Landroid/widget/Spinner;

    move-result-object v3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/ahsim/demulation/RazorTerrainPreviewActivity;->-$$Nest$mrequestFrame(Lcom/ahsim/demulation/RazorTerrainPreviewActivity;Z)V

    .line 294
    :cond_3
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 295
    .local p1, "p":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
