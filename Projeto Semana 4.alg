algoritmo "Projeto Semana 4"
//Função:Converter a Temperatura e a Moeda
//Autor:Lucas da Silva Santos
//Data: 01/03/2022
var
opcaoMenu, opcaoMenu1, opcaoMenu2 : inteiro
valorDolar, valorReal, fahrenheit, celsius, quantidadeDolar, quantidadeReal : real
parar : caracter
inicio
//ENTRADA DE DADOS
repita
   escreval("1 - Converter a Temperatura.")
   escreval("2 - Converter a Moeda.")
   escreval("3 - Sair.")
   leia(opcaoMenu)
   limpatela
   //Processamento
   se opcaoMenu = 1 entao
      escreval("1 - Converter de Fahrenheit para Celsius")
      escreval("2 - Converter de Celsius para Fahrenheit")
      leia(opcaoMenu1)
      se opcaoMenu1 = 1 entao
         escreval("Informar temperatura em Fahrenheit: ")
         leia(fahrenheit)
         celsius <- (fahrenheit-32)/1.8
         escreval("A temperatura em Celsius é: ", celsius:4:1,"°C")
      senao
         se opcaoMenu1 = 2 entao
            escreval("Informar a temperatura em Celsius: ")
            leia(celsius)
            fahrenheit <- (celsius * 1.8) + 32
            escreval("A temperatura em Fahrenheit é: ", fahrenheit:4:1,"°F")
         fimse
      fimse
   senao
      se opcaoMenu = 2 entao
         escreval("1 - Converter de Dólar para Real")
         escreval("2 - Converter de Real para Dólar")
         leia(opcaoMenu2)
         se opcaoMenu2 = 1 entao
            escreval("Informe a cotação atual do Dólar:")
            leia(valorDolar)
            escreval("Informe quantos dólares você deseja comprar.")
            leia(quantidadeDolar)
            valorReal <- valorDolar * quantidadeDolar
            escreval("Você precisa de R$ ",valorReal:5:2," reais")
         senao
            se opcaoMenu2 = 2 entao
               escreval("Informe a cotação do Real:")
               leia(valorReal)
               escreval("Informe quantos reais você deseja comprar.")
               leia(quantidadeReal)
               valorDolar <- valorReal * quantidadeReal
               escreval("Você precisa de U$ ",valorDolar:5:2," dólares")
            fimse
         fimse
      fimse
   fimse
   escreval("Pressione qualquer tecla para continuar")
   leia(parar)
   limpatela
ate opcaoMenu = 3
fimalgoritmo
