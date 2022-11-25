import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);
  static const mainColor = Color(0xFFA8D0E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: mainColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logouni.png', fit: BoxFit.contain, height: 60,),
            ],
          )
      ),
      body: const Center(

      ),
    );
  }
}
