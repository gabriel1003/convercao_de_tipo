import 'dart:io';
import 'convercao_para_decimal.dart';

void main() {
  int opcao = 0;
  do {
print("Bem-vindo a nossa calculadora de converção de tipos numéricos.\n"
+ "\tdigite (1) para converter de binario para decimal\n"
+"\tdigite (2) para converter de hexadecimal para decimal\n"
+ "\tou digite (0) para sair.\n"
+ "\t qual é a sua opção?");
opcao = int.parse(stdin.readLineSync()!);

switch (opcao) {
  case 1:
    while(true) {
      BinarioParaDecimal converssor = BinarioParaDecimal();
      print("Digite qual é o valor binario que você deseja converter para decimal ou  digite (v) para voltar ao menú: ");
      String value = stdin.readLineSync()!;

                // Verifica se a entrada contém apenas 0s e 1s
          if (!value.contains(RegExp(r'^[01vV]+$'))) {
            print("Entrada inválida. Digite apenas 0s e 1s.");
            continue; // Volta para o início do loop while
          }

      if (value.toLowerCase() == 'v') {
        print("voltando ao menú!");
        break;
      }
      print("o valor convertido é: ${converssor.converter(value)}");
    }
    break;
    case 2:
    while (true) {
      HexadecimalParaDecimal converssor = HexadecimalParaDecimal();
      print("Digite qual valor hexadecimal deseja converter para decimal ou, digite (v) para voltar ao menú: ");
      String value = stdin.readLineSync()!;

      if (value == 'v') {
        print("voltando ao menú!");
        break;
      }

      print("o valor que você digitou convertido para decimal é: ${converssor.hexaDecimalParaDecimal(value)}");
          }
          break;
  default:
}
  } while (opcao != 0);
}