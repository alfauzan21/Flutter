import 'package:flutter/material.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Footer Screen'),
      ),
      body: Center(
        child: Text('This is the footer screen.'),
      ),
    );
  }
}
