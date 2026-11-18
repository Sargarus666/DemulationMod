.class public final Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;
.super Ljava/lang/Object;
.source "RazorSpriteSatProducerTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bufferPreparationOffset:I

.field public final counterWriterOffset:I

.field public final dmaSetupOffset:I

.field public final edition:I

.field public final gameObjectToSatSlotVerified:Z

.field public final gameplaySpritesMayBeDrawn:Z

.field public final hardwareFlipFlagsVerified:Z

.field public final hardwareSatUploadVerified:Z

.field public final objectSpriteCfgAndPoseVerified:Z

.field public final satBaseConfigOffset:I

.field public final satCounterWriterVerified:Z

.field public final satRamPreparationAnchorVerified:Z

.field public final satUploaderOffset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "e"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->hardwareSatUploadVerified:Z

    .line 55
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->satRamPreparationAnchorVerified:Z

    .line 56
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->satCounterWriterVerified:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->gameObjectToSatSlotVerified:Z

    .line 58
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->objectSpriteCfgAndPoseVerified:Z

    .line 59
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->hardwareFlipFlagsVerified:Z

    .line 60
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->gameplaySpritesMayBeDrawn:Z

    .line 62
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->edition:I

    .line 63
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->-$$Nest$sfgetSAT_UPLOADER()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->satUploaderOffset:I

    .line 64
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->-$$Nest$sfgetSAT_BASE_CONFIG()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->satBaseConfigOffset:I

    .line 65
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->-$$Nest$sfgetBUFFER_PREP()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->bufferPreparationOffset:I

    .line 66
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->-$$Nest$sfgetCOUNTER_WRITER()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->counterWriterOffset:I

    .line 67
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace;->-$$Nest$sfgetBUFFER_DMA_SETUP()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;->dmaSetupOffset:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(ILcom/ahsim/demulation/RazorSpriteSatProducerTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ahsim/demulation/RazorSpriteSatProducerTrace$Result;-><init>(I)V

    return-void
.end method


# virtual methods
.method public resolvedSlotForObject(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "objectIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor per-object SAT slot producer is not yet traced"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolvedSpriteAttributeForObject(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "facing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor object->pose/flip/CRAM SAT linkage is not yet traced"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
