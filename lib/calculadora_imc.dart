import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:calculadora_imc/exceptions/altura_invalida_exception.dart';
import 'package:calculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:calculadora_imc/exceptions/peso_invalido_exception.dart';
import 'package:calculadora_imc/utils/console_utils.dart';
import 'package:calculadora_imc/utils/imc.dart';

void execute () {
  print("Bem-vindo(a) à Calculadora de IMC!");
  String nome;
  double? altura;
  double? peso;

  try {
    nome = ConsoleUtils.lerStringComTexto("Digite o seu nome:");
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }

    peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso:");
    if (peso == null || peso <= 0.0) {
      throw PesoInvalidoException();
    }

    altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura:");
    if (altura == null || altura <= 0.0) {
      throw AlturaInvalidaException();
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException());
    exit(0);
  } on PesoInvalidoException {
    print(PesoInvalidoException());
    exit(0);
  } on AlturaInvalidaException {
    print(AlturaInvalidaException());
    exit(0);

  } catch (e) {
    print(e);
    exit(0);
  }

  var pessoa = Pessoa(nome, peso, altura);
  Imc imc = Imc();
  imc.calcular(pessoa.getPeso(), pessoa.getAltura());

}
