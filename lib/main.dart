import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_map/tela/login.dart';
import 'package:green_map/tela/Rotas.dart';

final ThemeData Padrao = ThemeData(
    primaryColor: Color(0xff37447f),
    accentColor: Color(0xff546e7a)
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    title: "Green Map",
    home: Login(),
    theme: Padrao,
    initialRoute: "/",
    onGenerateRoute: Rotas.gerarRotas,
    debugShowCheckedModeBanner: false,
  ));
}

