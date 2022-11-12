import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/contes/color.dart';
import 'package:quiz_app/screen/quiz_Screen.dart';
import 'package:websafe_svg/websafe_svg.dart';
class WellComeScreen extends StatefulWidget {
  const WellComeScreen({Key? key}) : super(key: key);

  @override
  State<WellComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WellComeScreen> {

  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          WebsafeSvg.asset("images/bg.svg",fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text("Let's Play Quiz",style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold
                  ),),
                  Text("Enter Your Informetion ",style: TextStyle(color: Colors.white),),
                  Spacer(),

                  TextField(
                    controller: textEditingController,
                    decoration:InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                    ),
                  ),
                 const Spacer(),
                 const Spacer(),

                  InkWell(
                    onTap: (){
                    textEditingController.clear();
                      Get.to(QuizScreen());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding*0.75),
                      width: double.infinity,
                      decoration:const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Text('Lets Start Quiz',style: Theme.of(context).textTheme.button!.copyWith(
                        color: Colors.black
                      ),),
                    ),
                  ),
                 const Spacer(),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
