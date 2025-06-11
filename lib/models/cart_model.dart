// lib/models/cart_model.dart
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/product.dart';

class CartModel extends ChangeNotifier {
  final Map<Product, int> _items = {}; // 🔄 商品と個数を記録

  Map<Product, int> get items => _items;

  void add(Product product) {
    if (_items.containsKey(product)) {
      _items[product] = _items[product]! + 1;
    } else {
      _items[product] = 1;
    }
    notifyListeners();
  }

  void remove(Product product) {
    if (_items.containsKey(product)) {
      _items[product] = _items[product]! - 1;
      if (_items[product]! <= 0) {
        _items.remove(product);
      }
      notifyListeners();
    }
  }

  int get totalPrice {
    int total = 0;
    _items.forEach((product, quantity) {
      total += product.price * quantity;
    });
    return total;
  }
}
