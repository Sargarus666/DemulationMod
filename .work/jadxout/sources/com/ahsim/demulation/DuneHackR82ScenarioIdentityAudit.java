package com.ahsim.demulation;

import com.ahsim.demulation.DuneHackR82ScenarioRecordDecoder;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class DuneHackR82ScenarioIdentityAudit {
    public static final int HOUSE_COUNT = 5;
    public static final int STRUCTURE_TYPE_COUNT = 19;
    public static final int UNIT_TYPE_COUNT = 32;
    private static final String[] HOUSE_NAMES = {"Harkonnen", "Atreides", "Ordos", "Fremen", "Sardaukar"};
    private static final String[] UNIT_NAMES = {"Carryall", "Ornithopter", "Infantry", "Troopers", "Soldier", "Trooper", "Saboteur", "Launcher", "Deviator", "Tank", "Siege Tank", "Devastator", "Sonic Tank", "Trike", "Raider Trike", "Quad", "Harvester", "MCV", "Death Hand", "Rocket", "ARocket", "GRocket", "MiniRocket", "Bullet", "Sonic Blast", "Sandworm", "Frigate", "Hurricane", "RocketQuad", "Laser Tank", "HoverTank", "Orka"};
    private static final String[] STRUCTURE_NAMES = {"Concrete", "Concrete 2x2", "Palace", "Vehicle Factory", "Heavy Factory", "Hi-Tech", "House IX", "WOR", "Construction Yard", "Windtrap", "Barracks", "Starport", "Refinery", "Repair", "Wall", "Turret", "R-Turret", "Spice Silo", "Outpost"};

    public static final class Result {
        public final int checkedObjects;
        public final int fifthHouseSections;
        public final int genericStructureTiles;
        private final int[] owners;
        public final int reinforcements;
        public final int scenarios;
        private final int[] structureTypes;
        public final int structures;
        public final int teams;
        private final int[] unitTypes;
        public final int units;

        private Result(int scenarios, Totals totals) {
            this.scenarios = scenarios;
            this.checkedObjects = totals.checked;
            this.units = totals.units;
            this.structures = totals.placed;
            this.genericStructureTiles = totals.generic;
            this.teams = totals.teams;
            this.reinforcements = totals.reinforcements;
            this.fifthHouseSections = totals.fifth;
            this.owners = (int[]) totals.owners.clone();
            this.unitTypes = (int[]) totals.unitTypes.clone();
            this.structureTypes = (int[]) totals.structureTypes.clone();
        }

        public int[] ownerCounts() {
            return (int[]) this.owners.clone();
        }

        public int[] unitTypeCounts() {
            return (int[]) this.unitTypes.clone();
        }

        public int[] structureTypeCounts() {
            return (int[]) this.structureTypes.clone();
        }
    }

    private static final class Totals {
        int checked;
        int fifth;
        int generic;
        int[] owners;
        int placed;
        int reinforcements;
        int[] structureTypes;
        int teams;
        int[] unitTypes;
        int units;

        private Totals() {
            this.owners = new int[5];
            this.unitTypes = new int[32];
            this.structureTypes = new int[19];
        }
    }

    private DuneHackR82ScenarioIdentityAudit() {
    }

    public static String houseName(int id) {
        return name(HOUSE_NAMES, id);
    }

    public static String unitTypeName(int id) {
        return name(UNIT_NAMES, id);
    }

    public static String structureTypeName(int id) {
        return name(STRUCTURE_NAMES, id);
    }

    private static String name(String[] values, int id) {
        if (id < 0 || id >= values.length) {
            throw new IllegalArgumentException("R82C object ID out of range: " + id);
        }
        return values[id];
    }

    private static int bound(int value, int exclusive, String field, DuneHackR82ScenarioRecordDecoder.Record record) throws IOException {
        if (value < 0 || value >= exclusive) {
            throw new IOException("R82C " + field + "=" + value + " out of range at scenario byte " + record.offset);
        }
        return value;
    }

    private static void owner(Totals totals, DuneHackR82ScenarioRecordDecoder.Record r, int index) throws IOException {
        int[] iArr = totals.owners;
        int bound = bound(r.value(index), 5, "house", r);
        iArr[bound] = iArr[bound] + 1;
    }

    private static void unit(Totals totals, DuneHackR82ScenarioRecordDecoder.Record r, int index) throws IOException {
        int[] iArr = totals.unitTypes;
        int bound = bound(r.value(index), 32, "unit type", r);
        iArr[bound] = iArr[bound] + 1;
    }

    public static Result auditDocument(DuneHackR82ScenarioRecordDecoder.Document document) throws IOException {
        if (document == null) {
            throw new IOException("Missing R82C scenario document");
        }
        Totals totals = new Totals();
        audit(document, totals);
        return new Result(1, totals);
    }

    public static Result auditBank(DuneHackR82ScenarioRecordDecoder.Bank bank) throws IOException {
        if (bank == null) {
            throw new IOException("Missing R82C scenario bank");
        }
        Totals totals = new Totals();
        for (int house = 0; house < 5; house++) {
            for (int mission = 1; mission <= 9; mission++) {
                audit(bank.document(house, mission), totals);
            }
        }
        return new Result(45, totals);
    }

    private static void audit(DuneHackR82ScenarioRecordDecoder.Document document, Totals totals) throws IOException {
        for (DuneHackR82ScenarioRecordDecoder.Record record : document.records()) {
            switch (record.section) {
                case 7:
                    owner(totals, record, 0);
                    totals.teams++;
                    totals.checked++;
                    break;
                case 8:
                    owner(totals, record, 0);
                    unit(totals, record, 1);
                    totals.units++;
                    totals.checked++;
                    break;
                case 9:
                    if (record.index == 73) {
                        owner(totals, record, 1);
                        int type = bound(record.value(2), 19, "structure type", record);
                        int[] iArr = totals.structureTypes;
                        iArr[type] = iArr[type] + 1;
                        totals.placed++;
                    } else if (record.index == 71) {
                        owner(totals, record, 1);
                        totals.generic++;
                    } else {
                        throw new IOException("Unexpected R82C structure record at " + record.offset);
                    }
                    totals.checked++;
                    break;
                case 10:
                    owner(totals, record, 0);
                    unit(totals, record, 1);
                    totals.reinforcements++;
                    totals.checked++;
                    break;
                case 11:
                    totals.fifth++;
                    break;
            }
        }
    }
}
