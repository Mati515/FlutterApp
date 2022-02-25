import 'package:demo_app/src/screens/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  _SignupPage createState() => _SignupPage();
}

class _SignupPage extends State<SignupPage> {
  String? username,password;
  @override
  Widget build(BuildContext context) {
    // Map<String, Object> values = <String, Object>{'counter': 1};
    // SharedPreferences.setMockInitialValues(values);
    return Scaffold(
      backgroundColor: Colors.amber[400],
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
            // height: size.height * 0.7,
            // width: size.width * 1.0,
            child: Container(
              // height: size.height * 0.4,
              // width: size.width * 1.0,
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width / 15,
              ),
              // margin: EdgeInsets.all(2.0),
              // color: Colors.amberAccent,
              /* */
              child: Form(
                child: Column(
                  children: [
                    // const ListTile(
                    //   title: Text(
                    //     'Login Page',
                    //     style: TextStyle(
                    //       fontSize: 24.0,
                    //       color: Colors.amber[400],
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
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Signup Page \n',
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.amber),
                              children: <TextSpan>[
                                const TextSpan(
                                  text: ' If Already registered ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: 'login', //clickable
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginPage()));
                                        // print('The button is clicked!');
                                      },
                                    style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ]),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 15),
                      ],
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      ),
                      onChanged: (value){
                        setState(() {
                          username = value;
                        });
                      },
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.030),
                    TextFormField(
                      /**
              TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ), * 
               */

                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,

                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Enter a valid password!';
                      //   }
                      //   return null;
                      // },

                      decoration: const InputDecoration(
                        labelText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                      ),
                      onChanged: (value){
                        setState(() {
                          password = value;
                        });
                      },
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
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.030),
                        
                    //               Widget _submitButton() {
                    // return Container(
                    //   padding: EdgeInsets.all(20),
                    //   child: ElevatedButton(
                    //     child: Text('Submit'),
                    //     onPressed: () {
                    //       if(_formKey.currentState.validate()) {
                    //         Navigator.push(
                    //           context, MaterialPageRoute(builder: (_) => SuccessPage()));
                    //       }
                    // } ,
                    //     ),
                    //   );
                    // }
                    ElevatedButton(
                      onPressed: () {
                        setValuesInSP(username, password);
                        // SubmitButtonInputElement:
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                        // primary: Colors.deepPurpleAccent,
                        shadowColor: Colors.amber[400],
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        " Sign up ",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),

                    //Pill shaped
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //         builder: (context) => const LoginPage()));
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 100, vertical: 15),
                    //     primary: Colors.amber[400],
                    //     shadowColor: Colors.blue,
                    //     shape: const StadiumBorder(),
                    //   ),
                    //   child: const Text(
                    //     "Signup",
                    //     style: TextStyle(color: Colors.white, fontSize: 18),
                    //   ),
                    // ),

                    SizedBox(height: MediaQuery.of(context).size.height / 20),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'or login with',
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 30),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  FontAwesomeIcons.facebook,
                                  size: 30,
                                  color: Colors.blue,
                                ),

                                Icon(
                                  FontAwesomeIcons.twitter,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                                Icon(
                                  FontAwesomeIcons.googlePlus,
                                  color: Colors.red,
                                  size: 30,
                                ),

                                // ElevatedButton(
                                //   onPressed: () {},
                                //   style: ElevatedButton.styleFrom(
                                //     primary: Colors.red,
                                //     shadowColor: Colors.redAccent,
                                //     shape: const StadiumBorder(),
                                //   ),
                                //   child: const Text(
                                //     "G+",
                                //     style: TextStyle(
                                //         color: Colors.white, fontSize: 18),
                                //   ),
                                // ),
                              ]),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  setValuesInSP(String? username, String? password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username!);
    await prefs.setString('password', password!);
    final String? action = prefs.getString('username');
    // prefs.containsKey("action");
    // print(prefs);
  }
}



