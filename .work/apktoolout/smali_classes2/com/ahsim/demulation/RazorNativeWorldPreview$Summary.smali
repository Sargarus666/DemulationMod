.class public final Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;
.super Ljava/lang/Object;
.source "RazorNativeWorldPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeWorldPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field public final expanded128MapMissions:I

.field public final gameplayReady:Z

.field public final invalidMissions:I

.field public final native64MapMissions:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "native64"    # I
    .param p2, "expanded"    # I
    .param p3, "invalid"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->gameplayReady:Z

    .line 27
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->native64MapMissions:I

    .line 28
    iput p2, p0, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->expanded128MapMissions:I

    .line 29
    iput p3, p0, Lcom/ahsim/demulation/RazorNativeWorldPreview$Summary;->invalidMissions:I

    .line 30
    return-void
.end method
