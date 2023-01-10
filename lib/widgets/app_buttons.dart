import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_dairy/widgets/app_text.dart';

import '../misc/colors.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  bool isIcon;
  String text;
  final Color backgroundColor;
  double size;
  IconData? icon;
  final Color borderColor;
  AppButtons({super.key,
    required this.color,
    this.isIcon=false,
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.size, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            border: Border.all(
              color:  borderColor,
              width: 1.0,
            ),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground
        ),
        child: isIcon==false?Center(child:AppText(text: text, color: color)):Center(child: Icon(icon , color: color,)),

      );
  }
}