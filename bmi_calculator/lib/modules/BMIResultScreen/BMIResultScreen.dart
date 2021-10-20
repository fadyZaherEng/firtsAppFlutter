import 'package:flutter/material.dart';

class BMIResultActivity extends StatelessWidget {

final String gender;
final int age;
final double result;

BMIResultActivity({
  required this.age,
  required this.result,
  required this.gender
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(
                Icons.arrow_back_ios_rounded,
            ),
        ),
        title: Text(
          'BMI RESULT',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black87.withOpacity(0.9),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Gender : $gender',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Age : $age',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ) ,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Result : ${result.round()}',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
