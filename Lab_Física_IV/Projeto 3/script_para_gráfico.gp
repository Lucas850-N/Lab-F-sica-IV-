reset
set grid
set title 'Variação da intensidade com a angulação'
set grid
set xrange [0:180]
set yrange [0:7.0]
set xtics 0, 15, 180
set ytics 0, 1, 7.0
set key top center
plot 'Dados_Malus.dat' using 1:2
