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
      Stack(children: [
        SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: size.height * 0.23,
            // color: Colors.deepPurpleAccent,
            child: const Material(
              child: ListTile(
                // contentPadding: EdgeInsets.all(8.0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/gift.png'),
                  // minRadius: 30,
                  // Radius: 50,
                  backgroundColor: Colors.yellow,
                ),
                title: Text('Muti-ur-Rahman'),
                subtitle: Text('learning Flutter'),
                tileColor: Colors.deepPurpleAccent,
              ),
            ),
          ),
          //Gridview
          Container(
            height: size.height * 0.3, //0.3
            color: Colors.white,
            // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 70, 8, 0),
              child: GridView.count(
                // physics:ScrollBehavior,
                primary: true,
                childAspectRatio: 4,
                // padding: const EdgeInsets.all(0),
                // scrollDirection:,
                crossAxisSpacing: 10,
                mainAxisSpacing: 1,
                crossAxisCount: 2,
                children: const [
                  // 1
                  ListTile(
                    leading: Icon(Icons.shopping_basket),
                    title: Text('E-Shopping'),
                  ),
                  //2
                  ListTile(
                    leading: Icon(Icons.receipt_rounded),
                    title: Text('Bill Payement'),
                  ),
                  ListTile(
                    leading: Icon(Icons.receipt_long_rounded),
                    title: Text('Charity'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Recieved Gift'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Bill Slip'),
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Payement Back'),
                  ),
                ],
              ),
            ),
          ),
          Carosal(imagePaths: _imagePaths), //from helper/widget
        ])),
        Positioned(
          height: size.width * 0.25,
          top: size.height * 0.15,
          left: size.width * 0.1,
          right: size.width * 0.1,
          // width: size.width * 0.7,
          child: Container(
            // margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(color: Colors.deepPurpleAccent)),
            width: 400,
            height: 200,
            // child: Text(
            //   'purpleArmy',
            //   style:
            //       TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
            // ),
            //  widget? child:Row(children: [],),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('My Options'),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      const Text('28-02-2022'),
                    ],
                  ),
                ),
                // Spacer(flex: 1,),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                  // indent: 20,
                  // endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.message),
                            Text('Message'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.home,
                            ),
                            Text('Home'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.category),
                            Text('Category'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.money_outlined),
                            Text('Money'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.call),
                            Text('Call'),
                          ],
                        ), // Column(
                        //   children: [
                        //   Icon(Icons.ac_unit_outlined),
                        //   Text('asad'),
                        // ]),
                        // Column(
                        //   children: [
                        //     Icon(Icons.ac_unit_outlined),
                        //     Text('asad'),
                        //   ],
                        // ),
                        // Column(
                        //   children: [
                        //     Icon(Icons.ac_unit_outlined),
                        //     Text('asad'),
                        //   ],
                        // ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ]),
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
    return Scaffold(
        appBar: AppBar(
            // elevation:size.height * 0.1,
            // elevation:,
            // backgroundColor:Colors.amberAccent,
            ),
        body: Builder(builder: (context) {
          return tabs[_currentIndex];
        }),
        bottomNavigationBar: BottomNavigationBar(
            // fixedColor:Colors.deepPurpleAccent[600],
            backgroundColor: Colors.deepPurple[800],
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            // elevation: size.height * 0.1,
            items: [
              const BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.yellowAccent,
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
