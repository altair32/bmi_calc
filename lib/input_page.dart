import 'package:flutter/material.dart';
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
          SizedBox(
            height: 12
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              verticalcard(colour: Color(0xFF1D1E33),),
              SizedBox(
                width: 20,
              ),
              verticalcard(colour: Color(0xFF1D1E33),),
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
              verticalcard(colour: Color(0xFF1D1E33),),
              SizedBox(
                width: 20,
              ),
              verticalcard(colour: Color(0xFF1D1E33),),
            ],
          ),
        ],
      )
    );
  }
}

class verticalcard extends StatelessWidget {
   verticalcard({required this.colour});
  Color colour;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250,
      width: 190,
      color: Color(0xFF0A0E21),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: colour,//Color(0xFF1D1E33),
      ),
    );
  }
}