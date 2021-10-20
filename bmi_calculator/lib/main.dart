import 'package:bmi_calculator/modules/BMICalScreen/BMIScreen.dart';
import 'package:flutter/material.dart';



// void main() {
//   runApp(MyFirstApp());
// }
main()=>runApp( myFirstApp());
//widget two type
//StatelessWidget
//StatefulWidget

class myFirstApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
      return  MaterialApp(
      home: BMICalculator(),
    );
  }
// This widget is the root of your application.
}

