import 'package:dog_sitter_note/screens/auth/dogLogin.dart';
import 'package:flutter/material.dart';
import 'package:dog_sitter_note/generalVariables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/catLogin.dart';

class ChooseDogOrCat extends ConsumerWidget {
  const ChooseDogOrCat({Key? key}) : super(key: key);
  static const String route = "/chooseDogOrCat";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double availableHeight = ref.watch(height);
    final double availableWidth = ref.watch(width);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfff1f7ed),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Welcome To Pet Sitter Note", style: GoogleFonts.pacifico(fontSize: 30),),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          child: Container(
                            child: ClipRRect(
                              borderRadius : BorderRadius.circular(15),
                              child: Image.asset("images/cat.png"),
                            ),
                          ),
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CatLogin())),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                          child: Center(child: Text("OR", style: GoogleFonts.pacifico(fontSize: 25), ))
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          child: Container(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset("images/dog.png")
                            ),
                          ),
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DogLogin())),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
