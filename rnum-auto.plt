# -------------------------------------------------------------
# my first analytical result !
# -------------------------------------------------------------
load 'terminal.plt'
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel 'lag'
set lmargin 8
set ylabel '$\varrho(k)$'
set output 'rnum-auto.tex'
set xrange [-100:1000]
set yrange [-0.1:1.1]
set mxtics 10
set ytics -0.1,0.1,1.0
set xzeroaxis
set format y '$%+4.1f$'
plot  'rnum-auto.out' with lines notitle lt 1 lw 6 lc rgb 'midnight-blue'
exit     