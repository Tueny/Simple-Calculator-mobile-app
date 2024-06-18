import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tueny Calculator'),
        ),
        body: const Calculator(),
      ),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Input'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                _buildButton('7'), _buildButton('8'), _buildButton('9'), _buildButton('/'),
                _buildButton('4'), _buildButton('5'), _buildButton('6'), _buildButton('*'),
                _buildButton('1'), _buildButton('2'), _buildButton('3'), _buildButton('-'),
                _buildButton('0'), _buildButton('.'), _buildButton('='), _buildButton('+'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
