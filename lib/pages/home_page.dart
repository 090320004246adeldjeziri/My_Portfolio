// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/logo_web.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/project_card.dart';

import '../constants/size.dart';
import '../widgets/skil_desktop.dart';
import '../widgets/skill_mob.dart';

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
    int index = 0;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        key: scaffoldKey,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : const DrawerMob(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Header
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              headerMobile(
                onMenuTap: () {
                  setState(() {
                    scaffoldKey.currentState?.openEndDrawer();
                  });
                },
                onLogoTap: () {},
              ),
            //Main Section
            if (constraints.minWidth >= 600) const MainDesktop(),
            if (constraints.minWidth < 600) const MainMobile(),
            // Skills Section
            if (constraints.minWidth >= 600) const SkillDesktop(),
            if (constraints.minWidth < 600) const SkillMobile(),
            //Project Section
            ProjectCard(
                project: workProjects.first, screenWidth: screenWidth / 3),
            const SizedBox(height: 30),
            Container(
                // padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                height: 500,
                width: screenWidth,
                child: Column(
                  children: const [
                    Text(
                      'Get In Touch',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: CustomColor.whitePrimary),
                    )
                  ],
                ))
          ],
        ),
      );
    });
  }
}
