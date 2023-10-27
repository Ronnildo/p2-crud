abstract class Funcionario {
  late String _nome;
  late String _sobrenome;
  late double _salario;
  int _tempoContrato;

  Funcionario(this._nome, this._sobrenome, this._salario, this._tempoContrato);

  double get salario => _salario;

  int get tempoContrato => _tempoContrato;

  String get nome => _nome;
}
