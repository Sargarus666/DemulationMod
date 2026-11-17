package com.ahsim.demulation;

/* loaded from: classes2.dex */
final class GenesisSoundEventBridge {
    static final int CAPACITY = 64;
    static final int HEADER_WORDS = 4;
    static final int KIND_DIRECT = 2;
    static final int KIND_OUTPUT = 1;
    static final int MAGIC = 1397638193;
    static final int OP_PLAY = 1;
    static final int OP_STOP = 2;
    static final int ROUTE_IMMEDIATE = 1;
    static final int ROUTE_QUEUED = 0;
    static final int STRIDE = 5;
    static final int VERSION = 262504;
    static final int WORDS = 324;
    private boolean haveSequence;
    private int lastSequence;

    interface Sink {
        void onCommand(Command command);
    }

    GenesisSoundEventBridge() {
    }

    static final class Command {
        final int operation;
        final int route;
        final int sampleIndex;
        final int sequence;
        final int sourceId;
        final int sourceKind;
        final int sourceSequence;

        Command(int sequence, int sourceSequence, int operation, int route, int sourceKind, int sourceId, int sampleIndex) {
            this.sequence = sequence;
            this.sourceSequence = sourceSequence;
            this.operation = operation;
            this.route = route;
            this.sourceKind = sourceKind;
            this.sourceId = sourceId;
            this.sampleIndex = sampleIndex;
        }
    }

    void reset() {
        this.lastSequence = 0;
        this.haveSequence = false;
    }

    int consume(int[] words, Sink sink) {
        int count;
        if (words == null || words.length < WORDS || words[0] != MAGIC || words[1] != VERSION || (count = words[3]) < 0 || count > 64) {
            return -1;
        }
        int delivered = 0;
        for (int i = 0; i < count; i++) {
            int base = (i * 5) + 4;
            int sequence = words[base];
            if (sequence != 0 && (!this.haveSequence || sequence - this.lastSequence > 0)) {
                int meta = words[base + 2];
                Command command = new Command(sequence, words[base + 1], meta & 255, (meta >>> 8) & 255, (meta >>> 16) & 255, words[base + 3] & 65535, words[base + 4]);
                if (sink != null) {
                    sink.onCommand(command);
                }
                this.lastSequence = sequence;
                this.haveSequence = true;
                delivered++;
            }
        }
        return delivered;
    }

    int discardExisting(int[] words) {
        if (words == null || words.length < WORDS) {
            return -1;
        }
        if (words[0] != MAGIC || words[1] != VERSION) {
            return -1;
        }
        this.lastSequence = words[2];
        this.haveSequence = this.lastSequence != 0;
        return words[3];
    }
}
