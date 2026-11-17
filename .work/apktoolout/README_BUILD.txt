# Demulation — HUD "Dune: The Battle for Arrakis" (Sega style)

Готовый APK: **`DemulationMod_HUD_Sega.apk`** — подписан, устанавливается, запускается.

## Что изменено

1. Кнопка юнитов (слева внизу) и кнопка базы (справа у радара) стали **квадратными** вместо круглых.
2. Кнопка юнитов перенесена в **правое меню** на место надписи «КРЕДИТЫ»; сама надпись убрана (число кредитов осталось).
3. Квадратная форма применена и к избранным кнопкам (база/юниты).
4. В исходниках лежит шрифт `assets/fonts/dune_sega.ttf` (на базе Pixelify Sans, адаптирован кириллический О/П) — можно подключить в `drawHudCredits` и др. вместо `Typeface.MONOSPACE`.

## Важно: почему другие сборки не запускались

В манифесте стоит `android:extractNativeLibs="false"`. Библиотеки `.so` должны быть **STORED и page-aligned (4096)**. Если после `apktool b` сразу подписывать APK — установка падает с `INSTALL_FAILED_INVALID_APK: Failed to extract native libraries, res=-2`.

Правильный порядок сборки:

```
java -jar tools/apktool.jar b -o unsigned.apk apktoolout
$ANDROID_HOME/build-tools/34.0.0/zipalign -p -f 4 unsigned.apk aligned.apk
cp aligned.apk signed.apk
$ANDROID_HOME/build-tools/34.0.0/apksigner sign \
  --ks tools/mod.jks --ks-pass pass:demulation --key-pass pass:demulation signed.apk
```

Ключ: `tools/mod.jks`, пароль `demulation`, alias `dune`.

## Исходники

- `sources.zip` — полный декодированный проект apktool (smali), включая пропатченный
  `smali_classes2/com/ahsim/demulation/MainActivity$WorldView.smali`, а также
  `patch.py`, JADX-исходники и шрифт.
- `patch.py` — скрипт, который применяет правки к свежему `apktool d`-декоду.

Правки в smali (метод `drawUnitGroupingModeButton`):
- прямоугольник `unitGroupingModeButtonRect` считается от `layout.hudLeft` / `layout.viewTop`
  (правое меню, координаты 244..341 логических единиц);
- `drawCircle` заменён на `drawRect(RectF, Paint)` для заливки и контура.

В `drawFavoriteCircleButton`:
- `drawCircle` заменён на `drawRect(RectF, Paint)` для заливки и внешней рамки.

В `drawHudCredits`:
- вызов `uiText("CREDITS","КРЕДИТЫ")` заменён на пустую строку.

## Что можно улучшить дальше

- Подключить `dune_sega.ttf` во всех `textPaint` HUD (сейчас шрифт ещё не применён).
- Перенести кнопку базы в правое меню: нужно аккуратно переписать `drawFavoriteNavigation`
  (увеличить число регистров и вынести прямоугольник для `i == 0`).
- Добавить «сега-стиль» (золотая рамка, угловые заклёпки) через хелпер `DuneSegaHud`.

## Утилиты

`tools/apktool.jar` — Apktool 2.11.1 (для декода/сборки).
