# -------------------------------------------------------------
# the terminal
# -------------------------------------------------------------
load 'terminal.plt'
set terminal epslatex standalone color solid font "cmr" 12 size 10cm,10cm
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel '$\theta$'
set ylabel '\vspace*{-1cm}$F_\Theta(\theta)$'
set output 'harm-cdf.tex'
set xrange [-pi:pi]
set yrange [0:1]
set mxtics 10
set mytics 10
set nokey
set size square
set format y '$%4.2f$'
plot  'harm-cdf.out' with points pt 7 ps 0.5 lc rgb 'midnight-blue'
exit     