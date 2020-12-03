import 'package:flutter/material.dart';
import 'package:green_map/Routes/AppRoutes.dart';
import 'package:green_map/models/pontoColeta.dart';
import 'package:green_map/provider/PontosProvider.dart';
import 'package:green_map/tela/PontoColeta.dart';
import 'package:provider/provider.dart';

class pontoColetaTile extends StatelessWidget{

  final pontoColeta ponto;

  const pontoColetaTile(this.ponto);

  @override
  Widget build(BuildContext context) {
    final avatar = ponto.avatarUrl == null || ponto.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(ponto.avatarUrl));
    return ListTile(
      isThreeLine: true,
      leading: avatar,
      title: Text(ponto.nome),
      subtitle: Text(ponto.materialColetado),
      trailing: Container(
        width: 100 ,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.lightBlue,
              onPressed: (){
                Navigator.of(context).pushNamed(
                  AppRoutes.PONTO_FORM,
                  arguments: ponto,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){
                Provider.of<PontosProvider>(context, listen: false).remove(ponto);
              },
            )
          ],
        ),
      ),
    );
  }
}