import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)), // Title color to white
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white, // Background color to white
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username Lorem',
                      style: TextStyle(
                        fontSize: 20,
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
                    TextButton(
                      onPressed: () {},
                      child: Text('Edit Profile', style: TextStyle(color: Colors.green)), // Button text color to green
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Change Password', style: TextStyle(color: Colors.black)), // Text color to black
            trailing: Icon(Icons.chevron_right, color: Colors.black), // Icon color to black
            onTap: () {},
          ),
          ListTile(
            title: Text('Language', style: TextStyle(color: Colors.black)), // Text color to black
            trailing: Icon(Icons.chevron_right, color: Colors.black), // Icon color to black
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms & Conditions', style: TextStyle(color: Colors.black)), // Text color to black
            trailing: Icon(Icons.chevron_right, color: Colors.black), // Icon color to black
            onTap: () {},
          ),
          ListTile(
            title: Text('Contact Us', style: TextStyle(color: Colors.black)), // Text color to black
            trailing: Icon(Icons.chevron_right, color: Colors.black), // Icon color to black
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Logout', style: TextStyle(color: Colors.black)), // Text color to black
            trailing: Icon(Icons.chevron_right, color: Colors.black), // Icon color to black
            onTap: () {},
          ),
          Expanded(child: Container()),
          Center(
            child: Text('Help & Support', style: TextStyle(color: Colors.black)), // Text color to black
          ),
        ],
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
        currentIndex: 3,
      ),
    );
  }
}