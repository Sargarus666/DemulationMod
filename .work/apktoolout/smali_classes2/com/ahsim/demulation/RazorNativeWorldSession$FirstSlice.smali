.class public final Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;
.super Ljava/lang/Object;
.source "RazorNativeWorldSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorNativeWorldSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirstSlice"
.end annotation


# instance fields
.field public final boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

.field public final executedGameTicks:I

.field public final executedInstructions:I

.field public final gameplayAuthorized:I

.field public final pendingNativeFunction:I

.field public final scriptEntry:I

.field public final sourceType:I

.field public final startPc:I

.field public final stopPc:I

.field public final stopReason:I

.field public final vmError:I


# direct methods
.method private constructor <init>([I[II)V
    .locals 7
    .param p1, "words"    # [I
    .param p2, "abi"    # [I
    .param p3, "variant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v1, p1, v0

    if-ltz v1, :cond_0

    aget v1, p1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    aget v2, p1, v1

    if-ltz v2, :cond_0

    aget v2, p1, v1

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_0

    const/4 v2, 0x4

    aget v3, p1, v2

    if-ltz v3, :cond_0

    aget v3, p1, v2

    const/16 v4, 0x18

    if-gt v3, v4, :cond_0

    const/4 v3, 0x5

    aget v4, p1, v3

    if-lt v4, v1, :cond_0

    aget v4, p1, v3

    if-gt v4, v2, :cond_0

    const/16 v4, 0x8

    aget v5, p1, v4

    if-nez v5, :cond_0

    const/16 v5, 0x9

    aget v6, p1, v5

    if-nez v6, :cond_0

    .line 724
    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->sourceType:I

    aget v0, p1, v1

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->scriptEntry:I

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->startPc:I

    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->stopPc:I

    .line 725
    aget v0, p1, v2

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->executedInstructions:I

    aget v0, p1, v3

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->stopReason:I

    .line 726
    const/4 v0, 0x6

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->pendingNativeFunction:I

    const/4 v0, 0x7

    aget v0, p1, v0

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->vmError:I

    .line 727
    aget v0, p1, v4

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->executedGameTicks:I

    aget v0, p1, v5

    iput v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->gameplayAuthorized:I

    .line 728
    new-instance v0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;-><init>([I[IILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V

    iput-object v0, p0, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;->boundary:Lcom/ahsim/demulation/RazorNativeWorldSession$FirstBoundary;

    .line 729
    return-void

    .line 723
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsafe Razor EMC slice report"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>([I[IILcom/ahsim/demulation/RazorNativeWorldSession-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ahsim/demulation/RazorNativeWorldSession$FirstSlice;-><init>([I[II)V

    return-void
.end method
