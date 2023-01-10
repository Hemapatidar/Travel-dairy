import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_dairy/misc/colors.dart';
import 'package:travel_dairy/widgets/app_large_text.dart';
import 'package:travel_dairy/widgets/app_text.dart';
import 'package:travel_dairy/widgets/resposive_button.dart';

import '../cubit/app_cubits.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images =[
      "img_1.png",
      "img_4.jpg",
      "img_7.jpg",
  ];

  List text1 =[
    "Explore",
    "Dive into",
    "Fathom",
  ];

  List text2 =[
    "Mountains",
    "Beaches",
    "forts"
  ];

  List text3 =[
    "Mountain hikes give you an incredible sense of freedom along with indurance test",
    "Let the waves hit your feet, and the sand be your seat.",
    "It's better to see something than to hear about it a thousand times.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                // ignore: prefer_interpolation_to_compose_strings
                "assets/images/" + images[index]
              ),
              fit: BoxFit.cover
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right:  20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: text1[index]),
                      AppText(text: text2[index] ,size: 30 ),
                      const SizedBox(height: 20,),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 250,
                        child: AppText(text: text3[index],
                        size: 14,
                        ),
                      ),
                      const SizedBox(height: 40,),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                        child: Container(
                          width: 200,
                          child:Row(children: [ResposiveButton( width: 120, color: Colors.white,)])),
                      ), 
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom:8),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  )
                ]
              ),
            ),
          );
         }),
    );
  }
}