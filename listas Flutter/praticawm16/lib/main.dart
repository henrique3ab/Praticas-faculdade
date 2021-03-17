import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

//O objeto da classe mensagem será enviado para a segunda rota.
class Preco {
  double etanol;
  double gasolina;
  Preco({this.etanol, this.gasolina});

  razao() => etanol / gasolina;
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController etanolController =
      TextEditingController(); //reverencia o objeto (que não pode ser alterado)
  final TextEditingController gasolinaController = TextEditingController();
  Preco preco;
  String resp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: etanolController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => etanolController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o preço do Etanol',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: gasolinaController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => gasolinaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o preço da Gasolina',
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              double e = double.tryParse(etanolController.text);
              double g = double.tryParse(gasolinaController.text);
              preco = Preco(
                etanol: e,
                gasolina: g,
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SegundaRota(preco)));
            },
            child: Text('Ir para a Segunda Rota'),
          ),
          Text(
            '$resp',
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Preco preco;
  SegundaRota(this.preco);
  @override
  Widget build(BuildContext context) {
    String resp = 'Abasteça com Gasolina';
    if (preco.razao() < 0.7) resp = 'Abasteça com Etanol';
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${preco.etanol.toStringAsFixed(2)} / ${preco.gasolina.toStringAsFixed(2)} = ${preco.razao().toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$resp',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
