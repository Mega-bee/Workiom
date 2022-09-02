
import 'package:flutter/material.dart';
import 'package:workiom/auth/auth_routes.dart';

import '../../../ChooseYourWorkSpace/models/workiom_account_model.dart';
import '../../../NavigationBar/ui/Screen/NavigationBar.dart';
import '../../../abstracts/states/state.dart';
import '../../../utils/Images/Images.dart';
import '../../response/activetenants_response.dart';
import '../screen/choose_your_workspace_screen.dart';
import '../screen/signup_step1.dart';
import '../widget/workiom_account_card.dart';


class WorkSpaceInitStates extends States{
  final ChooseYourWorkspaceScreenState screenState;
  final List<Result> activeResponse;
  WorkSpaceInitStates(this.screenState,this.activeResponse);

  var selectedValue;

  WorkiomAccount? workiomAccount;
  @override
  Widget getUI(BuildContext context) {
   return  Container(
     width: double.infinity,
     child: Column(
       children: [
         SizedBox(height: 50,),

         Row(children: [
           IconButton(icon:Icon(Icons.arrow_back_ios_rounded),onPressed: (){Navigator.pop(context);}),
           Text("Workspace")
         ],),
SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(bottom: 15,right: 130),
           child: Text(
             'Choose your workspace',
             style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.only(right: 120),
           child: Text(
             'We\'ve found several accounts linked to ',
             textAlign: TextAlign.center,
             overflow: TextOverflow.ellipsis,
             maxLines: 2,
             style: TextStyle(
                 fontWeight: FontWeight.w300,fontSize: 17
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(right: 250),
           child: Text(
             'user@workiom.com ',
             textAlign: TextAlign.center,
             overflow: TextOverflow.ellipsis,
             maxLines: 2,
             style: TextStyle(
                 fontWeight: FontWeight.w300,fontSize: 17
             ),
           ),
         ),



         Padding(
           padding: const EdgeInsets.only(top: 50),
           child: ListView.builder(itemBuilder: (context, index) {
             return InkWell(
                 onTap: (){
                   Navigator.pushNamed(context, AuthRoutes.LOGIN_SCREEN,arguments:activeResponse[index].tenancyName,);
                 },
                 child: WorkiomAccountCard(activeResponse[index]));
           },
             itemCount: activeResponse.length,
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
         SizedBox(height: MediaQuery.of(context).size.height * 0.05),




         SizedBox(height: MediaQuery.of(context).size.height * 0.1),

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

                     selectedValue = value;
                   screenState.refresh();
                 }),
             Spacer()
           ],
         ),

       ],
     ),
   );
  }


}