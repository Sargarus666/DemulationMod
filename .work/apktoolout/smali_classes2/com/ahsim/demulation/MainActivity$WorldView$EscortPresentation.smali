.class final Lcom/ahsim/demulation/MainActivity$WorldView$EscortPresentation;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/MainActivity$WorldView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EscortPresentation"
.end annotation


# instance fields
.field final groupId:[I

.field final ordinal:[I

.field final synthetic this$1:Lcom/ahsim/demulation/MainActivity$WorldView;


# direct methods
.method private constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;)V
    .locals 1

    .line 11093
    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$EscortPresentation;->this$1:Lcom/ahsim/demulation/MainActivity$WorldView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11094
    const/16 p1, 0x80

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ahsim/demulation/MainActivity$WorldView$EscortPresentation;->ordinal:[I

    .line 11095
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ahsim/demulation/MainActivity$WorldView$EscortPresentation;->groupId:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ahsim/demulation/MainActivity$WorldView;Lcom/ahsim/demulation/MainActivity-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/MainActivity$WorldView$EscortPresentation;-><init>(Lcom/ahsim/demulation/MainActivity$WorldView;)V

    return-void
.end method
