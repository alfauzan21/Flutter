import 'package:flutter/material.dart';

class GridLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Layout'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          crossAxisSpacing: 10, // Jarak horizontal
          mainAxisSpacing: 10, // Jarak vertikal
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue[(index + 1) * 100],
            alignment: Alignment.center,
            child: Text(
              'Item ${index + 1}',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
