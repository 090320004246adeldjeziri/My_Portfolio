import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/pages/home_page.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo( {super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
       onTap: onTap ,
      child: const Text(
        "NOVATECH",
        style: TextStyle(
            fontSize: 22,
            color: CustomColor.yellowSecondary,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
