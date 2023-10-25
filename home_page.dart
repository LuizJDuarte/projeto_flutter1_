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
  TextEditingController answerController = TextEditingController();

  List<String> questions = [
    "Qual é a sua cor favorita?",
    "Qual é o seu animal favorito?",
    "Onde você gostaria de viajar?",
  ];

  List<String> answers = List.filled(3, "");

  void _showModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            children: List.generate(
              questions.length,
              (index) => Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questions[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    TextField(
                      controller: TextEditingController(text: answers[index]),
                      onChanged: (text) {
                        answers[index] = text;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: EdgeInsets.all(20.0),
        );
      },
    );
  }

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSwitcher(),
            Text('Contador: $counter',
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
            ),
            TextButton(
              onPressed: _showModal,
              child: Text('Abrir Questionário'),
            ),
          ],
        ),
      ),
    );
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
