// import 'package:flutter/material.dart';
// import 'package:test1/add_image.dart';
//
// import 'components/body.dart';
//
//
// class MainPage extends StatelessWidget {
//    MainPage({Key? key}) : super(key: key);
//    static String routeName = 'mainPage';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: buildAppBar(title: "Rates68"),
//       body: Body(),
//     );
//   }
//
//   AppBar buildAppBar({required String title}) {
//     return AppBar(
//       elevation: 0,
//       backgroundColor: Colors.white,
//       leading: IconButton(
//         icon: Image.asset(AppImage.logoShape),
//         padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
//         iconSize: 24,
//         onPressed: () {
//           print("hi");
//         },
//       ),
//       titleSpacing: 0,
//       title: Text(title,
//         textAlign: TextAlign.left,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.black,
//           fontSize: 24,
//         ),
//       ),
//       actions: <Widget> [
//         IconButton(
//           icon: Icon(
//             Icons.close,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             print("hi");
//           },
//         ),
//       ],
//     );
//   }
// }
//
