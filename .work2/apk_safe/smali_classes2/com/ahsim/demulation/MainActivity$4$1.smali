.class Lcom/ahsim/demulation/MainActivity$4$1;
.super Landroid/widget/Filter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ahsim/demulation/MainActivity$4;

    .line 4023
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 4025
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 4026
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4027
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    iget-object v2, v2, Lcom/ahsim/demulation/MainActivity$4;->val$allNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4028
    .local v3, "name":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4029
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 4030
    :cond_2
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4031
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    iput-object v1, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 4032
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 4033
    return-object v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 4036
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/MainActivity$4;->setNotifyOnChange(Z)V

    .line 4037
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$4;->clear()V

    .line 4038
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4040
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 4041
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-virtual {v1, v0}, Lcom/ahsim/demulation/MainActivity$4;->addAll(Ljava/util/Collection;)V

    .line 4043
    .end local v0    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ahsim/demulation/MainActivity$4;->setNotifyOnChange(Z)V

    .line 4044
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$4;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$4;->notifyDataSetChanged()V

    goto :goto_0

    .line 4045
    :cond_1
    iget-object v0, p0, Lcom/ahsim/demulation/MainActivity$4$1;->this$1:Lcom/ahsim/demulation/MainActivity$4;

    invoke-virtual {v0}, Lcom/ahsim/demulation/MainActivity$4;->notifyDataSetInvalidated()V

    .line 4046
    :goto_0
    return-void
.end method
