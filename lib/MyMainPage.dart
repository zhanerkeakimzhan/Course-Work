import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MyMainPage extends StatelessWidget{
  const MyMainPage({super.key});
  static const mainColor = Color(0xFFA8D0E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: mainColor,
        title: Text('Students'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            // ElevatedButton(
            //     onPressed: () async {
            //       Navigator.pushAndRemoveUntil(context, '/stud', (route) => false);
            //     },
            //     child: Text('Войти'),
            //     )
          ],
        ),
      ),
    );
  }
}