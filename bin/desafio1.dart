import 'dart:io';

void main(List<String> arguments) {
  var loop = true;

  while (loop) {
    num numero;

    while (true) {
      stdout.write('Digite um número inteiro positivo: ');
      numero = num.parse(stdin.readLineSync()!);
      if (numero is double) {
        stdout.writeln('O número deve ser inteiro!!');
      } else if (numero < 0) {
        stdout.writeln('O número deve ser maior que zero!!');
      } else {
        break;
      }
    }

    var somatorio = 0;

    numero--;
    for (var i = int.parse(numero.toString()); i >= 3; i--) {
      if (i % 5 == 0 || i % 3 == 0) {
        somatorio += i;
      }
    }
    stdout
        .writeln('Somatório dos números divisíveis por 3 ou 5 ==> $somatorio');

    stdout.writeln('Deseja continuar executando? (S/N)');
    if (stdin.readLineSync()! == 'N') {
      loop = false;
    }
  }
}
