import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom/auth/auth_routes.dart';
import 'package:workiom/auth/request/login_repository.dart';
import 'package:workiom/auth/ui/screen/choose_your_workspace_screen.dart';
import 'package:workiom/auth/ui/widget/custem_button.dart';

import '../../../utils/Images/Images.dart';
import '../../response/activetenants_response.dart';
import '../../state_manager/activetenants_state_manager.dart';
import 'signup_step1.dart';
@injectable
class LogInScreen extends StatefulWidget {
  final ActiveTenantsCubit cubit;

  LogInScreen(this.cubit);


  @override
  State<LogInScreen> createState() => LogInScreenState();
}

class LogInScreenState extends State<LogInScreen> {
String? mod;
  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  bool _isVisible = false;
  var emailllController = TextEditingController();
  var passController = TextEditingController();
  bool isObscure=false;
  bool value=false;
  bool flags=true;
late AsyncSnapshot loadingSnapshot;
  void LogInnnnn(LoginRequest request){
    widget.cubit.login(request, this);
  }


@override
void initState() {
  super.initState();
  loadingSnapshot = AsyncSnapshot.nothing();
  widget.cubit.loadingStream.listen((event) {
    if (this.mounted) {
      setState(() {
        loadingSnapshot = event;
      });
    }
  });}
  @override
  Widget build(BuildContext context) {
    if (flags) {
      var args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is String) {
        mod = args;
      }
      flags = false;
      // widget.cubit.(EditInitState(this, mod));
    }


    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            child: Center(
              child: Column(
                children: [

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(children: [
                    IconButton(icon:Icon(Icons.arrow_back_ios_rounded),onPressed: (){Navigator.pop(context);}),
                    Text("Workspace")
                  ],),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                    padding: EdgeInsets.all(12.0),
                      child: Row(
                        children: [Text(
                          'Welcome To Workiom',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                          Image.asset("assets/images/emojione_waving-hand-light-skin-tone.png")
                      ]),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Enter your email and password now',
                        style:GoogleFonts.rubik(
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
                        style:GoogleFonts.rubik(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: emailllController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Email Required *'),
                        EmailValidator(errorText: 'Not a valid email'),
                      ]),
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value){
                        setState(() {
                          btnActive = value.length == 1 ? true : false;
                        });
                      },
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.email_outlined, color: Colors.black,),
                        hintText: 'Email address',
                      ),
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 15),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Your password',
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
                      obscureText: isObscure,
                      controller: passController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'Password Required *'),

                      ]),
                      autovalidateMode:
                      AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value){
                        setState(() {
                          btnActive = value.length == 1 ? true : false;
                        });
                      },
                      decoration:  InputDecoration(
                        icon:  Icon(Icons.lock_outline, color: Colors.black,),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Checkbox(

                            activeColor: Colors.blue,
                            value: value, onChanged: (val){
                          value=val!;
                          setState(() {

                          });
                        }),
                      ),
                      Text("Remember me",style: TextStyle(color: Colors.grey[700]),)

                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                    child: Container(
                      height: 50,
                      child:CustomButton(
coloricon: emailllController.text.isEmpty?Colors.white24:Colors.blueAccent,
// emailllController.text.isEmpty?
// Colors.blueAccent[100]:Colors.grey[300],
                          bgColor:
                          emailllController.text.isEmpty?Colors.black26:
                          Colors.blue, text: "Next", textColor: Colors.white,
                          loading:loadingSnapshot.connectionState ==
                              ConnectionState.waiting, buttonTab: (){
                            if (_formKey.currentState?.validate() == true) {
                              print(emailllController.text);
                            } else {
                              emailllController.text.isNotEmpty&&passController.text.isNotEmpty?
                              LogInnnnn(LoginRequest(mod.toString(), passController.text, emailllController.text)):

                              Fluttertoast.showToast(msg:"Please fill The Email Field");

                              ;
                            }
                          }),

                      // child: MaterialButton(
                      //   onPressed: () {
                      //
                      //   },
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   color: Colors.blueAccent,
                      //   child: Center(
                      //     child: Row(
                      //       children: [
                      //         Spacer(),
                      //         Text(
                      //           "Next",
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //         Spacer(),
                      //         Icon(
                      //           Icons.subdirectory_arrow_left,
                      //           color: Colors.white,
                      //           size: 20,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.050,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account yet? ',
                        style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                        ),
                      ),  Text(
                        'Sign Up',
                        style: GoogleFonts.rubik(fontWeight: FontWeight.w500,fontSize: 15,
                          color: Colors.blueAccent, decoration: TextDecoration.underline,),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
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
                        child: Icon(Icons.language),
                      ),
                      DropdownButton(
                          hint: Text('English',style: GoogleFonts.rubik(
                            fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black,),),
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
                  SizedBox(height: 25,),



                ],
              ),
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