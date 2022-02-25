// import 'package:demo_app/home_screen.dart';
import 'package:demo_app/src/helper/Carosal.dart';
import 'package:demo_app/src/screens/login_page.dart';
import 'package:demo_app/src/screens/signup.dart';
import 'package:flutter/material.dart';
import '../helper/Carosal.dart';

class MyListt extends StatelessWidget {
  final String listT;

  const MyListt({Key? key, required this.listT}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(listT),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
            child: const Text('Signup Page'),
            onPressed: () {
              Colors.amber[400];
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignupPage()));
            },
          ),
          ElevatedButton(
            child: const Text('Login Page'),
            onPressed: () {
              Colors.amber[400];
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
          ),
          ElevatedButton(
            child: const Text('MyCarousel Sample'),
            onPressed: () {
              Colors.amber[400];
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Carosal(imagePaths: [
                        'assets/images/cp1.png',
                        'assets/images/gift.png',
                        'assets/images/fb.png',
                        'assets/images/gift.png',
                      ])));
            },
          ),
        ]),
      ),
    );
  }
}
