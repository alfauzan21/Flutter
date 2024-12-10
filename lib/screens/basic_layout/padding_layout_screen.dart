import 'package:flutter/material.dart';

class PaddingLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Layout'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Padding global
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0), // Padding lokal
              child: Container(color: Colors.red, height: 50, width: 100),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(color: Colors.green, height: 50, width: 100),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Container(color: Colors.blue, height: 50, width: 100),
            ),
          ],
        ),
      ),
    );
  }
}
