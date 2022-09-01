import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/ChooseYourWorkSpace/ui/screens/choose_your_workspace_screen.dart';

import '../../../utils/images.dart';

class WelcomeToTechDealScreen extends StatefulWidget {
  @override
  State<WelcomeToTechDealScreen> createState() => _WelcomeToTechDealScreen();
}

class _WelcomeToTechDealScreen extends State<WelcomeToTechDealScreen> {

  bool obscureText = false;

  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
  var emailController = TextEditingController();

  void toggle() {
    obscureText = !obscureText;
  }

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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Text(
                  'Welcome to Tech-Deal \nEnter your email and password now',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your work email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Email is required !';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email_outlined, color: Colors.black,),
                      hintText: 'Email Address',
                    ),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 15),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'password is required !';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value){
                      setState(() {
                        btnActive = value.length == 1 ? true : false;
                      });
                    },
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock, color: Colors.black,),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(obscureText
                            ? Icons.visibility_off
                            : Icons.visibility
                        ),
                        onPressed: (){
                          toggle();
                        },
                      ),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChooseYourWorkspaceScreen()),
                          );
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          "Continue with email",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.030,
                ),
                Text(
                  'Or',
                  style: TextStyle(
                      color: Colors.grey
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
                              style: TextStyle(color: Colors.black),
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
                        'Don\'t have an account yet?'
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Sign Up', style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
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
    );

  }
  void _continueWithEmail() {
    setState(() {
      print('pressed');
    });
  }
}
