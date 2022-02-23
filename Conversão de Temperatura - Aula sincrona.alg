algoritmo "Conversão de temperatura"
//Dia de produção: 22/02/2022
//Função: converter de Fahrenheit para Celsius
var
Fahrenheit, Celsius:real
inicio
//ENTRADA DE DADOS
Escreval("Digite aqui a temperatura: ")
Leia(Fahrenheit)
//PROCESSAMENTO
Celsius <-(Fahrenheit-32)/1.8
se celsius <=15 entao
   Escreval("Está frio, com temperatura de ",celsius:4:1,"°C.")
senao
   se (celsius >= 15) e (celsius <= 28) entao
      Escreval("Está agradável, com temperatura de ",celsius:4:1,"°C.")
   senao
      Escreval("Está quente, com a temperatura de ",celsius:4:1,"°C.")
   fimse
fimse
fimalgoritmo
