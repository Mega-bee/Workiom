import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';
import 'package:workiom/auth/auth_routes.dart';
import 'package:workiom/auth/request/login_repository.dart';
import 'package:workiom/auth/ui/screen/choose_your_workspace_screen.dart';

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

  void LogInnnnn(LoginRequest request){
    widget.cubit.login(request, this);
  }



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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 10),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      'Enter your email and password now',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
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
                        style: TextStyle(
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      controller: emailllController,
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
                        style: TextStyle(
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      obscureText: isObscure,
                      controller: passController,
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
                      Text("Remember me")

                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                    child: Container(
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() == true) {
                            print(emailllController.text);
                          } else {
                            emailllController.text.isNotEmpty&&passController.text.isNotEmpty?
                            LogInnnnn(LoginRequest(mod.toString(), passController.text, emailllController.text)):

                            Fluttertoast.showToast(msg:"Please fill The Email Field");

                            ;
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.blueAccent,
                        child: Center(
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "Next",
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
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account yet? ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14
                        ),
                      ),  Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,decoration: TextDecoration.underline
                        ),
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
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                      Image(
                        image: AssetImage(ImageAsset.signinLogo,),
                        width: 100,
                        height: 40,
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
                          hint: Text('English'),
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
      ),
    );

  }
  void _continueWithEmail() {
    setState(() {
      print('pressed');
    });
  }
}