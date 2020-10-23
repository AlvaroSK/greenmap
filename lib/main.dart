import 'package:flutter/material.dart';
import 'package:green_map/tela/login.dart';
import 'package:green_map/tela/Rotas.dart';

final ThemeData Padrao = ThemeData(
    primaryColor: Color(0xff37447f),
    accentColor: Color(0xff546e7a)
);

void main() {
  runApp(MaterialApp(
    title: "Green Map",
    home: Login(),
    theme: Padrao,
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,


  ));
}

