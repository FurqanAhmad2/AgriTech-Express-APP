import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white, // Set background color to white
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Certainly:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.green, // Set title color to green
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'These terms and conditions outline the rules and regulations for the use of this service.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'By accessing this service, you agree to abide by these terms and conditions. If you disagree with any part of these terms, you may not access the service.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'You must be at least 18 years of age to use this service. By using the service, you warrant that you are at least 18 years old.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'The content of the service is the intellectual property of the service provider and protected by copyright laws.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'You are granted limited license only for the purposes of viewing the material contained on this service.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'You must not republish material from this service, sell, rent, or sub-license material from the service.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'Engaging in certain activities on the service may be restricted, such as harassing others, using obscene language, or violating the law.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'This service is provided "as is," without any warranties, expressed or implied.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'We reserve the right to modify or replace these terms at our sole discretion. Your continued use of the service constitutes acceptance of those changes.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'If you have any questions about these terms and conditions, please contact us.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
            SizedBox(height: 16.0),
            Text(
              'By using this service, you agree to these terms and conditions.',
              style: TextStyle(color: Colors.black), // Set text color to black
            ),
          ],
        ),
      ),
    );
  }
}