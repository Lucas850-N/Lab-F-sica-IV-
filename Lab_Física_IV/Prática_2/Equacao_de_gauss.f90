program Equacao_de_gauss

!Declaração de variáveis
real :: f, s, s_linha, inverso_s_linha, o, o_linha
real :: I_f, I_s, I_s_linha, I_o, I_o_linha !Incertezas referentes às variáveis acima

!Pede para o usuário inserir os valores das variáveis
print *, "Insira as variáveis f, s e o, respectivamente"
read *, f, s, o
print*, "Insira as incertezas de f, s e o, respectivamente"
read *, I_f, I_s, I_o

!Comandos para a execução da equação de gauss e da sua incerteza
inverso_s_linha = 1/f - 1/s
s_linha = inverso_s_linha**(-1)
I_s_linha = ((s*f/(s-f))**2)*((I_f/(f**2))+(I_s/(s**2)))
print "(3X, A2, 17X, A12)", "S'", "Incerteza S'"
print *, s_linha, I_s_linha

!Comandos para o cálculo das propriedades da imagem
o_linha = -o*(s_linha/s)
I_o_linha = o*((s_linha*I_s + s*I_s_linha)/s**2) + (s_linha/s)*I_o
print "(3X, A2, 17X, A12)", "O'", "Incerteza O'"
print *, o_linha, I_o_linha

end program Equacao_de_gauss

