import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
           
      body: Center(
        child: GestureDetector(
          child: 
            Text('Contador: $counter',
              style: TextStyle(fontSize: 30, color: Colors.indigo)
            ),
            onTap: () {
              setState(() {
            counter++;
          });
            },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),

    );
  }
}