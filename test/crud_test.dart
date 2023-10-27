import 'package:crud/controller/clube_controller.dart';
import 'package:crud/crud.dart';
import 'package:crud/models/funcionario.dart';
import 'package:crud/models/jogador.dart';
import 'package:crud/models/presidente.dart';
import 'package:crud/models/servicos_gerais.dart';
import 'package:crud/models/setor_enum.dart';
import 'package:crud/models/treinador.dart';
import 'package:test/test.dart';

void main() {
  group("Add Funcionario", () {
    test("Add Presidente test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Presidente(
        "Rau",
        "Raz",
        50000,
        4,
        65,
      );
      bool res = c.adicionarFuncionario(f);
      expect(res, true);
    });

    test("Add Treinador test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Treinador(
        "Rau",
        "Raz",
        50000,
        4,
        65,
      );
      bool res = c.adicionarFuncionario(f);
      expect(res, true);
    });

    test("Add Jogador test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Jogador(
        "Rau",
        "Raz",
        50000,
        "ATA",
        30,
        4,
      );
      bool res = c.adicionarFuncionario(f);
      expect(res, true);
    });

    test("Add Serviços Gerais test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Presidente(
        "Rau",
        "Raz",
        50000,
        4,
        65,
      );
      bool res = c.adicionarFuncionario(f);
      expect(res, true);
    });
  });
  group("Remove Funcionario", () {
    test("Remove Presidente test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Presidente(
        "Rau",
        "Raz",
        50000,
        4,
        65,
      );
      c.adicionarFuncionario(f);
      bool res = c.removerFuncionario("Presidente", "Rau");
      expect(res, true);
    });

    test("Remove Treinador test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Treinador(
        "Rau",
        "Raz",
        50000,
        4,
        65,
      );
      c.adicionarFuncionario(f);
      bool res = c.removerFuncionario("Treinador", "Rau");
      expect(res, true);
    });

    test("Remove Jogador test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = Jogador(
        "Rau",
        "Raz",
        50000,
        "ATA",
        26,
        4,
      );
      c.adicionarFuncionario(f);
      bool res = c.removerFuncionario("Jogador", "Rau");
      expect(res, true);
    });

    test("Remove Serviços Gerais test", () {
      CrudContoller c = CrudContoller();
      Funcionario f = ServicosGerais(
        "Rau",
        "Raz",
        50000,
        Atribuicao.zelador,
        4,
      );
      c.adicionarFuncionario(f);
      bool res = c.removerFuncionario("ServicosGerais", "Rau");
      expect(res, true);
    });
  });
  group("Update Funcionario", () {
    test("Add Presidente test", () {});
  });
  group("Read Funcionario", () {
    test("Add Presidente test", () {});
  });
}
