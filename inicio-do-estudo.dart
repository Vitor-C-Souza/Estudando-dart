
import 'dart:io';

main() {
  const double dinheiro = 2000.24;
  final String nome = "vitor";
  var duration = Duration(seconds: 1);

  const int tabuada = 48;

  int resultado;

  print(nome);
  print(dinheiro);

  List<String> TrioParadaDura = ["Vítor", "Kath", "Lucas"];
  List<dynamic> aleatoriedades = ["Vítor", true, 2];

  print(TrioParadaDura);

  print(aleatoriedades);

  print('qual a sua idade:');
  String? input = stdin.readLineSync();
  
  if(input != null){
    var idade = int.parse(input);

  if (idade >= 18){
    print("maior de idade");
  } else {
    print('menor de idade');
  }
  }
  
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
  int j = -1;
  print('tabuada');
  do {
    j++;

    resultado = tabuada * j;

    print('$tabuada x $j = $resultado');

    if (j == 10) {
      break;
    }

    sleep(duration);
  } while (true);

  for (int i = 0; i < 10; i++) {
    print('Os Quase-Vingadores tem $i novos membros!');
  }
}
