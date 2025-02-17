import 'package:flutter/material.dart';
import 'package:simple_calculator_app/widgets/navbar.dart'; // Import NavBar
import 'calculator.dart'; // Import CalculatorPage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login Page", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
              child: Text("Go to Calculator"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(), // Add the NavBar here
    );
  }
}
