import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble(){
    var line = lerString();
    try {
      return double.parse(line);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}