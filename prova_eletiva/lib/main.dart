import 'package:flutter/material.dart';
import 'package:prova_eletiva/pag1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prova Eletiva',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boas-Vindas',
        style: TextStyle(fontFamily: 'Exotc350'),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            ListTile(
              title: Text('JOGO DA VELHA',
              style: TextStyle(fontFamily: 'Exotc350'),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pag1()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Use o botão menu para selecionar o jogo desejado',
        style: TextStyle(fontFamily: 'Impact'),
        ),
      ),
    );
  }
}
