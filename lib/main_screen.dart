import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _lengths = [0, 0, 0];

  int get totalLengths => _lengths.reduce((a, b) => a + b);

  void updateLength(int index, int newLength) {
    setState(() {
      _lengths[index] = newLength;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              color: Colors.lightGreen,
              print: '1',
              onTextLengthChanged: (len) => updateLength(0, len) ,
            ),
            InputCounterBox(
              color: Colors.lightBlue,
              print: '2',
              onTextLengthChanged: (len) => updateLength(1, len),
            ),
            InputCounterBox(
              color: Colors.purple,
              print: '3',
              onTextLengthChanged: (len) => updateLength(2, len),
            ),
            Text(
              'Summe aller Längen: $totalLengths',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
