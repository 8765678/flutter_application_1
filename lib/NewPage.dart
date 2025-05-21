import 'package:flutter/material.dart';

//商品のデータ
class Product {
  final String id;
  final String name;
  final int price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

// クラスの外に商品リストを定義
const List<Product> products = [
  Product(
    id: '1',
    name: 'リンゴ',
    price: 100,
    imageUrl: 'assets/image/Apple.jpg',
  ),
  Product(
    id: '2',
    name: 'バナナ',
    price: 150,
    imageUrl:
        'https://www.banana-pine-lab.org/user_images/writer/album/5/202203101516310.jpg',
  ),
  Product(
    id: '3',
    name: 'メロン',
    price: 500,
    imageUrl:
        'https://www.shuminoengei.jp/m-pc/a-page_p_detail/images/kaika/main_00000001027.jpg',
  ),
];

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('商品一覧')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(product.imageUrl, height: 100),
                Text(product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('${product.price}円',
                    style: const TextStyle(color: Colors.green)),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${product.name} をカートに追加しました')),
                    );
                  },
                  child: const Text('カートに追加'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
