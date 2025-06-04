import 'package:flutter/material.dart';

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

const List<Product> products = [
  Product(
    id: '1',
    name: 'リンゴ',
    price: 100,
    imageUrl: 'assets/images/Apple.jpg',
  ),
  Product(
    id: '2',
    name: 'バナナ',
    price: 150,
    imageUrl: 'assets/images/banana.jpg',
  ),
  Product(
    id: '3',
    name: 'メロン',
    price: 500,
    imageUrl: 'assets/images/meron.jpg',
  ),
  Product(
    id: '4',
    name: 'ぶどう',
    price: 300,
    imageUrl: 'assets/images/grape.jpg',
  ),
  Product(
    id: '5',
    name: 'もも',
    price: 350,
    imageUrl: 'assets/images/peach.jpg',
  ),
  Product(
    id: '6',
    name: 'みかん',
    price: 200,
    imageUrl: 'assets/images/mikan.jpg',
  ),
];

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // 背景を柔らかく
      appBar: AppBar(
        title: const Text('商品一覧'),
        backgroundColor: Colors.green[700],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      product.imageUrl,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.attach_money,
                          size: 18, color: Colors.green),
                      Text(
                        '${product.price}円',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${product.name} をカートに追加しました')),
                      );
                    },
                    icon: const Icon(Icons.shopping_cart_outlined),
                    label: const Text('カートへ'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
