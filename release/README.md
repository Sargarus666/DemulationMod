# Demulation — HUD в стиле Dune / Sega Genesis

## v3-сборка (последняя)

**`v3/DemulationMod_HUD_Sega_v3.apk`** — три одинаковые кнопки в один ровный ряд над радаром, радар 256×256 с отступами 72/64 px, реально загружаемый шрифт Dune SEGA.

- APK: `v3/DemulationMod_HUD_Sega_v3.apk`
- Исходники: `v3/sources_v3.zip`
- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-v3
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-v3/DemulationMod_HUD_Sega_v3.apk
- Зеркало: https://tmpfiles.org/dl/w1AItEOtaPT5/demulationmod_hud_sega_v3.apk
- SHA-256: `8ce662e699768f754cdfb187dc9eed78b65bbf5c244041d480885d7d39ab8cfc`
- `resources.arsc`, манифест и все `.so` побайтово совпадают с оригиналом; изменены только `classes2.dex` и добавленный шрифт.
- Подпись проверена, установка на Android 14 и `cmd package compile -f -m verify` проходят, лаунчер запускается без `FATAL EXCEPTION`.
- Запуск игры и игровой скриншот не проверены: в окружении отсутствует предоставленный ROM. Подробности — `v3/README.md` и `DEBUG_STATUS.md`.

## PRO-сборка

**`pro/DemulationMod_HUD_Sega_PRO.apk`** — три кнопки одинакового размера перенесены в ряд над радаром, радар отодвинут от края, подключён шрифт Dune SEGA.

- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-pro
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-pro/DemulationMod_HUD_Sega_PRO.apk
- Зеркало: https://tmpfiles.org/dl/wNAEtxYWKwvg/demulationmod_hud_sega_pro.apk
- Исходники: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-pro/sources_pro.zip
- SHA-256: `e0c8669622088af46cac188f317c1a49001112138f59ce4876e0eee8c630a0d7`

### Что именно изменилось в PRO

1. `DuneSegaHud.fitRadar()` закрепляет радар в правом нижнем углу с отступом 16 px и размером 286×286 px.
2. `DuneSegaHud.aboveRadarRect()` размещает три кнопки 90×90 px в один ряд с зазорами 8 px над радаром.
3. `DuneSegaHud.typeface()` загружает `assets/fonts/dune_sega.ttf`, при ошибке откатывается на `Typeface.MONOSPACE`.
4. Все старые обработчики нажатий и игровые режимы сохранены, исправление DEX-верификации из FIXED сохранено.

## Предыдущая сборка — FIXED

**`fixed/DemulationMod_HUD_Sega_FIXED.apk`** — сборка, в которой найдена и устранена причина вылета при запуске игры.

- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-fixed
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-fixed/DemulationMod_HUD_Sega_FIXED.apk
- Временная ссылка: https://tmpfiles.org/dl/wDA4tlaEoWV4/demulationmod_hud_sega_fixed.apk
- Исходники: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-fixed/sources_fixed.zip
- SHA-256: `4944e62622bd7304301e4deff6ab0eb985c7c6b8cf3d3b5fc781204eaeb9c69d`

### Что именно исправлено

ART при загрузке `MainActivity$WorldView` находил четыре ошибки верификации:

1. `drawFavoriteCircleButton` — неверные регистры в вызове `DuneSegaHud.drawHudButton`.
2. `drawUnitGroupingModeButton` — та же ошибка, `Paint` вместо `int`.
3. Удалённая загрузка `Paint.Cap.ROUND` при оставшемся использовании `v2` как `Paint.Cap`.
4. `RectF` для кнопки юнитов брался из регистра с `int` цветом.

После исправлений принудительная проверка `adb shell cmd package compile -f -m verify com.ahsim.demulation` проходит без ошибок. Замена внесена только в `classes2.dex`: `resources.arsc` и все нативные библиотеки побайтово совпадают с оригинальным APK.

## HUD

- Кнопки юнитов и базы перенесены над радар и выровнены по его центру.
- Кнопки квадратные: тёмный корпус, двойная золотая рамка, фаска, заклёпки, иконки «цепочка» и «ангар/база».
- Радар отодвинут от края.
- Хитбокс кнопки базы совпадает с её квадратом.
- Круговые оверлеи поверх квадратной кнопки базы убраны.
- В FIXED-сборке используется только системный моноширинный шрифт без внешнего TTF.

## Предыдущие сборки

- SAFE тест вылета: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-safe-test
- Первая сборка с пиксельным шрифтом: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-final

Обе они содержали ошибки верификации и не являются основными.

## Статус отладки

Подробности: `DEBUG_STATUS.md`.

## Важно: почему чужие сборки не запускались

В манифесте `android:extractNativeLibs="false"`. После `apktool b` обязательно нужен `zipalign -p -f 4` перед подписью, иначе установка падает с `Failed to extract native libraries, res=-2`.

## Файлы

- `fixed/DemulationMod_HUD_Sega_FIXED.apk` — основная исправленная сборка.
- `fixed/sources_fixed.zip` — исходники и все патчи, включая `fix_verify*.py`.
- `safe/` — предыдущая тестовая сборка.
- `DEBUG_STATUS.md` — полный лог отладки и найденная причина.
