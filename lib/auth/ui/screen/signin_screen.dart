import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workiom/auth/auth_routes.dart';
import 'package:workiom/auth/ui/screen/choose_your_workspace_screen.dart';

import '../../../utils/Images/Images.dart';
import 'signup_step1.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  bool _isVisible = false;
  var emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                        children: [Text(
                          'Welcome To Workiom',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                          SizedBox(width: 7,),
                          Image.asset("assets/images/emojione_waving-hand-light-skin-tone.png")
                        ]),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.all(13.0),
                    child: Text(
                      'We happy to see you here again! \n Enter your email and password now',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w300,


                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Your work email',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400,
                    fontSize: 14
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(


                    controller: emailController,
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },

                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Email Required *'),
                        EmailValidator(errorText: 'Not a valid email'),
                      ]),
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                    icon: const Icon(Icons.email_outlined, color: Colors.black,),
                    hintText: 'Email address*',



                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Container(
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                        print(emailController.text);
                        } else {
                          emailController.text.isNotEmpty ?
                       Navigator.pushNamed(context, AuthRoutes.WORKSPACE_SCREEN,arguments: emailController.text):
                          Fluttertoast.showToast(msg:"Please fill The Email Field");

                          ;
                        }
                        },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color:
                      emailController.text.isNotEmpty?
                      Colors.blueAccent:Colors.grey,
                      child: Center(
                        child: Row(
                          children: [
                            Spacer(),
                            Text(
                              "Continue with email",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.subdirectory_arrow_left,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.050,
                ),
                Text(
                  'Or',
                  style: GoogleFonts.rubik(
                    color: Colors.grey[600],
                    fontSize: 14
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 20),
                  child: Container(
                    height: 50,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.grey[100],
                      child: Center(
                        child: Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 1),
                              child: Image(image: AssetImage(ImageAsset.google),
                              width: 50,
                                height: 20,
                              ),
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account yet?',style: GoogleFonts.rubik(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpStep1()),
                        );
                      },
                      child: Text('Sign Up', style: GoogleFonts.rubik(fontWeight: FontWeight.w500,fontSize: 15,
                          color: Colors.blueAccent, decoration: TextDecoration.underline,),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Stay organized with ',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                        fontSize: 14
                      ),
                    ),
                    Image(
                      image: AssetImage(ImageAsset.LOGO),
                      width: 40,
                      height: 30,
                    ),
                    Text(
                      'workiom',
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[900],
                          fontSize: 14
                      ),
                    ),
                    Spacer(),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(Icons.language,size: 17,),
                    ),
                    DropdownButton(


                        hint: Text(' English',style:GoogleFonts.rubik(
                            fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black
                        ),),
                      elevation: 0,


                        value: selectedValue,
                        items: [
                          DropdownMenuItem(

                            child: Text("English"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("عربي"),
                            value: 2,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        }),
                    Spacer()
                  ],
                ),



              ],
            ),
          ),
        ),
      ),
    );

  }
  void _continueWithEmail() {
    setState(() {
      print('pressed');
    });
  }
}