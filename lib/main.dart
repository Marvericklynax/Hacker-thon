import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';         // Import the LoginScreen
import 'screens/registration_screen.dart';  // Import the RegistrationScreen
import 'screens/mentorship_screen.dart';    // Import the MentorshipScreen
import 'screens/profile_screen.dart';        // Import the ProfileScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youth Entrepreneurship Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),  // The initial screen
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/mentorship': (context) => MentorshipScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
