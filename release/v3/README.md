# Demulation HUD v3 — сборка 0.4.768

## Артефакты

- `DemulationMod_HUD_Sega_v3.apk` — подписанный APK.
- `sources_v3.zip` — полные smali-исходники и `patch_v3.py`.
- `gameplay_hud_v3.png` — настоящий игровой скриншот (`GAMEPLAY / TACTICAL`).
- `GAMEPLAY_VERIFICATION.md` — протокол проверки HUD и трёх кнопок.
- `SHA-256 APK`: `8ce662e699768f754cdfb187dc9eed78b65bbf5c244041d480885d7d39ab8cfc`
- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-v3
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-v3/DemulationMod_HUD_Sega_v3.apk
- Исходники: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-v3/sources_v3.zip
- Зеркало APK: https://tmpfiles.org/dl/w1AItEOtaPT5/demulationmod_hud_sega_v3.apk

## Что изменено

1. **Три одинаковые кнопки в один ровный ряд над радаром**: меню, юниты, база.
   Размер и зазоры вычисляются из ширины радара, ряд выровнен по правому краю радара.
   На экране 2412×1080 px это 75.85×75.85 px с зазорами 14.22 px.
2. **Радар 256×256 px** с отступом 72 px справа и 64 px снизу; карта больше не прижата к углу.
3. **Шрифт Dune SEGA** реально загружается из `assets/fonts/dune_sega.ttf`
   (`Typeface.createFromAsset`), с откатом на `Typeface.MONOSPACE` без вылета.
4. **Иконка меню** — три горизонтальные полосы; юниты — «цепочка»; база — «ангар».
5. Обработчики нажатий, игровые режимы и исправление DEX-верификации из FIXED сохранены.

## Как собрано

APK собран не «с нуля» из apktool-вывода, а заменой только `classes2.dex`
в оригинальном APK:

- `resources.arsc`, `AndroidManifest.xml`, все нативные библиотеки и ресурсы
  **побайтово совпадают** с оригиналом;
- добавлен только `assets/fonts/dune_sega.ttf`;
- изменены только `classes2.dex` и метаданные подписи.

Это исключает регрессии от пересборки ресурсов.

## Проверка

| Проверка | Результат |
|---|---|
| `apksigner verify` | подпись валидна (`CN=DuneMod`) |
| `zipalign -p -f 4` | выполнено, нативные библиотеки не сжаты |
| Установка на Android 14 (API 34), x86_64 | `Success` |
| `cmd package compile -f -m verify com.ahsim.demulation` | `Success`, ошибок верификации нет |
| Запуск лаунчера | открывается, процесс жив, `FATAL EXCEPTION` нет |
| Рендер `DuneSegaHud` из реального DEX на устройстве | три кнопки 75.85×75.85 px, зазоры 14.22 px, ряд 104…360 px, см. `hud_render_test.png` |
| Запуск с ROM до игрового процесса | `mode=GAMEPLAY phase=TACTICAL` |
| HUD и три кнопки в игре | все три реагируют на тап, подробности в `GAMEPLAY_VERIFICATION.md` |
| Настоящий игровой скриншот | `gameplay_hud_v3.png`, 2400×1080, SHA-256 `926995149e8a5f3a3fde0bc98679b5d66e6cac08be455d4bd033e487983224f9` |

## Проверка в игре

Предоставленный ROM сохранён в GitHub Release `rom-cache`:
https://github.com/Sargarus666/DemulationMod/releases/tag/rom-cache
(SHA-256 `.gen`: `4d93c48957cc81fc49a6edff6353787e5d32eb5e2c86963182fba918a45e906a`).

На эмуляторе Android 14 пройден путь от лаунчера до настоящего игрового процесса.
В кадре `GAMEPLAY / TACTICAL` три кнопки HUD рисуются в один ровный ряд над радаром;
левая открывает внутриигровую панель, средняя переключает объединение юнитов,
правая выбирает базу/избранное. `FATAL EXCEPTION` нет. Диагностическое логирование
присутствовало только во временном непубликуемом APK; основная сборка v3 не менялась.

Макет `site/preview/game_v3_preview.png` остался только как иллюстрация, а не как
подтверждение проверки: подтверждением служит `gameplay_hud_v3.png`.

## Пересборка

```bash
cp -a <apktool-decoded> build3
python3 patch_v3.py
java -jar apktool.jar b --use-aapt2 -o v3_raw.apk build3
# затем заменить classes2.dex в оригинальном APK, добавить шрифт,
zipalign -p -f 4 ...
apksigner sign --ks tools/mod.jks ...
```
