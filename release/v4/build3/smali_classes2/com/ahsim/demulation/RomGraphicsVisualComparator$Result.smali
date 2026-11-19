.class public final Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;
.super Ljava/lang/Object;
.source "RomGraphicsVisualComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomGraphicsVisualComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final bytesEqual:Z

.field public final differingBlocks:I

.field public final differingBytes:I

.field public final differingElements:I

.field public final kind:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

.field public final relativePath:Ljava/lang/String;

.field public final totalBlocks:I

.field public final totalBytes:I

.field public final totalElements:I

.field public final visualEqual:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIII)V
    .locals 0
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "kind"    # Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;
    .param p3, "bytesEqual"    # Z
    .param p4, "visualEqual"    # Z
    .param p5, "differingBytes"    # I
    .param p6, "totalBytes"    # I
    .param p7, "differingBlocks"    # I
    .param p8, "totalBlocks"    # I
    .param p9, "differingElements"    # I
    .param p10, "totalElements"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->relativePath:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->kind:Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;

    .line 31
    iput-boolean p3, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->bytesEqual:Z

    .line 32
    iput-boolean p4, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->visualEqual:Z

    .line 33
    iput p5, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingBytes:I

    .line 34
    iput p6, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalBytes:I

    .line 35
    iput p7, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingBlocks:I

    .line 36
    iput p8, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalBlocks:I

    .line 37
    iput p9, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->differingElements:I

    .line 38
    iput p10, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->totalElements:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIIILcom/ahsim/demulation/RomGraphicsVisualComparator-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;-><init>(Ljava/lang/String;Lcom/ahsim/demulation/RomGraphicsVisualComparator$Kind;ZZIIIIII)V

    return-void
.end method


# virtual methods
.method public decodedEquivalentOnly()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->visualEqual:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ahsim/demulation/RomGraphicsVisualComparator$Result;->bytesEqual:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
