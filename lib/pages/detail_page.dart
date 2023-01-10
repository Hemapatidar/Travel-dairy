import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_dairy/cubit/app_cubit_states.dart';
import 'package:travel_dairy/cubit/app_cubits.dart';
import 'package:travel_dairy/misc/colors.dart';
import 'package:travel_dairy/widgets/app_buttons.dart';
import 'package:travel_dairy/widgets/app_large_text.dart';
import 'package:travel_dairy/widgets/app_text.dart';
import 'package:travel_dairy/widgets/resposive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailPage> {
  int gottenStars=4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context,state) {
        DetailState detail= state as DetailState;
        return Scaffold(
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("http://mark.bslmeiyu.com/uploads/${detail.place.img}"),
                      fit: BoxFit.cover
                    ),
 
                  ),
                  )),
                Positioned(
                  left: 20,
                  top: 50,
                  child:Row(children: [
                  IconButton(onPressed: (){
                    BlocProvider.of<AppCubits>(context).goHome();
                  },
                   icon: const Icon(Icons.menu),
                  color: Colors.white,
                  )
                  ],
                  ) 
                ),
                Positioned(
                  top: 320,

                  child: Container(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                     
                      color: Colors.white,
                       borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(30),
                        topRight:Radius.circular(30),
                         )
                    ),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text:detail.place.name, color: Colors.black,),
                          AppLargeText(text:"Rs."+detail.place.price.toString(),color: Colors.black87)
                        ],),
                      const SizedBox(height: 10,),
                      Row(
                          children: [
                            Icon(Icons.location_on, color: AppColors.mainColor,),
                            const SizedBox(width:5,),
                            AppText(text: detail.place.location , color : AppColors.textColor1)
                          ],
                        ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                           Wrap(
                          children: List.generate(5,(index){
                            return Icon(Icons.star, color: index <detail.place.stars?AppColors.starColor:AppColors.textColor2);
                          }),
                        ),
                          const SizedBox(width: 10,),
                          AppText(text: "(5,0)" , color: AppColors.textColor2,)
                        ],
                       ),
                      const SizedBox(height: 5,),
                      AppLargeText(text: "People ", color:Colors.black.withOpacity(0.8), size: 20 ,)  ,
                      const SizedBox(height: 5,),
                      AppText(text: "Number of people in your group" , color: AppColors.mainTextColor,),
                      const SizedBox(height: 10,),
                      Wrap(
                        children: List.generate(5, (index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex=index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                             size: 50,
                             color: selectedIndex==index?Colors.white:Colors.black,
                             backgroundColor:selectedIndex==index? Colors.black:AppColors.buttonBackground,
                             borderColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                             isIcon: true,   
                             icon: Icons.favorite_border,
                             text: (index+1).toString(),
                             ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 10,),
                      AppLargeText(text: "Description", color: Colors.black.withOpacity(0.8),),
                      const SizedBox(height: 5,),
                      AppText(text: detail.place.description, color: AppColors.mainTextColor,),
                      const SizedBox(height: 10,),
                    ]),
                  )),
                const SizedBox(height: 10,),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      AppButtons(
                       color: AppColors.textColor1,
                       backgroundColor: Colors.white,
                       size: 60,
                       borderColor: AppColors.textColor1,
                       isIcon: true,
                       text: "text",
                       icon: Icons.favorite_border,
                      ),
                      const SizedBox(width: 20,),
                      ResposiveButton(
                        isResponsive: true, color: Colors.white,
                      ),
                    ],
                    )
                    ),
              ],
            ),
          )
          
        );
      }
    );
  }
}