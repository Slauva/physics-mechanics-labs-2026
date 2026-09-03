#!/usr/bin/env bash
set -euo pipefail

if (( $# == 0 )); then
  echo "Usage: $0 <materials/.../main.tex|solution.tex> [...]" >&2
  exit 2
fi

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

asset_dir="${RELEASE_ASSET_DIR:-output/release-assets}"
case "$asset_dir" in
  output/*) ;;
  *)
    echo "RELEASE_ASSET_DIR must be inside output/: $asset_dir" >&2
    exit 2
    ;;
esac

mkdir -p "$asset_dir"
manifest="$asset_dir/manifest.txt"
: > "$manifest"

declare -A seen_entrypoints=()
declare -A seen_assets=()

make lint

for entrypoint in "$@"; do
  if [[ ! "$entrypoint" =~ ^materials/(labs|presentations|tests|problem-sets)/([a-z0-9][a-z0-9-]*)/(main|solution)\.tex$ ]]; then
    echo "Unsupported entry point: $entrypoint" >&2
    echo "Expected materials/<type>/<slug>/{main,solution}.tex" >&2
    exit 2
  fi

  if [[ -n "${seen_entrypoints[$entrypoint]:-}" ]]; then
    echo "Duplicate entry point: $entrypoint" >&2
    exit 2
  fi
  seen_entrypoints["$entrypoint"]=1

  if [[ ! -f "$entrypoint" ]]; then
    echo "Entry point does not exist: $entrypoint" >&2
    exit 2
  fi

  material_kind="${BASH_REMATCH[1]}"
  material_slug="${BASH_REMATCH[2]}"
  entry_name="${BASH_REMATCH[3]}"

  case "$entry_name" in
    main)
      if [[ "$material_kind" == "presentations" ]]; then
        variant="presentation"
      else
        variant="student"
      fi
      ;;
    solution)
      variant="solution"
      ;;
  esac

  asset_path="$asset_dir/${material_kind}-${material_slug}-${variant}.pdf"
  if [[ -n "${seen_assets[$asset_path]:-}" ]]; then
    echo "Release asset name collision: $asset_path" >&2
    exit 2
  fi
  seen_assets["$asset_path"]=1

  make build FILE="$entrypoint"

  built_pdf="output/${entrypoint%.tex}.pdf"
  if [[ ! -f "$built_pdf" ]]; then
    echo "Expected PDF was not produced: $built_pdf" >&2
    exit 1
  fi

  cp -- "$built_pdf" "$asset_path"
  printf '%s\n' "$asset_path" >> "$manifest"
  printf 'Prepared release asset: %s\n' "$asset_path"
done

printf 'Release manifest: %s\n' "$manifest"
