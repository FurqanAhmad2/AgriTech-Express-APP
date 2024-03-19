import 'package:flutter/material.dart';

class OrderPlacedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100.0,
            ),
            SizedBox(height: 24.0),
            Text(
              'Your order has been placed successfully!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to shopping screen or homepage
              },
              child: Text('Continue Shopping',
              style: TextStyle(
                color: Colors.white
              ),),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Set save button color to green

              ),
            
            ),

          ],
        ),
      ),
    );
  }
}