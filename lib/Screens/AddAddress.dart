import 'dart:convert';
import 'package:flutter/material.dart';


import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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

  String? userEmail;

  @override
  void initState() {
    super.initState();
    _getUserEmail();
  }

  void _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userEmail = prefs.getString('email');
    });
  }

  void _saveAddress() async {
    if (_formKey.currentState!.validate()) {
      var addressData = {
        'email': userEmail,
        'fullName': _fullNameController.text,
        'phone': _phoneController.text,
        'address': _addressController.text,
        'city': _cityController.text,
        'state': _stateController.text,
        'addressType': _addressType,
      };

      try {
        // Save address data to the database
        var response = await http.post(
          Uri.parse('http://192.168.18.86:3002/save_address'),
          body: jsonEncode(addressData),
          headers: {'Content-Type': 'application/json'},
        );

        if (response.statusCode == 201) {
          // Address saved successfully in the database
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Address saved successfully')),
          );
        } else {
          // Error saving address in the database
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error saving address')),
          );
        }

        // Save address data to SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        List<String>? addresses = prefs.getStringList('addresses') ?? [];
        addresses.add(jsonEncode(addressData));

        print("==========================");
        print(addresses);
        await prefs.setStringList('addresses', addresses);
      } catch (error) {
        print('Error saving address: $error');
        // Handle error saving address
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Address'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Address',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: 2.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone No.',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _cityController,
                        decoration: InputDecoration(
                          labelText: 'City / District',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your city or district';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: TextFormField(
                        controller: _stateController,
                        decoration: InputDecoration(
                          labelText: 'State',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your state';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Save Address As',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                      backgroundColor: _addressType == 'Home'
                          ? Colors.green
                          : Colors.grey,
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
                      backgroundColor: _addressType == 'Work'
                          ? Colors.green
                          : Colors.grey,
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
                      backgroundColor: _addressType == 'Other'
                          ? Colors.green
                          : Colors.grey,
                      selectedColor: Colors.green,
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _saveAddress,
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
