import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro")
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("imagens/fundo.png"),
          fit: BoxFit.cover)
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagens/logo.png", width: 200, height: 150,),
                ),
                TextField(
                  controller: _controllerEmail,
                  autofocus: true,
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
                
                Padding(padding: EdgeInsets.only(top: 16, bottom: 10),
                child: RaisedButton(
                  child: Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 20)
                  ),

                  padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                ),
                ),

                Center(
                  child: GestureDetector(
                    child: Text("Não possui conta ? Cadastre-se!", style:  TextStyle(color: Colors.lightGreen),
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, "Cadastro");
                    }
                  ),
                )

              ],
            )
          )
        )
      ),
    );
  }
}
