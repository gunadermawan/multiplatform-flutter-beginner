import 'package:flutter/material.dart';
import 'package:flutter_beginer/responsive/layoutBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePageBuilder());
  }
}

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);
//
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
//
// class _FirstScreenState extends State<FirstScreen> {
//   String? language;
//   bool agree = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'First Screen',
//           style: TextStyle(fontFamily: 'Oswald', fontSize: 30),
//         ),
//       ),
//       body: Center(
//         child: Image.asset(
//           'images/attendance_app.png',
//           width: 200,
//           height: 200,
//         ),
//       ),
//     );
//   }
//
//   void showSnackbar() {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text('$language selected'),
//       duration: const Duration(seconds: 1),
//     ));
//   }
// }

// class ScrollingScreen extends StatelessWidget {
//   final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: numberList.length,
//         itemBuilder: (BuildContext context, int index),
//         children: numberList.map((number) {
//           return Container(
//             height: 250,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               border: Border.all(color: Colors.black),
//             ),
//             child: Center(
//               child: Text(
//                 '$number', // Ditampilkan sesuai item
//                 style: const TextStyle(fontSize: 50),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
