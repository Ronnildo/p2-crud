import 'package:crud/models/funcionario.dart';

class Treinador extends Funcionario {
  int _idade;
  Treinador(
    super.nome,
    super.sobrenome,
    super.salario,
    this._idade,
    super._tempoContrato,
  );

  get idade => _idade;
  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${super.nome}, Idade: $_idade, Salário: $salario, Tempo de Contrato: ${super.tempoContrato} Anos.";
  }
}
