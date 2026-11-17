package com.ahsim.demulation;

import com.ahsim.demulation.AchievementSystem;
import java.util.Locale;

/* loaded from: classes2.dex */
final class AchievementSystem {
    private final CloudBridge cloudBridge;
    private final Listener listener;
    private final Store store;
    static final CloudBridge NO_CLOUD = new CloudBridge() { // from class: com.ahsim.demulation.AchievementSystem$$ExternalSyntheticLambda0
        @Override // com.ahsim.demulation.AchievementSystem.CloudBridge
        public final void unlock(AchievementSystem.Definition definition) {
            AchievementSystem.lambda$static$0(definition);
        }
    };
    private static final Definition[] CATALOG = {m0d(1, "Sand Snake", "Win mission 1 with any house.", "Победите в миссии 1 за любой дом.", "Gewinne Mission 1 mit einem beliebigen Haus."), m0d(2, "Desert Mongoose", "Win mission 2 with any house.", "Победите в миссии 2 за любой дом.", "Gewinne Mission 2 mit einem beliebigen Haus."), m0d(3, "Sand Warrior", "Win mission 3 with any house.", "Победите в миссии 3 за любой дом.", "Gewinne Mission 3 mit einem beliebigen Haus."), m0d(4, "Dune Trooper", "Win mission 4 with any house.", "Победите в миссии 4 за любой дом.", "Gewinne Mission 4 mit einem beliebigen Haus."), m0d(5, "Squad Leader", "Win mission 5 with any house.", "Победите в миссии 5 за любой дом.", "Gewinne Mission 5 mit einem beliebigen Haus."), m0d(6, "Outpost Commander", "Win mission 6 with any house.", "Победите в миссии 6 за любой дом.", "Gewinne Mission 6 mit einem beliebigen Haus."), m0d(7, "Base Commander", "Win mission 7 with any house.", "Победите в миссии 7 за любой дом.", "Gewinne Mission 7 mit einem beliebigen Haus."), m0d(8, "Scourge of Dune", "Win mission 8 with any house.", "Победите в миссии 8 за любой дом.", "Gewinne Mission 8 mit einem beliebigen Haus."), m0d(9, "Blue Planet", "Win mission 9 as Atreides.", "Победите в миссии 9 за Атрейдес.", "Gewinne Mission 9 als Atreides."), m0d(10, "Green Planet", "Win mission 9 as Ordos.", "Победите в миссии 9 за Ордос.", "Gewinne Mission 9 als Ordos."), m0d(11, "Red Planet", "Win mission 9 as Harkonnen.", "Победите в миссии 9 за Харконнен.", "Gewinne Mission 9 als Harkonnen."), m0d(12, "Level 1 Challenge - Harmageddon", "Win mission 1 after destroying at least 13 enemy units, without losing any of your units or structures.", "Победите в миссии 1, уничтожив не менее 13 вражеских юнитов и не потеряв ни одного своего юнита или здания.", "Gewinne Mission 1, nachdem du mindestens 13 feindliche Einheiten zerstört hast, ohne eine eigene Einheit oder ein Gebäude zu verlieren."), m0d(13, "Level 2 Challenge - We want to destroy", "Win mission 2 without ever owning more than two Refineries and Spice Silos in total.", "Победите в миссии 2, ни разу не имея одновременно более двух объектов суммарно: НПЗ и хранилищ спайса.", "Gewinne Mission 2, ohne jemals insgesamt mehr als zwei Raffinerien und Spice-Silos gleichzeitig zu besitzen."), m0d(14, "Level 3 Challenge - Forever alone", "Win mission 3 without ever owning more than one Harvester.", "Победите в миссии 3, ни разу не имея одновременно более одного харвестера.", "Gewinne Mission 3, ohne jemals mehr als einen Harvester gleichzeitig zu besitzen."), m0d(15, "4 - Atreides Challenge - I lost my wrench", "As Atreides, win mission 4 without using structure repair.", "За Атрейдес победите в миссии 4, ни разу не ремонтируя здания.", "Gewinne als Atreides Mission 4, ohne Gebäude zu reparieren."), m0d(16, "4 - Ordos Challenge - Everything has its limit", "As Ordos, win mission 4 without ever filling your spice storage to capacity.", "За Ордос победите в миссии 4, ни разу не заполнив хранилища спайса до предела.", "Gewinne als Ordos Mission 4, ohne dein Spice-Lager jemals vollständig zu füllen."), m0d(17, "4 - Harkonnen Challenge - All your base belongs to us", "As Harkonnen, win mission 4 after destroying no more than three enemy structures.", "За Харконнен победите в миссии 4, уничтожив не более трёх вражеских зданий.", "Gewinne als Harkonnen Mission 4 und zerstöre dabei höchstens drei feindliche Gebäude."), m0d(18, "5 - Atreides Challenge - Wise mentat", "As Atreides, win mission 5 while losing no more than ten of your units.", "За Атрейдес победите в миссии 5, потеряв не более десяти своих юнитов.", "Gewinne als Atreides Mission 5 und verliere dabei höchstens zehn eigene Einheiten."), m0d(19, "5 - Ordos Challenge - Uninterruptible Power Supply", "As Ordos, win mission 5 without any power shortage.", "За Ордос победите в миссии 5, ни разу не допустив нехватки энергии.", "Gewinne als Ordos Mission 5 ohne einen einzigen Strommangel."), m0d(20, "5 - Harkonnen Challenge - One Refinery is enough", "As Harkonnen, win mission 5 while never owning more than one Refinery and never owning a Spice Silo.", "За Харконнен победите в миссии 5, имея не более одного НПЗ и ни разу не имея хранилища спайса.", "Gewinne als Harkonnen Mission 5, ohne jemals mehr als eine Raffinerie oder ein Spice-Silo zu besitzen."), m0d(21, "6 - Atreides Challenge - Our structures will stand forever", "As Atreides, win mission 6 without losing any of your structures.", "За Атрейдес победите в миссии 6, не потеряв ни одного своего здания.", "Gewinne als Atreides Mission 6, ohne ein eigenes Gebäude zu verlieren."), m0d(22, "6 - Ordos Challenge - We don't need a Starport", "As Ordos, win mission 6 without purchasing anything from the Starport.", "За Ордос победите в миссии 6, ничего не покупая в космопорте.", "Gewinne als Ordos Mission 6, ohne etwas im Raumhafen zu kaufen."), m0d(23, "6 - Harkonnen Challenge - Batteries not included", "As Harkonnen, win mission 6 while never owning more than one Windtrap.", "За Харконнен победите в миссии 6, ни разу не имея одновременно более одной ветряной электростанции.", "Gewinne als Harkonnen Mission 6, ohne jemals mehr als eine Windfalle gleichzeitig zu besitzen."), m0d(24, "7 - Atreides Challenge - Batteries not included", "As Atreides, win mission 7 while never owning more than two Windtraps.", "За Атрейдес победите в миссии 7, ни разу не имея одновременно более двух ветряных электростанций.", "Gewinne als Atreides Mission 7, ohne jemals mehr als zwei Windfallen gleichzeitig zu besitzen."), m0d(25, "7 - Ordos Challenge - Wise mentat", "As Ordos, win mission 7 while losing no more than twenty of your units.", "За Ордос победите в миссии 7, потеряв не более двадцати своих юнитов.", "Gewinne als Ordos Mission 7 und verliere dabei höchstens zwanzig eigene Einheiten."), m0d(26, "7 - Harkonnen Challenge - I lost my wrench", "As Harkonnen, win mission 7 without using structure repair.", "За Харконнен победите в миссии 7, ни разу не ремонтируя здания.", "Gewinne als Harkonnen Mission 7, ohne Gebäude zu reparieren."), m0d(27, "8 - Atreides Challenge - Your map is in another mission", "As Atreides, win mission 8 without enabling or using the radar at any point.", "За Атрейдес победите в миссии 8, ни разу не включая и не используя радар.", "Gewinne als Atreides Mission 8, ohne das Radar irgendwann einzuschalten oder zu benutzen."), m0d(28, "8 - Ordos Challenge - Our structures will stand forever", "As Ordos, win mission 8 without losing any of your structures.", "За Ордос победите в миссии 8, не потеряв ни одного своего здания.", "Gewinne als Ordos Mission 8, ohne ein eigenes Gebäude zu verlieren."), m0d(29, "8 - Harkonnen Challenge - Take a look around", "As Harkonnen, win mission 8 without using instant camera jumps. Manual camera scrolling is allowed.", "За Харконнен победите в миссии 8 без мгновенных прыжков камеры. Обычная ручная прокрутка разрешена.", "Gewinne als Harkonnen Mission 8 ohne sofortige Kamerasprünge. Manuelles Scrollen der Karte ist erlaubt."), m0d(30, "9 - Atreides Challenge - Two Refinery is enough", "As Atreides, win mission 9 while never owning more than two Refineries and never owning a Spice Silo.", "За Атрейдес победите в миссии 9, имея не более двух НПЗ и ни разу не имея хранилища спайса.", "Gewinne als Atreides Mission 9, ohne jemals mehr als zwei Raffinerien oder ein Spice-Silo zu besitzen."), m0d(31, "9 - Ordos Challenge - All your base belongs to us", "As Ordos, win mission 9 after destroying no more than sixteen enemy structures.", "За Ордос победите в миссии 9, уничтожив не более шестнадцати вражеских зданий.", "Gewinne als Ordos Mission 9 und zerstöre dabei höchstens sechzehn feindliche Gebäude."), m0d(32, "9 - Harkonnen Challenge - Uninterruptible Power Supply", "As Harkonnen, win mission 9 without any power shortage.", "За Харконнен победите в миссии 9, ни разу не допустив нехватки энергии.", "Gewinne als Harkonnen Mission 9 ohne einen einzigen Strommangel."), m0d(33, "I've got the power!", "Complete construction of your first Windtrap.", "Завершите строительство своей первой ветряной электростанции.", "Schließe den Bau deiner ersten Windfalle ab."), m0d(34, "No way to play without vehicles", "Complete construction of your first Vehicle Factory.", "Завершите строительство своего первого завода лёгкой техники.", "Schließe den Bau deiner ersten Fahrzeugfabrik ab."), m0d(35, "Always make backups", "Have at least two of your Construction Yards alive at the same time.", "Имейте одновременно как минимум два действующих строительных двора.", "Besitze gleichzeitig mindestens zwei intakte Bauhöfe."), m0d(36, "Every credit counts", "Buy a Starport unit for less than its original base price.", "Купите юнит в космопорте дешевле его исходной базовой цены.", "Kaufe eine Einheit im Raumhafen unter ihrem ursprünglichen Basispreis."), m0d(37, "What is the real power of the palace", "Successfully activate a Palace special weapon or special action.", "Успешно активируйте особое оружие или особое действие Дворца.", "Aktiviere erfolgreich die Spezialwaffe oder Spezialaktion des Palastes."), m0d(38, "Earn 5000 credits", "Hold at least 5,000 credits/spice at one time.", "Накопите одновременно не менее 5 000 кредитов/спайса.", "Besitze gleichzeitig mindestens 5.000 Credits/Spice."), m0d(39, "Earn 15000 credits", "Hold at least 15,000 credits/spice at one time.", "Накопите одновременно не менее 15 000 кредитов/спайса.", "Besitze gleichzeitig mindestens 15.000 Credits/Spice."), m0d(40, "Spice up Your Life", "Harvest 25,000 spice cumulatively across valid play.", "Добудьте суммарно 25 000 спайса в обычной игре.", "Ernte insgesamt 25.000 Spice in regulären Spielen."), m0d(41, "Ace of Spice", "Harvest 50,000 spice cumulatively across valid play.", "Добудьте суммарно 50 000 спайса в обычной игре.", "Ernte insgesamt 50.000 Spice in regulären Spielen."), m0d(42, "Spice World", "In one mission, trigger or remove every spice bloom that existed when the mission started.", "В одной миссии активируйте или уничтожьте все залежи Spice Bloom, существовавшие на момент её начала.", "Löse in einer Mission alle Spice Blooms aus oder entferne sie, die zu Missionsbeginn vorhanden waren."), m0d(43, "Warlord", "Destroy 100 enemy units cumulatively.", "Уничтожьте суммарно 100 вражеских юнитов.", "Zerstöre insgesamt 100 feindliche Einheiten."), m0d(44, "Chief Warlord", "Destroy 200 enemy units cumulatively.", "Уничтожьте суммарно 200 вражеских юнитов.", "Zerstöre insgesamt 200 feindliche Einheiten."), m0d(45, "Worm's armageddon", "Destroy a sandworm.", "Уничтожьте песчаного червя.", "Zerstöre einen Sandwurm."), m0d(46, "Total Annihilation", "Destroy two sandworms in one mission before either worm eats anyone.", "Уничтожьте двух песчаных червей за одну миссию до того, как любой из них кого-либо съест.", "Zerstöre zwei Sandwürmer in einer Mission, bevor einer der Würmer jemanden frisst."), m0d(47, "Most wanted Saboteur", "Kill an enemy Saboteur in combat. Its own scripted detonation does not count.", "Убейте вражеского диверсанта в бою. Его собственный подрыв не засчитывается.", "Töte einen feindlichen Saboteur im Kampf. Seine eigene geskriptete Detonation zählt nicht."), m0d(48, "Do not build on my terrain", "Destroy an enemy Construction Yard. Capturing it does not count.", "Уничтожьте вражеский строительный двор. Захват не засчитывается.", "Zerstöre einen feindlichen Bauhof. Eine Eroberung zählt nicht."), m0d(49, "Blow up the palace? EZ", "Destroy an enemy Palace. Capturing it does not count.", "Уничтожьте вражеский Дворец. Захват не засчитывается.", "Zerstöre einen feindlichen Palast. Eine Eroberung zählt nicht."), m0d(50, "We want someone else's structure", "Capture any live enemy structure.", "Захватите любое действующее вражеское здание.", "Erobere ein beliebiges intaktes feindliches Gebäude."), m0d(51, "Mission Impossible", "Produce a special vehicle belonging to another house: Sonic Tank, Deviator or Devastator.", "Произведите особую технику другого дома: Sonic Tank, Deviator или Devastator.", "Produziere ein Spezialfahrzeug eines anderen Hauses: Sonic Tank, Deviator oder Devastator.")};

