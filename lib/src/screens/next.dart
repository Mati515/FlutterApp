import 'package:demo_app/src/screens/mylist.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Next extends StatefulWidget {
  // String ListtN= 'Text';
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  int listCount = 1;
  final List<String> entries = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  final List<String> myNames = [
    'Hassan',
    'Ahmad',
    'Ali',
    'Mati',
    'Faizan',
    'Talha',
  ];
  //   Colors.deepOrangeAccent,
  //   // Colors.blueAccent,
  //   Colors.yellowAccent,
  // ];
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: Scaffold(
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://pngimg.com/uploads/fortnite/fortnite_PNG101.png')),
                    ),
                    child: Text(
                      'Header',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    // CircleAvatar ()
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: const Text('ListView Example'),
            ),
            body: Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  int temp = index;
                  final String listtN;
                  return Column(children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text('${++temp}'),
                              foregroundColor: Colors.black87,
                            ),
                            title: Text(listtN = myNames[index]),
                            style: ListTileStyle.list,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      MyListt(listT: listtN)));
                            },
                          )
                        ],
                      ),
                    ),
                    Text(entries[index]),
                  ]);
                },
                itemCount: entries.length,
              ),
            )));
  }
}
