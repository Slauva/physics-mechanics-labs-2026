SHELL := /bin/bash

IMAGE ?= ghcr.io/slauva/master-thesis-2024-2026/latex:latest
ROOT := $(CURDIR)
UID_ := $(shell id -u)
GID_ := $(shell id -g)
LATEXMK_FLAGS := -xelatex -cd -interaction=nonstopmode -file-line-error -halt-on-error -synctex=1

MATERIAL_SOURCES := $(shell find materials -type f \( -name main.tex -o -name solution.tex \) 2>/dev/null | sort)
MATERIAL_PDFS := $(patsubst %.tex,output/%.pdf,$(MATERIAL_SOURCES))
DEMO_SOURCES := examples/oscillator-lab/main.tex examples/oscillator-lab/solution.tex examples/oscillator-slides/main.tex
DEMO_PDFS := $(patsubst %.tex,output/%.pdf,$(DEMO_SOURCES))
TEMPLATE_SOURCES := templates/lab/main.tex templates/lab/solution.tex templates/presentation/main.tex templates/test/main.tex templates/test/solution.tex templates/problem-set/main.tex templates/problem-set/solution.tex
TEMPLATE_PDFS := $(patsubst %.tex,output/%.pdf,$(TEMPLATE_SOURCES))

.DEFAULT_GOAL := help

.PHONY: help new build all demo templates-check check lint clean list FORCE

FORCE:

help:
	@echo "Команды:"
	@echo "  make new TYPE=<lab|presentation|test|problem-set> SLUG=<slug> TITLE='<название>'"
	@echo "  make build FILE=materials/.../main.tex"
	@echo "  make all       — собрать все точки входа в materials/"
	@echo "  make demo      — собрать демонстрационные PDF"
	@echo "  make templates-check — собрать все четыре шаблона"
	@echo "  make check     — lint, шаблоны и демонстрационные PDF"
	@echo "  make lint      — проверить структуру материалов"
	@echo "  make list      — показать найденные точки входа"
	@echo "  make clean     — удалить только каталог output/"

new:
	@./scripts/new-material.sh "$(TYPE)" "$(SLUG)" "$(TITLE)"

build:
	@test -n "$(FILE)" || { echo "Укажите FILE=путь/к/main.tex" >&2; exit 2; }
	@case "$(FILE)" in *.tex) ;; *) echo "FILE должен оканчиваться на .tex" >&2; exit 2;; esac
	@$(MAKE) "output/$(patsubst %.tex,%.pdf,$(FILE))"

all: lint $(MATERIAL_PDFS)

demo: $(DEMO_PDFS)

templates-check: $(TEMPLATE_PDFS)

check: lint templates-check demo

lint:
	@./scripts/check-structure.sh

list:
	@printf '%s\n' $(MATERIAL_SOURCES)

output/%.pdf: %.tex FORCE
	@mkdir -p "$(dir $@)"
	docker run --rm -i \
		--user "$(UID_):$(GID_)" \
		-e TEXINPUTS=/work/tex//: \
		-v "$(ROOT):/work" \
		-w /work \
		"$(IMAGE)" \
		latexmk $(LATEXMK_FLAGS) -outdir="/work/$(dir $@)" "/work/$<"

clean:
	@if [ -d output ]; then find output -mindepth 1 -delete; rmdir output; fi
