import 'package:flutter/material.dart';

class SizedBoxLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(color: Colors.red, height: 50, width: 100),
            SizedBox(height: 20),
            Container(color: Colors.green, height: 50, width: 100),
            SizedBox(width: 20), 
            Container(color: Colors.blue, height: 50, width: 100),
          ],
        ),
      ),
    );
  }
}
