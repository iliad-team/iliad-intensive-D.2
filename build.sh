#!/usr/bin/env bash
# Build each deck as <deck>-present.pdf (\pause reveals on) and <deck>-handout.pdf
# (collapsed), via a one-line wrapper that \def-s \HANDOUT before \input-ing it.
# Usage: ./build.sh [deck.tex ...]      default: both decks
set -euo pipefail
cd "$(dirname "$0")"
decks=("$@"); [ $# -eq 0 ] && decks=(vpg-slides.tex goalmisgen-slides.tex)
tex() { pdflatex -interaction=nonstopmode -halt-on-error "$1.tex" >/dev/null || { grep -A3 '^!' "$1.log" >&2; exit 1; }; }
for src in "${decks[@]}"; do
  base="${src%.tex}"
  printf '\\input{%s}\n'                "$base" > "$base-present.tex"
  printf '\\def\\HANDOUT{}\\input{%s}\n' "$base" > "$base-handout.tex"
  for job in "$base-present" "$base-handout"; do
    tex "$job"
    if grep -qF '\citation' "$job.aux"; then bibtex "$job" >/dev/null; tex "$job"; fi
    tex "$job"
    echo "built $job.pdf"
  done
done
rm -f ./*.aux ./*.log ./*.nav ./*.out ./*.snm ./*.toc ./*.vrb ./*.bbl ./*.blg ./*-present.tex ./*-handout.tex
