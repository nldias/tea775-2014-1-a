# -------------------------------------------------------------
# the terminal
# -------------------------------------------------------------
load 'terminal.plt'
set terminal epslatex standalone color solid font "cmr" 12 size 10cm,10cm
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel '$x$'
set ylabel '\vspace*{-1cm}$F_X(x)$'
set output 'rnum-cdf.tex'
set xrange [0:1]
set yrange [0:1]
set mxtics 10
set mytics 10
set nokey
set size square
plot  'rnum-cdf.out' with points pt 7 ps 0.5 lc rgb 'midnight-blue',\
      x with lines lt 1 lw 1 lc rgb 'black'
exit     