import 'package:flutter/material.dart';
import 'package:prova_eletiva/pag1.dart';

class Pag2 extends StatefulWidget {
  final String nome;

  Pag2(this.nome);

  @override
  _Pag2State createState() => _Pag2State();
}

class _Pag2State extends State<Pag2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo da Velha'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            ListTile(
              title: Text(
                '${widget.nome}',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
            ),
            Image.asset('assets/images/jogo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 250,
                child: ElevatedButton(
                  child: Text('Voltar'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pag1()),
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
