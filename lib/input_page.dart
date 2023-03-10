import 'package:bmi_calc/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calc_brain.dart';
const cardColor=Color(0xFF1D1E33);
const inactivecardcolor=Color(0xF111328);
class inputpage extends StatefulWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  Color malecardcolor=inactivecardcolor;
  Color femalecardcolor=inactivecardcolor;
  int height=180;
  int weight=80;
  int age=30;
  void updatecolor(int g){
    if (g==1)
      {
        if(malecardcolor==inactivecardcolor)
          {malecardcolor=cardColor;
           femalecardcolor=inactivecardcolor;}
        else
          malecardcolor=inactivecardcolor;
      }
    if(g==2)
    {
      if(femalecardcolor==inactivecardcolor)
        {femalecardcolor=cardColor;
          malecardcolor=inactivecardcolor;}
      else
        femalecardcolor=inactivecardcolor;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Indexing"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 12
              ),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(1);
                      });
                    },
                    child: verticalcard(colour:malecardcolor,
                         cardchild: genderDetails(chitra: FontAwesomeIcons.mars,gender: "MALE",),       ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        updatecolor(2);
                      });
                    },
                      child: verticalcard(colour: femalecardcolor,cardchild: genderDetails(chitra: FontAwesomeIcons.venus,gender: "FEMALE",),)),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 400,
                 color: Color(0xFF0A0E21),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('HEIGHT', style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),),
                      SizedBox(height:20),
                      Text(height.toString(), style: TextStyle(
                        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold
                      ) ,),
                      Slider(value: height.toDouble(),
                          min: 120,
                          max: 240,
                          activeColor: Colors.red,
                          inactiveColor: Colors.grey, onChanged: (double newvalue){
                          setState(() {
                            height=newvalue.round();
                          });
                      })
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  color: Color(0xFF1D1E33),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  verticalcard(colour:cardColor,cardchild: Column(
                    children: [
                      SizedBox(height: 25,),
                      Text("WEIGHT",style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),),
                      SizedBox(height: 10,),
                      Text(weight.toString(), style: TextStyle(
                          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold
                      ) ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight=weight-1;
                                });
                              },
                              elevation: 2.0,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 35.0,
                                color: Colors.red,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight=weight+1;
                                });
                              },
                              elevation: 2.0,
                              fillColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 35.0,
                                color: Colors.red,
                              ),
                              padding: EdgeInsets.all(4.0),
                              shape: CircleBorder(),
                            ),
                          ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  verticalcard(colour: cardColor,cardchild: Column(
                    children: [
                    SizedBox(height: 25,),
                      Text("AGE",style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),),
                      SizedBox(height: 10,),
                      Text(age.toString(), style: TextStyle(
                          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold
                      ) ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                age=age-1;
                              });
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.remove,
                              size: 35.0,
                              color: Colors.red,
                            ),
                            padding: EdgeInsets.all(4.0),
                            shape: CircleBorder(),
                          ),
                          RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                age=age+1;
                              });
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              size: 35.0,
                              color: Colors.red,
                            ),
                            padding: EdgeInsets.all(4.0),
                            shape: CircleBorder(),
                          ),
                        ],
                      ),],),


                  ),
                ],
              ),

            ],
          ),
          GestureDetector(
            onTap: (){
              calc_brain calc=new calc_brain(height: height.toDouble(), weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>result(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.interpret(),
              )),
              );
            },
            child: Container(
              height: 60,
              color: Colors.red,
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Center(
                        child: Text("Calculate", style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class genderDetails extends StatelessWidget {
  genderDetails({required this.gender, required this.chitra});
  final IconData chitra;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          chitra,
          size: 80,
        ),
        SizedBox(height: 20,),
        Text(gender, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),)
      ],
    );
  }
}

class verticalcard extends StatelessWidget {
   verticalcard({required this.colour, required this.cardchild});
  final Color colour;
  final Widget cardchild;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 210,
      width: 190,
      child: cardchild,
      //cardchild: (),
      decoration: BoxDecoration(
        //color: Color(0xFF0A0E21),
        //shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20) ,
            color: colour,//Color(0xFF1D1E33),
      ),
    );
  }
}