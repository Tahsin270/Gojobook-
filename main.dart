import 'package:flutter/material.dart';
import 'package:hlw1/ohters.dart';

main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      scrollBehavior: ScrollBehavior().copyWith(overscroll: false),

      home: SplashScreen(),
    );
  }
}
