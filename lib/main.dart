import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Page',
        ),
      ),
      body: Center(
          child: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
          child: Text('goto 2'),
        ),
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'goto 1',
            ),
          ),
        ),
      ),
    );
  }
}
