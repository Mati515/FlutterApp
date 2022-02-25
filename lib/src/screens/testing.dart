import 'package:demo_app/src/screens/carousel.dart';
import 'package:demo_app/src/screens/gridview.dart';
import 'package:demo_app/src/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Testing'),
      onPressed: () {
        Colors.amber[400];
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Navhome()));
      },
    );
  }
}
