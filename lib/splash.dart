import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {Navigator.push(context, MaterialPageRoute(builder: (context) =>Questions ()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Center(
           child: Image.network('https://www.funbridge.com/blog/wp-content/uploads/QuizTime_01-1-1024x576.jpg',width: 600)
         ),
       ],
      ));
  }
}