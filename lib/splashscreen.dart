import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:todoapp/homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(
        builder: (context) => Homepage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Untitled design (10).png',
              height: 500,
            ),
            Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.blueAccent,
              child: Text('Make your day Productive',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
