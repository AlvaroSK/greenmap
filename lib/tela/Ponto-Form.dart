import 'package:flutter/material.dart';
import 'package:green_map/models/materialColetado.dart';
import 'package:green_map/models/pontoColeta.dart';
import 'package:green_map/provider/PontosProvider.dart';
import 'package:green_map/tela/PontoColeta.dart';
import 'package:provider/provider.dart';

class PontoForm extends StatelessWidget{

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(pontoColeta pontocoleta) {
    if(pontocoleta !=null) {
      _formData['id'] = pontocoleta.id;
      _formData['avatarUrl'] = pontocoleta.avatarUrl;
      _formData['nome'] = pontocoleta.nome;
      _formData['email'] = pontocoleta.email;
      _formData['cnpj'] = pontocoleta.cnpj;
      _formData['endereco'] = pontocoleta.endereco;
      _formData['telefone'] = pontocoleta.telefone;
      _formData['materialcoletado'] = pontocoleta.materialColetado;
    }
  }

  @override
  Widget build(BuildContext context) {
    final pontoColeta pontocoleta = ModalRoute.of(context).settings.arguments as pontoColeta;

    _loadFormData(pontocoleta);
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Ponto de Coleta'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: (){
               final isValid = _form.currentState.validate();

               if (isValid) {
                 _form.currentState.save();
                 Provider.of<PontosProvider>(context, listen: false).put(
                   pontoColeta(
                   id: _formData['id'],
                   avatarUrl: _formData['avatarUrl'],
                   nome: _formData['nome'],
                   cnpj: _formData['cnpj'],
                   endereco: _formData['endereco'],
                   telefone: _formData['telefone'],
                   materialColetado: _formData['materialcoletado'],
                 ),
                 );
                 Navigator.of(context).pop();
               }
              })
        ]
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['avatarUrl'],
                  decoration: InputDecoration(labelText: 'URL do Avatar'),
                  onSaved: (value) => _formData['avatarUrl'] = value,
                ),
                TextFormField(
                  initialValue: _formData['nome'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um nome!";
                    }
                  },
                  onSaved: (value) => _formData['nome'] = value,
                ),
                TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um e-mail válido!";
                    }
                  },
                  onSaved: (value) => _formData['email'] = value,
                ),
                TextFormField(
                  initialValue: _formData['cnpj'],
                  decoration: InputDecoration(labelText: 'CNPJ'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um CNPJ válido!";
                    }
                  },
                  onSaved: (value) => _formData['cnpj'] = value,
                ),
                TextFormField(
                  initialValue: _formData['endereco'],
                  decoration: InputDecoration(labelText: 'Endereço'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um endereço válido!";
                    }
                  },
                  onSaved: (value) => _formData['endereco'] = value,
                ),
                TextFormField(
                 initialValue: _formData['telefone'],
                  decoration: InputDecoration(labelText: 'Telefone'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um telefone válido!";
                    }
                  },
                  onSaved: (value) => _formData['telefone'] = value,
                ),
                TextFormField(
                  initialValue: _formData['materialcoletado'],
                  decoration: InputDecoration(labelText: 'Material Coletado'),
                  validator: (value){
                    if(value== null || value.isEmpty) {
                      return "Informe um material válido!";
                    }
                  },
                  onSaved: (value) => _formData['materialcoletado'] = value,
                ),
              ],
            ),
          )
      ),
    );
  }
}