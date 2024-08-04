import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.screenWidth,
    required this.project,
  }) : super(key: key);
  final ProjectUtils project;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      color: CustomColor.scaffoldBg,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(children: [
        //Project Work title
        const Text(
          "Work Projects",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children:[
        
            for(int i =0 ;i<workProjects.length;i++)
             ProjectCardWidget(project: workProjects[i]),
            //  ProjectCardWidget(project: workProjects[2])
          ]),
        )
      ]),
    );
  }
}

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        width: 250,
        height: 280,
        decoration: BoxDecoration(
            color: CustomColor.bgLight2,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                project.image,
                height: 125,
                width: 250,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 15, 12, 12),
                child: Text(
                  project.title,
                  style: const TextStyle(
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Text(
                  project.subtitle,
                  style: TextStyle(
                      color: CustomColor.whiteSecondary, fontSize: 10),
                ),
              ),
              const Spacer(),
              Container(
                color: CustomColor.bgLight1,
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 10),
                child: Row(children: [
                  const Text(
                    "Available On",
                    style: TextStyle(
                        color: CustomColor.yellowSecondary, fontSize: 10),
                  ),
                  Spacer(),
                  if (project.webLink != null)
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open",[project.webLink]);
                      },
                      // onHover: (value) => true,
                      child: Image.asset(
                        "assets/images/web.png",
                        width: 18,
                      ),
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (project.androidLink != null)
                    InkWell(
                      onTap: () {
                                                    js.context.callMethod("open",[project.webLink]);

                      },
                      child: Image.asset(
                        "assets/images/android.png",
                        width: 18,
                      ),
                    ),
                ]),
              )
            ]));
  }
}
