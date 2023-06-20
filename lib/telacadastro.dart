import "package:flutter/material.dart";
import "package:login/main.dart";

class telacadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green, title: const Text("Tela cadastro")),
      body: _cadastro(),
    ));
  }
}

class _cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Tela Cadastro App",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: const Text(
              "Informe seus dados",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
                hintText: "Informe seu e-mail",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirme seu e-mail',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
                hintText: 'Informe a sua senha',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            // ignore: prefer_const_constructors
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Confirme sua senha',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text("Cadastrar-se"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
