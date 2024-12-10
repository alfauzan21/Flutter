import 'package:flutter/material.dart';
import 'screens/button_screen.dart';
import 'screens/form.screen.dart';
import 'screens/text_screen.dart';
import 'screens/icon_screen.dart';
import 'screens/image_screen.dart';
import 'screens/column_screen.dart';
import 'screens/footer_screen.dart';
import 'screens/basic_layout/basic_layout_screen.dart';
import 'screens/scaffold_screen.dart';
import 'screens/basic_layout/sizedbox_layout_screen.dart';
import 'screens/basic_layout/padding_layout_screen.dart';
import 'screens/basic_layout/grid_layout_screen.dart';
import 'screens/basic_layout/expanded_layout_screen.dart';
import 'screens/basic_layout/wrap_layout_screen.dart';
import 'screens/bottom_nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Button Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ButtonScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Form Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Text Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Icon Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Image Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Column Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColumnScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Footer Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FooterScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Basic Layout Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BasicLayoutScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Scaffold Screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScaffoldScreen()),
              );
            },
          ),
          ListTile(
            title: Text('SizedBox Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SizedBoxLayoutScreen()),
            ),
          ),
          ListTile(
            title: Text('Padding Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaddingLayoutScreen()),
            ),
          ),
          ListTile(
            title: Text('Grid Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridLayoutScreen()),
            ),
          ),
          ListTile(
            title: Text('Expanded Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExpandedLayoutScreen()),
            ),
          ),
          ListTile(
            title: Text('Wrap Layout'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WrapLayoutScreen()),
            ),
          ),
          ListTile(
            title: Text('Bottom Nav'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BotNavs()),
            ),
          ),
        ],
      ),
    );
  }
}