    interface CloudBridge {
        void unlock(Definition definition);
    }

    interface Listener {
        void onUnlocked(Definition definition);
    }

    interface Store {
        boolean isUnlocked(String str);

        void markUnlocked(String str, long j);

        long unlockedAt(String str);
    }

    static final class Definition {
        final String conditionEnglish;
        final String conditionGerman;
        final String conditionRussian;
        final String playGamesId;
        final String stableId;
        final String title;

        Definition(String stableId, String title, String conditionEnglish, String conditionRussian, String conditionGerman) {
            this(stableId, title, conditionEnglish, conditionRussian, conditionGerman, "");
        }

        Definition(String stableId, String title, String conditionEnglish, String conditionRussian, String conditionGerman, String playGamesId) {
            this.stableId = stableId;
            this.title = title;
            this.conditionEnglish = conditionEnglish == null ? "" : conditionEnglish;
            this.conditionRussian = conditionRussian == null ? this.conditionEnglish : conditionRussian;
            this.conditionGerman = conditionGerman == null ? this.conditionEnglish : conditionGerman;
            this.playGamesId = playGamesId != null ? playGamesId : "";
        }

        String localizedCondition(boolean russian, boolean german) {
            return russian ? this.conditionRussian : german ? this.conditionGerman : this.conditionEnglish;
        }
    }

