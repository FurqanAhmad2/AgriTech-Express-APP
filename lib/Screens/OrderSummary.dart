import 'package:flutter/material.dart';

class OrderSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
      ),
      backgroundColor: Colors.white, // Set background color to white

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
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Primary',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Phone: +923459821023',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Payment Method',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Credit Card',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            Text(
              '5523 **** **** 4332',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            Text(
              'Expiry Date: 11/25  Cvv: 288',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Order Info',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.black, // Set text color to black
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Items',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
                Text(
                  '3',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
                Text(
                  'Rs: 550',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charges',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
                Text(
                  'Rs: 50',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black, // Set text color to black
                  ),
                ),
                Text(
                  'Rs: 600',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.green, // Set text color to green
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Place order logic
                },
                child: Text('Place Order',
                style: TextStyle(
                  color: Colors.white
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Set button color to green
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
