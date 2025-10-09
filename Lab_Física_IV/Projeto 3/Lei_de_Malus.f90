program Lei_de_Malus

  !Declaração de variáveis
  real, dimension(12) :: theta, V
  integer :: i

  theta = [15, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180]
  V = [5.89, 4.69, 3.29, 1.79, 0.71, 0.33, 0.73, 1.81, 3.32, 4.74, 5.76, 6.00]

open(unit=1, file="Dados_Malus.dat", status="Replace", action="Write")

do i = 1, 12
  
  write(1, *) theta(i), V(i)

end do

close(1)

open(unit=2, file="script_para_gráfico.gp", status="Replace", action="Write")

write(2, *) "reset"
write(2, *) "set grid"
write(2, *) "set title 'Variação da intensidade com a angulação'"
write(2, *) "set grid"
write(2, *) "set xrange [0:180]"
write(2, *) "set yrange [0:7.0]"
write(2, *) "set xtics 0, 15, 180"
write(2, *) "set ytics 0, 1, 7.0"
write(2, *) "set key top center"
write(2, *) "plot 'Dados_Malus.dat' using 1:2"

close(2)

end program Lei_de_Malus
