import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/auth/ui/screen/signin_screen.dart';
import 'package:workiom/auth/ui/screen/signup_step3.dart';

import '../../../../../../utils/Images/Images.dart';
import '../../../../../../utils/colors/colors.dart';



class SignUpStep2 extends StatefulWidget {

  String userEmail, userPassword;

  SignUpStep2({required this.userEmail, required this.userPassword});

  @override
  State<SignUpStep2> createState() => _SignUpStep2State();
}

class _SignUpStep2State extends State<SignUpStep2> {

  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  var emailController = TextEditingController();
  var passController = TextEditingController();




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 5,
                        color: disabledButtonGrey,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.66,
                        height: 5,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Text(
                  'Let\'s start an amazing journey \nCreate your free account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
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
                    controller: emailController,
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },

                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined, color: Colors.black,),
                      hintText: 'Email address',
                      suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: (){
                        emailController.clear();
                      }),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15, top: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your company or team name',
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.groups, color: Colors.black,),
                      hintText: 'Workdpace name',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: Text('.workiom.com', style: TextStyle(color: disabledButtonGrey),),
                      )
                    ),
                  ),
                ),

                SizedBox(height: 30),


                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
                  child: Container(
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          print(emailController.text);
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpStep3()),
                          );
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
                              "Continue",
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

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By signing up, you agree on',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Terms of Service',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'And',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Privacy policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ],
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Stay organized with ',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                    Image(
                      image: AssetImage(ImageAsset.signinLogo),
                      width: 100,
                      height: 40,
                    ),
                    Spacer(),
                  ],
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
    );

  }
}