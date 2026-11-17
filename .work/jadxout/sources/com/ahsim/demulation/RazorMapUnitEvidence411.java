package com.ahsim.demulation;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public final class RazorMapUnitEvidence411 {
    public static final String SCHEMA = "demulation.razor.411.host-map-unit-prestate.v1";

    private RazorMapUnitEvidence411() {
    }

    private static int u16(byte[] b, int p) {
        return ((b[p] & 255) << 8) | (b[p + 1] & 255);
    }

    private static long u32(byte[] b, int p) {
        return ((b[p] & 255) << 24) | ((b[p + 1] & 255) << 16) | ((b[p + 2] & 255) << 8) | (b[p + 3] & 255);
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
            StringBuilder b = new StringBuilder(64);
            for (byte v : digest) {
                b.append(String.format(Locale.ROOT, "%02x", Integer.valueOf(v & 255)));
            }
            return b.toString();
        } catch (NoSuchAlgorithmException ex) {
            throw new IOException("Missing SHA-256", ex);
        }
    }

    private static String hex32(long n) {
        return String.format(Locale.ROOT, "0x%08x", Long.valueOf(n));
    }

    public static byte[] manifest(byte[] data, String romSha, int variantMiB, int house, int mission, int readSequence, int[] unit403) throws IOException {
        int i;
        if (data != null && data.length >= 45 && romSha != null) {
            if (romSha.matches("[a-fA-F0-9]{64}")) {
                if (variantMiB == 3 || variantMiB == 4) {
                    if (house >= 0 && house <= 4 && mission >= 1 && mission <= 9 && readSequence >= 1 && unit403 != null && unit403.length >= 3 && unit403[0] == 403 && data[0] == 82 && data[1] == 52 && data[2] == 49 && data[3] == 49) {
                        if (u16(data, 4) == 411 && u16(data, 38) == 0) {
                            int side = u16(data, 6);
                            int width = u16(data, 8);
                            int height = u16(data, 10);
                            int stride = u16(data, 12);
                            int unitCount = u16(data, 14);
                            int buildingCount = u16(data, 16);
                            int count = side * side;
                            if (side != 32) {
                                i = 64;
                                if (side != 64 && side != 128) {
                                    throw new IOException("HOST map/UNIT dimensions disagree");
                                }
                            } else {
                                i = 64;
                            }
                            if (side == 128) {
                                i = 128;
                            }
                            if (stride == i && width >= 1 && height >= 1 && width <= side && height <= side) {
                                int buildingCount2 = buildingCount;
                                if (u32(data, 18) == count && data.length == (count * 5) + 40 && unitCount == unit403[1] && unit403[2] == 12 && unit403.length == (unitCount * 12) + 3 && unitCount <= 128 && buildingCount2 <= 1024) {
                                    int units = 0;
                                    int buildings = 0;
                                    int[] perCell = new int[count];
                                    int stride2 = 0;
                                    int unitTiles = 0;
                                    int unitTiles2 = 0;
                                    while (stride2 < count) {
                                        int p = (stride2 * 5) + 40;
                                        int i2 = stride2;
                                        int i3 = p + 1;
                                        int uc = u16(data, i3);
                                        int bc = u16(data, p + 3);
                                        if ((i2 / side >= height || i2 % side >= width) && (uc != 0 || bc != 0)) {
                                            throw new IOException("Occupancy outside playable map");
                                        }
                                        units += uc;
                                        buildings += bc;
                                        if (uc != 0) {
                                            unitTiles++;
                                        }
                                        if (uc != 0 || bc != 0) {
                                            unitTiles2++;
                                        }
                                        perCell[i2] = uc;
                                        stride2 = i2 + 1;
                                    }
                                    if (units != unitCount || buildings != buildingCount2) {
                                        throw new IOException("HOST occupancy counts disagree");
                                    }
                                    int i4 = 0;
                                    while (i4 < unitCount) {
                                        int p2 = (i4 * 12) + 3;
                                        int unitCount2 = unitCount;
                                        int unitCount3 = unit403[p2 + 4];
                                        int buildingCount3 = buildingCount2;
                                        int buildingCount4 = unit403[p2 + 5];
                                        if (unit403[p2] == i4 && unitCount3 >= 0 && buildingCount4 >= 0 && unitCount3 < width && buildingCount4 < height) {
                                            int i5 = unit403[p2 + 6];
                                            int i6 = i4;
                                            int i7 = unit403[p2 + 2];
                                            if (i5 == i7 && unit403[p2 + 7] == unit403[p2 + 3] && unit403[p2 + 9] == (buildingCount4 * side) + unitCount3) {
                                                int i8 = (buildingCount4 * side) + unitCount3;
                                                int i9 = perCell[i8] - 1;
                                                perCell[i8] = i9;
                                                if (i9 >= 0) {
                                                    i4 = i6 + 1;
                                                    unitCount = unitCount2;
                                                    buildingCount2 = buildingCount3;
                                                }
                                            }
                                        }
                                        throw new IOException("HOST unit coordinate not represented in map");
                                    }
                                    for (int n : perCell) {
                                        if (n != 0) {
                                            throw new IOException("HOST occupancy has unmatched UNIT");
                                        }
                                    }
                                    int occupiedTiles = unitTiles2;
                                    String json = "{\"schema\":\"demulation.razor.411.host-map-unit-prestate.v1\",\"rom_sha256\":\"" + romSha.toLowerCase(Locale.ROOT) + "\",\"variant_mib\":" + variantMiB + ",\"house\":" + house + ",\"mission\":" + mission + ",\"read_sequence\":" + readSequence + ",\"source_kind\":\"retained immutable Android-native bootstrap world\",\"map_stored_side\":" + side + ",\"map_width\":" + width + ",\"map_height\":" + height + ",\"occupancy_stride\":" + stride + ",\"cell_count\":" + count + ",\"unit_count\":" + units + ",\"building_count\":" + buildings + ",\"occupied_tiles\":" + occupiedTiles + ",\"unit_occupied_tiles\":" + unitTiles + ",\"building_occupancy_semantics\":\"building origin/anchor tile only; not full footprint\",\"map_fingerprint_fnv32\":\"" + hex32(u32(data, 22)) + "\",\"scenario_fingerprint_fnv32\":\"" + hex32(u32(data, 26)) + "\",\"object_fingerprint_fnv32\":\"" + hex32(u32(data, 30)) + "\",\"native_world_fingerprint_fnv32\":\"" + hex32(u32(data, 34)) + "\",\"snapshot_binary_sha256\":\"" + sha256(data) + "\",\"snapshot_binary_layout\":\"R411 40-byte big-endian header; per stored cell: raw terrain u8, host unit occupancy u16 BE, host building occupancy u16 BE\",\"captured_after_world_bootstrap\":true,\"retained_world_game_ticks\":0,\"persistent_unit_emc_runtime\":false,\"original_68k_four_byte_tile_flags_available\":false,\"genesis_68k_ram_captured\":false,\"function40_executed\":false,\"function40_ram_delta_known\":false,\"gameplay_authorized\":false}\n";
                                    return json.getBytes(StandardCharsets.UTF_8);
                                }
                            }
                            throw new IOException("HOST map/UNIT dimensions disagree");
                        }
                    }
                }
            }
        }
        throw new IOException("Invalid 411 HOST map input");
    }

    public static byte[] tileWritePrestateContract() {
        return "{\"schema\":\"demulation.razor.411.f40-tile-prestate-gate.v1\",\"android_prestate\":\"retained bootstrap HOST terrain and occupancy\",\"68k_variant_3_map_base\":\"0xFF7D9C\",\"68k_variant_4_map_base\":\"0x200000\",\"68k_cell_record_size\":4,\"android_cell_record_size\":5,\"android_cell_record_definition\":\"source terrain byte + occupancy counts, not 68k flags\",\"can_validate_scenario_tile_identity\":true,\"can_validate_initial_occupancy\":true,\"can_validate_f40_bit11_write\":false,\"can_validate_native_side_effects\":false,\"genuine_bizhawk_before_after_required\":true,\"matched_68k_unit_identity_proven\":false,\"first_shadow_tick_ready\":false}\n".getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] bounded(ZipFile zip, ZipEntry e, int limit) throws IOException {
        if (e == null || e.isDirectory() || e.getSize() < 1 || e.getSize() > limit) {
            throw new IOException("Invalid predecessor diagnostic ZIP member");
        }
        InputStream in = zip.getInputStream(e);
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            try {
                byte[] block = new byte[DuneHackR82ScenarioRecordDecoder.MAX_RECORDS];
                while (true) {
                    int n = in.read(block);
                    if (n != -1) {
                        if (out.size() + n > limit) {
                            throw new IOException("Oversized predecessor member");
                        }
                        out.write(block, 0, n);
                    } else {
                        byte[] byteArray = out.toByteArray();
                        out.close();
                        if (in != null) {
                            in.close();
                        }
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static File writeEnvelope(File dir, File zip405, byte[] cells, byte[] mapManifest, String romSha) throws IOException {
        if (dir != null && dir.isDirectory() && zip405 != null && zip405.isFile() && zip405.length() <= 131072 && zip405.getName().matches("razor405_razor393_[a-f0-9]{12}_h[0-4]_m[1-9]_r[0-9]+_t[0-9]+(_[0-9]+)?[.]zip") && romSha != null && romSha.matches("[a-fA-F0-9]{64}") && zip405.getName().contains("razor393_" + romSha.substring(0, 12).toLowerCase(Locale.ROOT)) && cells != null && cells.length >= 45 && cells.length <= 81960 && mapManifest != null && mapManifest.length >= 300 && mapManifest.length <= 4096 && new String(mapManifest, StandardCharsets.UTF_8).contains("\"rom_sha256\":\"" + romSha.toLowerCase(Locale.ROOT) + "\"") && new String(mapManifest, StandardCharsets.UTF_8).contains("\"snapshot_binary_sha256\":\"" + sha256(cells) + "\"")) {
            File target = new File(dir, zip405.getName().replaceFirst("^razor405_", "razor411_"));
            if (!target.exists()) {
                File tmp = File.createTempFile("razor411_", ".zip.tmp", dir);
                boolean done = false;
                try {
                    ZipFile predecessor = new ZipFile(zip405);
                    try {
                        FileOutputStream file = new FileOutputStream(tmp);
                        try {
                            ZipOutputStream out = new ZipOutputStream(file);
                            try {
                                if (predecessor.size() != 8) {
                                    throw new IOException("Expected eight 405 members");
                                }
                                String origin = zip405.getName().substring("razor405_".length(), zip405.getName().length() - 4) + ".json";
                                char c = 2;
                                String[] old = {origin, "ONE_UNIT_IDENTITY_395.json", "CAPTURE_KIND_395.txt", "INITIAL_UNIT_STATE_403.json", "FIELD_DICTIONARY_403.json", "CAPTURE_KIND_403.txt", "TRANSIENT_UNIT_EMC_SHADOW_405.json", "CAPTURE_KIND_405.txt"};
                                int length = old.length;
                                int i = 0;
                                while (i < length) {
                                    String name = old[i];
                                    String name2 = origin;
                                    byte[] block = bounded(predecessor, predecessor.getEntry(name), 32768);
                                    out.putNextEntry(new ZipEntry(name));
                                    out.write(block);
                                    out.closeEntry();
                                    i++;
                                    c = c;
                                    origin = name2;
                                }
                                byte[][] added = {cells, mapManifest, tileWritePrestateContract(), "Read-only Android HOST map snapshot; no real 68K F40 tile writes or game ticks.\n".getBytes(StandardCharsets.UTF_8)};
                                String[] names = new String[4];
                                names[0] = "HOST_MAP_CELLS_411.bin";
                                names[1] = "HOST_MAP_MANIFEST_411.json";
                                names[c] = "TILE_PRESTATE_CONTRACT_411.json";
                                names[3] = "CAPTURE_KIND_411.txt";
                                for (int i2 = 0; i2 < names.length; i2++) {
                                    out.putNextEntry(new ZipEntry(names[i2]));
                                    out.write(added[i2]);
                                    out.closeEntry();
                                }
                                out.finish();
                                file.getFD().sync();
                                out.close();
                                file.close();
                                predecessor.close();
                                if (!tmp.renameTo(target)) {
                                    throw new IOException("Cannot publish Razor map ZIP");
                                }
                                done = true;
                                return target;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    if (!done) {
                        tmp.delete();
                    }
                }
            } else {
                throw new IOException("Razor 411 diagnostic already exists");
            }
        } else {
            throw new IOException("Unsafe 411 map evidence inputs");
        }
    }
}
