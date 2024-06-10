import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  // Define your cart items list
  List<Map<String, dynamic>> _cartItems = [];

  // Getter for accessing cart items
  List<Map<String, dynamic>> get cartItems => _cartItems;

  // Method to add item to cart
  void addItemToCart(Map<String, dynamic> item) {
    _cartItems.add(item);
    notifyListeners();
  }

  // Method to remove item from cart
  void removeItemFromCart(Map<String, dynamic> item) {
    _cartItems.remove(item);
    notifyListeners();
  }

// Other methods for managing cart state
}
