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
