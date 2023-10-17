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
          title: Text('Menu Principal'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                elevation: 15,
                shadowColor: Colors.black),
            child: Text(
                'Clicável '
                '$counter',
                style: TextStyle(
                  color: Colors.white,
                )),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ));
  }
}
