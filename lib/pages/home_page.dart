// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/project_card.dart';

import '../constants/size.dart';
import '../widgets/skil_desktop.dart';
import '../widgets/skill_mob.dart';
import 'blog_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    int index = 0;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMob(
                onNavItemTap: (int navIndex) {
                  scrollToSection(navIndex);
                  scaffoldKey.currentState?.closeEndDrawer();
                },
              ),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarkeys.first,
              ),
              // Header
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(
                  onNavItemMenutap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                )
              else
                headerMobile(
                  onNavItemTap: (int navIndex) {
                    scrollToSection(navIndex);
                  },
                  onMenuTap: () {
                    setState(() {
                      scaffoldKey.currentState?.openEndDrawer();
                    });
                  },
                  onLogoTap: () {},
                ),
              //Main Section
              Container(
                key: navbarkeys[1],
                decoration: const BoxDecoration(
                    color: CustomColor.bgLight1,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  // const Text(
                  //   "What I can do !",
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     fontWeight: FontWeight.bold,
                  //     color: CustomColor.whitePrimary,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  if (constraints.minWidth >= 600) const MainDesktop(),
                  if (constraints.minWidth < 600) const MainMobile(),
                ]),
              ),
              // Skills Section
              if (constraints.minWidth >= 600)
                SkillDesktop(
                  onNavItemTap: (int index) {
                    scrollToSection(index);
                  },
                  // key: navbarkeys[1],
                ),
              if (constraints.minWidth < 600)
                SkillMobile(
                    // key: navbarkeys[1],
                    ),
              //Project Section
              ProjectCard(
                key: navbarkeys[2],
                project: workProjects.first,
              ),
              const SizedBox(height: 30),
              //Contact
              ConstactSection(
                key: navbarkeys[3],
              ),
              const SizedBox(height: 30),
              //Footer
              Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open blog page
      // return BlogPage;
    }

    final key = navbarkeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(microseconds: 500), curve: Curves.ease);
  }
}
