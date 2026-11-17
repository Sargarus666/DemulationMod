package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82cRazorMissionBundle;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class RazorSpriteBankAudit {
    private static final Entry[] CATALOG;
    private static final int OFFSET_DELTA = 1201320;
    public static final int RAZOR_ONE = 1;
    public static final int RAZOR_TWO = 2;
    public static final int SOURCE_AMBIGUOUS = 3;
    public static final int SOURCE_NON_MATCHED = 117;
    public static final int SOURCE_PATTERN_FILES = 193;
    public static final int VERIFIED_BLOCK_COUNT = 73;

    public static final class Entry {
        public final int byteLength;
        public final int offsetRom1;
        public final int offsetRom2;
        public final int patternCount;
        public final String sha256;
        public final String sourceLabel;

        private Entry(String label, int a, int b, int n, String hash) {
            this.sourceLabel = label;
            this.offsetRom1 = a;
            this.offsetRom2 = b;
            this.byteLength = n;
            this.patternCount = n / 32;
            this.sha256 = hash;
        }

        public int romOffset(int variant) {
            if (variant == 1 || variant == 2) {
                return variant == 1 ? this.offsetRom1 : this.offsetRom2;
            }
            throw new IllegalArgumentException("Invalid Razor ROM variant");
        }
    }

    static {
        CATALOG = new Entry[]{new Entry("armor.smd", 1818654, 617334, 128, "218efac8f80233ab15598342a366635e7e6c76281c19fbb654bc73c51e523985"), new Entry("arrow.smd", 1821374, 620054, 128, "a5d91dc709da56bd851e6269d86cb1b9c879ec18597c358af1ada9e3c5808443"), new Entry("bmenucurA.smd", 1816606, 615286, 384, "890b89247623012b777e6cb6d0d8c07d232cb528d74e79a9c0407560693906f8"), new Entry("bmenucurB.smd", 1816222, 614902, 384, "ab8358080b9535f9283687df6b7b2d0cb17bcbbfb03026e13168bb46c2aac120"), new Entry("bmenucurC.smd", 1816990, 615670, 384, "0d2f2c8712505b470df7a06500b64e2370014e2f5d45afb63176de4ba251b263"), new Entry("bmenucurF.smd", 1817374, 616054, 384, "5aa36bce8c353bafafb0af2227a615be5b0a390adac6f326366a030c7e115ba6"), new Entry("bmnbsize.smd", 1817758, 616438, 512, "3fa7c55f89a38eae07f68b820d88d1c248cdee42d521b661538265b8fdf95721"), new Entry("builarea.smd", 1819550, 618230, 512, "5c4d9c1b795a7b8fb4701f9442c5eab93ce7be78bf0b15e0315cb5bf592e6ca0"), new Entry("buildsel.smd", 1821086, 619766, 128, "7fac1730b382a9f4c0f547450e70dbf99b077eacb08f6a020f4a2e898b4dca82"), new Entry("buildsel2.smd", 1821214, 619894, 128, "fa8ed9dfb4b5b611b76469838aa7b0fb9d7c36092aa4451ee66631e43a7ec6c6"), new Entry("bullet.smd", 1787550, 586230, 32, "19539a4a9fcc294010cc4a1739883c12d516e65f48b8b261c9b704bc238a22ec"), new Entry("cantbuil.smd", 1785982, 584662, 288, "fb8cb4bf649263cc4c6a793a5f406d97bc5b991b1c2c78c6c361f23b10de15f5"), new Entry("damage.smd", 1818526, 617206, 128, "88930fcdc965fa1fdd7252c0686314065916a3ceeae4d7aa3f8518e8566a2a62"), new Entry("deadsldr.smd", 1801214, 599894, 128, "fc21729dde5d012e888f972223c4d612ef453706dfefcf51bc98dd9038cf3a4f"), new Entry("deadsldr2.smd", 1787518, 586198, 32, "075279cf10e40ef23fc44f75981171305d24e28d7e0f67879e8c3b0705547689"), new Entry("deviagas_spr1.smd", 1786430, 585110, 32, "6b33a7d2cc671dd1efb4a3dad69e162f7990ea0a479ce87560efe4f27d13704d"), new Entry("deviagas_spr2.smd", 1786462, 585142, RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET, "1697ae69fb862ce8949ab6284db8de022c4bbc55943d9f2ae287835e70da1d38"), new Entry("deviagas_spr3-5.smd", 1786654, 585334, 864, "90715cdee62457e824b6f7f56f21b4f631f9c10d3db06fee25cd975dedd940e7"), new Entry("energy.smd", 1818398, 617078, 128, "e1ce0ca4ba1321bcb64945e67d3cc3b7af3d3dc4b3b3f20e46bc14150470f147"), new Entry("explode1_spr1.smd", 1797374, 596054, 128, "56fa376f4d80b8e1c145c96126b79ab44ee2aaf4b1710b4418b418e9fafa6a39"), new Entry("explode1_spr2-5.smd", 1797502, 596182, 1152, "de0fefe0cf4ddb389a15449304b6a4a29a9c5ee7aa87224be6f0a96b094b83a9"), new Entry("explode2_spr1.smd", 1798654, 597334, 32, "c691a2e11ee8cc4f83784f77703a83da4047342f3bdc1f77728d883d25331e8d"), new Entry("explode2_spr2.smd", 1798686, 597366, 160, "cb39ad7c03d3cb9088bb1ccf6e807bfb6507301ec7f81a59d5aac21d62969604"), new Entry("explode2_spr3.smd", 1799134, 597814, 288, "5beff9199264f9fa0a4bc0d29a380d7ceb874a7de659810bac3158a2ac3099f9"), new Entry("explode2_spr4.smd", 1798846, 597526, 288, "ce2b23488ccfac0d1b5bc2a1c2500fc75d8d9b7e6b1c78fe22c3510f4217dce3"), new Entry("explode2_spr5.smd", 1799422, 598102, 128, "a580d5dffa05c609c62ddb6889388b9ccfc219a2076579156e431ec15e31afbd"), new Entry("harvtail1.smd", 1788222, 586902, 128, "fcf54ee2e94c567185518c5309ece426cfe4285a35f8c498dcc1d26af79fcc04"), new Entry("harvtail2.smd", 1788350, 587030, 128, "add2c6fe3642c1e558430501745ced20a682318092f76160bee068fbd6bc8f39"), new Entry("harvtail3.smd", 1788478, 587158, 128, "704a7180590983bd8cb7c8360b231280cced6fee9b6a13f87a057bdfd9193315"), new Entry("hspheres.smd", 1827678, 626358, RazorTerrainAtlas.HEIGHT, "3dc1cddbad773a5d4939736d3ede393e0f0b556d095fc1760eea17b630342dce"), new Entry("infblood.smd", 1786270, 584950, 128, "43e0feaad3301bee195988d70c21037e6f16eb5914396ee36114a221f8bde8ee"), new Entry("lightnin.smd", 1785406, 584086, 288, "c975242200a59d40018a4818881867375a67b70addcebed00e43a27f5f51513f"), new Entry("okay(1).smd", 1785694, 584374, 288, "fb5e1c169582c0c7fec277e85066fcb714c67514011d2a1b5bf31bad1cf2a49e"), new Entry("price.smd", 1818270, 616950, 128, "8a76668875ce82c3a6a667c82cf7f4c1e66719d9983cbdbc78681e453404a0bc"), new Entry("rad_off0.smd", 1821502, 620182, 512, "251f664d429b2ca8ec1e0013a3fb850951e37a32e8a19631a0fb5f9ffac0476c"), new Entry("rad_off1.smd", 1822014, 620694, 512, "f1c7c77e0349c0a0461356f70dca7f07adc0aa68e3a1b63b30afa2494fe06169"), new Entry("rad_off2.smd", 1822526, 621206, 512, "87820ff370b373ff5627df66d9c597999e29c6086d518f2f4edf667d8bef893e"), new Entry("rad_off3.smd", 1823038, 621718, 512, "89275da70769fb3835dc5c1ca87ac9cfc69762eea865a265734950a61d89f3b0"), new Entry("rad_off4.smd", 1823550, 622230, 512, "751bb59f809a4f8d4c2037f29b0c3da94a879fb2a15079fd295ad16afc8489cd"), new Entry("rad_off5.smd", 1824062, 622742, 512, "c73c63361be80920ae78cbd97286e56fca63e6298adb19f345b49f58179f0452"), new Entry("rad_off6.smd", 1824574, 623254, 512, "e2d7befe85c765de3aae52286edfc6401dad409fa82a50c6f1db010d39f094b5"), new Entry("rad_off7.smd", 1825086, 623766, 512, "b8fa072ef7f8bb1423d2bda67e559a54f64a56b89a2ac968c0696ee5aa0f941b"), new Entry("rad_off8.smd", 1825598, 624278, 512, "5974c746931b29622235598d24e8911291dbc7258be345c828405aab3f95f7d0"), new Entry("rad_off9.smd", 1826110, 624790, 512, "0e7af8261e00e3a9e2aa444cad31b725570993e147aeef2a1d753033ac0f218e"), new Entry("rad_offA.smd", 1826622, 625302, 512, "2d0c56603b6d201d6f44485fa746990709389ecaba994995e38c0d0f4e5ce3c5"), new Entry("rad_offB.smd", 1827134, 625814, 512, "7a5c898fbb119e0ecd68325fd8653801ffc6002da33d1aa5a2a1322a69a0ebe5"), new Entry("radarcur.smd", 1821342, 620022, 32, "737021bc733b9ed809209dc955deed727f7f4a43df72bee01f45a8e573c8c6bc"), new Entry("repair.smd", 1785118, 583798, 288, "2d281daa551f0bf972b66afe9830ced264cc955345e4d36b2b2e05cee4dec481"), new Entry("rocket11.smd", 1801854, 600534, 32, "f0e5c974d3e569d04e09c4cfe769a7f80c2141831c9222c6502768dd27e11413"), new Entry("rocket12.smd", 1801886, 600566, 32, "a73b06ec2f725c39a3029469be1d58cb8ef54b53fe795f564af01aa52e594360"), new Entry("rocket13.smd", 1801918, 600598, 32, "d8949e7f40158bf92c62ab24636cd8c183d14e6b4ce4121395a106afb90e98d7"), new Entry("rocket14.smd", 1801950, 600630, 32, "ec34cc8843b71b920fd28881c12f2a2e55a8edc7dead238171211adfaedce08b"), new Entry("rocket15.smd", 1801982, 600662, 32, "fe9dfdd96ca4b9ba7990a02fc0be803dc05e10f432f2b74f3f1dc0d6231f3fbe"), new Entry("sandworm.smd", 1801342, 600022, 512, "d76845d4438f4cbe018971ed612d3c606b4d6ce4b495467216fdebf3cba31cce"), new Entry("sldblood.smd", 1786398, 585078, 32, "b23f87c49c93ac105b7853c95a63013ee4795fc7dda1a2817c36375a3568e112"), new Entry("smoke1.smd", 1815646, 614326, RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET, "9e0ef6798a6393b15e4c6156e4d017097bff1f6ea92261d64d02dfb159dbfb03"), new Entry("smoke2.smd", 1815838, 614518, RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET, "50b34085313976f8eca57f133af676cc2498f709589b34786a9b94c35760adda"), new Entry("smoke3.smd", 1816030, 614710, RomRuntimeNativeDataAssets.VISUAL_STREAMS_OFFSET, "71cd0009dfe78abdd2721adb563f95583084e6cff75574add26647b2b738fed9"), new Entry("sonblast_spr1.smd", 1799550, 598230, 288, "65a5513e43f073a6fde4c5760c54647bf377ec56b00e071315de377e7a0c3547"), new Entry("sonblast_spr2.smd", 1799838, 598518, 288, "86309b5738037d38ddaf1602654fcf00c498ba079f4abd111d99db8a8b2c280d"), new Entry("sonblast_spr3.smd", 1800126, 598806, 128, "06a9c2828e8c84ac0874d34d310380589b671b6d32e9dc3da8537bb5e566b339"), new Entry("tcannexp_spr1.smd", 1797086, 595766, 32, "d534d067053deef15f903ecf73cab5c70bfa0325ceea4cb0597fbca5e383514f"), new Entry("tcannexp_spr2-3.smd", 1797118, 595798, 256, "9b5442fdef78e535c33a0cb9a54ed1003457e61864f4803b32c5b9150f9106d1"), new Entry("trike1.smd", 1790110, 588790, 128, "042763c9486463bdcb2685c4d96618c03f7f5626d571bd3c2ecf6786ca8254b0"), new Entry("trike2.smd", 1790238, 588918, 128, "eeca26b94c247e0b2512632bd03679dfa4fa208309c7cc7375d8d278c39456c2"), new Entry("trike3.smd", 1790366, 589046, 128, "1958e3269dbb1096f0c8326cb82a6abe4c48baa753ecb64d0148099fd7ef0338"), new Entry("trike4.smd", 1790494, 589174, 128, "d18b79b5817c03b54600c91aa99988f0b21ee21a3350ca896e1c7ac3c114661e"), new Entry("trike5.smd", 1790622, 589302, 128, "c6a618d543bfce967bd08b54455a692468063f3fcd3b1369d01d1bc088ed467d"), new Entry("wormeat1.smd", 1809598, 608278, 512, "7f511be001e3bc082264865683a9a5cc4f8571e2939f428a706903f47f741546"), new Entry("wormeat2.smd", 1810110, 608790, 512, "3ad8aba2d90b9c1e83d15c01ed9724590b8537d6a803c2e1d29fe80ff44b1762"), new Entry("wormeat3.smd", 1810622, 609302, 512, "9197fe389c00f64153e98b02dc848c3024066607621a0098560cdc61dceb880f"), new Entry("wormeat4.smd", 1811134, 609814, 512, "2c6852446cbe24df23842852cf5b5123d8fa45aa35794e9930f10eea43ddecb2"), new Entry("wormeat5.smd", 1811646, 610326, 512, "582c1db68105920982c342b7165d33a189a881d6b59172baffb9a605cbb8dbc1")};
    }

    public static final class Result {
        public final boolean gameplayReady;
        public final String romSha256;
        public final boolean spriteFramesReady;
        public final boolean structureArtworkReady;
        public final int variant;
        public final int verifiedBlocks;
        private final byte[] verifiedRom;

        private Result(int variant, String hash, byte[] rom) {
            this.verifiedBlocks = 73;
            this.gameplayReady = false;
            this.spriteFramesReady = false;
            this.structureArtworkReady = false;
            this.variant = variant;
            this.romSha256 = hash;
            this.verifiedRom = (byte[]) rom.clone();
        }

        public Entry[] entriesCopy() {
            return (Entry[]) RazorSpriteBankAudit.CATALOG.clone();
        }

        public Entry entry(String name) {
            for (Entry e : RazorSpriteBankAudit.CATALOG) {
                if (e.sourceLabel.equals(name)) {
                    return e;
                }
            }
            throw new IllegalArgumentException("Unverified Razor sprite fragment: " + name);
        }

        public byte[] verifiedBlockCopy(String label) {
            Entry e = entry(label);
            int start = e.romOffset(this.variant);
            return Arrays.copyOfRange(this.verifiedRom, start, e.byteLength + start);
        }

        public byte[] trikeSourcePoseIndices(int pose) {
            if (pose < 0 || pose >= 5) {
                throw new IllegalArgumentException("Trike source pose 0..4 only");
            }
            byte[] out = new byte[256];
            String label = "trike" + (pose + 1) + ".smd";
            for (int xTile = 0; xTile < 2; xTile++) {
                for (int yTile = 0; yTile < 2; yTile++) {
                    byte[] pix = patternPixels(label, (xTile * 2) + yTile);
                    for (int y = 0; y < 8; y++) {
                        System.arraycopy(pix, y * 8, out, (((yTile * 8) + y) * 16) + (xTile * 8), 8);
                    }
                }
            }
            return out;
        }

        public byte[] patternPixels(String label, int patternIndex) {
            Entry e = entry(label);
            if (patternIndex < 0 || patternIndex >= e.patternCount) {
                throw new IllegalArgumentException("Razor sprite pattern outside verified block");
            }
            int start = e.romOffset(this.variant) + (patternIndex * 32);
            byte[] pixels = new byte[64];
            for (int i = 0; i < 32; i++) {
                int packed = this.verifiedRom[start + i] & 255;
                pixels[i * 2] = (byte) (packed >>> 4);
                pixels[(i * 2) + 1] = (byte) (packed & 15);
            }
            return pixels;
        }
    }

    private RazorSpriteBankAudit() {
    }

    public static Result inspect(byte[] rom, String expectedSha256) throws IOException {
        if (rom == null || expectedSha256 == null || rom.length > 4194816) {
            throw new IOException("Razor sprite bank audit requires an authenticated ROM");
        }
        String actual = digest(rom);
        if (!actual.equalsIgnoreCase(expectedSha256)) {
            throw new IOException("Razor ROM changed before sprite audit");
        }
        DuneHackR82cRazorMissionBundle.Result bundle = DuneHackR82cRazorMissionBundle.inspect(rom, actual);
        if ((bundle.variant != 1 && bundle.variant != 2) || !actual.equals(bundle.sourceSha256)) {
            throw new IOException("Unsupported Razor sprite source");
        }
        Objects.requireNonNull(bundle);
        for (Entry e : CATALOG) {
            int pos = e.romOffset(bundle.variant);
            if (e.offsetRom1 - e.offsetRom2 != OFFSET_DELTA || e.byteLength <= 0 || (e.byteLength & 31) != 0 || (pos & 31) != (CATALOG[0].romOffset(bundle.variant) & 31) || pos < 0 || pos > rom.length - e.byteLength) {
                throw new IOException("Razor sprite fragment metadata inconsistent: " + e.sourceLabel);
            }
            if (!e.sha256.equals(digest(rom, pos, e.byteLength))) {
                throw new IOException("Razor sprite ROM fragment failed SHA: " + e.sourceLabel);
            }
        }
        return new Result(bundle.variant, actual, rom);
    }

    public static Entry[] catalogCopy() {
        return (Entry[]) CATALOG.clone();
    }

    private static String digest(byte[] bytes) throws IOException {
        return digest(bytes, 0, bytes.length);
    }

    private static String digest(byte[] bytes, int off, int len) throws IOException {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(bytes, off, len);
            byte[] sum = md.digest();
            StringBuilder out = new StringBuilder(64);
            for (byte v : sum) {
                out.append(Character.forDigit((v >>> 4) & 15, 16));
                out.append(Character.forDigit(v & 15, 16));
            }
            return out.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("SHA-256 unavailable", ex);
        }
    }
}
