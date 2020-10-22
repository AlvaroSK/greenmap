import 'package:flutter/material.dart';
import 'package:green_map/tela/Home.dart';

final ThemeData Padrao = ThemeData(
primaryColor: (Colors.lightGreen),
accentColor: (Colors.lightGreenAccent),
);
void main() {
  runApp(MaterialApp(
    title: "Green Map",
    home: Home(),
    theme: Padrao,
    debugShowCheckedModeBanner: false,

  ));

}

