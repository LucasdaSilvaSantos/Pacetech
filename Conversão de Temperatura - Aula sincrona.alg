algoritmo "Convers�o de temperatura"
//Dia de produ��o: 22/02/2022
//Fun��o: converter de Fahrenheit para Celsius
var
Fahrenheit, Celsius:real
inicio
//ENTRADA DE DADOS
Escreval("Digite aqui a temperatura: ")
Leia(Fahrenheit)
//PROCESSAMENTO
Celsius <-(Fahrenheit-32)/1.8
se celsius <=15 entao
   Escreval("Est� frio, com temperatura de ",celsius:4:1,"�C.")
senao
   se (celsius >= 15) e (celsius <= 28) entao
      Escreval("Est� agrad�vel, com temperatura de ",celsius:4:1,"�C.")
   senao
      Escreval("Est� quente, com a temperatura de ",celsius:4:1,"�C.")
   fimse
fimse
fimalgoritmo
