.class public final Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;
.super Ljava/lang/Object;
.source "RazorNativeShadowDeltaGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeShadowDeltaGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# instance fields
.field public final after:I

.field public final before:I

.field public final offset:I

.field public final region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->region:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->offset:I

    .line 32
    iput p3, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->before:I

    .line 33
    iput p4, p0, Lcom/ahsim/demulation/RazorNativeShadowDeltaGate$Change;->after:I

    .line 34
    return-void
.end method
