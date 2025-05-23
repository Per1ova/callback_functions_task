import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              color: Colors.lightGreen, print: '1',
            
              
            ),
            InputCounterBox(
              color: Colors.lightBlue, print: '2',
            ),
            InputCounterBox(
              color: Colors.purple, print: '3',
            ),
          ],
        ),
      ),
    );
  }
}
