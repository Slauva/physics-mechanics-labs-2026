#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
materials_root="$repo_root/materials"
errors=0

while IFS= read -r -d '' entrypoint; do
  material_dir="$(dirname "$entrypoint")"
  relative_dir="${material_dir#"$repo_root/"}"

  for required in PLAN.md WORKLOG.md; do
    if [[ ! -f "$material_dir/$required" ]]; then
      printf 'ОШИБКА: %s: отсутствует %s\n' "$relative_dir" "$required" >&2
      errors=$((errors + 1))
    fi
  done

  if [[ ! -d "$material_dir/source" || ! -d "$material_dir/figures" ]]; then
    printf 'ОШИБКА: %s: нужны каталоги source/ и figures/\n' "$relative_dir" >&2
    errors=$((errors + 1))
  fi

  case "$relative_dir" in
    materials/labs/*|materials/tests/*|materials/problem-sets/*)
      for required in content.tex solution.tex; do
        if [[ ! -f "$material_dir/$required" ]]; then
          printf 'ОШИБКА: %s: отсутствует %s\n' "$relative_dir" "$required" >&2
          errors=$((errors + 1))
        fi
      done
      ;;
  esac
done < <(find "$materials_root" -type d -name source -prune -o -type f -name main.tex -print0 | sort -z)

while IFS= read -r -d '' source_file; do
  if grep -Pq '[\x{0400}-\x{04FF}]' "$source_file"; then
    relative_file="${source_file#"$repo_root/"}"
    printf 'ОШИБКА: %s: видимый исходник содержит кириллицу; материалы должны быть на английском\n' \
      "$relative_file" >&2
    grep -Pn '[\x{0400}-\x{04FF}]' "$source_file" >&2
    errors=$((errors + 1))
  fi
done < <(
  find \
    "$repo_root/materials" \
    "$repo_root/templates" \
    "$repo_root/examples" \
    "$repo_root/tex" \
    -type d -name source -path "$materials_root/*" -prune -o \
    -type f \( -name '*.tex' -o -name '*.tikz' -o -name '*.cls' -o -name '*.sty' \) \
    -print0 | sort -z
)

if (( errors > 0 )); then
  printf 'Проверка структуры: найдено ошибок: %d\n' "$errors" >&2
  exit 1
fi

printf 'Проверка структуры: OK\n'
