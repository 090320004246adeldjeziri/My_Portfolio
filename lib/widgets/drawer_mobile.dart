

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class DrawerMob extends StatelessWidget {
  const DrawerMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // backgroundColor: Colors.yellow,
        child: ListView(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: IconButton(onPressed: (){
                // scaffoldKey.currentState?.closeEndDrawer();
                Navigator.of(context).pop();// also can close the actual tab
              },
               icon: Icon(Icons.close)),
            ),
          ),
          for (int i = 0; i < navIocns.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              onTap: () {
                
              },
              leading: Icon(navIocns[i]),
              title: Text(navTitles[i],
               style: const TextStyle(
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),),
            ),
        ]),
      );
  }
}