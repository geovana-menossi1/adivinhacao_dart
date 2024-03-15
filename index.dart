import 'dart:io';
import 'dart:math';

void main() {
  print("Bem-vindo ao jogo! Escolha um nível:");
  print("1. Fácil");
  print("2. Médio");
  print("3. Difícil");

  int? nivelEscolhido = int.parse(stdin.readLineSync()!);

  switch (nivelEscolhido) {
    case 1:
      jogarFacil();
      break;
    case 2:
      jogarMedio();
      break;
    case 3:
      jogarDificil();
      break;
    default:
      print("Opção inválida. Escolha um número de 1 a 3.");
  }
}

void jogarFacil() {
  print("Nível Fácil: Adivinhe um número de 1 a 100.");
  print("");

  int numeroSorteado = Random().nextInt(100) + 1;
  int tentativas = 0;
  int? chute;

  do {
    print("Tentativa ${tentativas + 1}:");
    chute = int.parse(stdin.readLineSync()!);
    tentativas++;

    if (chute < numeroSorteado) {
      print("Tente um número maior.");
    } else if (chute > numeroSorteado) {
      print("Tente um número menor.");
    }
  } while (chute != numeroSorteado);

  print("Parabéns! Você acertou em $tentativas tentativas.");
}

void jogarMedio() {
  print("Nível Médio: adivinhe um número de 1 a 500");
  print("");

  int numeroSorteado = Random().nextInt(500) + 1;
  int tentativas = 0;
  int? chute;

  do {
    print("Tentativa ${tentativas + 1}:");
    chute = int.parse(stdin.readLineSync()!);
    tentativas++;

    if (chute < numeroSorteado) {
      print("Tente um número maior.");
    } else if (chute > numeroSorteado) {
      print("Tente um número menor.");
    }
  } while (chute != numeroSorteado);

  print("Parabéns! Você acertou em $tentativas tentativas.");
}

void jogarDificil() {
  print("Nível Difícil: adivinhe um número de 1 a 1000");
  print("");

  int numeroSorteado = Random().nextInt(1000) + 1;
  int tentativas = 0;
  int? chute;

  do {
    print("Tentativa ${tentativas + 1}:");
    chute = int.parse(stdin.readLineSync()!);
    tentativas++;

    if (chute < numeroSorteado) {
      print("Tente um número maior.");
    } else if (chute > numeroSorteado) {
      print("Tente um número menor.");
    }
  } while (chute != numeroSorteado);

  print("Parabéns! Você acertou em $tentativas tentativas.");
}
