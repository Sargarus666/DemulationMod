package com.ahsim.demulation;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes2.dex */
public final class RazorNativeShadowDeltaGate {
    private static final int BASE = 16711680;
    public static final int RAM_BYTES = 65536;

    private RazorNativeShadowDeltaGate() {
    }

    public static final class Change {
        public final int after;
        public final int before;
        public final int offset;
        public final String region;

        public Change(String region, int offset, int before, int after) {
            this.region = region;
            this.offset = offset;
            this.before = before;
            this.after = after;
        }
    }

    public static final class Verdict {
        public final int comparedChanges;
        public final boolean nativeCallbacksAuthorized;
        public final boolean observationalMatch;
        public final boolean razorGameTicksEnabled;
        public final String status;

        private Verdict(boolean match, int compared, String message) {
            this.nativeCallbacksAuthorized = false;
            this.razorGameTicksEnabled = false;
            this.observationalMatch = match;
            this.comparedChanges = compared;
            this.status = message;
        }
    }

    private static boolean valid(int addr, int length) {
        return (addr & 1) == 0 && addr >= 16711680 && addr <= RomImageNormalizer.MAX_ROM_BYTES - length;
    }

    private static boolean overlap(int a, int al, int b, int bl) {
        return a < b + bl && b < a + al;
    }

    private static String key(String region, int offset) {
        return region + ":" + offset;
    }

    private static String region(int addr, int ctx, int owner, int sp) {
        if (addr >= ctx && addr < ctx + 48) {
            int d = addr - ctx;
            return d < 4 ? "emc_pc" : (d < 8 || d >= 10) ? "emc_context_other" : "emc_return_word";
        }
        if (addr >= owner && addr < owner + 128) {
            int d2 = addr - owner;
            return (d2 < 110 || d2 >= 114) ? "active_object_other" : "active_object_6e_71";
        }
        if (addr >= 16768668 && addr < 16768676) {
            return "global_context_pointer_area";
        }
        if (addr < sp - 128 || addr >= sp + 32) {
            return null;
        }
        return "native_stack_near_call";
    }

    private static int relative(String reg, int addr, int ctx, int owner, int sp) {
        return reg.startsWith("emc_") ? addr - ctx : reg.startsWith("active_object_") ? addr - owner : reg.equals("global_context_pointer_area") ? addr - 16768668 : addr - sp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Verdict compare(byte[] bArr, byte[] bArr2, int i, int i2, int i3, List<Change> list) {
        int i4;
        int[] iArr;
        int[] iArr2;
        char c;
        byte[] bArr3 = bArr;
        byte[] bArr4 = bArr2;
        boolean z = false;
        Object[] objArr = 0;
        if (bArr3 != null && bArr4 != null && bArr3.length == 65536 && bArr4.length == 65536 && list != null && valid(i, 48)) {
            int i5 = 128;
            if (valid(i2, 128) && valid(i3, 32) && i3 >= 16711808 && i3 <= 16777180) {
                int[] iArr3 = {i, i2, i3 - 128, 16768668};
                char c2 = '\b';
                int[] iArr4 = {48, 128, 160, 8};
                int i6 = 0;
                while (true) {
                    int i7 = 1;
                    if (i6 < iArr3.length) {
                        int i8 = i6 + 1;
                        while (i8 < iArr3.length) {
                            if (i6 == 0 && i8 == i7) {
                                c = c2;
                            } else {
                                c = c2;
                                if (overlap(iArr3[i6], iArr4[i6], iArr3[i8], iArr4[i8])) {
                                    return new Verdict(z, objArr == true ? 1 : 0, "REJECTED_OVERLAPPING_WINDOWS");
                                }
                            }
                            i8++;
                            c2 = c;
                            i7 = 1;
                        }
                        i6++;
                    } else {
                        char c3 = c2;
                        HashMap hashMap = new HashMap();
                        for (Change change : list) {
                            if (change == null || change.region == null || change.region.equals("unclassified_ram") || change.before < 0 || change.before > 255 || change.after < 0 || change.after > 255 || change.before == change.after || change.offset < -128 || change.offset > i5) {
                                return new Verdict(false, 0 == true ? 1 : 0, "REJECTED_INVALID_PROFILE_DELTA");
                            }
                            if (hashMap.put(key(change.region, change.offset), Long.valueOf(change.after | (change.before << c3))) != null) {
                                return new Verdict(false, 0 == true ? 1 : 0, "REJECTED_DUPLICATE_PROFILE_DELTA");
                            }
                            i5 = 128;
                        }
                        HashSet hashSet = new HashSet();
                        int i9 = 0;
                        while (i9 < 65536) {
                            int i10 = bArr3[i9] & 255;
                            int i11 = bArr4[i9] & 255;
                            if (i10 == i11) {
                                i4 = i9;
                                iArr2 = iArr4;
                                iArr = iArr3;
                            } else {
                                int i12 = 16711680 + i9;
                                String region = region(i12, i, i2, i3);
                                if (region == null) {
                                    return new Verdict(false, hashSet.size(), "REJECTED_UNMAPPED_RAM_DELTA");
                                }
                                i4 = i9;
                                String key = key(region, relative(region, i12, i, i2, i3));
                                iArr = iArr3;
                                iArr2 = iArr4;
                                long j = i11 | (i10 << c3);
                                if (!hashMap.containsKey(key) || ((Long) hashMap.get(key)).longValue() != j) {
                                    return new Verdict(false, hashSet.size(), "REJECTED_DIFFERING_RAM_DELTA");
                                }
                                hashSet.add(key);
                            }
                            i9 = i4 + 1;
                            bArr3 = bArr;
                            iArr3 = iArr;
                            iArr4 = iArr2;
                            bArr4 = bArr2;
                        }
                        if (hashSet.size() != hashMap.size()) {
                            return new Verdict(false, hashSet.size(), "REJECTED_MISSING_RAM_DELTA");
                        }
                        return new Verdict(true, hashSet.size(), "OBSERVATIONAL_MATCH_ONLY_NO_TICKS");
                    }
                }
            }
        }
        return new Verdict(false, 0 == true ? 1 : 0, "REJECTED_INVALID_INPUT");
    }
}
