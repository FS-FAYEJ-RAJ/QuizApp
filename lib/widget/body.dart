import 'package:flutter/material.dart';
import 'package:quiz_app/widget/progress.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../contes/color.dart';
class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
        WebsafeSvg.asset("images/bg.svg",fit: BoxFit.fill),
          SafeArea(child: Padding(
            padding:EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
               ProgressBar()


              ],
            ),
          ))
    ],
    ),);
  }
}

