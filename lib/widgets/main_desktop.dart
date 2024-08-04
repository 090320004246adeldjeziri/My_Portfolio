
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
      String x = "Hello There!\n I'm Adel Djeziri \n A Full stak Developer";
    String y = "You like this hmmm ";
    var screenSize = MediaQuery.of(context).size;
            var screenWidth = screenSize.width;
            return         Container(
              // color: Colors.blueGrey,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: screenSize.height / 12,
              constraints: const BoxConstraints(minHeight: 350),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(curve: Curves.linear,

                              x,
                              textStyle: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                height: 1.6,
                                color: CustomColor.whitePrimary
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
                        SizedBox(height: 15,),
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
                            child: const Text('Get in Touch'),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/avatarv1.png',
                      width: screenWidth / 2,
                    )
                  ]),
            );
  }
}