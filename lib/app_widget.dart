import 'package:aprendendo_flutter/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomePage(),
    );
  }
}
