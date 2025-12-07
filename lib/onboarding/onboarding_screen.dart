
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding/screen_one.dart';
import 'package:onboarding/onboarding/screen_three.dart';
import 'package:onboarding/onboarding/screen_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView(
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
              controller: _controller,
              children: [
                ScreenOne(),
                ScreenTwo(),
                ScreenThree(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIndicator(active: index == 0),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 1),
                const SizedBox(
                  width: 5,
                ),
                CustomIndicator(active: index == 2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child:Text(
                    index==2?'Register':'Skip',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),) ,
                ),
                InkWell(
                  onTap:(){
                    _controller.animateToPage(index+1,
                        duration: Duration(milliseconds: 250),
                         curve: Curves.linear);},
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 199, 59),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      index==2?'Login':'Next',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active?30:10,
      height: 10,
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? const Color.fromARGB(255, 255, 199, 59) : Colors.grey,
      ),
    );
  }
}
