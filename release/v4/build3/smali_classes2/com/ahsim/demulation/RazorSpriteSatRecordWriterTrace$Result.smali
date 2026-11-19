.class public final Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;
.super Ljava/lang/Object;
.source "RazorSpriteSatRecordWriterTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final edition:I

.field public final facingToSpriteFrameVerified:Z

.field public final flipOrPaletteRuntimeDispatchVerified:Z

.field public final gameplaySpritesMayBeDrawn:Z

.field public final objectToSatSlotVerified:Z

.field public final ramBaseWriterOffset:I

.field public final ramSatUploaderVerified:Z

.field public final recordLayoutVerified:Z

.field public final recordLimitOffset:I

.field public final recordWriterOffset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "edition"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->recordLayoutVerified:Z

    .line 37
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->ramSatUploaderVerified:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->objectToSatSlotVerified:Z

    .line 39
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->facingToSpriteFrameVerified:Z

    .line 40
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->flipOrPaletteRuntimeDispatchVerified:Z

    .line 41
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->gameplaySpritesMayBeDrawn:Z

    .line 43
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->edition:I

    .line 44
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->-$$Nest$sfgetRECORD_WRITER()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->recordWriterOffset:I

    .line 45
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->-$$Nest$sfgetPREPARE_A3()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->ramBaseWriterOffset:I

    .line 46
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;->-$$Nest$sfgetRECORD_LIMIT()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;->recordLimitOffset:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(ILcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$Result;-><init>(I)V

    return-void
.end method


# virtual methods
.method public attributeForObject(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "facing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor runtime facing-to-pose/flip linkage not established"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public slotForObject(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor runtime object-to-SAT slot linkage not established"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
