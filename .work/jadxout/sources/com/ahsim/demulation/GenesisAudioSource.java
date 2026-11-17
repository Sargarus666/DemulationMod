package com.ahsim.demulation;

import java.io.IOException;

/* loaded from: classes2.dex */
final class GenesisAudioSource {
    private static final byte[] MAGIC = {68, 69, 77, 65, 85, 68, 48, 49};
    private static final int PACK_VERSION = 1;
    private static final int ROM_IMAGE_BYTES = 1048576;
    private final int[] absoluteOffsets;
    private final byte[] bytes;
    private final boolean compact;
    private final int[] dataOffsets;
    private final int imageBytes;
    private final int[] lengths;

    private GenesisAudioSource(byte[] bytes, int imageBytes, int[] absoluteOffsets, int[] lengths, int[] dataOffsets, boolean compact) {
        this.bytes = bytes;
        this.imageBytes = imageBytes;
        this.absoluteOffsets = absoluteOffsets;
        this.lengths = lengths;
        this.dataOffsets = dataOffsets;
        this.compact = compact;
    }

    static GenesisAudioSource fromRom(byte[] rom) {
        if (rom == null || rom.length < ROM_IMAGE_BYTES) {
            throw new IllegalArgumentException("Dune ROM is missing or truncated");
        }
        return new GenesisAudioSource(rom, rom.length, new int[]{0}, new int[]{rom.length}, new int[]{0}, false);
    }

    static GenesisAudioSource fromPack(byte[] pack) throws IOException {
        if (pack == null) {
            throw new IOException("Audio source pack is unavailable");
        }
        int p = 0;
        byte[] bArr = MAGIC;
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int expected = bArr[i];
            if (p < pack.length) {
                int p2 = p + 1;
                if (pack[p] == expected) {
                    i++;
                    p = p2;
                }
            }
            throw new IOException("Audio source pack magic mismatch");
        }
        int version = be32Raw(pack, p);
        int p3 = p + 4;
        int imageBytes = be32Raw(pack, p3);
        int p4 = p3 + 4;
        int count = be32Raw(pack, p4);
        int p5 = p4 + 4;
        if (version != 1 || imageBytes != ROM_IMAGE_BYTES || count <= 0 || count > 32) {
            throw new IOException("Audio source pack header mismatch");
        }
        int headerBytes = (count * 8) + 20;
        if (headerBytes > pack.length) {
            throw new IOException("Audio source pack header truncated");
        }
        int[] offsets = new int[count];
        int[] lengths = new int[count];
        int[] dataOffsets = new int[count];
        int data = headerBytes;
        for (int i2 = 0; i2 < count; i2++) {
            int off = be32Raw(pack, p5);
            int p6 = p5 + 4;
            int len = be32Raw(pack, p6);
            p5 = p6 + 4;
            if (off < 0 || len < 0 || off > imageBytes - len) {
                throw new IOException("Audio source pack segment is outside ROM image");
            }
            if (data > pack.length - len) {
                throw new IOException("Audio source pack is truncated");
            }
            offsets[i2] = off;
            lengths[i2] = len;
            dataOffsets[i2] = data;
            data += len;
        }
        if (data == pack.length) {
            return new GenesisAudioSource(pack, imageBytes, offsets, lengths, dataOffsets, true);
        }
        throw new IOException("Audio source pack has trailing data");
    }

    int imageBytes() {
        return this.imageBytes;
    }

    int residentBytes() {
        return this.bytes.length;
    }

    boolean isCompact() {
        return this.compact;
    }

    int segmentCount() {
        return this.absoluteOffsets.length;
    }

    boolean contains(int absolute, int length) {
        if (absolute < 0 || length < 0 || absolute > this.imageBytes - length) {
            return false;
        }
        if (length == 0) {
            return true;
        }
        int remaining = length;
        int cursor = absolute;
        while (remaining > 0) {
            int s = findSegment(cursor);
            if (s < 0) {
                return false;
            }
            int within = cursor - this.absoluteOffsets[s];
            int available = this.lengths[s] - within;
            if (available <= 0) {
                return false;
            }
            int step = Math.min(remaining, available);
            cursor += step;
            remaining -= step;
        }
        return true;
    }

    /* renamed from: u8 */
    int m1u8(int absolute) {
        int s = findSegment(absolute);
        if (s < 0) {
            throw new IllegalArgumentException("Audio address is outside READY source: 0x" + Integer.toHexString(absolute));
        }
        return this.bytes[(this.dataOffsets[s] + absolute) - this.absoluteOffsets[s]] & 255;
    }

    int le16(int absolute) {
        return m1u8(absolute) | (m1u8(absolute + 1) << 8);
    }

    int be16(int absolute) {
        return (m1u8(absolute) << 8) | m1u8(absolute + 1);
    }

    int u24le(int absolute) {
        return m1u8(absolute) | (m1u8(absolute + 1) << 8) | (m1u8(absolute + 2) << 16);
    }

    int be32(int absolute) {
        return (m1u8(absolute) << 24) | (m1u8(absolute + 1) << 16) | (m1u8(absolute + 2) << 8) | m1u8(absolute + 3);
    }

    void copyTo(int absolute, byte[] out, int outOffset, int length) {
        if (out == null || outOffset < 0 || length < 0 || outOffset > out.length - length) {
            throw new IllegalArgumentException("Audio copy destination range");
        }
        int remaining = length;
        int cursor = absolute;
        int dst = outOffset;
        while (remaining > 0) {
            int s = findSegment(cursor);
            if (s < 0) {
                throw new IllegalArgumentException("Audio copy source range");
            }
            int within = cursor - this.absoluteOffsets[s];
            int step = Math.min(remaining, this.lengths[s] - within);
            if (step <= 0) {
                throw new IllegalArgumentException("Audio copy source range");
            }
            System.arraycopy(this.bytes, this.dataOffsets[s] + within, out, dst, step);
            cursor += step;
            dst += step;
            remaining -= step;
        }
    }

    byte[] copyRange(int absolute, int length) {
        byte[] out = new byte[length];
        copyTo(absolute, out, 0, length);
        return out;
    }

    private int findSegment(int absolute) {
        for (int i = this.absoluteOffsets.length - 1; i >= 0; i--) {
            int off = this.absoluteOffsets[i];
            int len = this.lengths[i];
            if (absolute >= off && absolute - off < len) {
                return i;
            }
        }
        return -1;
    }

    private static int be32Raw(byte[] data, int p) throws IOException {
        if (p < 0 || p > data.length - 4) {
            throw new IOException("Audio source pack header truncated");
        }
        return ((data[p] & 255) << 24) | ((data[p + 1] & 255) << 16) | ((data[p + 2] & 255) << 8) | (data[p + 3] & 255);
    }
}
