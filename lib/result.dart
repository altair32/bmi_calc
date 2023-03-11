import 'package:flutter/material.dart';
import 'calc_brain.dart';
class result extends StatelessWidget {
  result({required this.bmiResult,required this.resultText, required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Column(
              children: [
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10.0),
                    color:  Colors.blueGrey,
                  ),
                  width: 450,
                  height: 700,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Result', style: TextStyle(
                        color: Colors.red,
                        fontSize: 60,
                        fontFamily: 'DancingScript',
                      ),),
                      Text(bmiResult, style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),),
                      Text(resultText, style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                      ),),
                      Text(interpretation, style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),),
                    ],
                  ),
                )
              ],
            ),)
          ],
      ),
    );
  }
}
