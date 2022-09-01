import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/SignIn/ui/signin_screen.dart';
import '../../../SignUp/ui/screens/signup_step1.dart';
import '../../../utils/images.dart';
import '../../models/workiom_account_model.dart';
import '../widgets/workiom_account_card.dart';

class ChooseYourWorkspaceScreen extends StatefulWidget {
  @override
  State<ChooseYourWorkspaceScreen> createState() => _ChooseYourWorkspaceScreenState();
}

class _ChooseYourWorkspaceScreenState extends State<ChooseYourWorkspaceScreen> {
  var selectedValue;

  WorkiomAccount? workiomAccount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen(),
                ),
              );
            },
            color: Colors.grey
        ),
      ),

      body: Container(
        width: double.infinity,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Choose your workspace',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              Text(
                'We\'ve found several accounts linked to \n user@workiom.com',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontWeight: FontWeight.w300
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListView.builder(itemBuilder: (context, index) {
                  return WorkiomAccountCard(cards[index]);
                },
                  itemCount: cards.length,
                  shrinkWrap: true,
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

              SizedBox(height: MediaQuery.of(context).size.height * 0.15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    'Stay organized with',
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
    );
  }
}
