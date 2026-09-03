# Материалы лабораторных работ по механике

Репозиторий хранит англоязычные лабораторные работы-презентации, учебные презентации, тесты и списки задач в едином LaTeX-дизайне. Сборка воспроизводима через Docker-образ `ghcr.io/slauva/master-thesis-2024-2026/latex:latest`.

## Быстрый старт

Требования: GNU Make и Docker.

```bash
make new TYPE=lab SLUG=pendulum TITLE='Simple Pendulum'
make lint
make build FILE=materials/labs/pendulum/main.tex
make build FILE=materials/labs/pendulum/solution.tex
```

Допустимые типы: `lab`, `presentation`, `test`, `problem-set`.

Лабораторная работа — это Beamer-колода 16:9. `main.tex` собирает версию для студентов, а `solution.tex` — расширенную колоду с дополнительными слайдами решений. Тесты и списки задач остаются печатными A4-документами.

Собранные PDF и технические логи появляются в `output/` с той же структурой каталогов. Например:

```text
materials/labs/pendulum/main.tex
    -> output/materials/labs/pendulum/main.pdf
```

Полезные команды:

```bash
make help        # все команды
make demo        # собрать демонстрацию дизайна
make check       # проверить структуру и собрать шаблоны с демонстрацией
make all         # собрать все материалы из materials/
make lint        # проверить структуру и English-only исходники материалов
make clean       # удалить только генерируемый output/
```

## Публикация выбранных PDF в GitHub Release

Workflow `Release selected PDFs` запускается вручную во вкладке **Actions**.
При запуске указываются:

- `tag` — тег создаваемого или уже существующего релиза;
- `release_name` — необязательное название нового релиза;
- `entrypoints` — только нужные точки входа, по одной на строку или через
  запятую;
- `prerelease` — признак предварительного релиза.

Например, чтобы выпустить только студенческую презентацию и версию с решениями
для первой лабораторной:

```text
materials/labs/position-velocity-acceleration/main.tex
materials/labs/position-velocity-acceleration/solution.tex
```

Workflow вызывает `make build FILE=...` отдельно для каждого указанного файла,
поэтому остальные материалы не собираются. Для `main.tex` создаётся файл с
суффиксом `student`, для `solution.tex` — с суффиксом `solution`. Например:

```text
labs-position-velocity-acceleration-student.pdf
labs-position-velocity-acceleration-solution.pdf
```

Если релиз с таким тегом уже существует, выбранные PDF загружаются повторно с
заменой одноимённых файлов. Локально тот же набор можно подготовить командой:

```bash
./scripts/build-release-entrypoints.sh \
  materials/labs/position-velocity-acceleration/main.tex \
  materials/labs/position-velocity-acceleration/solution.tex
```

Подготовленные файлы и точный список вложений появляются в
`output/release-assets/`.

Рабочий процесс с обязательными ручными контрольными точками описан в [docs/WORKFLOW.md](docs/WORKFLOW.md). Правила дизайна — в [docs/DESIGN.md](docs/DESIGN.md).

## Структура

```text
materials/
  labs/<slug>/
  presentations/<slug>/
  tests/<slug>/
  problem-sets/<slug>/
templates/                 шаблоны для make new
tex/                       общий класс и Beamer-тема
examples/                  демонстрационные документы
.agents/skills/            навыки Codex этого репозитория
output/                    результат сборки, не хранится в Git
```

В каталоге материала находятся `PLAN.md`, `WORKLOG.md`, точка входа `main.tex`, подпапки `source/` и `figures/`. У лабораторных, тестов и списков задач также есть `solution.tex`. Лабораторные используют `physicslabslides.cls`, печатные материалы — `physicslab.cls`.

Весь текст, попадающий в PDF, должен быть на английском, независимо от языка исходников преподавателя. `PLAN.md`, `WORKLOG.md` и документация проекта могут вестись на русском.
