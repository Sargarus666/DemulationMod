.class public final Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;
.super Ljava/lang/Object;
.source "RazorTerrainAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RazorTerrainAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Preview"
.end annotation


# instance fields
.field private final argb:[I

.field public final height:I

.field public final paletteVariant:I

.field public final tiles:I

.field public final width:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 2
    .param p1, "variant"    # I
    .param p2, "pixels"    # [I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x200

    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->width:I

    .line 24
    const/16 v1, 0x400

    iput v1, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->height:I

    .line 25
    iput v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->tiles:I

    .line 28
    iput p1, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->paletteVariant:I

    .line 29
    iput-object p2, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->argb:[I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(I[ILcom/ahsim/demulation/RazorTerrainAtlas-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;-><init>(I[I)V

    return-void
.end method


# virtual methods
.method public argbCopy()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->argb:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public pixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 33
    if-ltz p1, :cond_0

    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x400

    if-ge p2, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ahsim/demulation/RazorTerrainAtlas$Preview;->argb:[I

    mul-int/lit16 v1, p2, 0x200

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Razor preview pixel outside atlas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
