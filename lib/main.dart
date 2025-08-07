import 'package:flutter/material.dart';

main(){
  runApp(
    Container(
      child: Center(
        child: Text(
          'Hello, World!',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50,
          color: Colors.blue,),
        )
      )
    ),
  );
}