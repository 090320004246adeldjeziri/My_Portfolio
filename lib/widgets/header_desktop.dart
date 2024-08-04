

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/logo_web.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavItemMenutap});
final Function(int) onNavItemMenutap;

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 60,
              width: double.maxFinite,
              
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: KheaderDecoration,
              child: Row(children: [
                SiteLogo(onTap: (() {
                  
                }),),
              
                const Spacer(),
                for (int i =0;i<navTitles.length;i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextButton(
                        onPressed: () {
                          onNavItemMenutap(i);
                          // if(i==3){
                          //   //go to blog page
                            
                          //   Navigator.pushNamed(context, 'blog');
                          // }
                        },
                        child: Text(
                        navTitles[i],
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