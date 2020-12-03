import 'package:flutter/material.dart';
import 'package:green_map/Routes/AppRoutes.dart';
import 'package:green_map/models/pontoColeta.dart';
import 'package:green_map/provider/PontosProvider.dart';
import 'package:green_map/tela/Ponto-Form.dart';
import 'package:green_map/tela/PontoColeta.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (ctx) => PontosProvider(),
    )
    ],
      child: MaterialApp(
        title: 'Pontos de Coleta',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.green,
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        routes: {
          AppRoutes.HOME: (_) => PontoColeta(),
          AppRoutes.PONTO_FORM: (_) => PontoForm()
        },
      ),
    );
  }
}
