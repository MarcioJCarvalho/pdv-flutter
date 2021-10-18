import 'dart:io';
void main(List<String> arguments) {
  print('digite seu nome:');
  var nome = stdin.readLineSync();

  print('digite sua nota do 1° bimestre');
  var entrada1b = stdin.readLineSync();
  var n1 = int.parse(entrada1b);

  print('digite sua nota do 2° bimestre');
  var entrada2b = stdin.readLineSync();
  var n2 = int.parse(entrada2b);

  print('digite sua nota do 3° bimestre');
  var entrada3b = stdin.readLineSync();
  var n3 = int.parse(entrada3b);

  print('digite sua nota do 4° bimestre');
  var entrada4b = stdin.readLineSync();
  var n4 = int.parse(entrada4b);

  var media = (n1 + n2 + n3 + n4) / 4;
  if (media > 10) media = 10;
  if (media < 7) {
    print('Sinto muito ! \n sua media foi de:  você esta de recuperação');
    print('Por favor digite a sua nota de recuperação:');
    var entradaRec = stdin.readLineSync();
    var recuperacao = int.parse(entradaRec);

    if (recuperacao < 7)
      print('Sinto muito você foi reprovado! \n Sua nota final foi de ');
    else
      print('Parabéns !!! \n você foi aprovado com nota ');
  } else
    print('Parabéns !!! \n você foi aprovado com nota ');
}
