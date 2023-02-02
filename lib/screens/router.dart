import 'package:dog_sitter_note/screens/chooseDogOrCat.dart';
import 'package:flutter/material.dart';
import 'root.dart';
import 'menu.dart';
class AppRouter{
  static Route<MaterialPageRoute> onNavigate(RouteSettings settings){
    late final Widget selectedPage;
    switch(settings.name){
      case ChooseDogOrCat.route:
        selectedPage = ChooseDogOrCat();
        break;
      case Menu.route:
        selectedPage = Menu();
        break;
      default:
        selectedPage = Root();
        break;

    }
    return MaterialPageRoute(builder: (context)=> selectedPage);
  }
}