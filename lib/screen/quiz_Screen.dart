

import 'package:flutter/material.dart';

import '../widget/body.dart';
class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent ,
        actions: [
          ElevatedButton(onPressed: (){},
              child:Text("Skip"),
          )
        ],
      ),
      body: BodyScreen(),
    );
  }
}
