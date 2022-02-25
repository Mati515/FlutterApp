import 'package:demo_app/src/screens/next.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Message());

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  static const String _title = 'logged in';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The MaterialBanner is below'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            child: const Text('Check Login Result '),
            onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
              const MaterialBanner(
                padding: EdgeInsets.all(20),
                content: Text('click me '),
                leading: Icon(Icons.login),
                backgroundColor: Colors.green,
                actions: <Widget>[
                  TextButton(
                    onPressed: null,
                    child: Text('Login successful'),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Back'),
            onPressed: () {
              Colors.amber[400];
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>const Next()));
            },
          ),
        ],
      )),
    );
  }
}
