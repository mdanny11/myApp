import 'package:flutter/material.dart';
import 'package:simple_calculator_app/widgets/navbar.dart'; // Import NavBar

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Center(child: Text("Signup Page", style: TextStyle(fontSize: 24))),
      bottomNavigationBar: NavBar(), // Add the NavBar here
    );
  }
}
