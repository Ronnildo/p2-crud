class CrudException implements Exception {
  final String mensagem;
  CrudException(this.mensagem);

  @override
  String toString() {
    return super.toString();
  }
}

class EntradaException extends CrudException {
  EntradaException(super.mensagem);
}

class RetornoException extends CrudException {
  RetornoException(super.mensagem);
}
