.class public final Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;
.super Ljava/lang/Object;
.source "RazorNativeIdentityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeIdentityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Summary"
.end annotation


# instance fields
.field public final addedHouseUnits:I

.field public final additionalUnitTypes:I

.field public final expandedMissions:I

.field public final gameplayReady:Z

.field public final groundTiles:I

.field public final placedStructures:I

.field public final scenarios:I

.field public final sourceUnits:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "missions"    # I
    .param p2, "units"    # I
    .param p3, "structures"    # I
    .param p4, "ground"    # I
    .param p5, "extraTypes"    # I
    .param p6, "newOwners"    # I
    .param p7, "expanded"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->gameplayReady:Z

    .line 23
    iput p1, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->scenarios:I

    iput p2, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->sourceUnits:I

    iput p3, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->placedStructures:I

    .line 24
    iput p4, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->groundTiles:I

    iput p5, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->additionalUnitTypes:I

    .line 25
    iput p6, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->addedHouseUnits:I

    iput p7, p0, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;->expandedMissions:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(IIIIIIILcom/ahsim/demulation/RazorNativeIdentityBridge-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/ahsim/demulation/RazorNativeIdentityBridge$Summary;-><init>(IIIIIII)V

    return-void
.end method
