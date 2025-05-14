import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/data/Cart_Provider.dart';
import 'package:flutter_application_1/main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: MyApp(),
  ));
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
        id: '1',
        name: 'Apple',
        price: 100,
        imageUrl: 'https://via.placeholder.com/150'),
    Product(
        id: '2',
        name: 'Banana',
        price: 150,
        imageUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyShop')),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: Column(
              children: [
                Image.network(product.imageUrl),
                Text(product.name),
                Text('${product.price}円'),
                ElevatedButton(
                  child: Text('カートに追加'),
                  onPressed: () {
                    Provider.of<CartModel>(context, listen: false).add(product);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
