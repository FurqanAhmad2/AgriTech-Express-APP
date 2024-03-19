import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  String _addressType = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Address'),
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: SingleChildScrollView( // Wrap with SingleChildScrollView to push save button to bottom
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Center the heading and draw a line below
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Add Address',
                      style: TextStyle(
                        fontSize: 24.0, // Increase font size for the heading
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      height: 2.0,
                      color: Colors.grey, // Draw a line below the heading
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: 'Phone No.',
                ),
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Address',
                  // Increase the size of the address input box
                  contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        labelText: 'City / District',
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: _stateController,
                      decoration: InputDecoration(
                        labelText: 'State',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Save Address As',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ChoiceChip(
                    label: Text('Home'),
                    selected: _addressType == 'Home',
                    onSelected: (bool selected) {
                      setState(() {
                        _addressType = selected ? 'Home' : '';
                      });
                    },
                    backgroundColor: _addressType == 'Home' ? Colors.green : Colors.grey, // Change color based on selection
                    selectedColor: Colors.green,
                  ),
                  SizedBox(width: 8.0),
                  ChoiceChip(
                    label: Text('Work'),
                    selected: _addressType == 'Work',
                    onSelected: (bool selected) {
                      setState(() {
                        _addressType = selected ? 'Work' : '';
                      });
                    },
                    backgroundColor: _addressType == 'Work' ? Colors.green : Colors.grey, // Change color based on selection
                    selectedColor: Colors.green,
                  ),
                  SizedBox(width: 8.0),
                  ChoiceChip(
                    label: Text('Other'),
                    selected: _addressType == 'Other',
                    onSelected: (bool selected) {
                      setState(() {
                        _addressType = selected ? 'Other' : '';
                      });
                    },
                    backgroundColor: _addressType == 'Other' ? Colors.green : Colors.grey, // Change color based on selection
                    selectedColor: Colors.green,
                  ),
                ],
              ),

              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Save address logic
                },
                child: Text('Save'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Set save button color to green
                ),
              ),
              SizedBox(height: 20.0), // Add some space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
