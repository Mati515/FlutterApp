// import 'navbar.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/src/helper/Carosal.dart';
// import 'package:helpers/helpers.dart';

// import 'navbar.dart';
class Navhome extends StatefulWidget {
  const Navhome({Key? key}) : super(key: key);
  @override
  _NavhomeState createState() => _NavhomeState();
}

class _NavhomeState extends State<Navhome> {
  final _imagePaths = [
    'assets/images/cp1.png',
    'assets/images/gift.png',
    'assets/images/fb.png',
    'assets/images/gift.png',
  ];
  int _currentIndex = 0;

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final tabs = [
      SingleChildScrollView(
          child: Column(children: [
        Container(
          height: size.height * 0.25,
          color: Colors.green,
          child: const Material(
            child: ListTile(
              leading: CircleAvatar(),
              title: Text('ListTile with red background'),
              subtitle: Text('ListTile with red background'),
              // tileColor: Colors.red,
            ),
          ),
        ),

        // Container(
        //   height: size.height * 0.3,
        //   child: GridView.count(
        //     shrinkWrap:mounted,
        //     // Create a grid with 2 columns. If you change the scrollDirection to
        //     // horizontal, this produces 2 rows.
        //     crossAxisCount: 3,
        //     children: List.generate(6, (index) {
        //       return Container(
        //         child: Text(
        //           'product $index',
        //           style: Theme.of(context).textTheme.headline6,
        //         ),
        //       );
        //     }),
        //   ),
        // )
        Container(
          height: size.height * 0.3,
          color: Colors.amber,
          child: GridView.count(
            // physics:ScrollBehavior,
            primary: false,
            childAspectRatio: 4,
            padding: const EdgeInsets.all(4),
            // scrollDirection:,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 2,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                // height:10,
                // padding: const EdgeInsets.all(8),
                child: const Text("He'd have "),
                color: Colors.teal[100],
                height: 15,
              ),
              Container(
                // padding: const EdgeInsets.all(8),
                // child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
                height: 15,
                // child: Row(children: [
                //   ListTile(
                //     leading: Image.asset("gift.png"),
                //     title: const Text('ListTile with teal background'),
                //   ),
                //   // Image(image: AssetImage('gift.png')),
                //   // Icon:Icons.ac_unit,
                // ]),
              ),
              Container(
                  // padding: const EdgeInsets.all(8),
                  // child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                  height: 15,
                  child: const ListTile(
                    leading: CircleAvatar(),
                    title: Text('ListTile with teal background'),
                  )),
              Container(
                // padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
                height: 15,
              ),
              Container(
                // padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
                height: 15,
              ),
              Container(
                // padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...  '),
                color: Colors.teal[600],
                height: 15,
              ),
            ],
          ),
        ),
        Carosal(imagePaths: _imagePaths),
        Stack(children: <Widget>[
          Container(
            color: Colors.red,
            height: size.height * 0.04,
          ),
          Container(
            color: Colors.red,
            height: size.height * 0.04,
          )
        ]),
      ])),

      ////Tab2
      const Center(
        child: Text('Camera'),
      ),
      const Center(
        child: Text('Photos'),
      ),
      const Center(
        child: Text('Message'),
      ),
    ];
    //*** const title = 'Grid List';//forgridview*/
    return Scaffold(
        appBar: AppBar(
            // elevation: size.height * 0.1,
            ),
        body: Builder(builder: (context) {
          return tabs[_currentIndex];
        }),
        bottomNavigationBar: BottomNavigationBar(
            // fixedColor:Colors.deepPurpleAccent[600],
            backgroundColor: Colors.deepPurple[600],
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            // elevation: size.height * 0.1,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.cyanAccent[600],
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.camera_alt_outlined),
                label: 'Camera',
                backgroundColor: Colors.amberAccent[600],
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.photo),
                label: 'Photos',
                backgroundColor: Colors.amberAccent[600],
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.message),
                label: 'Message',
                backgroundColor: Colors.amberAccent[600],
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              print(_currentIndex);
            }));
  }
}
