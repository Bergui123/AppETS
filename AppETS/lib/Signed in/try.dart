import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TryPage(),
    );
  }
}

class TryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Try Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add action when button is pressed
            print('Button Pressed!');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Replaced primary with backgroundColor
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50), // Make the button big
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Optional: rounded corners
            ),
          ),
          child: Text(
            'Press Me!',
            style: TextStyle(
              fontSize: 24, // Large font size for the text
              color: Colors.white, // White text color
            ),
          ),
        ),
      ),
    );
  }
}
