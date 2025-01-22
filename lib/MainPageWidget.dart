import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail/CouponDetail.dart';
import 'package:flutter_application_1/list/CouponListView.dart';
import 'package:flutter_application_1/NewPage.dart'; // 新しいページをインポート

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageWidget();
  }
}

class _MainPageWidget extends State<MainPageWidget> {
  bool _isSelectedItem = false;

  // 詳細画面を表示する
  void openDetail() {
    setState(() {
      _isSelectedItem = true;
    });
  }

  //新しいページ（NewPage2.dart）に遷移する
  void openNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NewPage()),
    );
  }

  // 詳細画面を消す
  void closeDetail() {
    setState(() {
      _isSelectedItem = false;
    });
  }

//新しいコードを追加しました！
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        actions: [
          IconButton(
            onPressed: openNewPage,
            icon: const Icon(Icons.arrow_forward),
            tooltip: 'Go to New Page',
          ),
        ],
      ),
      body: Stack(
        children: [
          CouponListView(openDetail),
          if (_isSelectedItem) CouponDetail(closeDetail)
        ],
      ),
    );
  }
}
