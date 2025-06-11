// lib/provider/cartprovider.dart
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;
  int get itemCount => _items.length;

  void addToCart(Map<String, dynamic> product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Map<String, dynamic> product) {
    _items.remove(product);
    notifyListeners();
  }
}
