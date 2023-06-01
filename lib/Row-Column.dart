import 'package:flutter/material.dart';
import 'package:flutter_tutorial/ui_helper/Rich-Text-Widget.dart';
import 'package:flutter_tutorial/widgets/custom_widget_button.dart';

class rowandcolumns extends StatefulWidget {
  const rowandcolumns({Key? key}) : super(key: key);

  @override
  State<rowandcolumns> createState() => _rowandcolumnsState();
}

class _rowandcolumnsState extends State<rowandcolumns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row  & Columns"),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Center(
      child: Container(
      width: 150,
          height: 50,
          child: CustomButton(
            buttonname: 'Login',
            icon: Icon(Icons.lock),
            bgColor: Colors.green,



          ))),
          ElevatedButton(onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RichTexts ()),
    );
    }, child: Text("RichText"))
        ],
      )


    );
  }
}
