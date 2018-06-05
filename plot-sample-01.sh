#!/bin/sh
PLT=/tmp/${0##*/}.plt
OUT=/tmp/${0##*/}.png

XMAX=5
XMIN=-5
YMAX=10
YMIN=-1
DATA=$1
XLABEL="time/sec."
YLABEL="振幅/mm"

cat <<EOT > $PLT
set terminal png font "/usr/share/fonts/vlgothic/VL-Gothic-Regular.ttf" 8
set xlabel "${XLABEL}"
set ylabel "${YLABEL}"
set xrange[${XMIN}: ${XMAX}]
set yrange[${YMIN}: ${YMAX}]
set out "${OUT:?}"
plot "${DATA:?}"

EOT

gnuplot $PLT
