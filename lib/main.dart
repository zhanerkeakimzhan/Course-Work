// ignore_for_file: depend_on_referenced_packages

import 'package:dip/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dcdg/dcdg.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color(0xFFA8D0E6)
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

