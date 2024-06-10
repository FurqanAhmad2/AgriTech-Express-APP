import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather', style: TextStyle(color: Colors.white)), // Title color to white
        backgroundColor: Colors.green, // Background color to green
      ),
      backgroundColor: Colors.white, // Background color to white
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color to black
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8.0),
                Text(
                  'Hyderabad, Sindh Pakistan',
                  style: TextStyle(color: Colors.black), // Text color to black
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wb_sunny, size: 48.0, color: Colors.yellow),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30°C',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color to black
                      ),
                    ),
                    Text(
                      'Partly clouds',
                      style: TextStyle(color: Colors.black), // Text color to black
                    ),
                    Text(
                      'High: 35°C / Low: 25°C',
                      style: TextStyle(color: Colors.black), // Text color to black
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.compress),
                    SizedBox(height: 8.0),
                    Text(
                      '2 ATM',
                      style: TextStyle(color: Colors.black), // Text color to black
                    ),
                  ],
                ),
                // Add similar modifications for other columns
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Hourly Forecast',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color to black
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.wb_sunny),
                    SizedBox(height: 8.0),
                    Text(
                      '30°C',
                      style: TextStyle(color: Colors.black), // Text color to black
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Now',
                      style: TextStyle(color: Colors.black), // Text color to black
                    ),
                  ],
                ),
                // Add similar modifications for other columns
              ],
            ),
          ],
        ),
      ),
    );
  }
}