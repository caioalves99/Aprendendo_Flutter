import 'package:aprendendo_flutter/app_controller.dart';
import 'package:aprendendo_flutter/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            brightness: AppController.instance.isDartTheme 
              ? Brightness.dark 
              : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
