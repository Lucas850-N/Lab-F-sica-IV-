!Esse código calcula o Raio de curvatura a partir da equação 8 do livro de lab de Física IV
program Calculo_R
  implicit none
  integer :: i, iteracoes_maximas
  real, dimension(3) :: a, b, L, R
  real, dimension(3) :: incerteza_a, incerteza_b, incerteza_L, incerteza_R
  real :: R_media, incerteza_media

  do i = 1, 3
    call Calculo_R_qualquer(a(i), b(i), L(i), R(i), &
                            incerteza_a(i), incerteza_b(i), incerteza_L(i), incerteza_R(i))
  end do

  call Media_R(R, incerteza_R, R_media, incerteza_media)
   print '(8x, A1, 12x, A9)', "R", "Incerteza"
   do i = 1,3
    print *, R(i), incerteza_R(i)
   end do
   print *, ""
   print '(4x, A9, 7x, A17)', "R médio", "Incerteza média"
   print *, R_media, incerteza_media
  
  contains

      subroutine Calculo_R_qualquer(a, b, L, R, incerteza_a, incerteza_b, incerteza_L, incerteza_R)
        real :: a, b, L, R
        real :: incerteza_a, incerteza_b, incerteza_L, incerteza_R
        print *, "Insira os valores para a, b e L, respectivamente"
        read *, a, b, L
        print *, "Insira os valores das incertezas de a, b e L, respectivamente"
        read *, incerteza_a, incerteza_b, incerteza_L
        R = (2*a*L)/b
        incerteza_R = (((2*a*incerteza_b+2*b*incerteza_a)/(b**2))*L)+(((2*a)/b)*incerteza_L)
      end subroutine

      subroutine Media_R(array_R, array_inc_R, R_media, media_inc)
      ! Declaração dos argumentos
      real, dimension(:) :: array_R, array_inc_R
      real :: R_media, media_inc

      R_media   = sum(array_R) / size(array_R)
      media_inc = sum(array_inc_R) / size(array_R)
    
    end subroutine

             
end program Calculo_R

