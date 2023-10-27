import 'package:crud/models/funcionario.dart';

class Presidente extends Funcionario {
  int _idade;
  Presidente(
    super.nome,
    super.sobrenome,
    super.salario,
    super._tempoContrato,
    this._idade,
  );

  @override
  // TODO: implement salario
  double get salario => super.salario;

  set idade(int value) => _idade = value;
  int get idade => _idade;

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${super.nome}, Idade: $_idade, Salário: $salario, Tempo de Mandato: ${super.tempoContrato} Anos.";
  }
}
