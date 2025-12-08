import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboarding_m/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnboardingPageView()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff014BBA),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset('assets/Logo1.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Text('App Version 1.0',style:
                TextStyle(color: Colors.white,
                fontSize:20,),),
            ),
          ],
        ),
      )
    );
  }
}
 initialRoute: '/',
      routes: {
        '/': (context) =>  const SplashScreen(),
        '/onboarding': (context) => const OnboardingPageView(),
      },












