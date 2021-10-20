import 'dart:math';

import 'package:bmi_calculator/modules/BMIResultScreen/BMIResultScreen.dart';
import 'package:bmi_calculator/shared/component/components.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  Color maleColor = Colors.indigo.withOpacity(0.7);
  Color femaleColor = Colors.black;
  double Hight = 150.0;
  int weight = 60, age = 28;
  String Gender = 'MALE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black87.withOpacity(0.9),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                margin: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  top: 20.0,
                  bottom: 20.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              maleColor = Colors.indigo.withOpacity(0.7);
                              femaleColor = Colors.black;
                              Gender = 'MALE';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(15.0),
                              ),
                              color: maleColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('asset/imges/male.png'),
                                  height: 45,
                                  width: 45,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              maleColor = Colors.black;
                              femaleColor = Colors.indigo.withOpacity(0.7);
                              Gender = 'FEMALE';
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(15.0),
                              ),
                              color: femaleColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('asset/imges/female.png'),
                                  height: 45,
                                  width: 45,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                margin: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${Hight.round()}',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                    Slider(
                      thumbColor: Colors.indigo.shade300.withOpacity(0.7),
                      activeColor: Colors.indigo.shade300.withOpacity(0.7),
                      inactiveColor: Colors.white,
                      value: Hight,
                      max: 250,
                      min: 100,
                      onChanged: (val) {
                        setState(() {
                          Hight = val;
                          print(Hight.round());
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsetsDirectional.only(
                  start: 20.0,
                  end: 20.0,
                  bottom: 20.0,
                ),
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsetsDirectional.only(
                          start: 20.0,
                          bottom: 20.0,
                          top: 20.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(15.0),
                          ),
                          color: Colors.indigo.withOpacity(0.7),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.7),
                                  heroTag: 'weight-',
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.7),
                                  heroTag: 'weight+',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(15.0),
                          ),
                          color: Colors.indigo.withOpacity(0.7),
                        ),
                        margin: EdgeInsetsDirectional.only(
                          end: 20.0,
                          top: 20.0,
                          bottom: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.7),
                                  heroTag: 'age-',
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  backgroundColor:
                                      Colors.black.withOpacity(0.7),
                                  heroTag: 'age+',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
        width: double.infinity,
        height: 55.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(40.0),
            topStart: Radius.circular(40.0),
          ),
          color: Colors.indigo,
        ),
        child: MaterialButton(
          onPressed: (){
                double res = weight / pow(Hight / 100, 2);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BMIResultActivity(
                    age: age,
                    gender: Gender,
                    result: res,
                  );
                }));
          },
          child: Text(
           'CALCULATE',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
            // defaultButton(
            //   function: () {
            //     double res = weight / pow(Hight / 100, 2);
            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
            //       return BMIResultActivity(
            //         age: age,
            //         gender: Gender,
            //         result: res,
            //       );
            //     }));
            //   },
            //   text: 'CALCULATE',
            //   width: double.infinity,
            // ),
          ],
        ),
      ),
    );
  }
}
