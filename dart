import 'package:meu_app_ex/meu_app_ex.dart' as meu_app_ex;

import 'dart:io';

void main() {
  stdout.write('Informe o seu peso em quilogramas: ');
  var peso = double.parse(stdin.readLineSync()!);


  stdout.write('Informe a sua altura em metros: ');
  var altura = double.parse(stdin.readLineSync()!);

  var imc = calcularIMC(peso, altura);

  print('Seu IMC é: $imc');
  interpretarIMC(imc);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void interpretarIMC(double imc) {
  if (imc < 18.5) {
    print('Você está abaixo do peso.');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Seu peso está saudável.');
  } else if (imc >= 25 && imc < 29.9) {
    print('Você está com sobrepeso.');
  } else if (imc >= 30 && imc < 34.9) {
    print('Você está com obesidade grau 1.');
  } else if (imc >= 35 && imc < 39.9) {
    print('Você está com obesidade grau 2.');
  } else {
    print('Você está com obesidade grau 3.');
  }
}
