import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(BMICalc());
}
class BMICalc extends StatelessWidget {
  const BMICalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
         /* textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),*/),
      home: inputpage(),
    );
  }
}




