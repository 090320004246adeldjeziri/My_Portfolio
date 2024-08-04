import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: CustomColor.bgLight1,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: const EdgeInsets.all(20),
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
            height: 30,
          ),
          Column(
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 15,
                children: [
                  for (int i = 0; i < plateformItems.length; i++)
                    Container(
                      width: double.infinity,
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
              const SizedBox(
                height: 20,
              ),
              Wrap(
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
              )
            ],
          ),
        ],
      ),
    );
  }
}