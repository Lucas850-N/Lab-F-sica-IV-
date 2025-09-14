program Equacao_dos_fabricantes_de_lentes

!Declaração de variáveis
implicit none
real :: n = 1.51
real :: f, R_1, R_2, inverso_f
real :: I_f, I_R_1, I_R_2 !Incertezas de todos os termos

!Usuário coloca os dados que quer para fazer as contas
print *, "Insira os valores de R_1 e R_2, respectivamente"
read *, R_1, R_2
print *, "Insira as incertezas de R_1 e R_2, respectivamente"
read *, I_R_1, I_R_2

inverso_f = (n-1.0)*((1.0/R_1)+(1.0/R_2))
f = inverso_f**(-1.0)
I_f = (((R_1*R_2)/((n-1.0)*(R_2+R_1)))**2.0)*(n-1.0)*(((I_R_1*(R_2**2.0))+(I_R_2*(R_1**2.0)))/((R_1**2.0)*(R_2**2.0)))


print '(3X,A1,16X,A9)', "f", "Incerteza"
print *, f, I_f 


end program Equacao_dos_fabricantes_de_lentes
