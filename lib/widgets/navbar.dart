import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../screens/signup.dart';
import '../screens/dashboard.dart';
import '../screens/calculator.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Ensure all items are visible
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home), // Icon for Dashboard
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.login), // Icon for Login
          label: 'Login',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.app_registration), // Icon for Signup
          label: 'Signup',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate), // Icon for Calculator
          label: 'Calculator',
        ),
      ],
      currentIndex: 0, // Default selected index
      selectedItemColor: Colors.blue, // Color for selected item
      unselectedItemColor: Colors.grey, // Color for unselected items
      onTap: (index) {
        // Navigate to the corresponding screen based on the index
        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            );
            break;
          case 1:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            break;
          case 2:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
            break;
          case 3:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CalculatorPage()),
            );
            break;
        }
      },
    );
  }
}
