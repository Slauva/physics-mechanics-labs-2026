#!/usr/bin/env bash
set -euo pipefail

material_type="${1:-}"
slug="${2:-}"
title="${3:-}"

if [[ -z "$material_type" || -z "$slug" ]]; then
  echo "Использование: $0 <lab|presentation|test|problem-set> <slug> [название]" >&2
  exit 2
fi

if [[ ! "$slug" =~ ^[a-z0-9]+([a-z0-9-]*[a-z0-9]+)?$ ]]; then
  echo "SLUG: только строчные латинские буквы, цифры и дефисы" >&2
  exit 2
fi

case "$material_type" in
  lab) destination_group="labs" ;;
  presentation) destination_group="presentations" ;;
  test) destination_group="tests" ;;
  problem-set) destination_group="problem-sets" ;;
  *)
    echo "Неизвестный TYPE: $material_type" >&2
    exit 2
    ;;
esac

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
template_dir="$repo_root/templates/$material_type"
destination="$repo_root/materials/$destination_group/$slug"

if [[ -e "$destination" ]]; then
  echo "Каталог уже существует: ${destination#"$repo_root/"}" >&2
  exit 1
fi

if [[ -z "$title" ]]; then
  title="$slug"
fi

cp -R "$template_dir" "$destination"

escaped_title="$(printf '%s' "$title" | sed 's/[\\&|]/\\&/g')"
escaped_slug="$(printf '%s' "$slug" | sed 's/[\\&|]/\\&/g')"
created_date="$(date +%F)"

while IFS= read -r -d '' file; do
  sed -i \
    -e "s|TITLETOKEN|$escaped_title|g" \
    -e "s|SLUGPLACEHOLDER|$escaped_slug|g" \
    -e "s|DATEPLACEHOLDER|$created_date|g" \
    "$file"
done < <(find "$destination" -type f -print0)

printf 'Создано: %s\n' "${destination#"$repo_root/"}"
printf 'Следующий шаг: заполнить source/ и утвердить контрольную точку 0 в PLAN.md.\n'
