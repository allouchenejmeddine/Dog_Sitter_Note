import 'package:dog_sitter_note/generalVariables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DogLogin extends ConsumerWidget {
  const DogLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool _isObscure= ref.watch(passwordObscure);
    final model = ref.watch();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover
          )
        ),
        child: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                    child: Image(image: AssetImage("images/catCorner.png"), width: 200, height: 200,),
                  top: 0 ,
                  left: -100,
                ),
                Positioned(
                  child: Image(image: AssetImage("images/dogCorner.png"), width: 200, height: 200,),
                  bottom: 0 ,
                  right: -100,
                ),
                Center(
                  child: Container(
                    height: 350,
                    width: 300,
                    child: Card(
                      elevation: 2,
                      child: ClipPath(
                        clipper: ShapeBorderClipper(shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3))),
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              border: Border(right: BorderSide(color: Colors.amber, width: 5))),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children:  [
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email, size: 20,),
                                      hintText: "Email",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.lightBlueAccent)
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                TextField(
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.key_rounded, size: 20,),
                                    suffixIcon: IconButton(
                                        icon: Icon(
                                            _isObscure ? Icons.visibility : Icons.visibility_off),
                                        onPressed: () {
                                          
                                          print(_isObscure);
                                          if(_isObscure){
                                            passwordObscure.overrideWithValue(false);
                                            _isObscure=false;
                                          }else{
                                            passwordObscure.overrideWithValue(true);
                                            _isObscure=true;
                                          }

                                        }),
                                    hintText: "Password",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.lightBlueAccent)
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    print("login");
                                  },
                                  child: const Image(image: AssetImage("images/loginButton.png"),
                                    width: 120,
                                    height: 120,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    //redirect to signup page
                                  },
                                    child: Text("Don't have an account ?", style: GoogleFonts.pacifico(fontSize: 15),)
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
