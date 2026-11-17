package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class RazorScenarioEconomy573 {
    public static final int SCHEMA = 573;
    public final int playerCredits;
    public final int playerSourceSection;
    public final int[] sourceCredits;
    public final int sourceMask;

    private RazorScenarioEconomy573(int player, int mask, int[] credits) {
        this.playerSourceSection = player;
        this.sourceMask = mask;
        this.sourceCredits = (int[]) credits.clone();
        this.playerCredits = player == 255 ? -1 : credits[player];
    }

    public static RazorScenarioEconomy573 inspect(DuneHackR82cRazorMissionBundle.Result bundle, int house, int mission) throws IOException {
        if (bundle == null || bundle.variant < 1 || bundle.variant > 2) {
            throw new IOException("Razor source not authenticated");
        }
        return fromDocument(DuneHackR82ScenarioRecordDecoder.decode(bundle.mission(house, mission).scenarioBytes()));
    }

    static RazorScenarioEconomy573 fromDocument(DuneHackR82ScenarioRecordDecoder.Document document) throws IOException {
        if (document == null) {
            throw new IOException("Missing Razor scenario");
        }
        int[] credits = new int[12];
        int player = 255;
        int mask = 0;
        for (DuneHackR82ScenarioRecordDecoder.Record row : document.records()) {
            if (row.section >= 2 && (row.section <= 5 || row.section == 11)) {
                int section = row.section;
                if (row.valueCount() != 4 || ((mask >>> section) & 1) != 0 || (row.value(2) != 72 && row.value(2) != 67)) {
                    throw new IOException("Invalid Razor source house credit record");
                }
                mask |= 1 << section;
                credits[section] = row.value(1);
                if (row.value(2) != 72) {
                    continue;
                } else {
                    if (player != 255) {
                        throw new IOException("Ambiguous Razor player house");
                    }
                    player = section;
                }
            }
        }
        if (Integer.bitCount(mask) > 5 || mask == 0) {
            throw new IOException("Invalid source house count");
        }
        return new RazorScenarioEconomy573(player, mask, credits);
    }

    public void verifyNative(int[] words) throws IOException {
        if (words != null && words.length == 20 && words[0] == 573 && words[1] == this.playerSourceSection) {
            if (words[2] == (this.playerCredits < 0 ? -1 : this.playerCredits) && words[3] == words[2] && words[4] == this.sourceMask && words[5] == 0 && words[6] == 0 && words[7] == 0) {
                for (int i = 0; i < 12; i++) {
                    if (words[i + 8] != this.sourceCredits[i]) {
                        throw new IOException("Razor native source house credits mismatch");
                    }
                }
                return;
            }
        }
        throw new IOException("Razor native economy disagrees with verified source");
    }
}
