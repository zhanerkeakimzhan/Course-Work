// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dip/MyHomePage.dart';

import 'login_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}


// <<<<<<< HEAD
// =======
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             // ElevatedButton(
//             //     onPressed: () => _some(),
//             //     child: Text('Войти'))
//           ],
//         ),
//       ),
//     );
//   }
//
//   _some() {
//     return null;
//   }
// }
// >>>>>>> 1d59c9c4b4c6a7779ec565e0473c9dfcd22d07f4
