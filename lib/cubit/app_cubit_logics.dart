import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_dairy/cubit/app_cubits.dart';
import 'package:travel_dairy/pages/detail_page.dart';
import 'package:travel_dairy/pages/home_page.dart';

import '../pages/navpages/main_page.dart';
import '../pages/welcome_page.dart';
import 'app_cubit_states.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits ,CubitStates>(
        builder:(context, state) {
            if(state is WelcomeState){
              return WelcomePage();
            }
            if(state is LoadedState){
              return MainPage();
            }
            if(state is DetailState){
              return DetailPage();
            }
            if(state is LoadingState){
              return Center(child: CircularProgressIndicator(),);
            }
            else{
              return Container();
            }
        },
        )
    );
  }
}