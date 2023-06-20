import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:login/telamenu.dart';

class novolembrete extends StatefulWidget {
  @override
  _novolembrete createState() => _novolembrete();
}

class _novolembrete extends State<novolembrete> {
  TimeOfDay hora = TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext context) {
    final horas = hora.hour.toString().padLeft(2, "0");
    final minutos = hora.minute.toString().padLeft(2, "0");

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "${horas}:${minutos}",
              style: TextStyle(fontSize: 58),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: Text("Selecionar Horário"),
              onPressed: () async {
                TimeOfDay? newHora = await showTimePicker(
                  context: context,
                  initialTime: hora,
                );
                //if 'CANCEL' => null
                if (newHora == null) return;
                // if 'OK' => TimeOfDay
                setState(() => hora = newHora);
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Text(
              'Selecione o dia',
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
              width: 20,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'D | S | T | Q | Q | S | S',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: TextField(
                decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Nome do lembrete',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
              // ignore: prefer_const_constructors
              child: TextField(
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Descrição do lembrete',
                ),
              ),
            ),
            Container(
                height: 50,
                width: 250,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Salvar',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return telamenu();
                    }));
                  },
                )),
            SizedBox(
              height: 10,
              width: 20,
            ),
            Container(
                height: 50,
                width: 250,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return telamenu();
                    }));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
