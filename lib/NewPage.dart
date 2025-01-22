import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewPage'),
      ),
      body: const Center(
        child: Text(
          '新しいページの遷移成功です！',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
