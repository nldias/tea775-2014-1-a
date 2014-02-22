# -------------------------------------------------------------
# my first analytical result !
# -------------------------------------------------------------
load 'terminal.plt'
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel 'time'
set ylabel '$(16807 x \bmod 2^{31} - 1)/2^{31}$'
set output 'rnum.tex'
set xrange [0:100]
set yrange [0:1]
set mxtics 10
set format y '$%4.2f$'
plot  'rnum.out' with lines notitle lt 1 lw 6 lc rgb 'midnight-blue'
exit     