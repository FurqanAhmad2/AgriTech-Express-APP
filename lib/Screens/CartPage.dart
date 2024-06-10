import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> _cartItems = [];

  @override
  void initState() {
    super.initState();
    // Call function to fetch cart items when the widget initializes
    _fetchCartItems();
  }

  Future<void> _fetchCartItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? cartData = prefs.getStringList('cart');
    if (cartData != null) {
      setState(() {
        _cartItems = cartData.map((item) => jsonDecode(item) as Map<String, dynamic>).toList();
      });
    }
  }

  void _removeItem(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? cartData = prefs.getStringList('cart');
    if (cartData != null) {
      cartData.removeAt(index);
      await prefs.setStringList('cart', cartData);
      setState(() {
        _cartItems.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: _cartItems.isEmpty
          ? Center(
        child: Text('Cart is empty'),
      )
          : ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_cartItems[index]['name']),
            subtitle: Text('Price: ${_cartItems[index]['price']}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _removeItem(index),
            ),
          );
        },
      ),
    );
  }
}
