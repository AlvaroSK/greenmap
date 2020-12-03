import 'dart:math';
import 'package:flutter/material.dart';
import 'package:green_map/data/dummy_pontoColeta.dart';
import 'package:green_map/models/pontoColeta.dart';

class PontosProvider with ChangeNotifier {
  final Map<String, pontoColeta> items = {...DUMMY_PONTOCOLETA};

  List<pontoColeta> get all {
    return [...items.values];
  }

  int get count {
    return items.length;
  }

  pontoColeta byIndex(int i) {
    return items.values.elementAt(i);
  }

  //adicionar
  void put(pontoColeta pontoColetaAux) {
    if (pontoColetaAux == null) {
      return;
    }

    if (pontoColetaAux.id != null &&
        pontoColetaAux.id.trim().isNotEmpty &&
        items.containsKey(pontoColetaAux.id)) {
      items.update(
          pontoColetaAux.id,
              (_) => pontoColeta(
              id: pontoColetaAux.id,
              avatarUrl: pontoColetaAux.avatarUrl,
              cnpj: pontoColetaAux.cnpj,
              nome: pontoColetaAux.nome,
              telefone: pontoColetaAux.telefone,
              email: pontoColetaAux.email,
              materialColetado: pontoColetaAux.materialColetado));
    } else {
      final id = Random().nextDouble().toString();
      items.putIfAbsent(
          id,
              () => pontoColeta(
              id: id,
              avatarUrl: pontoColetaAux.avatarUrl,
              cnpj: pontoColetaAux.cnpj,
              nome: pontoColetaAux.nome,
              telefone: pontoColetaAux.telefone,
              email: pontoColetaAux.email,
              materialColetado: pontoColetaAux.materialColetado));
    }
    //alterar

    notifyListeners();
  }

  void remove(pontoColeta pontoColetaAux){
    if(pontoColetaAux != null && pontoColetaAux.id != null){
      items.remove(pontoColetaAux.id);
      notifyListeners();
    }
  }
}
