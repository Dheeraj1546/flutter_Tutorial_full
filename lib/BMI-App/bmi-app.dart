import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  TextEditingController wt = TextEditingController();
  TextEditingController ft = TextEditingController();
  TextEditingController inch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          primary: true,
          title: Text("BMI"),
        ),
        body: Center(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bmi"),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: wt,
                decoration:InputDecoration(
                  label: Text("Enter your weight(in/ Kg)"),


                ) ,


              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: ft,
                decoration: InputDecoration(
                  label: Text("Enter your height(in feet)")
                ),
              ),
              SizedBox(
               height: 8,
              ),
              TextField(
                controller: inch,
                decoration: InputDecoration(
                  label: Text("inter youe height(in inch)")
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: (){

print(ft);
print(inch);
print(wt);


              }, child: Text("Calcuter"))
            ],
          ),
        )));
  }
}
