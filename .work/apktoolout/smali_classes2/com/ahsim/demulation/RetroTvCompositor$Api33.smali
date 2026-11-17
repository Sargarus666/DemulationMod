.class final Lcom/ahsim/demulation/RetroTvCompositor$Api33;
.super Ljava/lang/Object;
.source "RetroTvCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ahsim/demulation/RetroTvCompositor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api33"
.end annotation


# static fields
.field private static final SHADER:Ljava/lang/String; = "uniform shader image;\nuniform float2 imageSize;\nhalf4 main(float2 p) {\n  float2 wh = max(imageSize, float2(1.0, 1.0));\n  half4 mainColor = image.eval(p);\n  half4 adjacent = image.eval(p + float2(-0.75, 0.0));\n  half3 rgb = mix(mainColor.rgb, adjacent.rgb, 0.08);\n  float row = fract(p.y * 224.0 / wh.y);\n  float gap = smoothstep(0.49, 0.96, row);\n  float scan = 1.0 - 0.22 * gap;\n  float maskCell = mod(floor(p.x * 0.5), 3.0);\n  half3 mask = maskCell < 1.0 ? half3(1.0, 0.970, 0.970) :\n      (maskCell < 2.0 ? half3(0.972, 1.0, 0.972) :\n                        half3(0.970, 0.970, 1.0));\n  float2 uv = p / wh * 2.0 - 1.0;\n  float vignette = 1.0 - 0.075 * dot(uv, uv);\n  return half4(rgb * mask * half(scan * vignette), mainColor.a);\n}\n"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attach(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "shader"    # Ljava/lang/Object;

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/graphics/RuntimeShader;

    const-string v1, "image"

    invoke-static {v0, v1}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 122
    return-void
.end method

.method static create()Ljava/lang/Object;
    .locals 2

    .line 114
    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string v1, "uniform shader image;\nuniform float2 imageSize;\nhalf4 main(float2 p) {\n  float2 wh = max(imageSize, float2(1.0, 1.0));\n  half4 mainColor = image.eval(p);\n  half4 adjacent = image.eval(p + float2(-0.75, 0.0));\n  half3 rgb = mix(mainColor.rgb, adjacent.rgb, 0.08);\n  float row = fract(p.y * 224.0 / wh.y);\n  float gap = smoothstep(0.49, 0.96, row);\n  float scan = 1.0 - 0.22 * gap;\n  float maskCell = mod(floor(p.x * 0.5), 3.0);\n  half3 mask = maskCell < 1.0 ? half3(1.0, 0.970, 0.970) :\n      (maskCell < 2.0 ? half3(0.972, 1.0, 0.972) :\n                        half3(0.970, 0.970, 1.0));\n  float2 uv = p / wh * 2.0 - 1.0;\n  float vignette = 1.0 - 0.075 * dot(uv, uv);\n  return half4(rgb * mask * half(scan * vignette), mainColor.a);\n}\n"

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static setSize(Ljava/lang/Object;II)V
    .locals 4
    .param p0, "shader"    # Ljava/lang/Object;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/graphics/RuntimeShader;

    int-to-float v1, p1

    int-to-float v2, p2

    const-string v3, "imageSize"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 118
    return-void
.end method
