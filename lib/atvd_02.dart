void main(List<String> args) {
  var nomes = ['Marcio', 'Gabriel', 'Joice', 'James'];
  var meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  nomes.forEach(imprimir);
  //função anônima
  /*
  meses.forEach((String meses) {
    print(meses);
  });
  */

  meses.forEach(print);
}

//função nomeada
void imprimir(String nome) {
  print(nome);
}
