import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddSeedPage extends StatefulWidget {
  @override
  _AddSeedPageState createState() => _AddSeedPageState();
}

class _AddSeedPageState extends State<AddSeedPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController imageLinkController = TextEditingController();
  TextEditingController descriptionController = TextEditingController(); // New controller for description

  Future<void> _addSeed(String name, String price, String imageLink, String description) async {
    final url = 'http://192.168.0.118:3002/addSeed';
    final response = await http.post(
      Uri.parse(url),
      body: {
        'name': name,
        'price': price,
        'imageLink': imageLink,
        'description': description, // Include description in the request body
      },
    );

    if (response.statusCode == 201) {
      // Seed added successfully
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Seed added successfully!'),
        ),
      );
    } else {
      // Error adding seed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to add seed. Please try again.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Seed'),
        backgroundColor: Colors.green, // Set title background color to green
      ),
      body: Container(
        color: Colors.white, // Set background color to white
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Seed Name',
                  labelStyle: TextStyle(color: Colors.black), // Set label text color to black
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: priceController,
                decoration: InputDecoration(
                  labelText: 'Seed Price',
                  labelStyle: TextStyle(color: Colors.black), // Set label text color to black
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: imageLinkController,
                decoration: InputDecoration(
                  labelText: 'Image Link',
                  labelStyle: TextStyle(color: Colors.black), // Set label text color to black
                ),
              ),
              SizedBox(height: 16.0), // Add some spacing between fields
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description', // Label for the description field
                  labelStyle: TextStyle(color: Colors.black), // Set label text color to black
                ),
              ),
              SizedBox(height: 32.0), // Add some spacing below the fields
              ElevatedButton(
                onPressed: () {
                  String name = nameController.text.trim();
                  String price = priceController.text.trim();
                  String imageLink = imageLinkController.text.trim();
                  String description = descriptionController.text.trim(); // Get text from description field
                  if (name.isNotEmpty && price.isNotEmpty && imageLink.isNotEmpty && description.isNotEmpty) {
                    _addSeed(name, price, imageLink, description); // Pass description to _addSeed function
                    // Clear text fields after adding seed
                    nameController.clear();
                    priceController.clear();
                    imageLinkController.clear();
                    descriptionController.clear(); // Clear description field too
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter seed name, price, image link, and description.'),
                      ),
                    );
                  }
                },
                child: Text(
                  'Add Seed',
                  style: TextStyle(color: Colors.white), // Set button text color to white
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set button background color to green
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
