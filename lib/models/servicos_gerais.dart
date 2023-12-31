import 'package:crud/models/funcionario.dart';
import 'package:crud/models/setor_enum.dart';

class ServicosGerais extends Funcionario {
  Atribuicao _setor;
  ServicosGerais(
    super.nome,
    super.sobrenome,
    super.salario,
    this._setor,
    super._tempoContrato,
  );

  double salarioTipoFuncionario() {
    if (Atribuicao.auxiliarLimpeza == _setor) {
      return super.salario + (super.salario * 0.2);
    } else if (Atribuicao.porteiro == _setor) {
      return super.salario + (super.salario * 0.3);
    } else if (_setor == Atribuicao.zelador) {
      return super.salario + (super.salario * 0.4);
    }
    return super.salario;
  }

  get setor => _setor.name;

  @override
  String toString() {
    // TODO: implement toString
    return "Nome: ${super.nome}, Salário: $salario, Função: $setor, Tempo de Mandato: ${super.tempoContrato} Anos.";
  }
}
