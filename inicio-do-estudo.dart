//imports
import 'dart:io';

//variaveis
var duration = Duration(seconds: 1);
const double dinheiro = 2000.24;
final String nome = "vitor";
const int tabuada = 63;
int? resultado;
List<String> TrioParadaDura = ["Vítor", "Kath", "Lucas"];
List<dynamic> aleatoriedades = ["Vítor", true, 2];
bool? falha;

main() {

  //estanciando classe
  var tutoriais = new testes();

  do{
    falha = false;
  // menu
  print('escolha a sua opção: \n'
        '1 - entrada de dados \n'
        '2 - tabuada \n'
        '3 - exbir Dados \n'
        '4 - TestandoFor');
  String? input = stdin.readLineSync();

  if(input != null){
    int? op = int.parse(input);

    switch (op){
      case 1:{
        tutoriais.EntradaDeDados();
        break;
      }
      case 2:{
        tutoriais.tabuada(tabuada);
        break;
      }
      case 3:{
        tutoriais.exbirDados(); 
        break;
      }
      case 4:{
        tutoriais.TestandoFor();
        break;
      }             
      default:{
        print('opção inexistente');
        falha = true;
      } 
    }   
  }
  }while(falha == true);

  print('fim do programa');

}


class testes{

  void EntradaDeDados(){
    print('qual a sua idade:');
    String? input = stdin.readLineSync(); //entrada de dados
  
    if(input != null){
      int idade = int.parse(input);

      if (idade >= 18){
       print("maior de idade");
      } else {
      print('menor de idade');
      } 
    }
  }


  void tabuada(int tabuada){
    int count = -1;
    print('tabuada');
    do {
      count++;

      resultado = tabuada * count;

      print('$tabuada x $count = $resultado');

      if (count == 10) {
        break;
      }

      sleep(duration);
    } while (true);
  }

  void exbirDados(){
      print(nome + "\n");
      print( "$dinheiro \n");
      print("$TrioParadaDura \n");
      print(aleatoriedades);
  }

  void TestandoFor(){
    for (int i = 1; i <= 5; i++) {
      print(i);
    }
  }
}
