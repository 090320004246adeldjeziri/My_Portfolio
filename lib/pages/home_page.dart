// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/logo_web.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';

import '../constants/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
  
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        key: scaffoldKey,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : const DrawerMob(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Uncomment the line below if you need to include HeaderDesktop widget
            if (constraints.maxWidth >= kMinDesktopWidth) 
             HeaderDesktop()
            else
              headerMobile(
                onMenuTap: () {
                  setState(() {
                    scaffoldKey.currentState?.openEndDrawer();
                  });
                },
                onLogoTap: () {},
              ),
           if(constraints.minWidth>=600) 
           MainDesktop(),
           if(constraints.minWidth<600)
           MainMobile(),
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
