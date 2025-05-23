import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color color;
  final String print;
  final void Function(int) onTextLengthChanged;
  const InputCounterBox({
    super.key,
    required this.color,
    required this.print,
    required this.onTextLengthChanged,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  TextEditingController inputController = TextEditingController();
  int _length = 0;

  void printChanged(String name) {
    debugPrint("Box $name wurde geändert");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: inputController,
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                  printChanged(widget.print);
                  widget.onTextLengthChanged(_length);
                });
              },
              decoration: InputDecoration(
                hintText: 'Text eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            Text('Länge: $_length'),
          ],
        ),
      ),
    );
  }
}
