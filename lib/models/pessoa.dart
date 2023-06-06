import 'package:flutter/services.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;
  String _classificacao = "";

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  String getClassificacao() {
    return _classificacao;
  }

  void setClassificacao() {
    _classificacao = "";
  }

  double getImc() {
    return _imc;
  }

  String? setImc(double peso, double altura) {
    double imc = calcularImc(peso, altura);
    _imc = imc;
    if (imc < 16) {
      _classificacao = "Magreza grave";
    } else if (imc < 17) {
      _classificacao = "Magreza moderada";
    } else if (imc < 18.5) {
      _classificacao = "Magreza leve";
    } else if (imc < 25) {
      _classificacao = "Saudável";
    } else if (imc < 30) {
      _classificacao = "Sobrepeso";
    } else if (imc < 35) {
      _classificacao = "Obesidade Grau I";
    } else if (imc < 40) {
      _classificacao = "Obesidade Grau II (severa)";
    } else {
      _classificacao = "Obesidade Grau III (mórbida)";
    }
    return null;
  }

  double calcularImc(double peso, double altura) {
    try {
      _peso = peso;
      _altura = altura;
      var ret = _peso / (_altura * _altura);
      return ret;
    } catch (e) {
      return 0;
    }
  }
}
