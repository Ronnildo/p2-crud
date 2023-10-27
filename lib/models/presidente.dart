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
  double get salario => super.salario * 0.5;

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${super.nome}, Idade: $_idade, Salário: $salario, Tempo de Mandato: ${super.tempoContrato} Anos.";
  }
}
