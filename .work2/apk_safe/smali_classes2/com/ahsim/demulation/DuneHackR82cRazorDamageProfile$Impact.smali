.class public final Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;
.super Ljava/lang/Object;
.source "DuneHackR82cRazorDamageProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impact"
.end annotation


# instance fields
.field public final animation:I

.field public final animationMultiplierApplied:Z

.field public final coefficientQ8:I

.field public final laterWeaponSemanticsUnverified:Z

.field public final movementClass:I

.field public final rawDamage:I

.field public final resultAfterAnimationStage:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 2
    .param p1, "raw"    # I
    .param p2, "anim"    # I
    .param p3, "movement"    # I
    .param p4, "coeff"    # I
    .param p5, "result"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->laterWeaponSemanticsUnverified:Z

    .line 35
    iput p1, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->rawDamage:I

    .line 36
    iput p2, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->animation:I

    .line 37
    iput p3, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->movementClass:I

    .line 38
    iput p4, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->coefficientQ8:I

    .line 39
    iput p5, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->resultAfterAnimationStage:I

    .line 40
    const/16 v1, 0x100

    if-eq p4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;->animationMultiplierApplied:Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/ahsim/demulation/DuneHackR82cRazorDamageProfile-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/ahsim/demulation/DuneHackR82cRazorDamageProfile$Impact;-><init>(IIIII)V

    return-void
.end method
