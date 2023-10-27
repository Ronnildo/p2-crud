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
      return true;
    } else if (f.runtimeType == Presidente) {
      if (_presidente.length == 1) {
        return false;
      } else {
        _presidente.add(f as Presidente);
        print("Funcionário cadastrado com sucesso.");
        return true;
      }
    } else if (f.runtimeType == Jogador) {
      _jogadores.add(f as Jogador);
      return true;
    } else if (f.runtimeType == ServicosGerais) {
      _servicosGerais.add(f as ServicosGerais);
      return true;
    }
    return false;
  }

  removerFuncionario(String lista, String nome) {
    switch (lista) {
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

  retornaFuncionario(List data, String nome) {
    for (var element in data) {
      if (element.nome == nome) {
        return element;
      } else {
        return Null;
      }
    }
  }

  atualizarFuncionario() {}
  listarFuncionarios(String entrada) {
    try {
      switch (entrada) {
        case "Treinador":
          print("Treinador");
          percorrerLista(_treinador);
          break;
        case "Jogador":
          print("Jogadores");
          percorrerLista(_jogadores);
          break;
        case "Presidente":
          print("Presidente");
          percorrerLista(_presidente);
          break;
        case "ServicosGerais":
          print("Serviços Gerais");
          percorrerLista(_servicosGerais);
          break;
      }
    } on Exception catch (e) {
      print("Lista vázia: $e");
    }
  }

  percorrerLista(List data) {
    for (var element in data) {
      print(element.toString());
    }
  }
}
