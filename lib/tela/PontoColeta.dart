import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_map/Routes/AppRoutes.dart';
import 'package:green_map/compontents/pontoColeta_tile.dart';
import 'package:green_map/models/pontoColeta.dart';
import 'package:green_map/provider/PontosProvider.dart';
import 'package:provider/provider.dart';

class PontoColeta extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final PontosProvider pontos = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Pontos de Coleta'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).pushNamed(
                AppRoutes.PONTO_FORM
              );
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: pontos.count,
          itemBuilder: (ctx, i) => pontoColetaTile(pontos.byIndex(i)),
      )
    );
  }
}