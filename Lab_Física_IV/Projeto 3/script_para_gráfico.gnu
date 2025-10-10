set terminal qt font 'Montserrat, 12'
set title 'Variação da intensidade em relação à angulação' font 'Montserrat Bold, 17'
set xlabel 'Ângulo {/Symbol q} (graus)' font 'Montserrat Bold, 12'
set ylabel 'Intensidade (V)' font 'Montserrat Bold, 12'
set grid
set xrange [0:180]
set yrange [0:9]
set xtics 0, 15, 180
set ytics 0, 1.0, 9.0
set bmargin 4
set lmargin 7
set rmargin 5
plot 'Dados_Malus.dat' using 1:2 with linespoints lw 2 pt 7 ps 1 title 'Intensidade', '' using 1:3 with lines lw 2 title 'Lei de Malus'
pause -1
