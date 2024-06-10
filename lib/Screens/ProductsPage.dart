import 'dart:convert';
import 'package:agri/Screens/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<SeedItem> seedItems = [];

  @override
  void initState() {
    super.initState();
    // Call function to fetch product data when the widget initializes
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      // Make an HTTP GET request to fetch product data
      final response = await http.get(Uri.parse('http://192.168.0.118:3002/products'));

      if (response.statusCode == 200) {
        // If the request is successful, parse the JSON response
        final List<dynamic> data = json.decode(response.body);

        // Update seedItems list with fetched product data
        setState(() {
          seedItems = data.map((item) => SeedItem.fromJson(item)).toList();
        });
      } else {
        // Handle error if the request fails
        throw Exception('Failed to fetch products (${response.statusCode})');
      }
    } catch (error) {
      // Handle any errors that occur during the process
      print('Error fetching products: $error');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to fetch products. Please try again later.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AGRITECH'),
        backgroundColor: Colors.green, // Set title background color to green
        actions: [
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Handle voice search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              childAspectRatio: 0.8,
              children: seedItems.map((item) => SeedItemCard(item)).toList(),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white, // Set background color to white
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          }
        },
      ),
    );
  }
}

class SeedItem {
  final String name;
  final String price;
  final String imageUrl;
  final String description; // Add description field

  SeedItem(this.name, this.price, this.imageUrl, this.description);

  factory SeedItem.fromJson(Map<String, dynamic> json) {
    return SeedItem(
      json['name'] as String,
      json['price'] as String,
      json['imageLink'] as String, // Update to match the key in your JSON response
      json['description'] as String, // Add description
    );
  }
}

class SeedItemCard extends StatelessWidget {
  final SeedItem item;

  SeedItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          // Navigate to product detail page when the card is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(item: item),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                item.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error); // Placeholder icon for error
                },
              ),

            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    item.price,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatefulWidget {
  final SeedItem item;

  ProductDetailPage({required this.item});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _addToCart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? cartData = prefs.getStringList('cart');
    if (cartData == null) {
      cartData = [];
    }

    // Calculate total price
    double totalPrice = double.parse(widget.item.price) * _quantity;

    cartData.add(jsonEncode({
      'name': widget.item.name,
      'price': widget.item.price,
      'quantity': _quantity,
      'totalPrice': totalPrice.toString(), // Store total price
    }));

    await prefs.setStringList('cart', cartData);

    setState(() {
      _quantity = 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name),
        backgroundColor: Colors.green.shade800,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  widget.item.imageUrl,
                  fit: BoxFit.cover,
                  height: 200.0,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Price: ${widget.item.price}',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green.shade800,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: _decrementQuantity,
                      ),
                      Text(
                        '$_quantity',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: _incrementQuantity,
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 8.0),
              Text(
                'Description: ${widget.item.description}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _addToCart,
                child: Text('Add to Cart'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }
}




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
        title: Text(
          'Cart',
          style: TextStyle(
            color: Colors.white, // Set title color to white
          ),
        ),
        backgroundColor: Colors.green.shade800, // Set appbar background to green
      ),
      body: Container(
        color: Colors.white, // Set body background to white
        child: Column(
          children: [
            Expanded(
              child: _cartItems.isEmpty
                  ? Center(
                child: Text(
                  'Cart is empty',
                  style: TextStyle(color: Colors.black), // Set text color to black
                ),
              )
                  : ListView.builder(
                itemCount: _cartItems.length,
                itemBuilder: (context, index) {
                  double totalPrice = double.parse(_cartItems[index]['price']) * _cartItems[index]['quantity'];
                  return ListTile(
                    title: Text(_cartItems[index]['name'], style: TextStyle(color: Colors.black)), // Set text color to black
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price: ${_cartItems[index]['price']}', style: TextStyle(color: Colors.black)), // Set text color to black
                        Text('Quantity: ${_cartItems[index]['quantity']}', style: TextStyle(color: Colors.black)), // Set text color to black
                        Text('Total Price: $totalPrice', style: TextStyle(color: Colors.black)), // Set text color to black
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => _removeItem(index),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle the logic for proceeding to checkout
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );

              },
              child: Text('Proceed to Checkout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade800, // Set button background color to green
                textStyle: TextStyle(color: Colors.white), // Set button text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}





void main() {
  runApp(MaterialApp(
    home: ProductPage(),
  ));
}
