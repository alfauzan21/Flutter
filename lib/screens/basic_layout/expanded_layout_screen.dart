import 'package:flutter/material.dart';

class ExpandedLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Layout'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2, // Proporsi 2:1:1
            child: Container(color: Colors.red),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
