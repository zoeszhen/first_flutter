import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void updateIndex() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  Widget build(context) {
    var questions = ['The question1', 'The question2'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            RaisedButton(child: Text('Text 1'), onPressed: updateIndex),
            RaisedButton(child: Text('Text 2'), onPressed: updateIndex),
            RaisedButton(child: Text('Text 3'), onPressed: updateIndex),
            RaisedButton(child: Text('Text 4'), onPressed: updateIndex),
          ],
        ),
      ),
    );
  }
}
