import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アカウント登録'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'ユーザー名'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'パスワード'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 登録処理（今は仮）
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('登録しました（仮）')),
                );
              },
              child: const Text('登録'),
            ),
          ],
        ),
      ),
    );
  }
}
