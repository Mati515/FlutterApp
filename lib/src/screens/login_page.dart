// import 'dart:html';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // bool _value = false;
    // size.width * 1;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3 ,
            ),
            height: size.height * 1.0, 
            width: size.width * 1.0,

            // height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              height: size.height * 0.5,
              width: size.width * 1.0,
              child: Container(
                // height: size.height * 0.4,
                // width: size.width * 1.0,
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.width / 15,
                ),

                // margin: EdgeInsets.all(2.0),
                // color: Colors.amberAccent,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Login Page',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'A sufficiently long subtitle',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    // const Text(
                    //   'Login Form',
                    //     style: TextStyle(
                    //       // Padding(padding: EdgeInsets.all(8.0),),
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 30, //but instead of 300 it's 350
                    //     )),

                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 60),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      ),
                    ),
                    // SizedBox(height: MediaQuery.of(context).size.height / 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (value) {
                                    //  setState(() {
                                    // _value = value;
                                    // });
                                  }),
                              const Text('Remember Me'),
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                //forgot page Here
                              },
                              child: const Text('Forgot Password?'))
                        ]),
                    SizedBox(height: MediaQuery.of(context).size.height / 100),
                    //Pill shaped
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                        primary: Colors.deepPurpleAccent,
                        shadowColor: Colors.blue,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
