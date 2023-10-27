import 'package:crud/models/funcionario.dart';

class Jogador extends Funcionario {
  String _posicao;
  int _idade;
  Jogador(
    super.nome,
    super.sobrenome,
    super.salario,
    this._posicao,
    this._idade,
    super._tempoContrato,
  );

  @override
  // TODO: implement salario
  double get salario => super.salario * 0.8;

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${super.nome}, Idade: $_idade, Posição: $_posicao, Salário: ${salarioMensal()}, Tempo de Contrato: ${super.tempoContrato} Anos.";
  }

  String salarioMensal() {
    return (salario / 12).toStringAsFixed(2);
  }
}