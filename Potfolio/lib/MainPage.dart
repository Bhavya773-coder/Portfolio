import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:potfolio/MainScreen.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return   AnimatedSplashScreen(splashTransition: SplashTransition.scaleTransition,backgroundColor: Color.fromARGB(255,41,35,79),duration: 1500,splash:  Container(
      padding: const EdgeInsets.all(8), // Border width
      decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.purple,Colors.yellow,Colors.red]), shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(35), // Image radius
          child: Image.asset('splashlogo.jpeg', fit: BoxFit.cover),
        ),
      ),
    ), nextScreen: const MainScreen());
  }
}
