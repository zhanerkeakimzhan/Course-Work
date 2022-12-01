import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dcdg/dcdg.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  // text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  static const mainColor = Color(0xFFA8D0E6);
  static const secondColor = Color(0xFF374785);

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim()
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: SafeArea (
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // logo
                      Image.asset(
                        'assets/logouni.png',
                        fit: BoxFit.contain,
                        height: 120,),

                      const SizedBox(height: 30,),

                      // email text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Colors.white)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: mainColor),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: 'Email',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10,),

                      // password text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: TextField(
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Colors.white)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: mainColor),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            hintText: 'Password',
                            fillColor: Colors.grey[200],
                            filled: true,
                          ),
                        ),
                      ),

                      const SizedBox(height: 40,),

                      // sign in button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: GestureDetector(
                          onTap: signIn,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: secondColor,
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Center(
                              child: Text(
                                'Войти',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),

                      // not remember?
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: const [
                      //     Text(
                      //       'Not remember?',
                      //       style: TextStyle(
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     )
                      //   ],
                      // )

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 80.0),
                        child: GestureDetector(
                          onTap: signIn,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Center(
                              child: Text(
                                'Забыли пароль?',
                                style: TextStyle(
                                  color: secondColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ),
        )
    );
  }
}