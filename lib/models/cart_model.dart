import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/product.dart';

class CartModel extends ChangeNotifier {
  final List<Product> _items = [];

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  int get totalPrice => _items.fold(0, (sum, itme) => sum + item.price);
}
