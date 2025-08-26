import 'package:aprendendo_flutter/app_controller.dart';
import 'package:aprendendo_flutter/home_page.dart';
import 'package:aprendendo_flutter/login_page.dart';
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
              //backgroundColor: Colors.white,
              //foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.white,
            // Adicione outras cores personalizadas aqui
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            //primarySwatch: Colors.cyan,
            appBarTheme: AppBarTheme(
              //backgroundColor: Colors.black,
              //foregroundColor: Colors.white,
            ),
            //scaffoldBackgroundColor: Colors.black,
            // Adicione outras cores personalizadas aqui
          ),
          themeMode: AppController.instance.isDartTheme
              ? ThemeMode.dark
              : ThemeMode.light,
          
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
