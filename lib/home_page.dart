import 'package:aprendendo_flutter/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDartTheme = false;

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      
      drawer: Drawer(
        child: Column(
          children: [

            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://static-alter1.vidnoz.com/system/asset/202408/66beeabb5fa40.jpg"),
              ),
              accountName: Text("Caio"),
              accountEmail: Text("caio@gmail.com"),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Início"),
              subtitle: Text("Tela de Início"),
              onTap: () {
                print("Home");
              },
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Logout"),
              subtitle: Text("Finalizara sessão"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )

          ],
        )
      ),

      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Página Inicial'),
        actions: [CustomSwitch()],
      ),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            Text('Quantidade de vezes que clicou no botão: $counter', 
              style: TextStyle(fontSize: 18),
            ),
            
            Container(
              height: 10,
            ),
            
            //CustomSwitch(),

            Container(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                ),
              ],
            )
          ],
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});


  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}