import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the Login Screen
            Navigator.pushNamed(context, '/login');
          },
          child: Text('Go to Login'),
        ),
      ),
    );
  }
}
