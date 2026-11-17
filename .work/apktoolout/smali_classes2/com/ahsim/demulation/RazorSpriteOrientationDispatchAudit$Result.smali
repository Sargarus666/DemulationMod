.class public final Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;
.super Ljava/lang/Object;
.source "RazorSpriteOrientationDispatchAudit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final eightDirectionQuantizationWitnessed:Z

.field public final indexedHeadingCodeOffset:I

.field public final missionsChecked:I

.field public final originalHFlipDispatchVerified:Z

.field public final originalLiveSpritePaletteVerified:Z

.field public final originalPoseSelectionVerified:Z

.field public final originalUnitToSpriteCfgDispatchVerified:Z

.field public final originalVFlipDispatchVerified:Z

.field public final raiderTrikesFound:I

.field public final readyForGameplaySpriteRendering:Z

.field public final roundedHeadingCodeOffset:I

.field public final spritePointerGroupAttested:Z

.field public final trikesFound:I

.field public final variant:I

.field private final witnessedRaiderBuckets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final witnessedTrikeBuckets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "edition"    # I
    .param p2, "previous"    # Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p3, "trike":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, "raider":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->eightDirectionQuantizationWitnessed:Z

    .line 44
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->spritePointerGroupAttested:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->originalUnitToSpriteCfgDispatchVerified:Z

    .line 47
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->originalPoseSelectionVerified:Z

    .line 48
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->originalHFlipDispatchVerified:Z

    .line 49
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->originalVFlipDispatchVerified:Z

    .line 50
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->originalLiveSpritePaletteVerified:Z

    .line 51
    iput-boolean v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->readyForGameplaySpriteRendering:Z

    .line 56
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->variant:I

    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->-$$Nest$sfgetROUND_TRACES()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->roundedHeadingCodeOffset:I

    .line 57
    invoke-static {}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit;->-$$Nest$sfgetTABLE_TRACES()[I

    move-result-object v0

    aget v0, v0, p1

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->indexedHeadingCodeOffset:I

    .line 58
    iget v0, p2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->checkedMissions:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->missionsChecked:I

    .line 59
    iget-object v0, p2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->trikes:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    iget v0, v0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->count:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->trikesFound:I

    .line 60
    iget-object v0, p2, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;->raiders:Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;

    iget v0, v0, Lcom/ahsim/demulation/RazorSpritePalettePoseAudit$ObjectSample;->count:I

    iput v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->raiderTrikesFound:I

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->witnessedTrikeBuckets:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->witnessedRaiderBuckets:Ljava/util/Map;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;Ljava/util/Map;Ljava/util/Map;Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;-><init>(ILcom/ahsim/demulation/RazorSpritePalettePoseAudit$Result;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public gameplaySpritePose(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "rawFacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor 68000 unit-to-CFG/pose/flip dispatch not authenticated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gameplayVdpFlipFlags(II)I
    .locals 2
    .param p1, "unitType"    # I
    .param p2, "rawFacing"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Razor Genesis sprite H/V mirror dispatch not authenticated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public raiderHeadingBuckets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->witnessedRaiderBuckets:Ljava/util/Map;

    return-object v0
.end method

.method public trikeHeadingBuckets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/ahsim/demulation/RazorSpriteOrientationDispatchAudit$Result;->witnessedTrikeBuckets:Ljava/util/Map;

    return-object v0
.end method
