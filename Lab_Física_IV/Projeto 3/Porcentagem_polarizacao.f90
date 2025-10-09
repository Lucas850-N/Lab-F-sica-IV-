program Porcentagem_polarizacao

    !Declaração de variáveis
    real(8) :: I_max, I_min, P, delta_I_max, delta_I_min, delta_P

    I_max = 0.0
    I_min = 0.0
    P = 0.0

    print *, "Escreva os valores de I_max e I_min, respectivamente"
    read *, I_max, I_min
    print *, "Escreva os valores das incertezas de I_máx e I_min, respectivamente"
    read *, delta_I_max, delta_I_min

    P = 100*((I_max - I_min)/(I_max + I_min))
    delta_P = (200*I_max*(delta_I_max + delta_I_min))/((I_max + I_min)**2)

    print ("(9X, A1, 20X, A7)"), "P", "Delta P"
    print *, P, delta_P

end program Porcentagem_polarizacao