import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Row-Column.dart';

import 'BMI-App/bmi-app.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Container "),
      ),
      body:Center(child:
/*
      In Flutter, Container is a widget that provides a convenient way to combine common painting,
       positioning, and sizing widgets. It is a box that can contain other widgets and allows you to
       customize its appearance and layout.
*/
     Column(
       children: [
         Container(
           height: 250,
           width: 250,
           color: Colors.orange,

           child: Center(
/*          change Text Style*/
             child: Text("Container",style: TextStyle(
                 fontSize: 18,
                 color: Colors.red,
                 fontWeight: FontWeight.w700,
                 backgroundColor: Colors.lightBlue
             ),),
           ),


         ),
         ElevatedButton(onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => rowandcolumns ()),
           );
         }, child: Text("Row & Column")),
         ElevatedButton(onPressed: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => BmiApp ()),
           );
         }, child: Text("BMI")),


       ],
     ),



      ),


    );
  }
}
