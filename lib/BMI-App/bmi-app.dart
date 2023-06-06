import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result ="";
  var bgColor;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          primary: true,
          title: Text("BMI"),
        ),
        body: Center(
            child: Container(
              color: bgColor,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bmi"),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: wtController,
                decoration:InputDecoration(
                  label: Text("Enter your weight(in/ Kg)"),


                ) ,


              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: ftController,
                decoration: InputDecoration(
                  label: Text("Enter your height(in feet)")
                ),
              ),
              SizedBox(
               height: 8,
              ),
              TextField(
                controller: inchController,
                decoration: InputDecoration(
                  label: Text("inter youe height(in inch)")
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: (){
                var wt=wtController.text.toString();
                var ft=ftController.text.toString();
                var inch =inchController.text.toString();
                if(wt!="" && ft!="" && inch!=""){
                  var iwt= int.parse(wt);
                  var ift=int.parse(ft);
                  var iInch=int.parse(inch);
                  var tInch=(ift*12)+iInch;
                  var tcm=tInch*2.54;
                  var tm=tcm/100;
                  var bmi=iwt/(tm*tm);
                  var mes ="";

                  if(bmi>25){
                    mes="you are overWeight";
                    bgColor=Colors.red.shade300;

                  }else if(bmi<18){
                    mes="you are UnderWeight";
                    bgColor=Colors.red.shade300;

                  }else{
                    mes="you are Healthy";
                    bgColor=Colors.green.shade300;

                  }
                  setState(() {
                    result= "$mes\n your BMI is :$bmi";
                  });




                }else{
                  setState(() {
                    result ="All fill required";
                  });

                }





              }, child: Text("Calcuter")),
              SizedBox(
                height: 30,
              ),

              Text(result,style: TextStyle(
                color:Colors.red,
                fontSize: 25
              ),),
            ],
          ),
        )));
  }
}
