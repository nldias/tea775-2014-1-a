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
set output 'harm-auto.tex'
set xrange [-100:1000]
set yrange [-1.1:1.1]
set mxtics 10
set ytics -1.1,0.2,1.1
set xzeroaxis
set format y '$%+4.1f$'
plot  'harm-auto.out' with lines notitle lt 1 lw 6 lc rgb 'midnight-blue'
exit     