import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const cardColor=Color(0xFF1D1E33);
class inputpage extends StatefulWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
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
                    onTap: (){},
                    child: verticalcard(colour:cardColor,
                         cardchild: genderDetails(chitra: FontAwesomeIcons.mars,gender: "MALE",),       ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  verticalcard(colour: cardColor,cardchild: genderDetails(chitra: FontAwesomeIcons.venus,gender: "FEMALE",),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 400,
                color: Color(0xFF0A0E21),
                child: Card(
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
                  verticalcard(colour:cardColor,cardchild: Column()),
                  SizedBox(
                    width: 20,
                  ),
                  verticalcard(colour: cardColor,cardchild: Column()),
                ],
              ),

            ],
          ),
          Container(
            height: 60,
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Center(
                      child: Text("Calculate", style: TextStyle(),),
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