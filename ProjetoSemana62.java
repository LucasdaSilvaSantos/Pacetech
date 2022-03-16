package projetosemana6.pkg2;
import java.util.Scanner;


        
public class ProjetoSemana62 {

    public static void main(String[] args) {
        int opcaoMenu, opcaoMenu1, opcaoMenu2;
        float valorDolar=0.0f; 
        float valorReal=0.0f;
        float  quantDolar, quantReal;
        float celsius=0.0f;
        float fahrenheit=0.0f; 
        
        Scanner leitorScanner = new Scanner(System.in);
        
        do{        
        System.out.println("1- Converter a Moeda.");
        System.out.println("2- Converter a Temperatura");
        System.out.println("3- Sair.");
        opcaoMenu =leitorScanner.nextInt();

            switch(opcaoMenu){
                case 1 ->  {
                System.out.println("1- Converter de Real para Dólar.");
                System.out.println("2- Converter de Dólar para Real.");
                    System.out.println("3- Voltar");
                opcaoMenu1 =leitorScanner.nextInt();
                if (opcaoMenu1 == 1){
                    System.out.println("Informe a cotação do Dolar: ");
                    valorDolar = leitorScanner.nextFloat();
                    System.out.println("Informe quantos Dólares deseja comprar");
                     quantDolar = leitorScanner.nextFloat();
                     valorReal = valorDolar * quantDolar;
                     System.out.println("Você precisa de R$ "+ valorReal+" reais");                    
                }else{
                    if(opcaoMenu1 == 2){
                        System.out.println("Informe a cotação do Real.");
                        valorReal = leitorScanner.nextFloat();
                        System.out.println("Informe quantos Reais deseja comprar.");
                        quantReal = leitorScanner.nextFloat();
                        valorDolar = valorReal * quantReal;
                        System.out.println("Você precisa de U$ "+ valorDolar+" dólares");
                    }
                }   
}
                case 2 ->  {
                System.out.println("1- Converter de Celsius para Fahrenheit.");
                System.out.println("2- Converter de Fahrenheit para Celsius.");
                System.out.println("3- Voltar");
                opcaoMenu2 = leitorScanner.nextInt();
                if(opcaoMenu2 ==1){
                    System.out.println("Informe a temperatura em Celsius.");
                    celsius =leitorScanner.nextFloat();
                    fahrenheit = (celsius * 1.8f) + 32;
                    System.out.println("A temperatura é " + fahrenheit+" graus Fahrenheit.");
                }else{
                    if(opcaoMenu2 ==2){
                        System.out.println("Informe a temperatura em Fahrenheit.");
                        fahrenheit = leitorScanner.nextFloat();
                        celsius = (fahrenheit - 32) / 1.8f;
                        System.out.println("A temperatura é " + celsius + " graus Celsius");
                    }
                }
}
                default -> {
                }
}
        }while(opcaoMenu !=3);{
    }
        System.out.println("Fim do Programa");
    }
    
}
