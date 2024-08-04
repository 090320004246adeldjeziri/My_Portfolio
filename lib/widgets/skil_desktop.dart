import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key, required this.onNavItemTap});
   final Function(int) onNavItemTap;



  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
          color: CustomColor.bgLight1,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
      child: Column(
        children: [
          const Text(
            "What I can do !",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Plateform
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 450),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 15,
                  children: [
                    for (int i = 0; i < plateformItems.length; i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 4,
                            )
                          ],
                          color: CustomColor.bgLight2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            plateformItems[i]['img'],
                            width: 26,
                            height: 26,
                          ),
                          title: Text(plateformItems[i]['title']),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (int i = 0; i < SkillsItems.length; i++)
                        Chip(
                            backgroundColor: CustomColor.bgLight2,
                            elevation: 5,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                            avatar: Image.asset(SkillsItems[i]['img']),
                            label: Text(SkillsItems[i]['title']))
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
