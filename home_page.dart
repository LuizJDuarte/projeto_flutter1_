import 'package:flutter/material.dart';
import 'package:projeto1/app_controller.dart';

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
          title: Center(
            child: Text('Menu Principal'),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomSwitcher(),
                Text('Contador:' '$counter',
                    style: TextStyle(
                      fontSize: 50,
                    )),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      elevation: 15,
                      shadowColor: Colors.black),
                  child: Text('Clicável ',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                    )
                  ],
                )
              ],
            )));
  }
}

class CustomSwitcher extends StatelessWidget {
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
