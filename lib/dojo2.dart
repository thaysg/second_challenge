void main() {
//Primeira rodada vivos 1, 2, 3, 4, 5
//Segunda rodada vivos 1, 2, 4, 5
//Terceira rodada vivos 1, 2, 4
//Quarta rodada vivos 1, 4
//Quinta rodada vivos 4

  List<int> n = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
  ]; //Números de vivos
  int i = 1; //contador de vivos
  int k = 3; //contador de mortos
  print('Lista Inicial: $n');
  print('==========================');

  while (n.length > 1) {
    final int morto = n.removeAt(k - 1);
    print('O $iº a morrer: $morto');
    print('Ainda vivem: ${n.join(', ')}');
    print('==========================');
    i++;
    k = n.length;
  }
}
