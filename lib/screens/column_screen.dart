import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('First Item'),
          SizedBox(height: 10),
          Text('Second Item'),
          SizedBox(height: 10),
          Text('Third Item'),
        ],
      ),
    );
  }
}
