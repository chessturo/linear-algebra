#!/bin/bash
set -euo pipefail
shopt -s globstar

COMMON="./common.pt"
OUTDIR="../assets/img/plots"
BASEDIR=$(pwd)

for script in ./**/*.pt; do
  [ $script = $COMMON ] && continue
  [ $script -ot $OUTDIR/$(dirname $script)/$(basename $script .pt).png ] && continue
  [ ! -d $OUTDIR/$(dirname $script) ] && mkdir -p $OUTDIR/$(dirname $script)
  echo "Reading $script"
  # this is disgusting
  gnuplot -e "\
    load \"$COMMON\"; \
    set output \"$OUTDIR/$(dirname $script)/$(basename $script .pt).png\"; \
    " $script
done

