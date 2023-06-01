import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTexts extends StatefulWidget {
  const RichTexts({Key? key}) : super(key: key);

  @override
  State<RichTexts> createState() => _RichTextsState();
}

class _RichTextsState extends State<RichTexts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (
      AppBar(title: Text("RichText"),
      )
      ),
      body: Center(child:   RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 21,
          ),
          children: [
            TextSpan(text: "hello"),
            TextSpan(text: "Dheeraj kumar",style:TextStyle(
              fontSize: 30,
              color: Colors.cyanAccent
            )),
            TextSpan(text: "How are you"),
          ]
        ),
      ),
      ) );
  }
}
