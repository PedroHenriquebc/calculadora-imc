import 'dart:math';

class Imc {

  calcular(double peso, double altura) {

    double imc = peso / (pow(altura, 2));
    String imcFormatado = imc.toStringAsFixed(2);

    switch (imc) {
      case < 16:
        print("Seu IMC é: $imcFormatado - Magreza grave");
        break;
      case (>= 16 && < 17):
        print("Seu IMC é: $imcFormatado - Magreza moderada");
        break;
      case (>= 17 && < 18.5):
        print("Seu IMC é: $imcFormatado - Magreza leve");
        break;
      case (>= 18.5 && < 25):
        print("Seu IMC é: $imcFormatado - Saudável");
        break;
      case (>= 25 && < 30):
        print("Seu IMC é: $imcFormatado - Sobrepeso");
        break;
      case (>= 30 && < 35):
        print("Seu IMC é: $imcFormatado - Obesidade Grau I");
        break;
      case (>= 35 && < 40):
        print("Seu IMC é: $imcFormatado - Obesidade Grau II (Severa)");
        break;
      case (>= 40):
        print("Seu IMC é: $imcFormatado - Obesidade Grau III (Mórbida)");
        break;
    }
  }
}
