import 'package:flutter/material.dart';
import 'package:myapp/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0D1117),
        scaffoldBackgroundColor: Color(0xff0D1117),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home: InputPage(),      
    );
  }
}
