import 'package:flutter/material.dart';

class WrapLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Layout'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 10.0, // Jarak antar elemen secara horizontal
          runSpacing: 10.0, // Jarak antar elemen secara vertikal
          children: List.generate(
            8,
            (index) => Container(
              color: Colors.blue[(index + 1) * 100],
              height: 50,
              width: 50,
              alignment: Alignment.center,
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
