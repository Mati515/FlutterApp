// import 'dart:html';
// import 'dart:ffi';
// import 'dart:html';
import 'home.dart';
// import 'alertbox.dart';
import 'package:demo_app/src/screens/home.dart';
import 'package:demo_app/src/screens/message.dart';
import 'package:demo_app/src/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'alertbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Object get password => null;
  // Object get username => null;

  var usernamel;
  var passwordl;

  var usernamelg;
  var passwordlg;

  final _formKey = GlobalKey <FormState>();

  @override
  void initState() {
    getValuesInSP();
    // TODO: implement initState
    super.initState(); 
  }

  bool _isChecked = false;
  TextEditingController _textController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.amber[400],
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 4,
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
                padding: EdgeInsets.all(
                  MediaQuery.of(context).size.width / 15,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Login Page \n',
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.amber),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text: ' Already registered? If not ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                      text: 'Signup', //clickable
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SignupPage()));
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
                      SizedBox(height: MediaQuery.of(context).size.height / 15),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        validator: (value) =>
                            value!.isEmpty ? 'Username cannot be blank' : null,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                        ),
                        onChanged: (value) {
                          setState(() {
                            usernamelg = value;
                          });
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 60),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        maxLength: 10,
                        validator: (value) =>
                            value!.isEmpty ? 'Password cannot be blank' : null,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                        ),
                        onChanged: (value) {
                          setState(() {
                            passwordlg = value;
                          });
                        },
                        // Validator
                        //   validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Enter a valid password!';
                        //   }
                        //   return null;
                        // },
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: true,
                                    onChanged: (value) {
                                      //handle remember me function
                                      // void _handleRemeberme(bool value) {
                                      //   _isChecked = value;
                                      //   SharedPreferences.getInstance().then(
                                      //     (prefs) {
                                      //       prefs.setBool("remember_me", value);
                                      //       prefs.setString('username',
                                      //           _textController.text);
                                      //       prefs.setString('password',
                                      //           _passwordController.text);
                                      //     },
                                      //   );

                                      // setState(() {
                                      //   _isChecked = value;
                                      // }
                                      // );
                                    }),
                                const Text('Remember Me')
                              ],
                            ),
                            TextButton(
                                onPressed: () {
                                  //forgot page Here
                                },
                                child: const Text('Forgot Password?'))
                          ]),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 100),
                      //Pill shaped
                      ElevatedButton(
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {
                          // setValuesInSP(username,password);
                          // getValuesInSP(usernamel, passwordl);
                          print(usernamelg);
                          print(passwordlg);
                          // print(_username);
                          // print(_password);
                          print(usernamel);
                          print(passwordl);
                          if (usernamel == usernamelg &&
                              passwordl == passwordlg) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Message()));
                            setState(() {
                              usernamelg = (usernamel);
                              passwordlg = (passwordl);
                            });
                            // print(usernamel,);
                            // print(passworl,);
                          } else {
                            print("Invalid password");
                            // Alertbox();
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Alertbox()));

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Navhome()));

                            // const Banner(
                            //   message: ("Retry!/n Wrong Username or Password"),
                            //   location: BannerLocation.topStart,
                            // );
                            //     Navigator.pop(context);
                            // const Text('Successfully login');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                          primary: Colors.deepPurpleAccent,
                          shadowColor: Colors.blue,
                          shape: const StadiumBorder(),
                        ),
                      ),
                    ],
                  ),
                  // onPressed: () => _submit(),
                ),
              ),
            )),
      ),
    );
  }
  getValuesInSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // var username = prefs.getString('username');
    var _password = prefs.getString('password');
    var _username = prefs.getString('username');
    // prefs.setString('password', _passwordController.text);
    setState(() {
      usernamel = _username;
      passwordl = _password;
    });
    // prefs.containsKey("action");
    // return username;
    // return password;
  }
}

