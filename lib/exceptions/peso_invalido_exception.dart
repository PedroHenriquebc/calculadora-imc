class PesoInvalidoException implements Exception {
  
  String error() => "Peso inválido!";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}