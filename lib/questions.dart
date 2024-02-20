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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child:  Text('Google was originally called "Backrub"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,

            ),
          ))
          ),
          ),
          TextButton(onPressed:(){}, child: Text('True')),
          TextButton(onPressed: (){}, child: Text('False')),
        ],
      ),

    );
  }
}

