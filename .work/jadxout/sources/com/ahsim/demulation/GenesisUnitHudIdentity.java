package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GenesisUnitHudIdentity {
    private GenesisUnitHudIdentity() {
    }

    static String russianName(int unitType, int houseId) {
        if (unitType == 3) {
            return houseId == 3 ? "НАЕМНИКИ" : "ШТУРМОВИКИ";
        }
        if (unitType == 5) {
            return houseId == 3 ? "НАЕМНИК" : "ШТУРМОВИК";
        }
        return null;
    }
}
