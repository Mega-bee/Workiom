import 'package:flutter/material.dart';
import 'package:workiom/AccountSettings/ui/Screen/account_settings.dart';
import 'package:workiom/utils/Images/Images.dart';

import '../../../Home/model/model_home.dart';
import '../../../Home/ui/Widgets/workspace_widget.dart';
import '../../../dashboard_pie/ui/screen/dashboard.dart';
import '../../../dashboard_pie/ui/screen/pie_screen.dart';
import '../Widgets/WorkSpaceWidgetProfile.dart';
class You extends StatefulWidget {
  const You({Key? key}) : super(key: key);

  @override
  State<You> createState() => _YouState();
}

class _YouState extends State<You> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 35,10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.08,
                      width: MediaQuery.of(context).size.width*0.16,
                      child: Image.asset(ImageAsset.PHOTO,fit: BoxFit.fill,)),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Micheal",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                      Text("Michaelloptic@ttechnology.com",style: TextStyle(fontSize: 14,color: Color(0xFF555555)),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),


              InkWell(
                // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PieScreen()));},
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 90,width: 240,
                    child: Card(
                      borderOnForeground: true,

                      elevation: 0,
                      color: Colors.grey[200],
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.pie_chart,color: Colors.blue,),
                          Text("Dashboards")

                        ],),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
                
                

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child:InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettings(),));},
                    child:Padding(
                    padding: const EdgeInsets.fromLTRB(16, 11, 16, 9),
                    child: Row(
                      children: [
                        Text("Account setting",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,size: 20,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: const Text("Workspaces",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),)),
              SizedBox(height: 8,),
              Container(
                height: MediaQuery.of(context).size.height*0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: Colors.white,
                ),
                child:  ListView.builder(
                  shrinkWrap: false,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: workSpaceList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        WorkSpaceWidgetProfile(workSpaceModel: workSpaceList[index]),
                        Divider()
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
