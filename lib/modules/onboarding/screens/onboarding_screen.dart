import 'package:cars_app/core/widgets/custom_elevated_button.dart';
import 'package:cars_app/core/widgets/size.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/450w-ruxQm4Z7ztc.webp"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/logo.png'),
                Spacer(flex: 2),
                Text(
                  textAlign: TextAlign.center,
                  "Your Drive Starts\nHere",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  textAlign: TextAlign.center,

                  'Discover, buy, and sell automotive\nproducts with ease.',
                  style: TextStyle(color: Color(0xffbdc1ca), fontSize: 18),
                ),
                Spacer(),
                CustomElevatedButton(
                  data: 'Sign Up',
                  backgroundColor: Color(0xff3175b4),
                ),
                CustomSize(h: 8),
                CustomElevatedButton(
                  data: 'Sign In',
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Color(0xff323743)),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
