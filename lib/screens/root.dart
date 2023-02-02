import 'package:dog_sitter_note/screens/chooseDogOrCat.dart';
import 'package:flutter/material.dart';
class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);
  static const String route = "/";
  @override
  Widget build(BuildContext context) {
    return ChooseDogOrCat();
  }
}
