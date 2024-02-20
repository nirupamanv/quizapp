import 'package:flutter/material.dart';

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
          Text('Google was originally called "Backrub"',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            ),
        ),
           TextButton(onPressed :(){},
               style:TextButton.styleFrom(backgroundColor: Colors.green),
               child: Text('True')),
            SizedBox(height: 30),
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Text('False'))

          ],
            ),
      ),
          );

  }
}

