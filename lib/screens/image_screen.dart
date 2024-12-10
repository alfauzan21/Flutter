import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Screen'),
      ),
      body: Center(
        child: Image.network('https://via.placeholder.com/150'),
      ),
    );
  }
}
