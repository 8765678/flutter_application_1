import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 前の画面に戻る
            Navigator.pop(context);
          },
          child: const Text('Back to Main Page'),
        ),
      ),
    );
  }
}
