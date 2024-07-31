

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/logo_web.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 60,
              width: double.maxFinite,
              
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: KheaderDecoration,
              child: Row(children: [
                SiteLogo(onTap: (() {
                  
                }),),
              
                const Spacer(),
                for (String i in navTitles)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          i,
                          style: const TextStyle(
                            color: CustomColor.whitePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  )
              ]));
  }
}