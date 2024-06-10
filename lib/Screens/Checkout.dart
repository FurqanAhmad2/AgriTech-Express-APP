import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:agri/Screens/AddAddress.dart';
import 'package:agri/Screens/AddCard.dart';
import 'package:agri/Screens/OrderSummary.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkout',
      home: CheckoutPage(),
    );
  }
}

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String address = ''; // Initialize address variable

  @override
  void initState() {
    super.initState();
    // Call function to get address from SharedPreferences when the widget initializes
    _getAddress();
  }

  Future<void> _getAddress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? savedAddresses = prefs.getStringList('addresses');

    print('savedAddresses here');
    print(savedAddresses);

    if (savedAddresses != null && savedAddresses.isNotEmpty) {
      List<String> formattedAddresses = savedAddresses.map((addressJson) {
        Map<String, dynamic> addressMap = jsonDecode(addressJson);
        // Assuming your address object has fields like 'fullName', 'phone', 'address', etc.
        String formattedAddress = '${addressMap['fullName']} \n'
            '${addressMap['address']} \n'
            'Phone: ${addressMap['phone']}';
        return formattedAddress;
      }).toList();

      setState(() {
        // For simplicity, let's just display the first formatted address in the list
        address = formattedAddresses[0];
      });
    } else {
      setState(() {
        address = 'No address saved';
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery Address',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddAddressScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  '+ Add New Address',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),

            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address, // Display the fetched address
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Address',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Payment Method',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // Handle cash on delivery
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cash On Delivery',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(Icons.money),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    '5523******32',
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        'Expiry Date: 11/25',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        'Cvv: 288',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Handle adding a new debit/credit card
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddCardScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  '+ Add Debit / Credit Card',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle checkout
                  // Handle adding a new debit/credit card
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderSummaryScreen(),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Set save button color to green
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
