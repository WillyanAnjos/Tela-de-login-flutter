import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Icon(
                      Icons.people,
                      size: 90.0,
                    ),
                    Text(
                      "E-mail",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "Insira o email.."),
                    ),
                    Divider(color: Colors.white),
                    Text(
                      "Senha",
                      style: TextStyle(fontSize: 20.0),
                    ),

                    //Campo da senha
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Insira sua senha.."),
                    ),

                    //Espaçamento
                    SizedBox(
                      height: 30,
                    ),

                    //Linha dos botões
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //Botão de cancelar
                        RaisedButton(
                          padding: EdgeInsets.only(
                              left: 40.0, right: 50.0, top: 20.0, bottom: 20.0),
                          onPressed: () {},
                          child: Text(
                            "Cancelar",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        //Serve para usar o espaço que estiver sobrando
                        Expanded(
                          //Botão de entrar
                          child: RaisedButton(
                            //Configurar os lados do botão
                            padding: EdgeInsets.only(
                                left: 50.0,
                                right: 50.0,
                                top: 20.0,
                                bottom: 20.0),
                            onPressed: () {},
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Texto de esqueceu sua senha
                    Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
