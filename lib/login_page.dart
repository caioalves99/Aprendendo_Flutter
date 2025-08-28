//import 'package:aprendendo_flutter/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  Widget _body() {
    return Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
          
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Image.asset('assets/images/logo.png'),
                    ),
          
                    SizedBox(height: 20),
          
                    Card(
                      color: Colors.white.withOpacity(0.7),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              TextField(
                                onChanged: (text) {
                                  email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                                    
                              SizedBox(height: 20),
                                    
                              TextField(
                                onChanged: (text) {
                                  senha = text;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Senha",
                                  border: OutlineInputBorder(),
                                ),
                              ),

                              SizedBox(height: 20),

                              ElevatedButton(
                                onPressed: () {
                                  if (email == 'caio@sub.com' && senha == '123') {
                                    Navigator.of(context).pushReplacementNamed('/home');
                                  } else {
                                    print("Login inválido");
                                  }
                                },
                                child: Text("Entrar"),
                              ),
                              
                            ],
                          ),
                        ),
                    ),
          
                    SizedBox(height: 20),
          
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            //width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          
          _body(),
        ],
      )
    );
  }
}
