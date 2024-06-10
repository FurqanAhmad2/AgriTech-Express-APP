import 'package:flutter/material.dart';
import 'ProductsPage.dart'; // Assuming SeedItem is imported from ProductsPage.dart

class ProductDetailPage extends StatelessWidget {
  final SeedItem item;

  ProductDetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.green, // Title background color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16.0),
              Text(
                'Prices: ${item.price}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black, // Text color
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Description: ${item.description}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black, // Text color
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white, // Background color
    );
  }
}
