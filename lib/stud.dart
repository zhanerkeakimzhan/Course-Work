import 'package:flutter/material.dart';
import 'package:dcdg/dcdg.dart';


class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);
  static const mainColor = Color(0xFFA8D0E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 80,
      backgroundColor: mainColor,
      elevation: 0,
      title: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu, size: 35.0),),
          Align(
            child: Image.asset(
              'assets/logouni.png',
              fit: BoxFit.contain,
              height: 60,
            ),
          ),
        ],
      ),
    ),
      body: const Center(

      ),
    );
  }
}
