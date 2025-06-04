import 'package:flutter/material.dart';
import 'package:flutter_application_1/NewPage.dart'; // NewPage.dart をインポート

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '商品一覧アプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const NewPage(), // ここをNewPageに変更
    );
  }
}
