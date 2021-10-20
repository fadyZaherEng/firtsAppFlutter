import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 55.0,
  double radius = 40.0,
  bool isUpperCase=true,
  Color colorBTN = Colors.indigo,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(radius),
          topStart: Radius.circular(radius),
        ),
        color: colorBTN,
      ),
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          isUpperCase?text.toUpperCase():text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
