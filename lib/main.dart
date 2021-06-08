import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _updateIndex() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(child: Text('Text 1'), onPressed: _updateIndex),
            RaisedButton(child: Text('Text 2'), onPressed: _updateIndex),
            RaisedButton(child: Text('Text 3'), onPressed: _updateIndex),
            RaisedButton(child: Text('Text 4'), onPressed: _updateIndex),
          ],
        ),
      ),
    );
  }
}
