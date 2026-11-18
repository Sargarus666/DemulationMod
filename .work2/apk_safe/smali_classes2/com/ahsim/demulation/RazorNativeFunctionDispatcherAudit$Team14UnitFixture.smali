.class public final Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;
.super Ljava/lang/Object;
.source "RazorNativeFunctionDispatcherAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Team14UnitFixture"
.end annotation


# instance fields
.field public final flags5:I

.field public final house8:I

.field public final pointedFlags7:I

.field public final position0A:I

.field public final referenceResolved:Z

.field public final type2:I


# direct methods
.method public constructor <init>(IIIZII)V
    .locals 1
    .param p1, "flags5"    # I
    .param p2, "type2"    # I
    .param p3, "house8"    # I
    .param p4, "referenceResolved"    # Z
    .param p5, "pointedFlags7"    # I
    .param p6, "position0A"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->flags5:I

    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->type2:I

    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->house8:I

    .line 48
    iput-boolean p4, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->referenceResolved:Z

    and-int/lit16 v0, p5, 0xff

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->pointedFlags7:I

    .line 49
    iput p6, p0, Lcom/ahsim/demulation/RazorNativeFunctionDispatcherAudit$Team14UnitFixture;->position0A:I

    .line 50
    return-void
.end method
