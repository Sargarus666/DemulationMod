.class final Lcom/ahsim/demulation/RazorClassicView678;
.super Ljava/lang/Object;
.source "RazorClassicView678.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFFI)V
    .locals 7
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "arm"    # F
    .param p7, "stroke"    # F
    .param p8, "color"    # I

    .line 16
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    move v6, p8

    invoke-virtual {p1, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {p1, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    add-float v3, p2, p6

    move v4, p3

    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v4, p3, p6

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    sub-float v3, p4, p6

    move v4, p3

    move v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v4, p3, p6

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 21
    add-float v3, p2, p6

    move v4, p5

    move v1, p2

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, p5, p6

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    sub-float v3, p4, p6

    move v4, p5

    move v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, p5, p6

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    return-void
.end method
