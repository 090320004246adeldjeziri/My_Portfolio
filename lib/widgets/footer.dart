
import 'package:flutter/cupertino.dart';
import 'package:portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 40,
     padding: const EdgeInsets.symmetric(vertical: 20),
    width: double.maxFinite,
    alignment: Alignment.center,
    child:  const Text("Made By Djeziri Adel, Co_NovaTech",style: 
    TextStyle(fontWeight: FontWeight.w400,color: CustomColor.yellowPrimary),),
    );
  }
}
