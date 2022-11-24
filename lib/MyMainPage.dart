import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MyMainPage extends StatelessWidget{
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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