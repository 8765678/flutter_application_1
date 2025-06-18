// lib/pages/sign_up_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/NewPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('アカウント登録')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'ユーザー名'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'パスワード'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // 登録処理後に商品一覧ページへ移動
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const NewPage()),
                );
              },
              child: const Text('登録して始める'),
            ),
          ],
        ),
      ),
    );
  }
}
