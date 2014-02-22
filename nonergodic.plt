# -------------------------------------------------------------
# my first analytical result !
# -------------------------------------------------------------
load 'terminal.plt'
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel 'time'
set ylabel '$X(t)$'
set output 'nonergodic.tex'
set xrange [0:100]
set yrange [0:1]
set mxtics 10
set format y '$%4.2f$'
set nokey
plot  0.22493401 with lines notitle lt 1 lw 6 lc rgb 'midnight-blue',\
      0.79840310 with lines notitle lt 1 lw 6 lc rgb 'midnight-blue',\
      0.85740394 with lines notitle lt 1 lw 6 lc rgb 'midnight-blue'
exit     