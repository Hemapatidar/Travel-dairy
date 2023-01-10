// ignore: implementation_imports
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:travel_dairy/misc/colors.dart';
import 'package:travel_dairy/widgets/app_text.dart';

// ignore: must_be_immutable
class ResposiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  // ignore: use_key_in_widget_constructors
  ResposiveButton({Key? key ,this.width=120 , this.isResponsive=false, required Color color}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width:isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment:isResponsive==true? MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children:[
          isResponsive==true?Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppText(text: "Book Trip now", color: Colors.white)):Container(),
          Image.asset("images/img_response_button.jpg"),

          ],
        ),
      ),
    );
  }
}