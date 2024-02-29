import 'package:flutter/material.dart';
import 'package:quizapp/qn.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(myList[index].qus,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextButton(onPressed: () {
              setState(() {
                nextquestion();
                check(true);
              });
            },
                style: TextButton.styleFrom(backgroundColor: Colors.green,),
                child: Text('Truee')),
            SizedBox(height: 30),
            TextButton(onPressed: () {
              setState(() {
                nextquestion();
                check(false);
              });
            },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Text('False')),
            Text(result,style: TextStyle(color: Colors.white),)

          ],
        ),
      ),
    );
  }

  List myList = [
    Quiz(qus:'In school Albert Einstein failed most of the subjects except for physics and math',ans: true),
    Quiz(qus: 'The first song ever sung in the space was “Happy Birthday..”', ans: true),
    Quiz(qus: 'The first country in the world to use postcards was the United States of America.”',ans: false),
    Quiz(qus: 'A male canary tends to have a better singing voice than a female canary..”', ans: true),
    Quiz(qus: 'Tea contains more caffeine than coffee and soda.”', ans: false),
  ];
  int index = 0;
   String result='';

  void nextquestion() {
    if (index < myList.length) {
      index++;
    }
  }

  void check(bool answer) {
    print(answer);
    if (answer ==myList[index-1].ans) {
      result='correct answer';
    }
    else {
      result='wrong answer';
    }
  }
  }



