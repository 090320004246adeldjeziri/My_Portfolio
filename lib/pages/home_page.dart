import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/logo_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    
      builder: (context,constraintes){ return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        key: scaffoldKey,
        endDrawer: const DrawerMob(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Uncomment the line below if you need to include HeaderDesktop widget
            headerMobile(
              onMenuTap: () {
                setState(() {
                  scaffoldKey.currentState?.openEndDrawer();
                });
              },
              onLogoTap: () {
                scaffoldKey.currentState?.closeEndDrawer();
              },
            ),
    
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );}
    );
  }
}
