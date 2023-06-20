// ignore_for_file: prefer_const_constructors, duplicate_ignore, unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(esquecisenha());
}

class esquecisenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Esqueci minha senha',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            )),
        body: _EsqueciSenha(),
      ),
    );
  }
}

class _EsqueciSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Confirme seus dados',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: const Text(
                'Você receberá por e-mail um link para cadastrar uma nova senha.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(158, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelText: 'Digite seu e-mail',
              ),
            ),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.blue)))),
                child: const Text('RECUPERAR SENHA'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
        ]));
  }
}
