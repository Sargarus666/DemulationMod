.class public final Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;
.super Ljava/lang/Object;
.source "RazorSpriteSatRecordWriterTrace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatRecord"
.end annotation


# instance fields
.field public final attributeWord:I

.field public final sizeLinkWord:I

.field public final xWord:I

.field public final yWord:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "y"    # I
    .param p2, "sizeLink"    # I
    .param p3, "attr"    # I
    .param p4, "x"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->yWord:I

    iput p2, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->sizeLinkWord:I

    iput p3, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    iput p4, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->xWord:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(IIIILcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public heightTiles()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->sizeLinkWord:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public horizontalFlip()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public link()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->sizeLinkWord:I

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public paletteLine()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    ushr-int/lit8 v0, v0, 0xd

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public priority()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tileIndex()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    and-int/lit16 v0, v0, 0x7ff

    return v0
.end method

.method public verticalFlip()Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->attributeWord:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public widthTiles()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->sizeLinkWord:I

    ushr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public xCoordinate()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->xWord:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public yCoordinate()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/ahsim/demulation/RazorSpriteSatRecordWriterTrace$SatRecord;->yWord:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method
