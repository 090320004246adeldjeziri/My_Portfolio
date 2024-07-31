import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    String x = "Hello There!\nI'm Adel Djeziri\nA Full Stack Developer";
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      constraints: BoxConstraints(minHeight: screenHeight / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return  LinearGradient(         
                colors: [Colors.grey.withOpacity(0.5),Colors.red.withOpacity(0.7), Colors.black.withOpacity(0.5)],).createShader(bounds);
            },blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/images/avatarv1.png',
              width: screenWidth / 2,
              height: screenHeight / 4,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    x,
                    textStyle: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      height: 1.6,
                      color: CustomColor.whitePrimary,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 4,
                isRepeatingAnimation: true,
                repeatForever: true,
                pause: const Duration(milliseconds: 200),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: CustomColor.yellowSecondary,
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  onPressed: () {
                    // Handle button press
                  },
                  child: const Text('Get in Touch',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
