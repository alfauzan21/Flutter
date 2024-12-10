import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Sample Button'),
        ),
      ),
    );
  }
}
