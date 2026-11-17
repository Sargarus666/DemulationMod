package com.ahsim.demulation;

import com.ahsim.demulation.RazorCampaignMapSnapshot559;

/* loaded from: classes2.dex */
public final class RazorPrototypeView663 {

    public static final class Overlay {

        /* renamed from: x */
        public final int f48x;

        /* renamed from: y */
        public final int f49y;

        Overlay(int x, int y) {
            this.f48x = x;
            this.f49y = y;
        }
    }

    private RazorPrototypeView663() {
    }

    public static boolean inSafeWindow(int left, int top, int tiles, int x, int y, int margin) {
        if (tiles <= 0) {
            return false;
        }
        int safe = Math.max(0, Math.min(margin, (tiles - 1) / 2));
        return x >= left + safe && x < (left + tiles) - safe && y >= top + safe && y < (top + tiles) - safe;
    }

    public static RazorCampaignMapSnapshot559.Building buildingAt(RazorCampaignMapSnapshot559 frame, int x, int y) {
        if (frame == null) {
            return null;
        }
        for (int i = frame.buildings.length - 1; i >= 0; i--) {
            RazorCampaignMapSnapshot559.Building b = frame.buildings[i];
            if (b.f26x == x && b.f27y == y) {
                return b;
            }
        }
        return null;
    }

    public static Overlay orderOverlay(RazorCampaignMapSnapshot559 frame, int unit, int left, int top, int tiles) {
        if (frame == null || frame.activeUnit != unit || unit < 0 || unit >= frame.units.length || tiles <= 0 || frame.targetX < left || frame.targetY < top || frame.targetX >= left + tiles || frame.targetY >= top + tiles) {
            return null;
        }
        return new Overlay(frame.targetX, frame.targetY);
    }
}
