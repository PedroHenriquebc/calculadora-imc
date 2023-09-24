import 'package:calculadora_imc/exceptions/altura_invalida_exception.dart';
import 'package:calculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:calculadora_imc/exceptions/peso_invalido_exception.dart';
import 'package:test/test.dart';

void main() {
  test("Nome inválido", () {
    void lerNome(String? nome) {
      if (nome == null || nome.trim() == "") {
        throw NomeInvalidoException();
      }
    }

    expect(() => lerNome(null), throwsA(TypeMatcher<NomeInvalidoException>()));
    expect(() => lerNome(""), throwsA(TypeMatcher<NomeInvalidoException>()));
  });

  test("Altura inválida", () {
    void lerAltura(double? altura) {
      if (altura == null || altura <= 0.0) {
        throw AlturaInvalidaException();
      }
    }

    expect(
        () => lerAltura(null), throwsA(TypeMatcher<AlturaInvalidaException>()));
    expect(
        () => lerAltura(-5), throwsA(TypeMatcher<AlturaInvalidaException>()));
  });

  test("Peso inválido", () {
    void lerPeso(double? peso) {
      if (peso == null || peso <= 0.0) {
        throw PesoInvalidoException();
      }
    }

    expect(() => lerPeso(null), throwsA(TypeMatcher<PesoInvalidoException>()));
    expect(() => lerPeso(-5), throwsA(TypeMatcher<PesoInvalidoException>()));
  });
}
