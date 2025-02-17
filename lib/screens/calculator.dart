import 'package:flutter/material.dart';
import 'package:simple_calculator_app/widgets/navbar.dart'; // Import NavBar

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = "0";
  String _tempOutput = "";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  void _buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _tempOutput = "";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "=") {
      num2 = double.parse(_tempOutput);
      if (operand == "+") _tempOutput = (num1 + num2).toString();
      if (operand == "-") _tempOutput = (num1 - num2).toString();
      if (operand == "×") _tempOutput = (num1 * num2).toString();
      if (operand == "÷") _tempOutput = (num1 / num2).toString();
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (["+", "-", "×", "÷"].contains(buttonText)) {
      num1 = double.parse(_tempOutput);
      operand = buttonText;
      _tempOutput = "";
    } else {
      _tempOutput += buttonText;
    }
    setState(() {
      _output = _tempOutput;
    });
  }

  Widget _buildButton(String label) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _buttonPressed(label),
        child: Text(label, style: TextStyle(fontSize: 24)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(24),
              child: Text(_output, style: TextStyle(fontSize: 48)),
            ),
          ),
          ...["7 8 9 ÷", "4 5 6 ×", "1 2 3 -", "C 0 = +"].map(
            (row) => Row(children: row.split(" ").map(_buildButton).toList()),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(), // Add the NavBar here
    );
  }
}
