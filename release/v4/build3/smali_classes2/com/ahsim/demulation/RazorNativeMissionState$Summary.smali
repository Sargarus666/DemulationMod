.class public final Lcom/ahsim/demulation/RazorNativeMissionState$Summary;
.super Ljava/lang/Object;
.source "RazorNativeMissionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeMissionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field public final gameplayReady:Z

.field public final mapsNeedingExpandedWorld:I

.field public final parsed:I

.field public final rawFifthHouseDefinitions:I


# direct methods
.method private constructor <init>(III)V
    .locals 1
    .param p1, "parsed"    # I
    .param p2, "expanded"    # I
    .param p3, "fifth"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->gameplayReady:Z

    .line 24
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->parsed:I

    .line 25
    iput p2, p0, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->mapsNeedingExpandedWorld:I

    .line 26
    iput p3, p0, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;->rawFifthHouseDefinitions:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(IIILcom/ahsim/demulation/RazorNativeMissionState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeMissionState$Summary;-><init>(III)V

    return-void
.end method
