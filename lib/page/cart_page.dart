import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/cart_model.dart';
import 'package:flutter_application_1/models/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    final items = cart.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('カートの中身'),
        backgroundColor: Colors.green[700],
      ),
      body: items.isEmpty
          ? const Center(child: Text('カートは空です'))
          : ListView(
              children: items.entries.map((entry) {
                final product = entry.key;
                final quantity = entry.value;

                return ListTile(
                  leading: Image.asset(product.imageUrl, width: 50, height: 50),
                  title: Text(product.name),
                  subtitle: Text('${product.price}円 × $quantity'),
                  trailing: Text('${product.price * quantity} 円'),
                );
              }).toList(),
            ),
      bottomNavigationBar: Container(
        color: Colors.green[100],
        padding: const EdgeInsets.all(16),
        child: Text(
          '合計: ${cart.totalPrice} 円',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
