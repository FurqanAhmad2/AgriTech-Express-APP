import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    // Get email from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userEmail = prefs.getString('email');

    // Make a request to fetch user data from the backend API
    try {
      final response = await http.get(Uri.parse('http://192.168.100.9:3002/user_data/$userEmail'));

      if (response.statusCode == 200) {
        // Parse the response body
        final userData = jsonDecode(response.body);

        // Update the text controllers with the received data
        setState(() {
          _usernameController.text = userData['username'];
          _emailController.text = userData['email'];
          _phoneController.text = userData['phone'];
        });
      } else {
        // Handle error
        print('Failed to fetch user data: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error
      print('Error fetching user data: $error');
    }
  }

  Future<void> _updateUser() async {
    final username = _usernameController.text;
    final phone = _phoneController.text;

    // Get the email from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userEmail = prefs.getString('email');

    // Make a request to update user data in the backend API
    try {
      final response = await http.put(
        Uri.parse('http://192.168.100.9:3002/update_user/$userEmail'),
        body: jsonEncode({
          'username': username,
          'phone': phone,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        // Handle successful update
        print('User updated successfully');
      } else {
        // Handle error
        print('Failed to update user: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error
      print('Error updating user: $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile', style: TextStyle(color: Colors.black)), // Set app bar text color to black
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/placeholder_avatar.png'),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 16.0,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),


            Text(
              _usernameController.text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              _emailController.text,
              style: TextStyle(
                color: Colors.black,
              ),
            ),



            SizedBox(height: 32.0),
            TextField(
              controller: _usernameController,
              style: TextStyle(color: Colors.black), // Set text color to black
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person, color: Colors.black), // Set icon color to black
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              style: TextStyle(color: Colors.black), // Set text color to black
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email, color: Colors.black), // Set icon color to black
              ),
              enabled: false, // Disable editing
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              style: TextStyle(color: Colors.black), // Set text color to black
              decoration: InputDecoration(
                labelText: 'Phone No.',
                prefixIcon: Icon(Icons.phone, color: Colors.black), // Set icon color to black
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _updateUser,
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
