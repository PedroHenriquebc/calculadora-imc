import 'package:calculadora_imc/utils/imc.dart';
import 'package:test/test.dart';

void main() {
  final Imc imc = Imc();

  group("Calcular IMC: ", () {
    var valoresTeste = {
      {"peso": 40, "altura": 1.75}: "Seu IMC é: 13.06 - Magreza grave\n",
      {"peso": 50, "altura": 1.75}: "Seu IMC é: 16.33 - Magreza moderada\n",
      {"peso": 56, "altura": 1.75}: "Seu IMC é: 18.29 - Magreza leve\n",
      {"peso": 60, "altura": 1.75}: "Seu IMC é: 19.59 - Saudável\n",
      {"peso": 80, "altura": 1.75}: "Seu IMC é: 26.12 - Sobrepeso\n",
      {"peso": 95, "altura": 1.75}: "Seu IMC é: 31.02 - Obesidade Grau I\n",
      {"peso": 110, "altura": 1.75}: "Seu IMC é: 35.92 - Obesidade Grau II (Severa)\n",
      {"peso": 130, "altura": 1.75}: "Seu IMC é: 42.45 - Obesidade Grau III (Mórbida)\n"
    };
    valoresTeste.forEach((key, value) {
      test("Entrada: $key Esperado: $value", () {
        expect(() => imc.calcular(
            double.parse(key["peso"].toString()),
            double.parse(key["altura"].toString())),
          prints(value));
      });
    });
  });
}
