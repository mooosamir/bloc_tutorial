

import 'package:bloc_tutorial/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';

import '../../presentation/view/home.dart';

class AppRouter{

late ThemeCubit themeCubit;
AppRouter(){
  themeCubit = ThemeCubit();
}
Route? generateRoute(RouteSettings settings){
  switch(settings.name){
    case '/home':
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return null;
  }
}

}


