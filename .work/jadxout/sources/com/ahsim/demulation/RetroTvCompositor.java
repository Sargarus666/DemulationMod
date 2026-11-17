package com.ahsim.demulation;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.RenderEffect;
import android.graphics.RuntimeShader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
final class RetroTvCompositor {
    private final FrameLayout content;
    private final RetroVideoFilter fallback = new RetroVideoFilter();
    private final MaskOverlay mask = new MaskOverlay();
    private int mode;
    private boolean shaderActive;
    private boolean shaderRejected;
    private Object shaderState;

    RetroTvCompositor(FrameLayout content, int initialMode) {
        this.mode = 0;
        this.content = content;
        content.getOverlay().add(this.mask);
        content.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.ahsim.demulation.RetroTvCompositor$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                RetroTvCompositor.this.lambda$new$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        this.mode = RetroVideoFilter.normalizeMode(initialMode);
        if (content.getWidth() <= 0 || content.getHeight() <= 0) {
            return;
        }
        setMode(this.mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        int w = Math.max(0, right - left);
        int h = Math.max(0, bottom - top);
        this.mask.setBounds(0, 0, w, h);
        if (this.shaderActive && Build.VERSION.SDK_INT >= 33) {
            Api33.setSize(this.shaderState, Math.max(1, w), Math.max(1, h));
            return;
        }
        if (w > 0 && h > 0 && this.mode != 0 && Build.VERSION.SDK_INT >= 33 && !this.shaderRejected) {
            setMode(this.mode);
        }
    }

    void setMode(int newMode) {
        this.mode = RetroVideoFilter.normalizeMode(newMode);
        this.shaderActive = false;
        if (Build.VERSION.SDK_INT >= 31) {
            this.content.setRenderEffect(null);
        }
        if (this.mode != 0 && Build.VERSION.SDK_INT >= 33 && this.content.getWidth() > 0 && this.content.getHeight() > 0 && !this.shaderRejected) {
            try {
                if (this.shaderState == null) {
                    this.shaderState = Api33.create();
                }
                Api33.setSize(this.shaderState, Math.max(1, this.content.getWidth()), Math.max(1, this.content.getHeight()));
                Api33.attach(this.content, this.shaderState);
                this.shaderActive = true;
            } catch (LinkageError | RuntimeException e) {
                if (Build.VERSION.SDK_INT >= 31) {
                    this.content.setRenderEffect(null);
                }
                this.shaderState = null;
                this.shaderRejected = true;
            }
        }
        this.mask.invalidateSelf();
        this.content.invalidate();
    }

    boolean usesShader() {
        return this.shaderActive;
    }

    private final class MaskOverlay extends Drawable {
        private MaskOverlay() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (RetroTvCompositor.this.mode == 0 || RetroTvCompositor.this.shaderActive || !canvas.isHardwareAccelerated()) {
                return;
            }
            RetroTvCompositor.this.fallback.drawOverlay(canvas, getBounds().width(), getBounds().height());
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int alpha) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter filter) {
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }
    }

    private static final class Api33 {
        private static final String SHADER = "uniform shader image;\nuniform float2 imageSize;\nhalf4 main(float2 p) {\n  float2 wh = max(imageSize, float2(1.0, 1.0));\n  half4 mainColor = image.eval(p);\n  half4 adjacent = image.eval(p + float2(-0.75, 0.0));\n  half3 rgb = mix(mainColor.rgb, adjacent.rgb, 0.08);\n  float row = fract(p.y * 224.0 / wh.y);\n  float gap = smoothstep(0.49, 0.96, row);\n  float scan = 1.0 - 0.22 * gap;\n  float maskCell = mod(floor(p.x * 0.5), 3.0);\n  half3 mask = maskCell < 1.0 ? half3(1.0, 0.970, 0.970) :\n      (maskCell < 2.0 ? half3(0.972, 1.0, 0.972) :\n                        half3(0.970, 0.970, 1.0));\n  float2 uv = p / wh * 2.0 - 1.0;\n  float vignette = 1.0 - 0.075 * dot(uv, uv);\n  return half4(rgb * mask * half(scan * vignette), mainColor.a);\n}\n";

        private Api33() {
        }

        static Object create() {
            return new RuntimeShader(SHADER);
        }

        static void setSize(Object shader, int w, int h) {
            ((RuntimeShader) shader).setFloatUniform("imageSize", w, h);
        }

        static void attach(View root, Object shader) {
            root.setRenderEffect(RenderEffect.createRuntimeShaderEffect((RuntimeShader) shader, "image"));
        }
    }
}
