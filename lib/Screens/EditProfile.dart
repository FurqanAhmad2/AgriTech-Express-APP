import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile', style: TextStyle(color: Colors.white)), // Title color to white
        backgroundColor: Colors.green, // Background color to green
      ),
      backgroundColor: Colors.white, // Background color to white
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
              'Username Lorem',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Text color to black
              ),
            ),
            Text(
              'user@email.com',
              style: TextStyle(
                color: Colors.black, // Text color to black
              ),
            ),
            SizedBox(height: 32.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone No.',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Handle update logic here
              },
              child: Text('Update'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Button color to green
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}