import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hlw1/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 10), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30, backgroundColor: Colors.purple),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQorr92alioxJF7CXI7PVGDe35QoHueRq4JVA&s",
                ),
              ),
            ),
            Text("Gojobook"),
            Spacer(flex: 10),
            Text(
              "from",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Madara",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage {
  const HomePage();
}
