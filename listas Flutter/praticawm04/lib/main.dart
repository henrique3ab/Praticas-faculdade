import 'package:flutter/material.dart';

void main() {
  runApp(Row(
    textDirection: TextDirection.ltr,
    children: <Widget>[
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
              'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
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
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    ],
  ));
}
