import 'package:flutter/material.dart';
import 'package:prova_eletiva/pag2.dart';

import 'main.dart';

class Pag1 extends StatefulWidget {
  @override
  _Pag1State createState() => _Pag1State();
}

class _Pag1State extends State<Pag1> {
  TextEditingController txtnome = TextEditingController();

  void salvar() {
    String nome;

    setState(() {
      nome = txtnome.text;

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Pag2(nome)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('JOGO DA VELHA',
        style: TextStyle(fontFamily: 'Exotc350'),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Digite o nome do jogador: ',
              style: TextStyle(fontFamily: 'Impact'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: txtnome,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'Selecione o nível de dificuldade',
                style: TextStyle(fontSize: 20, fontFamily: 'Impact'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  child: Text('Tosco',
                  style: TextStyle(fontFamily: 'Impact'),
                  ),
                  onPressed: salvar,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  child: Text('Hard',
                  style: TextStyle(fontFamily: 'Impact'),
                  ),
                  onPressed: salvar,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                  child: Text('Sair',
                  style: TextStyle(fontFamily: 'Impact'),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
