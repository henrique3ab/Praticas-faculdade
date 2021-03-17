import 'package:flutter/material.dart';

void main() {
  runApp(Column(
    textDirection: TextDirection.ltr,
    /*crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,*/
    children: <Widget>[
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
      /*Text(
        'Neste exemplo, crossAxisAlignment é definido',
        textDirection: TextDirection.ltr,
      ),
      Text(
        'como CrossAxisAlignment.start, para que os ',
        textDirection: TextDirection.ltr,
      ),
      Text(
        'filhos sejam alinhados à esquerda. O mainsAxisSize ',
        textDirection: TextDirection.ltr,
      ),
      Text(
        'é definido como MainAxisSize.min, para que a coluna ',
        textDirection: TextDirection.ltr,
      ),
      Text(
        'seja reduzida para caber os filhos.',
        textDirection: TextDirection.ltr,
      ),*/
      Text(
        'Google Flutter.',
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.white,
        ),
      ),
    ],
  ));
}
