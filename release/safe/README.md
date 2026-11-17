# Demulation — HUD в стиле Dune / Sega Genesis

## Рекомендуемая сборка

**`safe/DemulationMod_HUD_Sega_SAFE.apk`** — безопасная сборка, подготовленная после сообщения о вылете при запуске РОМ.

- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-safe-test
- APK напрямую: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-safe-test/DemulationMod_HUD_Sega_SAFE.apk
- Исходники: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-safe-test/sources_safe.zip
- Файлообменник, APK: https://tmpfiles.org/dl/w8AMt6jpi6kG/demulationmod_hud_sega_safe.apk
- Файлообменник, исходники: https://tmpfiles.org/dl/wTAgtrj9RLXr/sources_safe.zip
- SHA-256 APK: `f4aa1738b0c9a5e62b43b45a4e13f355782e2fc5cdf3e14c7c95e2e2211e26a3`

В безопасной сборке убраны три вероятные причины вылета: внешний TTF-шрифт, изменение `activeViewportRect` карты и отдельный `classes3.dex`. Квадратные кнопки над радаром, их иконки и хитбоксы сохранены.

**Важно:** в эмуляторе не удалось воспроизвести именно ваш сценарий сбоя из-за системных ANR и ограничений доступа к файлам. Поэтому безопасная сборка пока объявлена тестовой, а не гарантированно исправленной. Проверьте её на том устройстве и РОМ, где возникала ошибка.

## Что сделано в HUD

1. Обе кнопки перенесены над радар и выровнены по его центру: слева юниты, справа база.
2. Кнопки квадратные, в стиле Dune на Sega: тёмный корпус, двойная золотая рамка, фаска, заклёпки по углам.
3. Иконки «цепочка» и «ангар/база» рисуются пиксельными линиями.
4. Радар отодвинут от края: отступы увеличены с 4/3 до 8 логических единиц.
5. Хитбокс кнопки базы совпадает с её квадратом, а не растянут до низа экрана.
6. Убраны круговые оверлеи поверх квадратной кнопки базы.
7. В безопасной сборке шрифт только системный моноширинный; в старой версии использовался встроенный пиксельный `dune_sega.ttf`.

## Предыдущая сборка

`DemulationMod_HUD_Sega_v2.apk` остаётся в этом репозитории как Previous/Legacy.

- GitHub Release: https://github.com/Sargarus666/DemulationMod/releases/tag/hud-sega-final
- APK: https://github.com/Sargarus666/DemulationMod/releases/download/hud-sega-final/DemulationMod_HUD_Sega_v2.apk
- SHA-256: `697a055ca3dbf143801047e4dfdc79cfee73d68c8962625902875d0a6451833a`

Она полностью сохраняет пиксельный шрифт, но содержит все три потенциально проблемных изменения, перечисленных выше.

## Как пересобрать безопасную сборку

```
cd .work
rm -rf apk_safe cls_safe dex_safe
cp -a apk2 apk_safe
python3 patch_safe.py          # откат activeViewportRect, удаление TTF
python3 patch_safe_helper.py   # копия хелпера в classes2 без загрузки TTF
java -jar apktool.jar b -o safe_raw.apk apk_safe
$ANDROID_HOME/build-tools/34.0.0/zipalign -p -f 4 safe_raw.apk safe_aligned.apk
cp safe_aligned.apk safe_signed.apk
$ANDROID_HOME/build-tools/34.0.0/apksigner sign --ks mod.jks --ks-pass pass:demulation --key-pass pass:demulation safe_signed.apk
```

## Важно: почему чужие сборки не запускались

В манифесте `android:extractNativeLibs="false"`. После `apktool b` обязательно нужен `zipalign -p -f 4` перед подписью, иначе установка падает с `Failed to extract native libraries, res=-2`.

## Файлы

- `safe/DemulationMod_HUD_Sega_SAFE.apk` — рекомендуемая для теста сборка.
- `safe/sources_safe.zip` — исходники безопасной сборки.
- `DemulationMod_HUD_Sega_v2.apk` — предыдущая сборка с пиксельным шрифтом.
- `sources.zip` — исходники предыдущей сборки.
- `DEBUG_STATUS.md` — подробный статус отладки вылета.
