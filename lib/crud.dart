import 'dart:io';

import 'package:crud/controller/clube_controller.dart';
import 'package:crud/models/funcionario.dart';
import 'package:crud/models/jogador.dart';
import 'package:crud/models/presidente.dart';
import 'package:crud/models/servicos_gerais.dart';
import 'package:crud/models/setor_enum.dart';
import 'package:crud/models/treinador.dart';

class Clube {
  init() {
    print("**************************");
    print("*  Crud Time de Futebol  *");
    print("**************************");
    print("\n");

    CrudContoller crud = CrudContoller();

    menuInicial();
    stdout.write("Escolha uma opção: ");
    var op = stdin.readLineSync();

    print("\n");

    while (true) {
      switch (op) {
        case "1":
          menuFuncionario();
          stdout.write("Escolha uma opção: ");
          op = stdin.readLineSync();
          var f = tipoFuncionario(op!);
          crud.adicionarFuncionario(f);
          break;
      }

      menuInicial();
      stdout.write("Escolha uma opção: ");
      op = stdin.readLineSync();
    }
  }

  menuInicial() {
    print("Opções:");
    print("1 - Cadastrar novo funcionário");
    print("2 - Remover um funcionário");
    print("3 - Listar funcionários");
    print("4 - Atualizar dados de um funcionário");
  }

  void menuFuncionario() {
    print("Funcionários: ");
    print("1 - Presidente");
    print("2 - Treinador");
    print("3 - Jogador");
    print("4 - Serviços Gerais");
  }

  Funcionario tipoFuncionario(String entrada) {
    if (entrada == "1") {
      stdout.write("Nome: ");
      var nome = stdin.readLineSync();

      stdout.write("Sobrenome: ");
      var sobrenome = stdin.readLineSync();

      stdout.write("Salário: ");
      var salario = stdin.readLineSync();

      stdout.write("Tempo de contrato: ");
      var tempoContrato = stdin.readLineSync();

      stdout.write("Idade: ");
      var idade = stdin.readLineSync();
      Presidente p = Presidente(
        nome!,
        sobrenome!,
        double.parse(salario!),
        int.parse(tempoContrato!),
        int.parse(idade!),
      );
      return p;
    } else if (entrada == "2") {
      stdout.write("Nome: ");
      var nome = stdin.readLineSync();

      stdout.write("Sobrenome: ");
      var sobrenome = stdin.readLineSync();

      stdout.write("Salário: ");
      var salario = stdin.readLineSync();

      stdout.write("Tempo de contrato: ");
      var tempoContrato = stdin.readLineSync();

      stdout.write("Idade: ");
      var idade = stdin.readLineSync();
      Treinador tr = Treinador(
        nome!,
        sobrenome!,
        double.parse(salario!),
        int.parse(tempoContrato!),
        int.parse(idade!),
      );
      return tr;
    } else if (entrada == "3") {
      stdout.write("Nome: ");
      var nome = stdin.readLineSync();

      stdout.write("Sobrenome: ");
      var sobrenome = stdin.readLineSync();

      stdout.write("Salário: ");
      var salario = stdin.readLineSync();

      stdout.write("Tempo de contrato: ");
      var tempoContrato = stdin.readLineSync();

      stdout.write("Idade: ");
      var idade = stdin.readLineSync();

      stdout.write("Posição: ");
      var posicao = stdin.readLineSync();
      Jogador p = Jogador(
        nome!,
        sobrenome!,
        double.parse(salario!),
        posicao!,
        int.parse(tempoContrato!),
        int.parse(idade!),
      );
      return p;
    } else if (entrada == "4") {
      stdout.write("Nome: ");
      var nome = stdin.readLineSync();

      stdout.write("Sobrenome: ");
      var sobrenome = stdin.readLineSync();

      stdout.write("Salário: ");
      var salario = stdin.readLineSync();

      stdout.write("Tempo de contrato: ");
      var tempoContrato = stdin.readLineSync();

      stdout.write(
          "Atribuição: 1 - Zelador 2 - Aulixiar de Limpeza 3 - Porteiro");
      var atr = stdin.readLineSync();
      ServicosGerais sg;
      if (atr == "1") {
        sg = ServicosGerais(
          nome!,
          sobrenome!,
          double.parse(salario!),
          Atribuicao.zelador,
          int.parse(tempoContrato!),
        );
        return sg;
      } else if (atr == "2") {
        sg = ServicosGerais(
          nome!,
          sobrenome!,
          double.parse(salario!),
          Atribuicao.auxiliarLimpeza,
          int.parse(tempoContrato!),
        );
        return sg;
      } else {
        sg = ServicosGerais(
          nome!,
          sobrenome!,
          double.parse(salario!),
          Atribuicao.porteiro,
          int.parse(tempoContrato!),
        );
        return sg;
      }
    } else {
      return ServicosGerais("", "", 0, Atribuicao.zelador, 0);
    }
  }
}
