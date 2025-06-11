import 'package:flutter/material.dart';
import 'package:flutter_application_1/NewPage.dart'; // NewPage.dart をインポート
import 'package:provider/provider.dart';
import 'models/cart_model.dart';
import 'page/cart_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '商品一覧アプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const NewPage(),
    );
  }
}
