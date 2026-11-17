package com.ahsim.demulation;

/* loaded from: classes2.dex */
public final class GenesisMentatTimeline {
    private static final int[] FRONTEND_TO_ROM_HOUSE = {1, 0, 2};
    private static final int PHASE_COMPLETE = 3;
    private static final int PHASE_INITIAL = 0;
    private static final int PHASE_PAUSE = 2;
    private static final int PHASE_SPEAKING = 1;
    private long deadlineTick;
    private int eyeFrame;
    private int frontendHouse;
    private int mouthFrame;
    private long nextEyeTick;
    private long nextMouthTick;
    private long speakingTicks;
    private String[] pages = {""};
    private int pageIndex = -1;
    private int phase = 3;
    private int pendingEyeFrame = -1;
    private int randomState = 1296387668;

    public void reset(int house, String[] sourcePages, long nowTick) {
        this.frontendHouse = Math.max(0, Math.min(2, house));
        if (sourcePages == null || sourcePages.length == 0) {
            this.pages = new String[]{""};
        } else {
            this.pages = new String[sourcePages.length];
            for (int i = 0; i < sourcePages.length; i++) {
                this.pages[i] = sourcePages[i] == null ? "" : sourcePages[i];
            }
        }
        this.pageIndex = -1;
        this.phase = 0;
        this.speakingTicks = 0L;
        this.deadlineTick = 30 + nowTick + (Math.max(0, this.pages.length - 1) * 15);
        this.eyeFrame = 0;
        this.pendingEyeFrame = -1;
        this.mouthFrame = 0;
        this.nextMouthTick = nowTick;
        this.randomState = ((this.frontendHouse * 1267611) ^ 1296387668) ^ (this.pages.length * 4129);
        this.nextEyeTick = randomRange(15, 180) + nowTick;
    }

    public void update(long nowTick) {
        updateEyes(nowTick);
        int guard = 0;
        while (true) {
            guard++;
            if (guard < 8) {
                if (this.phase != 0) {
                    if (this.phase == 1) {
                        updateMouth(nowTick);
                        if (nowTick < this.deadlineTick) {
                            break;
                        }
                        this.mouthFrame = 0;
                        this.nextMouthTick = nowTick;
                        if (this.pageIndex >= this.pages.length - 1) {
                            this.phase = 3;
                            break;
                        } else {
                            this.phase = 2;
                            this.deadlineTick += (this.speakingTicks * 3) / 2;
                        }
                    } else if (this.phase == 2) {
                        this.mouthFrame = 0;
                        if (nowTick < this.deadlineTick) {
                            break;
                        } else {
                            startPage(this.pageIndex + 1, nowTick);
                        }
                    } else {
                        this.mouthFrame = 0;
                        break;
                    }
                } else if (nowTick < this.deadlineTick) {
                    break;
                } else {
                    startPage(0, nowTick);
                }
            } else {
                break;
            }
        }
        if (this.phase != 1) {
            this.mouthFrame = 0;
        }
    }

    public void skip(long nowTick) {
        updateEyes(nowTick);
        if (this.phase == 0) {
            startPage(0, nowTick);
            return;
        }
        if (this.phase == 1 || this.phase == 2) {
            if (this.pageIndex >= this.pages.length - 1) {
                this.phase = 3;
                this.mouthFrame = 0;
                this.nextMouthTick = nowTick;
                return;
            }
            startPage(this.pageIndex + 1, nowTick);
        }
    }

    public boolean isComplete() {
        return this.phase == 3;
    }

    public boolean isSpeaking() {
        return this.phase == 1;
    }

    public String currentPage() {
        return this.pageIndex < 0 ? "" : this.pages[Math.min(this.pageIndex, this.pages.length - 1)];
    }

    public int pageIndex() {
        return Math.max(0, this.pageIndex);
    }

    public int pageCount() {
        return this.pages.length;
    }

    public int eyeFrame() {
        return this.eyeFrame;
    }

    public int mouthFrame() {
        return this.mouthFrame;
    }

    public long speakingTicksForCurrentPage() {
        return this.speakingTicks;
    }

    private void startPage(int index, long nowTick) {
        this.pageIndex = Math.max(0, Math.min(this.pages.length - 1, index));
        this.phase = 1;
        this.speakingTicks = this.pages[this.pageIndex].length() * 4;
        if (this.speakingTicks <= 0) {
            this.speakingTicks = 1L;
        }
        this.deadlineTick = this.speakingTicks + nowTick;
        this.nextMouthTick = nowTick;
        updateMouth(nowTick);
    }

    private void updateMouth(long nowTick) {
        int wait;
        if (this.phase != 1) {
            this.mouthFrame = 0;
            return;
        }
        if (nowTick < this.nextMouthTick) {
            return;
        }
        this.mouthFrame = randomRange(0, 4);
        if (this.mouthFrame == 0) {
            wait = randomRange(7, 30);
        } else {
            wait = this.mouthFrame == 4 ? randomRange(5, 6) : randomRange(6, 10);
        }
        this.nextMouthTick = wait + nowTick;
    }

    private void updateEyes(long nowTick) {
        int candidate;
        int i;
        if (nowTick < this.nextEyeTick) {
            return;
        }
        int i2 = 180;
        if (this.pendingEyeFrame >= 0) {
            this.eyeFrame = this.pendingEyeFrame;
            this.pendingEyeFrame = -1;
            if (this.eyeFrame == 4) {
                i = 12;
                i2 = 30;
            } else {
                i = 20;
            }
            this.nextEyeTick = randomRange(i, i2) + nowTick;
            return;
        }
        int romHouse = FRONTEND_TO_ROM_HOUSE[this.frontendHouse];
        if (romHouse == 0) {
            int r = randomRange(0, 7);
            if (r > 5) {
                candidate = 1;
            } else {
                candidate = r == 5 ? 4 : r;
            }
        } else if (romHouse == 1) {
            if (this.eyeFrame != 0) {
                candidate = 0;
            } else {
                int r2 = randomRange(0, 17);
                if (r2 > 9) {
                    candidate = 0;
                } else {
                    candidate = r2 >= 5 ? 4 : r2;
                }
            }
        } else {
            int r3 = randomRange(0, 15);
            if (r3 > 10) {
                candidate = 2;
            } else {
                candidate = r3 >= 5 ? 4 : r3;
            }
        }
        int candidate2 = Math.max(0, Math.min(4, candidate));
        int candidate3 = this.eyeFrame;
        if ((candidate3 == 1 && candidate2 == 2) || (this.eyeFrame == 2 && candidate2 == 1)) {
            this.pendingEyeFrame = candidate2;
            this.eyeFrame = 0;
            this.nextEyeTick = randomRange(1, 5) + nowTick;
        } else {
            this.eyeFrame = candidate2;
            this.nextEyeTick = (candidate2 == 4 ? randomRange(6, 60) : randomRange(15, 180)) + nowTick;
        }
    }

    private int randomRange(int min, int max) {
        this.randomState ^= this.randomState << 13;
        this.randomState ^= this.randomState >>> 17;
        this.randomState ^= this.randomState << 5;
        int span = (max - min) + 1;
        return ((int) ((this.randomState & 2147483647L) % span)) + min;
    }
}
