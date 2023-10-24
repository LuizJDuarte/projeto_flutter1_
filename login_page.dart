import 'package:flutter/material.dart';
import 'package:projeto1/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text('Login'),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      if (email == 'raquelmeloq@hotmail.com' &&
                          senha == 'blabla') {
                        //print('Correto');
                        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()),);
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('Incorreto');
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    child: Text(
                      'Logar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
