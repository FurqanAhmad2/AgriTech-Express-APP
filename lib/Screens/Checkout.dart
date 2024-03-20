import 'package:flutter/material.dart';

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
  String address = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.';
  String phoneNumber = '+923459821023';
  String cardHolderName = 'John Doe';
  String cardNumber = '5523******32';
  String expiryDate = '11/25';
  int cvv = 288;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout',
            style: TextStyle(
            color: Colors.black
        ),),
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Delivery Address'
            ,
            style: TextStyle(
              color: Colors.black
            ),),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // Handle adding a new address
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('+ Add New Address' ,
                  style: TextStyle(
                      color: Colors.black
                  ),),
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
                  Text(address ,style: TextStyle(color: Colors.black),),
                  SizedBox(height: 8.0),
                  Text('Phone: $phoneNumber'  ,style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text('Payment Method' ,
              style: TextStyle(
                  color: Colors.black
              ),),
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
                    Text('Cash On Delivery'  ,
                      style: TextStyle(
                          color: Colors.black
                      ),),
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
                  Text(cardHolderName , style: TextStyle(color: Colors.black),),
                  Text(cardNumber  ,style: TextStyle(color: Colors.black),),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text('Expiry Date: $expiryDate', style: TextStyle(color: Colors.black),),
                      SizedBox(width: 16.0),
                      Text('Cvv: $cvv' , style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Handle adding a new debit/credit card
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text('+ Add Debit / Credit Card'  ,
                  style: TextStyle(
                      color: Colors.black
                  ),),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle checkout
                },
                child: Text('Next', style: TextStyle(
                    color: Colors.white
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Set save button color to green

                ),
              ),),
        

          ],
        ),
      ),
    );
  }
}