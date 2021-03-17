import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    "https://images.pexels.com/photos/2629233/pexels-photo-2629233.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrimeiraFoto()),
                );
              },
            ),
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    "https://images.pexels.com/photos/3738673/pexels-photo-3738673.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaFoto()),
                );
              },
            ),
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    "https://images.pexels.com/photos/3597423/pexels-photo-3597423.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraFoto()),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/3621344/pexels-photo-3621344.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/3610649/pexels-photo-3610649.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/1005417/pexels-photo-1005417.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/3625715/pexels-photo-3625715.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/3645606/pexels-photo-3645606.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://images.pexels.com/photos/3656989/pexels-photo-3656989.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            ),
          ],
        ),
      ),
    );
  }
}

class PrimeiraFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Zakopane, Poland',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
            ),
            Container(
              child: Text(
                'Lorem ipsum fusce risus lorem auctor per posuere dui, proin quis mi inceptos justo ad tempor ac. odio urna aliquet lacinia eget phasellus ut odio curabitur volutpat sed at conubia, luctus mollis laoreet non nostra eleifend molestie eu libero nisl. suscipit malesuada etiam auctor neque tempor iaculis tempor, ultricies nam urna pellentesque suscipit orci, habitasse fusce phasellus turpis eget vel. ',
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Exemplo de botão',
        backgroundColor: Colors.blue,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class SegundaFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Rota"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Não informado',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
            ),
            Container(
              child: Text(
                'Lorem ipsum fusce risus lorem auctor per posuere dui, proin quis mi inceptos justo ad tempor ac. odio urna aliquet lacinia eget phasellus ut odio curabitur volutpat sed at conubia, luctus mollis laoreet non nostra eleifend molestie eu libero nisl. suscipit malesuada etiam auctor neque tempor iaculis tempor, ultricies nam urna pellentesque suscipit orci, habitasse fusce phasellus turpis eget vel. ',
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Exemplo de botão',
        backgroundColor: Colors.blue,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

class TerceiraFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Terceira Rota"),
           backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Shaulykha, Ucrânia',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
            ),
            Container(
              child: Text(
                'Lorem ipsum fusce risus lorem auctor per posuere dui, proin quis mi inceptos justo ad tempor ac. odio urna aliquet lacinia eget phasellus ut odio curabitur volutpat sed at conubia, luctus mollis laoreet non nostra eleifend molestie eu libero nisl. suscipit malesuada etiam auctor neque tempor iaculis tempor, ultricies nam urna pellentesque suscipit orci, habitasse fusce phasellus turpis eget vel. ',
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Exemplo de botão',
        backgroundColor: Colors.blue,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
