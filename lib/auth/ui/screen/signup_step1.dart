import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:workiom/WelcomeToTechDeal/ui/screens/welcome_to_tech_deal_screen.dart';
import 'package:workiom/auth/ui/screen/password_strength.dart';
import 'package:workiom/auth/ui/screen/signup_step2.dart';

import '../../../utils/Images/Images.dart';
import '../../../utils/colors/colors.dart';


class SignUpStep1 extends StatefulWidget {
  @override
  State<SignUpStep1> createState() => _SignUpStep1State();
}

class _SignUpStep1State extends State<SignUpStep1> {


  bool _isContainUpperCase(String p) {
    List<String> list1 = List<String>.generate(
        p.length, (index) => p[index]);
    List<String> letters = ['A','B','C','D','E', 'F', 'G', 'H', 'I', 'J', 'K', 'L','M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    if (list1.any((item) => letters.contains(item)))
      return true;
    else
      return false;
  }

  bool isEmail(String p) {
    List<String> list1 = List<String>.generate(p.length, (index) => p[index]);
    if (list1.contains('@'))
      return true;
    else
      return false;
  }




  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  var emailController = TextEditingController();
  var passController = TextEditingController();
  bool _isVisible = false;




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
                         width: MediaQuery.of(context).size.width * 0.33,
                         height: 5,
                         color: Colors.blueAccent,
                       ),
                     ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
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
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: IconButton(icon: Icon(Icons.close), onPressed: (){
                        emailController.clear();
                      }),
                      icon: const Icon(Icons.email_outlined, color: Colors.black,),
                      hintText: 'Email address',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15, top: 20),
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
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    obscureText: !_isVisible,
                    controller: passController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                          icon:_isVisible ? Icon(Icons.visibility_outlined, color: Colors.grey) : Icon(Icons.visibility_off_outlined, color: Colors.grey),
                      ),
                      icon: const Icon(Icons.lock_outline_rounded, color: Colors.black,),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15, top: 20),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password Strength',
                      style: TextStyle(
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FlutterPasswordStrength(password:passController.text ),
                ),

                SizedBox(height: 30),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: IconButton(
                        onPressed: (){},
                        icon: passController.text.length >= 7 && _isContainUpperCase(passController.text) == true ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.warning, color: Colors.yellow[800]),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                       child: passController.text.length >= 7 && _isContainUpperCase(passController.text) == true ? Text('Strong Enough !', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),) : Text('Not Strong Enough !', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      onPressed: (){},
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: IconButton(
                        onPressed: (){},
                        icon: passController.text.length >= 7 ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.close, color: Colors.red[800]),
                      )
                    ),



                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        'Password must have at least 7 characters',
                        style: TextStyle(
                            fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: IconButton(
                        onPressed: (){},
                        icon: _isContainUpperCase(passController.text) ? Icon(Icons.check, color: Colors.green[800]) : Icon(Icons.close, color: Colors.red[800]),
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text(
                        'Passwords must have at least one uppercase (\'A\' - \'Z\')',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpStep2(
                                  userEmail: '${emailController}',
                                  userPassword: '${passController}',
                                )),
                          );
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: passController.text.length >= 7 ? Colors.blueAccent : disabledButtonGrey,
                      child: Center(
                        child: Row(
                          children:const  [
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
                  const Text(
                      'By signing up, you agree on',
                      style: TextStyle(
                        color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    TextButton(
                      onPressed: (){},
                        child: const Text(
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
                   const Text(
                      'And',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    TextButton(
                      onPressed: (){},
                      child: const Text(
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

                   const Text(
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
                              builder: (context) => WelcomeToTechDealScreen()),
                        );
                      },
                      child: const Text(
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
                      style: const  TextStyle(
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
                    const Spacer(),
                    const Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(Icons.language),
                    ),
                    DropdownButton(
                        hint: const Text('English'),
                        elevation: 0,
                        value: selectedValue,
                        items: [
                          const DropdownMenuItem(
                            child: Text("English"),
                            value: 1,
                          ),
                          const DropdownMenuItem(
                            child: Text("عربي"),
                            value: 2,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        }),
                    const Spacer()
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