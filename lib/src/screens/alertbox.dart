import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
// void main() => runApp(const Message()); 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Alertbox(),
    );
  }
}
class Alertbox extends StatelessWidget {
  const Alertbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Flutter AlertDialog - googleflutter.com'),
      ),
      body: Center(
        child: ElevatedButton(
          child:const  Text('Alert Dialog'),
          onPressed: () {
            _showDialog(context);
          },
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:  const Text("Alert!!"),
        content: const Text("Invalid Username or Password!"),
        actions: <Widget>[
           ElevatedButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}