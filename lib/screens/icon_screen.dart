import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Screen'),
      ),
      body: Center(
        child: Icon(
          Icons.star,
          size: 50,
          color: Colors.amber,
        ),
      ),
    );
  }
}
