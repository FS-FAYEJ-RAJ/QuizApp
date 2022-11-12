import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../contes/color.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 25,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768)),
          borderRadius: BorderRadius.all(
              Radius.circular(50)
          )
      ),
      child:Stack(

        children: [
          LayoutBuilder(
            builder: (context,constriant){
              return Container(
                width: constriant.maxWidth*0.5,
                decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50)
                ),
              );
            },

          ),
          Positioned.fill(
              child: Padding(
                padding:EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("18.0 sec"),
                    WebsafeSvg.asset("images/clock.svg")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
