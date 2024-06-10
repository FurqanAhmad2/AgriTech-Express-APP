import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:agri/Screens/OrderSuccess.dart';

class OrderSummaryScreen extends StatefulWidget {
  @override
  _OrderSummaryScreenState createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
  String deliveryAddress = '';
  List<Map<String, dynamic>> _cartItems = [];

  @override
  void initState() {
    super.initState();
    _getOrderInfo();
    _getAddress();
    _fetchCartItems();
  }

  Future<void> _getOrderInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // You can remove this part as we don't need these details anymore
    });
  }

  Future<void> _getAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedAddresses = prefs.getStringList('addresses');

    if (savedAddresses != null && savedAddresses.isNotEmpty) {
      List<String> formattedAddresses = savedAddresses.map((addressJson) {
        Map<String, dynamic> addressMap = jsonDecode(addressJson);
        String formattedAddress = '${addressMap['fullName']} \n'
            '${addressMap['address']} \n'
            'Phone: ${addressMap['phone']}';
        return formattedAddress;
      }).toList();

      setState(() {
        deliveryAddress = formattedAddresses[0];
      });
    } else {
      setState(() {
        deliveryAddress = 'No address saved';
      });
    }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              deliveryAddress.isNotEmpty ? deliveryAddress : 'No address available',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Order Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            // Display cart items
            ListView.builder(
              shrinkWrap: true,
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _cartItems[index]['name'] ?? '',
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                  subtitle: Text(
                    'Price: ${_cartItems[index]['price'] ?? ''}',
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle adding a new debit/credit card
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderPlacedScreen(),
                    ),
                  );
                },
                child: Text(
                  'Place Order',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
