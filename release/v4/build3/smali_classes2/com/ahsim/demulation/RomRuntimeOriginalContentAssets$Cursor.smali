.class final Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;
.super Ljava/lang/Object;
.source "RomRuntimeOriginalContentAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cursor"
.end annotation


# instance fields
.field final data:[B

.field position:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "position"    # I

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->data:[B

    iput p2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    return-void
.end method


# virtual methods
.method nextCString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget v0, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 353
    .local v0, "next":[I
    iget-object v1, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->data:[B

    iget v2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    invoke-static {v1, v2, v0}, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets;->decodeCString([BI[I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/ahsim/demulation/RomRuntimeOriginalContentAssets$Cursor;->position:I

    .line 355
    return-object v1
.end method