    static /* synthetic */ void lambda$static$0(Definition definition) {
    }

    AchievementSystem(Store store, CloudBridge cloudBridge, Listener listener) {
        if (store == null) {
            throw new IllegalArgumentException("store");
        }
        this.store = store;
        this.cloudBridge = cloudBridge == null ? NO_CLOUD : cloudBridge;
        this.listener = listener;
    }

    static int size() {
        return CATALOG.length;
    }

    static Definition definition(int zeroBasedIndex) {
        if (zeroBasedIndex < 0 || zeroBasedIndex >= CATALOG.length) {
            return null;
        }
        return CATALOG[zeroBasedIndex];
    }

    boolean isUnlocked(int zeroBasedIndex) {
        Definition d = definition(zeroBasedIndex);
        return d != null && this.store.isUnlocked(d.stableId);
    }

    long unlockedAt(int zeroBasedIndex) {
        Definition d = definition(zeroBasedIndex);
        if (d == null) {
            return 0L;
        }
        return this.store.unlockedAt(d.stableId);
    }

    boolean unlock(int zeroBasedIndex) {
        Definition d = definition(zeroBasedIndex);
        if (d == null || this.store.isUnlocked(d.stableId)) {
            return false;
        }
        long now = System.currentTimeMillis();
        this.store.markUnlocked(d.stableId, now);
        this.cloudBridge.unlock(d);
        if (this.listener != null) {
            this.listener.onUnlocked(d);
            return true;
        }
        return true;
    }

    void syncUnlockedToCloud() {
        for (Definition d : CATALOG) {
            if (this.store.isUnlocked(d.stableId)) {
                this.cloudBridge.unlock(d);
            }
        }
    }

    /* renamed from: d */
    private static Definition m0d(int oneBasedIndex, String title, String en, String ru, String de) {
        return new Definition(String.format(Locale.ROOT, "demulation.achievement.%03d", Integer.valueOf(oneBasedIndex)), title, en, ru, de);
    }
}
