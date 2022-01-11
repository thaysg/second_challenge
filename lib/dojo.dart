void main() {
//Primeira rodada vivos 1, 2, 3, 4, 5
//Segunda rodada vivos 1, 2, 4, 5
//Terceira rodada vivos 1, 2, 4
//Quarta rodada vivos 1, 4
//Quinta rodada vivos 4

  List<int> n = [1, 2, 3, 4, 5]; //Números de vivos
  int i = 1; //contador de vivos
  int k = 3; //contador de mortos
  print('Lista Inicial: $n');
  print('==========================');
  //Começa do 1 ate o 3, o primeiro a morrer é o 3
  //resta 1, 2, 4, 5
  final int morto = n.removeAt(k - 1); //PRIMEIRO A MORRER
  print('O $iº a morrer: $morto');
  print('Ainda vivem: ${n.join(', ')}');
  print('==========================');

  //A cada nova rodada, a lista reseta

  if (n.length > 1) {
    i++;
    k = n.length;
    //Começa do 2 ate o 5, o segundo a morrer é o 5
    //resta 1, 2, 4
    final int morto = n.removeAt(k - 1); //SEGUNDO A MORRER
    print('O $iº a morrer: $morto');
    print('Ainda vivem: ${n.join(', ')}');
    print('==========================');
    if (n.length > 1) {
      i++;
      k = n.length;
      //Começa do 4 ate o 2, o terceiro a morrer é o 2
      //resta 1, 4
      final int morto = n.removeAt(k - 1); //TERCEIRO A MORRER
      print('O $iº a morrer: $morto');
      print('Ainda vivem: ${n.join(', ')}');
      print('==========================');
      if (n.length > 1) {
        i++;
        k = n.length;
        //Começa do 1 ate o 4, o quarto a morrer é o 1
        //resta 4
        final int morto = n.removeAt(k - 1); //QUARTO A MORRER
        print('O $iº a morrer: $morto');
        print('Ainda vivem: ${n.join(', ')}');
        print('==========================');
      }
    }
  }
}
