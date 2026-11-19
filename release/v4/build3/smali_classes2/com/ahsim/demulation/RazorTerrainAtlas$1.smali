.class Lcom/ahsim/demulation/RazorTerrainAtlas$1;
.super Ljava/lang/Object;
.source "RazorTerrainAtlas.java"

# interfaces
.implements Lcom/ahsim/demulation/RazorTerrainAtlas$TileDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ahsim/demulation/RazorTerrainAtlas;->render(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;I)Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;


# direct methods
.method constructor <init>(Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$1;->val$audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(II)[I
    .locals 1
    .param p1, "variant"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$1;->val$audit:Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;

    invoke-virtual {v0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainVisualSource$Audit;->decodeOriginalMetatile(II)[I

    move-result-object v0

    return-object v0
.end method
