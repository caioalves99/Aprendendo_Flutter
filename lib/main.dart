import 'package:flutter/material.dart';

main() {
  runApp(MyApp(title: 'Projeto Flutter'));
}

class MyApp extends StatelessWidget {
  final String title;

  const MyApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo,),
      home: Container(
        child: Center(child: Text('Projeto teste')),
      )
    );
  }
}
