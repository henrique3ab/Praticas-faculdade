import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController precoGasolinaController = TextEditingController();
  TextEditingController precoEtanolController = TextEditingController();
  String info = "Informe os preços dos combustíveis!";

  void resetFields() {
    precoEtanolController.text = "";
    precoGasolinaController.text = "";
    setState(() {
      info = "Informe os preços dos combustíveis!";
    });
  }

  void calcularMelhorCombustivel() {
    setState(() {
      double precoEtanol = double.parse(precoEtanolController.text);
      double precoGasolina = double.parse(precoGasolinaController.text);
      double coeficiente = precoEtanol / precoGasolina;
      print(coeficiente);
      info = (coeficiente < 0.7)
          ? "Etanol é a melhor opção"
          : "Gasolina é a melhor opção";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Qual combustível?"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: resetFields)
          ],
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.time_to_leave, size: 100.0, color: Colors.black),
                TextField(
                    controller: precoGasolinaController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Gasolina R\$",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
                TextField(
                    controller: precoEtanolController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Etanol R\$",
                        labelStyle: TextStyle(color: Colors.black)),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                    height: 50.0,
                    child: RaisedButton(
                        onPressed: calcularMelhorCombustivel,
                        child: Text(
                          "Calcular",
                          style: TextStyle(color: Colors.green, fontSize: 20.0),
                        ),
                        color: Colors.black),
                  ),
                ),
                Text(
                  "Informações",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 20.0),
                )
              ],
            )));
  }
}
