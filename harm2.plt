# -------------------------------------------------------------
# my first analytical result !
# -------------------------------------------------------------
load 'terminal.plt'
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel '$t$'
set ylabel '$x(t), \; \dot{x}(t)$'
set output 'harm2.tex'
set xrange [0:1000]
set yrange [-1:1]
set mxtics 10
set format y '$%4.2f$'
plot  'harm2.out' using 1:2 with lines notitle lt 1 lw 6 lc rgb 'midnight-blue',\
      'harm2.out' using 1:3 with lines notitle lt 1 lw 6 lc rgb 'red'
exit     