
import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/logo_web.dart';

class headerMobile extends StatelessWidget {
  const headerMobile({super.key, this.onLogoTap, this.onMenuTap, required this.onNavItemTap});
  
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
 final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 50.0,
            margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration:KheaderDecoration ,
            child: Row(
              children: [
                SiteLogo(
                  onTap: onLogoTap,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onMenuTap,
                  icon: const Icon(
                    Icons.menu,
                  ),
                ),
                SizedBox(width:15)
              ],
            ),
          );
  }
}