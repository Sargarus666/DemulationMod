# Demulation — HUD в стиле Dune: The Battle for Arrakis (Sega)

Готовый APK: **`DemulationMod_HUD_Sega_v2.apk`** — подписан, устанавливается, запускается (проверено на эмуляторе Android 14).

## Что сделано в этой версии

1. **Обе кнопки перенесены над радаром** и выровнены по его центру:
   - слева — кнопка юнитов, справа — кнопка базы;
   - размер и зазор рассчитываются от ширины радара, поэтому всегда симметрично.
2. **Кнопки квадратные**, в стиле оригинальной Dune на Sega:
   - тёмный корпус, двойная золотая рамка, фаска, заклёпки по углам;
   - иконки «цепочка» (юниты) и «ангар/база» (база) рисуются пиксельными линиями.
3. **Радар отодвинут от края**: отступы увеличены с 4/3 до 8 логических единиц.
4. **Карта отодвинута от угла**: `activeViewportRect` вписан с отступом 24 px со всех сторон.
5. **Кнопки вынесены над радар**, как вы просили в последнем сообщении; старая надпись «КРЕДИТЫ» в правом меню не используется как место для этих кнопок.
6. **Шрифт заменён везде**: встроенный `assets/fonts/dune_sega.ttf` (пиксельный, с кириллицей и цифрами) применяется ко всему тексту HUD, включая кредиты, панели выбора и подсказки. Все 10 сбросов на системный `Typeface` убраны.
7. **Хитбоксы исправлены**: зона нажатия кнопки базы теперь совпадает с её квадратом, а не растянута до низа экрана.
8. **Убраны круговые оверлеи** (рамка выбора и дуга здоровья) поверх квадратной кнопки базы.

## Ссылки для скачивания

- GitHub Release (постоянная): https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-final
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-final/DemulationMod_HUD_Sega_v2.apk
- Исходники ZIP: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-final/sources.zip
- Файлообменник (временная ссылка, APK): https://tmpfiles.org/dl/1794952296.c548c244637d453f/wKAUtRjwwxmA/demulationmod_hud_sega_v2.apk
- Файлообменник (временная ссылка, исходники): https://tmpfiles.org/dl/1794952313.546c5fb5a3f370e6/wnAqt7jfwSxR/sources.zip

SHA-256 APK: `697a055ca3dbf143801047e4dfdc79cfee73d68c8962625902875d0a6451833a`

## Важно: почему чужие сборки не запускались

В манифесте `android:extractNativeLibs="false"`. После `apktool b` нужно обязательно сделать `zipalign -p -f 4` перед подписью, иначе установка падает с `Failed to extract native libraries, res=-2`.

## Как пересобрать

```
java -jar tools/apktool.jar d -f -o apk2 Demulation_original.apk
python3 patch2.py                      # позиции кнопок, радар, карта
python3 patch3.py                      # шрифт, хитбокс, оверлеи
java -jar tools/apktool.jar b -o raw.apk apk2
cp dex2/classes.dex classes3.dex       # хелпер DuneSegaHud
zip -q -0 raw.apk classes3.dex
zipalign -p -f 4 raw.apk aligned.apk
apksigner sign --ks tools/mod.jks --ks-pass pass:demulation --key-pass pass:demulation aligned.apk
```

## Файлы

- `DemulationMod_HUD_Sega_v2.apk` — готовая прошивка.
- `sources.zip` — полный декодированный проект (smali), патч, исходник хелпера, шрифт и `classes3.dex`.
- `patch2.py` и `patch3.py` — скрипты правок smali.
- `src2/.../DuneSegaHud.java` — исходник хелпера (стиль кнопок, позиционирование, шрифт).
- `dune_sega.ttf` — шрифт.
- `tools/` — apktool и ключ (`mod.jks`, пароль `demulation`, alias `dune`).
