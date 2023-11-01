import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:suggest/main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      duration: 3500,
      splashIconSize: double.infinity,
      splash: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/Vector (5).png",
                  ),
                  Text(
                    " L e a p r o",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff002856)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      nextScreen: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
