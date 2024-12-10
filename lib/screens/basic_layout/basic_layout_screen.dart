import 'package:flutter/material.dart';

class BasicLayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Layout'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0),
              color: Colors.blue,
              child: Text(
                'Header Section',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16), // SizedBox untuk memberikan jarak antar elemen

            // Contoh Row dengan Padding
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Item 2',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16), // Jarak tambahan menggunakan SizedBox

            // Content Section
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey[200],
                child: Text(
                  'Content Section',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 16), // Jarak sebelum footer

            // Footer Section dengan Padding
            Container(
              padding: EdgeInsets.all(12.0),
              color: Colors.grey[300],
              width: double.infinity,
              child: Text(
                'Footer Section',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
