import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/ChooseYourWorkSpace/ui/screens/choose_your_workspace_screen.dart';

import '../../../SignUp/ui/screens/signup_step1.dart';
import '../../../utils/images.dart';

class WelcomeToTechDealScreen extends StatefulWidget {
  @override
  State<WelcomeToTechDealScreen> createState() => _WelcomeToTechDealScreen();
}

class _WelcomeToTechDealScreen extends State<WelcomeToTechDealScreen> {

  bool _isVisible = false;
  bool isChecked = false;
  var selectedValue;
  final _formKey = GlobalKey<FormState>();
  bool btnActive = false;
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
                SafeArea(
                  child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChooseYourWorkspaceScreen()),
                                );
                              },
                            ),
                          ),
                          Text(
                            'Workspaces',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Welcome to Tech-Deal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
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
                    obscureText: _isVisible,
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'password is required !';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock, color: Colors.black,),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon:_isVisible ? Icon(Icons.visibility_off_outlined, color: Colors.grey) : Icon(Icons.visibility_outlined, color: Colors.grey),
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                      setState(() {
                      isChecked = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Container(
                    height: 50,
                    child: RaisedButton(
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
                    child: RaisedButton(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpStep1()),
                        );
                      },
                      child: Text('Sign Up', style: TextStyle(color: Colors.blueAccent, decoration: TextDecoration.underline,),
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
