// import 'dart:html';
//SignupPage
import 'package:flutter/gestures.dart';
import 'package:demo_app/src/screens/ddd.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // bool _value = false;
    // size.width * 1;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            height: size.height * 0.7,
            width: size.width * 1.0,
            child: Container(
              // height: size.height * 0.4,
              // width: size.width * 1.0,
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width / 15,
              ),

              // margin: EdgeInsets.all(2.0),
              // color: Colors.amberAccent,

              /* */
              child: Column(children: [
                // const ListTile(
                //   title: Text(
                //     'Login Page',
                //     style: TextStyle(
                //       fontSize: 24.0,
                //       color: Colors.deepPurpleAccent,
                //       fontWeight: FontWeight.w600,
                //     ),
                //   ),
                //   subtitle: Text(
                //     'A sufficiently long subtitle',
                //     style: TextStyle(
                //       fontSize: 15.0,
                //       color: Colors.black,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),

                RichText(
                  text: TextSpan(
                      text: 'Signup Page \n',
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.deepPurpleAccent),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'If you have already registered,',
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: 'please login ', //clickable
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('The button is clicked!');
                              },
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ]),

                  ///
                  // const Text(
                  //   'Signup Form',
                  //     style: TextStyle(
                  //       // Padding(padding: EdgeInsets.all(8.0),),
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 30, //but instead of 300 it's 350
                  //     )),
                ),
                Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 15),
                  ],
                ),
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
                  onPressed: () {
                    MaterialPageRoute(builder: (context) => const LoginPage());
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    primary: Colors.deepPurpleAccent,
                    shadowColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    "Signup",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 100),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  // ignore: avoid_unnecessary_containers
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                      shadowColor: Colors.blue,
                      shape: const StadiumBorder(),
                    ),
                    child: null,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shadowColor: Colors.amberAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: null,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shadowColor: Colors.redAccent,
                        shape: const StadiumBorder(),
                      ),
                      child: null,
                    ),

                    //   Container(  child:ElevatedButton(
                    //     onPressed: () {},
                    //     style: ElevatedButton.styleFrom(
                    //       primary: Colors.teal,
                    //       shadowColor: Colors.blue,
                    //       shape: const StadiumBorder(),
                    //     ), child: null,
                    //  ),
                  ),
                ]),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
