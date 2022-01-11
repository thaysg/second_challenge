void main() {
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Maria Silva|30|Feminino',
    'João Silva|25|Masculino',
    'Joaquim|84|Masculino',
    'Helena|40|Feminino',
    'José|45|Masculino',
    'Leonardo|5|Masculino',
    'Laura|25|Feminino',
    'Helena|40|Feminino',
    'Leonardo|5|Masculino',
  ];

  //!Remova os pacientes duplicados e apresente a nova lista

  final lista = pessoas.toSet().toList();
  print(lista);

  print('=========================================================');
  //!Mostre a quantidade de pessoas por sexo(Masculino e Feminino) e depois
  //!apresente o nome delas

  final sexo = <String, List<String>>{};
  for (var item in lista) {
    final pessoa = item.split('|');
    final nome = pessoa[0];
    final sexoPessoa = pessoa[2];

    if (sexo.containsKey(sexoPessoa)) {
      sexo[sexoPessoa]!.add(nome);
    } else {
      sexo[sexoPessoa] = [nome];
    }
  }
  print(sexo);

  print('=========================================================');

  //!Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente
//!o nome delas

  final listaFiltrada = lista.where((item) {
    final pessoa = item.split('|');
    final idade = int.parse(pessoa[1]);
    return idade >= 18;
  }).toList();
  print(listaFiltrada);

  print('=========================================================');

  //!Encontre a pessoa mais velha e apresente o nome dela

  final pessoaMaisVelha = lista.reduce((a, b) {
    final pessoaA = a.split('|');
    final pessoaB = b.split('|');
    final idadeA = int.parse(pessoaA[1]);
    final idadeB = int.parse(pessoaB[1]);
    return idadeA > idadeB ? a : b;
  });
  print(pessoaMaisVelha);
}
