import 'package:flutter/material.dart';

void main() {
  String nome = "Henrique";
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: 'Olá,',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome !',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: '\nHoje é quinta-feira!',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: ' \nBom dia !',
            ),
          ],
        ),
      ),
    ),
  );
}
