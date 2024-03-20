import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market Updates',
      theme: ThemeData(
        primaryColor: Colors.green[700],
      ),
      home: MarketUpdatesScreen(),
    );
  }
}

class MarketUpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market Updates', style: TextStyle(color: Colors.white)), // Title color to white
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white, // Background color to white
      body: SingleChildScrollView( // Wrap the Column in SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Today\'s Market Price',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color to black
                ),
              ),
            ),
            MarketPriceCard(
              commodity: 'Wheat',
              location: 'Sahiwal',
              avgPrice: 1000,
              maxPrice: 2000,
              distance: 20,
            ),
            MarketPriceCard(
              commodity: 'Wheat',
              location: 'Hyderabad',
              avgPrice: 800,
              maxPrice: 1600,
              distance: 100,
            ),
            MarketPriceCard(
              commodity: 'Cotton',
              location: 'Gujranwala',
              avgPrice: 1200,
              maxPrice: 2500,
              distance: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Icon color to black
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), // Icon color to black
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black), // Icon color to black
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black), // Icon color to black
            label: 'Profile',
          ),
        ],
        currentIndex: 2,
      ),
    );
  }
}

class MarketPriceCard extends StatelessWidget {
  final String commodity;
  final String location;
  final int avgPrice;
  final int maxPrice;
  final int distance;

  MarketPriceCard({
    required this.commodity,
    required this.location,
    required this.avgPrice,
    required this.maxPrice,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container( // Wrap Card with Container
      color: Colors.white, // Set background color to white

      child: Card(

        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                commodity,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Text color to black
                ),
              ),
              SizedBox(height: 8),
              Text(
                location,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Text color to black
                ),
              ),
              Text(
                '$distance km',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Avg Price',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Rs ${avgPrice.toString()} /Kg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color to black
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Max Price',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Rs ${maxPrice.toString()} /Kg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Text color to black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
