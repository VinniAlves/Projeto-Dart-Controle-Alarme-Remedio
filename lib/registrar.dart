import 'package:flutter/material.dart';

void main() {
  runApp(registrar());
}

class registrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              ' Registrar',
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
        body: _Registrar(),
      ),
    );
  }
}

class _Registrar extends StatelessWidget {
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
                'Informe seus dados',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle_rounded,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                labelText: 'Usuário',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                labelText: 'Nome completo',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                labelText: 'E-mail',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                labelText: 'Confirme a senha',
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Text('Aceitar'),
                TextButton(
                    child: const Text(
                      'termos e condições',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
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
                child: const Text(' REGISTRAR'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Já possui conta?",
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ]));
  }
}
