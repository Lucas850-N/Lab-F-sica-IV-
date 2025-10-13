program lei_fenomenologica

    !Declaração de variáveis 
    implicit none
    integer :: i, dim_Total
    real, allocatable, dimension(:) :: theta, alpha, L, C 

    Print *, "Insira a quantidade de valores de L, C e theta do experimento"
    read *,  dim_Total

    allocate(theta(dim_Total), alpha(dim_Total), L(dim_Total), C(dim_Total))

    do i = 1, dim_Total

        print *, "Insira o ", i, "Valor de L"
        read *, L(i)
    
    end do

    do i = 1, dim_Total

        print *, "Insira o ", i, "Valor de C"
        read *, C(i)
    
    end do

    do i = 1, dim_Total

        print *, "Insira o ", i, "Valor de theta"
        read *, theta(i)
    
    end do 

    do i = 1, dim_Total

        alpha(i) = theta(i)/(C(i)*L(i))
    
    end do

    print *, "Alpha"
    do i = 1, dim_Total

        print *, alpha(i)

    end do
    
end program lei_fenomenologica