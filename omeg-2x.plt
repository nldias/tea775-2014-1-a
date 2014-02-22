# -------------------------------------------------------------
# my first analytical result !
# -------------------------------------------------------------
set terminal epslatex standalone monochrome dashed
set encoding iso_8859_1
# -------------------------------------------------------------
# in the plots I am calling kappa k
# -------------------------------------------------------------
set xlabel 'time'
set ylabel '$2x \mod 1$'
set output 'omeg-2x.tex'
set xrange [0:100]
set yrange [0:1]
set mxtics 10
plot  'omeg-2x.out' using 1:2 with lines notitle lt 1 lw 3 lc rgb 'gray25',\
      'omeg-2x.out' using 1:3 with lines notitle lt 2 lw 3 lc rgb 'gray50',\
      'omeg-2x.out' using 1:4 with lines notitle lt 3 lw 3 lc rgb 'gray75',\
      'omeg-2x.out' using 1:5 with lines notitle lt 4 lw 3 lc rgb 'black'
exit     