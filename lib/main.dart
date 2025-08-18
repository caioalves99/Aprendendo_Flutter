import 'package:flutter/material.dart';

main() {
  runApp(MyApp(title: 'Projeto Flutter'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50, color: Colors.red),
        ),
      ),
    );
  }
}
