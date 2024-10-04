import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/main.dart'; // Adjust this import based on your file structure

void main() {
  testWidgets('MyApp renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app title is displayed (this checks the AppBar title).
    expect(find.text('Home Screen'), findsOneWidget); // Assuming 'Home Screen' is the AppBar title.

    // Verify that an ElevatedButton exists.
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Verify the text inside the ElevatedButton.
    expect(find.text('Go to Login'), findsOneWidget);  // Button label is 'Go to Login'
  });
}
