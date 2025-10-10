program Lei_de_Malus

  !Declaração de variáveis
  implicit none
  real :: pi, Intensidade_max
  real, dimension(12) :: theta, V, theta_rad
  real, dimension(13) :: Intensidade
  integer :: i

  pi = 4.0*atan(1.0)
  Intensidade_max= 8.03
  theta = [15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180]
  V = [5.89, 4.69, 3.29, 1.79, 0.71, 0.33, 0.73, 1.81, 3.32, 4.74, 5.76, 6.00]

  do i = 1, 12

    theta_rad(i) = theta(i)*(pi/180.0)

  end do

  do i = 1, 12

    Intensidade(i) = Intensidade_max*cos(theta_rad(i))**2

  end do


open(unit=1, file="Dados_Malus.dat", status="Replace", action="Write")

do i = 1, 12
  
  write(1, *) theta(i), V(i), Intensidade(i)

end do

close(1)

open(unit=2, file="script_para_gráfico.gnu", status="Replace", action="Write")

write(2, '(a)') "set terminal qt font 'Montserrat, 12'"
write(2, '(a)') "set title 'Variação da intensidade em relação à angulação' font 'Montserrat Bold, 17'"
write(2, '(a)') "set xlabel 'Ângulo {/Symbol q} (graus)' font 'Montserrat Bold, 12'"
write(2, '(a)') "set ylabel 'Intensidade (V)' font 'Montserrat Bold, 12'"
write(2, '(a)') "set grid"
write(2, '(a)') "set xrange [0:180]"
write(2, '(a)') "set yrange [0:9]"
write(2, '(a)') "set xtics 0, 15, 180"
write(2, '(a)') "set ytics 0, 1.0, 9.0"
write(2, '(a)') "set bmargin 4"
write(2, '(a)') "set lmargin 7"
write(2, '(a)') "set rmargin 5"
write(2, '(a)') "plot 'Dados_Malus.dat' using 1:2 with linespoints lw 2 pt 7 ps 1 title 'Intensidade', &
&'' using 1:3 with lines lw 2 title 'Lei de Malus'"
write(2, '(a)') "pause -1"


close(2)

call system('gnuplot script_para_gráfico.gnu')

end program Lei_de_Malus
