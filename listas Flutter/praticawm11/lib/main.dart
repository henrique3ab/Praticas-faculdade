import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: PrimeiraRota(),
    ));

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Primeira Rota'),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              child: Text(
                'Produto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            FlatButton(
              child: Image.network(
                'https://picsum.photos/250?image=9',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              },
            ),
          ],
        )));
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seguunda Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Descrição do Produto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para a primeira Rota'),
            )
          ],
        ),
      ),
    );
  }
}
