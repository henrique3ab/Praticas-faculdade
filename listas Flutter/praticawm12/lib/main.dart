import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        //Inicie o aplicativo com a rota nomeada "/".
        //Neste exemplo, o aplicativo inicia no widget PrimeiraTela.
        initialRoute: '/',
        routes: {
          //Quando navegar pela rota nomeada "/segunda", construa o widget SegundaTela.
          '/segunda': (context) => SegundaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Tela'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Ir para a segunda Tela'),
          onPressed: () {
            //Navegar para a segunda tela usando a rota nomeada.
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Navegar a volta para a primeira tela.
            Navigator.pop(context);
          },
          child: Text('Voltar para a Primeira Tela'),
        ),
      ),
    );
  }
}
