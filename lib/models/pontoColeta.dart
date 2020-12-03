import 'package:flutter/material.dart';

class pontoColeta{
  final String id;
  final String avatarUrl;
  final String cnpj;
  final String nome;
  final String telefone;
  final String email;
  final String materialColetado;
  final String endereco;



  const pontoColeta({
    this.id,
    @required this.avatarUrl,
    @required this.cnpj,
    @required this.nome,
    @required this.telefone,
    @required this.email,
    @required this.materialColetado,
    @required this.endereco,
  });



}