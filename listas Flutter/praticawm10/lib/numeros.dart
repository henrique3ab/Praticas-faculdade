import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  somar() {
    int num01 = int.tryParse(this.num01Controller.text);
    int num02 = int.tryParse(this.num02Controller.text);
    int soma = num01 + num02;
    this.resp = '$num01 + $num02 = $soma';
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(somar());
              setState(somar);
            },
            child: Text(
              'Somar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
