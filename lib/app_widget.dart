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
            brightness: Brightness.light,
            //primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.white70,
            // Adicione outras cores personalizadas aqui
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            //primarySwatch: Colors.cyan,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.black87,
              foregroundColor: Colors.white,
            ),
            scaffoldBackgroundColor: Colors.black87,
            // Adicione outras cores personalizadas aqui
          ),
          themeMode: AppController.instance.isDartTheme
              ? ThemeMode.dark
              : ThemeMode.light,
          home: HomePage(),
        );
      },
    );
  }
}
