class PersistenciaLocal{
  void main() {
  
  Ex1();
  print('Iniciando aplicação:');
  print('Carregando interface de usuário:');
  print('Carregando arquivos do banco de dados:...');
  Ex3();
}

// nesse 1° exemplo uso o await para que ele espere a segunda função Ex2 ser executada para que 
// só assim a mesma é executada.
Future Ex1() async{
  await Ex2();
  print('Inicialização completa:');
}

// nesse 2° exemplo eu determino para que a função seja executada de acordo com o tempo que foi determinado
Future Ex2(){
  return Future.delayed(Duration(seconds: 2),()=> print('Arquivos carregados:')); 
}

// neste 3° e ultino exemplo uso o Future dendro de uma variável e do mesmo jeito do exemplo anterior 
// determino um tempo para que ele seja executado.
Ex3(){
  var fim = Future.delayed(Duration(seconds: 3), ()=> print('Fim'));
}

/*
  Future: Usado para liberar outros segmentos, evitando o bloqueio de outros threads.
          Ex: Essa função vai retornar um dado do futuro.
  Await:  Ultiliza-se no inicio da chamada do método informando que é necessário esperar uma resposta de uma 
          função antes de continuar a execução, permitindo assim que rode os demais seguimentos em paralelo.
  Async:  Ultilizado no final da declaração do método, informa que essa função é assíncrona e em algum momento 
          dela talvez eu precise esperar para pegar algum dado.
  Programação Assincrona:
          Na programação assincrona temos a possibilidade de executar primeiramente carregamento de arquivos 
          mais pesados, como requisições do banco de dados, e em paralelo executar as demais funções, sem que 
          a aplicação pare de rodar.
*/

/*
  No script do DB primeiramente criamos uma váriavel que guarda o comando para criação de tabela e depois executamos;
  Ex: CREATE TABLE IF NOT EXISTS nomeTabela(
    id INT PRIMARY KEY,
    col1 VARCHAR(255) NOT NULL,
    col2 VARCHAR(255) NOT NULL,
    col3 VARCHAR(255) NOT NULL
  )

  outros comandos para inserir os dados na tabela criada.
  Ex: INSERT INTO nomeTabela(col1, col2, col3)
  VALUES('dados1','dados2','dados3')
*/
}