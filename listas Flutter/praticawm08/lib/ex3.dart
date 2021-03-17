import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Container(
          child: Image.network(
            'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          padding: EdgeInsets.all(90),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
