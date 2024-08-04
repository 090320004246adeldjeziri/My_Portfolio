import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ConstactSection extends StatelessWidget {
  const ConstactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        // height: 500,
        width: screenWidth,
        child: Column(
          children: [
            const Text(
              'Get In Touch',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: CustomColor.whitePrimary),
            ),
            const SizedBox(
              height: 50,
            ),
            ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 750, maxHeight: 100),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth >= kMinDesktopWidth) {
                      return buildnameEmailFieldDesktop();
                    } else {
                      return buildnameEmailFieldMobile();
                    }
                  },
                )),

            const SizedBox(
              height: 15,
            ),
            ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 750),
                child: const TextFieldCustomized(
                  hintText: "Your message",
                  maxLine: 15,
                )),
            const SizedBox(
              height: 20,
            ),
            //Button Send
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 750),
              child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColor.yellowPrimary),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Hire me Please",
                          style: TextStyle(fontSize: 17),
                        ),
                      ))),
            ),
            const SizedBox(
              height: 30,
            ),
            ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: const Divider()),
            const SizedBox(
              height: 15,
            ),

            Wrap(
              spacing: 10,
              runSpacing: 5,
              children: [
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinks.github]);
                  },
                  child: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.github),
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinks.instagram]);
                  },
                  child: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.instagram),
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinks.facebook]);
                  },
                  child: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.facebook),
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinks.instagram]);
                  },
                  child: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.instagram),
                  ),
                ),
                InkWell(
                  onTap: () {
                    js.context.callMethod("open", [SnsLinks.linkedIn]);
                  },
                  child: const CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.linkedin),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

Row buildnameEmailFieldDesktop() {
  return Row(
    children: const [
      Flexible(
          child: TextFieldCustomized(
        hintText: 'Your Name',
      )),
      SizedBox(
        width: 15,
      ),
      Flexible(
          child: TextFieldCustomized(
        hintText: 'Your Email',
      )),
    ],
  );
}

Column buildnameEmailFieldMobile() {
  return Column(
    children: const [
      Flexible(
          child: TextFieldCustomized(
        hintText: 'Your Name',
      )),
      SizedBox(
        height: 15,
      ),
      Flexible(
          child: TextFieldCustomized(
        hintText: 'Your Email',
      )),
    ],
  );
}
