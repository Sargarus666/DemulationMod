.class final Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$WorldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FavoriteRef"
.end annotation


# instance fields
.field centerOnSelect:Z

.field eventAlerts:Z

.field final generation:I

.field groupEventKind:I

.field groupEventUntilNanos:J

.field groupGenerations:[I

.field groupIdentities:[I

.field groupLastCommands:[I

.field groupLastHp:[I

.field groupOrderObserved:Z

.field groupRaws:[I

.field final house:I

.field final kind:I

.field final raw:I

.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

.field final type:I


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;IIIII)V
    .locals 9
    .param p2, "kind"    # I
    .param p3, "raw"    # I
    .param p4, "type"    # I
    .param p5, "house"    # I
    .param p6, "generation"    # I

    .line 7733
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "kind":I
    .end local p3    # "raw":I
    .end local p4    # "type":I
    .end local p5    # "house":I
    .end local p6    # "generation":I
    .local v2, "kind":I
    .local v3, "raw":I
    .local v4, "type":I
    .local v5, "house":I
    .local v6, "generation":I
    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;-><init>(Lcom/ahsim/demulation/MainActivity$WorldView;IIIIIZZ)V

    .line 7734
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;IIIIIZ)V
    .locals 9
    .param p2, "kind"    # I
    .param p3, "raw"    # I
    .param p4, "type"    # I
    .param p5, "house"    # I
    .param p6, "generation"    # I
    .param p7, "centerOnSelect"    # Z

    .line 7737
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;-><init>(Lcom/ahsim/demulation/MainActivity$WorldView;IIIIIZZ)V

    .line 7738
    return-void
.end method

.method constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;IIIIIZZ)V
    .locals 0
    .param p2, "kind"    # I
    .param p3, "raw"    # I
    .param p4, "type"    # I
    .param p5, "house"    # I
    .param p6, "generation"    # I
    .param p7, "centerOnSelect"    # Z
    .param p8, "eventAlerts"    # Z

    .line 7741
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7742
    iput p2, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->kind:I

    .line 7743
    iput p3, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->raw:I

    .line 7744
    iput p4, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->type:I

    .line 7745
    iput p5, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->house:I

    .line 7746
    iput p6, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->generation:I

    .line 7747
    iput-boolean p7, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->centerOnSelect:Z

    .line 7748
    iput-boolean p8, p0, Lcom/ahsim/demulation/MainActivity$WorldView$FavoriteRef;->eventAlerts:Z

    .line 7749
    return-void
.end method
