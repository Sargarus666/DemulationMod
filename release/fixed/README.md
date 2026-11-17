# Demulation — HUD в стиле Dune / Sega Genesis

## Основная сборка — FIXED

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
