import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  bool _tipoPassageiro = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: _controllerNome,
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Nome",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)
                            )
                        ),
                      ),
                      TextField(
                        controller: _controllerEmail,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "E-mail",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)
                            )
                        ),
                      ),
                      TextField(
                        controller: _controllerSenha,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Senha",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)
                            )
                        ),
                      ),

                      Padding(padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                          children: [
                            Text("Passageiro"),
                            Switch(value: _tipoPassageiro, onChanged: (bool valor) {
                              setState(() {
                                _tipoPassageiro = valor;
                              });
                            }
                            ),
                            Text("Motorista"),
                        ],
                      ),
                      ),


                      Padding(padding: EdgeInsets.only(top: 16, bottom: 10),
                        child: RaisedButton(
                          child: Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 20)
                          ),

                          padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        ),
                      ),

                    ],
                  )
              )
          )
      ),
    );
  }
}
