import 'package:crud/models/funcionario.dart';
import 'package:crud/models/jogador.dart';
import 'package:crud/models/presidente.dart';
import 'package:crud/models/servicos_gerais.dart';
import 'package:crud/models/treinador.dart';

class CrudContoller {
  List<Presidente> _presidente = [];
  List<Jogador> _jogadores = [];
  List<ServicosGerais> _servicosGerais = [];
  List<Treinador> _treinador = [];

  adicionarFuncionario(Funcionario f) {
    if (f.runtimeType == Treinador) {
      _treinador.add(f as Treinador);
      print("Funcionário cadastrado com sucesso.\n");
      return true;
    } else if (f.runtimeType == Presidente) {
      if (_presidente.length == 1) {
        return false;
      } else {
        _presidente.add(f as Presidente);
        print("Funcionário cadastrado com sucesso.\n");
        return true;
      }
    } else if (f.runtimeType == Jogador) {
      _jogadores.add(f as Jogador);
      print("Funcionário cadastrado com sucesso. \n");
      return true;
    } else if (f.runtimeType == ServicosGerais) {
      _servicosGerais.add(f as ServicosGerais);
      print("Funcionário cadastrado com sucesso. \n");
      return true;
    }
    return false;
  }

  removerFuncionario(String entrada, String nome) {
    switch (entrada) {
      case "Presidente":
        var func = retornaFuncionario(_presidente, nome);
        _presidente.remove(func);
        if (_presidente.isEmpty) {
          return true;
        } else {
          return false;
        }
      case "Treinador":
        var func = retornaFuncionario(_treinador, nome);
        _treinador.remove(func);
        if (_presidente.isEmpty) {
          return true;
        } else {
          return false;
        }
      case "Jogador":
        var func = retornaFuncionario(_jogadores, nome);
        if (_jogadores.remove(func)) {
          return true;
        } else {
          return false;
        }
      case "ServicosGerais":
        var func = retornaFuncionario(_servicosGerais, nome);
        if (_servicosGerais.remove(func)) {
          return true;
        } else {
          return false;
        }
    }
  }

  atualizarFuncionario(
    String entrada,
    String nome,
    String novoNome,
    String novoSobrenome,
    double novoSalario,
    int novaIdade,
    int novoContrato,
    String posicao,
  ) {
    switch (entrada) {
      case "Presidente":
        var func = retornaFuncionario(_presidente, nome);

        func.nome = novoNome;
        func.sobrenome = novoSobrenome;
        func.salario = novoSalario;
        func.idade = novaIdade;
        func.tempoContrato = novoContrato;

        return true;
      case "Treinador":
        var func = retornaFuncionario(_treinador, nome);
        func.nome = novoNome;
        func.sobrenome = novoSobrenome;
        func.salario = novoSalario;
        func.idade = novaIdade;
        func.tempoContrato = novoContrato;

        return true;
      case "Jogador":
        var func = retornaFuncionario(_jogadores, nome);
        func.nome = novoNome;
        func.sobrenome = novoSobrenome;
        func.salario = novoSalario;
        func.idade = novaIdade;
        func.tempoContrato = novoContrato;
        func.posicao = posicao;

        return true;
      case "ServicosGerais":
        var func = retornaFuncionario(_servicosGerais, nome);
        func.nome = novoNome;
        func.sobrenome = novoSobrenome;
        func.salario = novoSalario;
        func.tempoContrato = novoContrato;

        return true;
    }
  }

  listarFuncionarios(String entrada) {
    try {
      switch (entrada) {
        case "Treinador":
          print("Treinador");
          percorrerentrada(_treinador);
          break;
        case "Jogador":
          print("Jogadores");
          percorrerentrada(_jogadores);
          break;
        case "Presidente":
          print("Presidente");
          percorrerentrada(_presidente);
          break;
        case "ServicosGerais":
          print("Serviços Gerais");
          percorrerentrada(_servicosGerais);
          break;
      }
    } on Exception catch (e) {
      print("entrada vázia: $e");
    }
  }

  percorrerentrada(List data) {
    for (var element in data) {
      print(element.toString());
    }
  }

  retornaFuncionario(List data, String nome) {
    for (var element in data) {
      if (element.nome == nome) {
        return element;
      } else {
        return Null;
      }
    }
  }
}
