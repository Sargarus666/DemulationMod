.class public final Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;
.super Ljava/lang/Object;
.source "RazorCompactMapPlacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorCompactMapPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evidence"
.end annotation


# instance fields
.field public final compactBoundsVerified:Z

.field public final loaderSha256:Ljava/lang/String;

.field public final romVariant:I

.field public final specialMapTileRemap:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "variant"    # I
    .param p2, "loaderSha"    # Ljava/lang/String;
    .param p3, "remap"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->romVariant:I

    .line 43
    iput-object p2, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->loaderSha256:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->specialMapTileRemap:Z

    .line 45
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;->compactBoundsVerified:Z

    .line 46
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ZLcom/ahsim/demulation/RazorCompactMapPlacement-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorCompactMapPlacement$Evidence;-><init>(ILjava/lang/String;Z)V

    return-void
.end method
