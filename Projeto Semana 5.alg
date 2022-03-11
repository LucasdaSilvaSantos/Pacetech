algoritmo "Projeto Semana 5"
// Função :Converter e Dizer o horário da temperatura.
// Autor :Lucas da Silva Santos
// Data : 09/03/2022
var
opcaoMenu:literal
temperatura, temperatura1:vetor[1..4] de real
hora:vetor[1..4] de caracter
i,j,k:inteiro
aux,aux1:real
aux2,parar:caracter
procedimento mostrarMenu()
inicio
escreval("O que deseja fazer?")
escreval("1- Converter Celsius para Fahrenheit")
escreval("2- Converter Fahrenheit para Celsius")
escreval("3- Sair")
leia(opcaoMenu)
fimprocedimento
funcao cTemperatura():real
inicio
para i de 1 ate 4 faca
   temperatura1[i] <- temperatura[i] * 1.8 + 32
fimpara

fimfuncao
funcao fTemperatura():real
inicio
para i de 1 ate 4 faca
   temperatura1[i] <- (temperatura[i]-32)/1.8
fimpara

fimfuncao
Procedimento ordenaC()
inicio
para i de 1 ate 4 faca
         para j de 1 ate 4 faca
            se temperatura[j] > temperatura[i] entao
               aux <- temperatura[i]
               temperatura[i] <- temperatura[j]
               temperatura[j] <- aux

               aux1 <- temperatura1[i]
               temperatura1[i] <- temperatura1[j]
               temperatura1[j] <- aux1

               aux2 <- hora[i]
               hora[i] <- hora[j]
               hora[j] <- aux2

            fimse
         fimpara
      fimpara
fimprocedimento
procedimento ordenaF()
inicio
para i de 1 ate 4 faca
         para j de 1 ate 4 faca
            se temperatura[j] > temperatura[i] entao
               aux <- temperatura[i]
               temperatura[i] <- temperatura[j]
               temperatura[j] <- aux

               aux1 <- temperatura1[i]
               temperatura1[i] <- temperatura1[j]
               temperatura1[j] <- aux1

               aux2 <- hora[i]
               hora[i] <- hora[j]
               hora[j] <- aux2

            fimse
         fimpara
      fimpara
fimprocedimento
inicio
repita
   mostrarMenu()
   escolha opcaoMenu
   caso "1"
      para i de 1 ate 4 faca
         escreval("Informe a ",i,"ª temperatura registrada.")
         leia(temperatura[i])
         escreval("Informe o horário que a",i,"ª temperatura foi registrada (HH:MM)?")
         leia(hora[i])
      fimpara
      escreval(cTemperatura)
         ordenaC()
         para i de 1 ate 4 faca
    escreval("Temperatura ",temperatura[i]," graus Celsius, às ",hora[i]," corresponde a ",temperatura1[i]:3:1," graus Fahrenheit")
    fimpara
   caso "2"
      para i de 1 ate 4 faca
         escreval("Informe a ",i,"ª temperatura registrada.")
         leia(temperatura[i])
         escreval("Informe o horário que a",i,"ª temperatura foi registrada (HH:MM)?")
         leia(hora[i])
      fimpara
      escreval(fTemperatura)
        ordenaF()
       para i de 1 ate 4 faca
    escreval("Temperatura ",temperatura[i]," graus Fahreheit, às ",hora[i]," corresponde a ",temperatura1[i]:3:1," graus Celsius")
    fimpara
   fimescolha
    escreval("Pressione qualquer tecla para continuar...")
   leia(parar)
   limpatela
ate opcaoMenu = "3"

fimalgoritmo
