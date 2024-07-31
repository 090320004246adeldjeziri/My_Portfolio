import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/logo_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Uncomment the line below if you need to include HeaderDesktop widget
          // const HeaderDesktop(),
          Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration: ,
            child: Row(
              children: [
                SiteLogo(
                  onTap: () {},
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu, // Corrected the icon type
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
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
    );
  }
}
