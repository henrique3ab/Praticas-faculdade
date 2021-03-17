import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  String nomeInformado = "";

  cumprimentar() {
    this.nomeInformado = 'Olá, ${this.nomeController.text}!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Text('Informe o seu nome:'),
          TextField(
            controller: nomeController,
            decoration: InputDecoration(
              icon: Icon(Icons.chat),
              prefixIcon: Icon(Icons.account_box),
              suffixIcon: IconButton(
                onPressed: () => nomeController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
              labelText: 'nome',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Nome informado: ${nomeController.text}');
              setState(cumprimentar);
            },
            child: Text(
              'Enviar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.nomeInformado,
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
