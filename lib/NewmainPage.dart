import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Site',
      home: Scaffold(
        appBar: AppBar(title: Text('ようこそ')),
        body: Center(
          child: Text(
            'FlutterでWebサイト！',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
