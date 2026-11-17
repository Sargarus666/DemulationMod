.class final Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;
.super Ljava/lang/Object;
.source "GenesisMissionNineGraphicsPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Frame"
.end annotation


# instance fields
.field final mapH:I

.field final mapW:I

.field final minX:I

.field final minY:I

.field final objects:Lcom/ahsim/demulation/GenesisObjectArt;

.field final ownerHouse:I

.field final startX:F

.field final startY:F

.field final terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

.field final unitAux:[I

.field final words:[I


# direct methods
.method constructor <init>([I[ILcom/ahsim/demulation/GenesisTerrainArt;Lcom/ahsim/demulation/GenesisObjectArt;)V
    .locals 9
    .param p1, "words"    # [I
    .param p2, "unitAux"    # [I
    .param p3, "terrain"    # Lcom/ahsim/demulation/GenesisTerrainArt;
    .param p4, "objects"    # Lcom/ahsim/demulation/GenesisObjectArt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->words:[I

    .line 131
    iput-object p2, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->unitAux:[I

    .line 132
    iput-object p3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->terrain:Lcom/ahsim/demulation/GenesisTerrainArt;

    .line 133
    iput-object p4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->objects:Lcom/ahsim/demulation/GenesisObjectArt;

    .line 134
    const/4 v0, 0x4

    aget v0, p1, v0

    .line 135
    .local v0, "bounds":I
    and-int/lit8 v1, v0, 0x3f

    iput v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    .line 136
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    .line 137
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    .line 138
    ushr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    .line 139
    const/4 v1, 0x5

    aget v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->ownerHouse:I

    .line 140
    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    const/16 v2, 0x40

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    add-int/2addr v1, v3

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    add-int/2addr v1, v3

    if-gt v1, v2, :cond_6

    .line 143
    const/4 v1, -0x1

    .line 146
    .local v1, "anchor":I
    const/4 v2, 0x0

    .local v2, "raw":I
    :goto_0
    const/high16 v3, -0x80000000

    const/16 v4, 0x80

    if-ge v2, v4, :cond_1

    .line 147
    mul-int/lit8 v5, v2, 0xc

    add-int/lit16 v5, v5, 0x1210

    .line 148
    .local v5, "base":I
    aget v6, p1, v5

    .line 149
    .local v6, "meta":I
    and-int v7, v6, v3

    if-eqz v7, :cond_0

    and-int/lit16 v7, v6, 0xff

    iget v8, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->ownerHouse:I

    if-ne v7, v8, :cond_0

    .line 150
    add-int/lit8 v7, v5, 0x1

    aget v7, p1, v7

    and-int/lit16 v1, v7, 0xfff

    .line 151
    goto :goto_1

    .line 146
    .end local v5    # "base":I
    .end local v6    # "meta":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "raw":I
    :cond_1
    :goto_1
    if-gez v1, :cond_3

    const/4 v2, 0x0

    .restart local v2    # "raw":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 155
    mul-int/lit8 v5, v2, 0x4

    add-int/lit16 v5, v5, 0x1010

    .line 156
    .restart local v5    # "base":I
    aget v6, p1, v5

    .line 157
    .restart local v6    # "meta":I
    and-int v7, v6, v3

    if-eqz v7, :cond_2

    and-int/lit16 v7, v6, 0xff

    iget v8, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->ownerHouse:I

    if-ne v7, v8, :cond_2

    .line 158
    add-int/lit8 v3, v5, 0x2

    aget v3, p1, v3

    and-int/lit16 v1, v3, 0xfff

    .line 159
    goto :goto_3

    .line 154
    .end local v5    # "base":I
    .end local v6    # "meta":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    .end local v2    # "raw":I
    :cond_3
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v1, :cond_4

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapW:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_4

    :cond_4
    and-int/lit8 v4, v1, 0x3f

    iget v5, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v3

    :goto_4
    iput v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->startX:F

    .line 163
    if-gez v1, :cond_5

    iget v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->mapH:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    goto :goto_5

    :cond_5
    ushr-int/lit8 v2, v1, 0x6

    iget v4, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->minY:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v3, v2

    :goto_5
    iput v3, p0, Lcom/ahsim/demulation/GenesisMissionNineGraphicsPreview$Frame;->startY:F

    .line 164
    return-void

    .line 142
    .end local v1    # "anchor":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid scenario map bounds"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
