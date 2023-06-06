import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _faqPerguntas = [
    'Quais tipos de veículos posso consultar?',
    'Há algum custo para fazer uma consulta?',
    'As informações exibidas são confiáveis?',
    'Quais são os métodos de pagamento disponíveis?',
    'Vocês emitem Nota Fiscal?',
    'O que recebo ao efetuar uma compra?',
    'Posso pedir reembolso do valor pago?'
  ];
  List<String> get faqPerguntas => _faqPerguntas;
  set faqPerguntas(List<String> _value) {
    _faqPerguntas = _value;
  }

  void addToFaqPerguntas(String _value) {
    _faqPerguntas.add(_value);
  }

  void removeFromFaqPerguntas(String _value) {
    _faqPerguntas.remove(_value);
  }

  void removeAtIndexFromFaqPerguntas(int _index) {
    _faqPerguntas.removeAt(_index);
  }

  void updateFaqPerguntasAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_faqPerguntas[_index]);
  }

  List<String> _faqRespostas = [
    'Você pode consultar qualquer veículo emplacado no Brasil, seja ele um carro, moto, caminhão, trator, etc. Tendo uma placa registrada é possível consultar.',
    'Não, você pode fazer a consulta gratuitamente, basta ir à página consultar, informar a placa do veículo e clicar em consultar.O único custo que você pode ter é caso queira liberar os dados bloqueados de sua consulta.',
    'Sim, todos as informações exibidas nesse site são diretamente extraidas de sites oficiais como detran, sinesp e fipe.',
    'Nosso único método de pagamento disponível no momento é o PIX, decidimos optar pelo PIX por sua facilidade e rapidez, assim conseguimos entregar os dados para você quase que de forma instantânea.',
    'Claro, após efetuar o pagamento em nosso site você pode solicitar a sua NFSe na pagina de contato.OBS. A NFSe pode ser enviada em até 2 dias úteis após o pedido.',
    'Ao efetuar uma compra você recebe todos os dados que estavam bloqueados na sua consulta, os dados são desbloqueados e exibidos em um Relatório PDF, você recebe também uma cópia do Relatório PDF por e-mail.',
    'Se o Relatório PDF da consulta ainda não foi entregue sim, você pode, basta entrar em contato.'
  ];
  List<String> get faqRespostas => _faqRespostas;
  set faqRespostas(List<String> _value) {
    _faqRespostas = _value;
  }

  void addToFaqRespostas(String _value) {
    _faqRespostas.add(_value);
  }

  void removeFromFaqRespostas(String _value) {
    _faqRespostas.remove(_value);
  }

  void removeAtIndexFromFaqRespostas(int _index) {
    _faqRespostas.removeAt(_index);
  }

  void updateFaqRespostasAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_faqRespostas[_index]);
  }

  dynamic _faq = jsonDecode(
      '[{\"pergunta\":\"Quais tipos de veículos posso consultar?\",\"respostas\":\"Você pode consultar qualquer veículo emplacado no Brasil, seja ele um carro, moto, caminhão, trator, etc. Tendo uma placa registrada é possível consultar.\"},{\"pergunta\":\"Há algum custo para fazer uma consulta?\",\"respostas\":\"Não, você pode fazer a consulta gratuitamente, basta ir à página consultar, informar a placa do veículo e clicar em consultar.O único custo que você pode ter é caso queira liberar os dados bloqueados de sua consulta.\"},{\"pergunta\":\"As informações exibidas são confiáveis?\",\"respostas\":\"Sim, todos as informações exibidas nesse site são diretamente extraidas de sites oficiais como detran, sinesp e fipe.\"},{\"pergunta\":\"Quais são os métodos de pagamento disponíveis?\",\"respostas\":\"Nosso único método de pagamento disponível no momento é o PIX, decidimos optar pelo PIX por sua facilidade e rapidez, assim conseguimos entregar os dados para você quase que de forma instantânea.\"},{\"pergunta\":\"Vocês emitem Nota Fiscal?\",\"respostas\":\"Claro, após efetuar o pagamento em nosso site você pode solicitar a sua NFSe na pagina de contato.OBS. A NFSe pode ser enviada em até 2 dias úteis após o pedido.\"},{\"pergunta\":\"O que recebo ao efetuar uma compra?\",\"respostas\":\"Ao efetuar uma compra você recebe todos os dados que estavam bloqueados na sua consulta, os dados são desbloqueados e exibidos em um Relatório PDF, você recebe também uma cópia do Relatório PDF por e-mail.\"},{\"pergunta\":\"Posso pedir reembolso do valor pago?\",\"respostas\":\"Se o Relatório PDF da consulta ainda não foi entregue sim, você pode, basta entrar em contato.\"}]');
  dynamic get faq => _faq;
  set faq(dynamic _value) {
    _faq = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
