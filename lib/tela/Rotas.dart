import 'package:flutter/material.dart';
import 'package:green_map/tela/Cadastro.dart';
import 'package:green_map/tela/Home.dart';
import 'package:green_map/tela/Ponto-Form.dart';
import 'package:green_map/tela/PontoColeta.dart';
import 'package:green_map/tela/login.dart';
import 'Mapa.dart';

class Rotas {

  static Route <dynamic> gerarRotas(RouteSettings settings){
    switch (settings.name){

      case "/":
        return MaterialPageRoute(
            builder: (_) => Home()
        );

      case "Cadastro":
        return MaterialPageRoute(
            builder: (_) => Cadastro()
        );

      case "Home":
        return MaterialPageRoute(
            builder: (_) => Home()
        );

      case "Mapa":
        return MaterialPageRoute(
            builder: (_) => Mapa()
        );

      case "PontoForm":
        return MaterialPageRoute(
            builder: (_) => PontoForm()
        );

      case "PontoColeta":
        return MaterialPageRoute(
            builder: (_) => PontoColeta()
        );

      default:
        _erroRota();

    }

  }
  static Route <dynamic> _erroRota(){
    return MaterialPageRoute (
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela não encontrada "),
            ),
            body: Center(
              child:  Text("Tela não encontrada !"),
            ),
          );
        }
    );
  }
}