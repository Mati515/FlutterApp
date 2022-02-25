// //NavigationBar
// //navnbar
// import 'package:flutter/material.dart';

// class NavbarBottom extends StatefulWidget {
//   const NavbarBottom({Key? key}) : super(key: key);

//   @override
//   _NavbarBottomState createState() => _NavbarBottomState();
// }

// class _NavbarBottomState extends State<NavbarBottom> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     int _currentIndex = 0;
//     final tabs = [
//       const Center(
//         child: Text('Home'),
//       ),
//       const Center(
//         child: Text('Camera'),
//       ),
//       const Center(
//         child: Text('Photos'),
//       ),
//       const Center(
//         child: Text('Message'),
//       ),
//     ];
//     return Scaffold(


//         body: tabs[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//             currentIndex: _currentIndex,
//             type: BottomNavigationBarType.fixed,
//             elevation: size.height * 0.1,
//             backgroundColor: Colors.transparent,
//             items: [
//               BottomNavigationBarItem(
//                 icon: const Icon(Icons.home),
//                 label: 'Home',
//                 backgroundColor: Colors.amberAccent[600],
//               ),
//               BottomNavigationBarItem(
//                 icon: const Icon(Icons.camera_alt_outlined),
//                 label: 'Camera',
//                 backgroundColor: Colors.amberAccent[600],
//               ),
//               BottomNavigationBarItem(
//                 icon: const Icon(Icons.photo),
//                 label: 'Photos',
//                 backgroundColor: Colors.amberAccent[600],
//               ),
//               BottomNavigationBarItem(
//                 icon: const Icon(Icons.message),
//                 label: 'Message',
//                 backgroundColor: Colors.amberAccent[600],
//               ),
//             ],
//             onTap: (index) {
//               setState(() {
//                 _currentIndex:index;

//               });
//             }));
//   }
// }
