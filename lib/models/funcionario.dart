abstract class Funcionario {
  late String _nome;
  late String _sobrenome;
  late double _salario;
  int _tempoContrato;

  Funcionario(this._nome, this._sobrenome, this._salario, this._tempoContrato);

  set nome(String nome) => _nome = nome;
  String get nome => _nome;

  set salario(double salario) => _salario = salario;
  double get salario => _salario;

  set sobrenome(String sobrenome) => _sobrenome = sobrenome;
  String get sobrenome => _sobrenome;

  set tempoContrato(int tempo) => _tempoContrato = tempo;
  int get tempoContrato => _tempoContrato;
}
