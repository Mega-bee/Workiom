import 'package:flutter/material.dart';
import 'package:workiom/You/ui/Screen/You.dart';
import 'package:workiom/utils/Images/Images.dart';
import 'package:workiom/utils/style/Colors.dart';
class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: PrimaryColor,
        title: Text("Account Settings",style: TextStyle(fontSize: 14,color: Colors.black),),
        leading:
            IconButton(icon:Icon(Icons.arrow_back_ios_new,size: 20,color: Colors.black,),
              onPressed: (){Navigator.pop(context);}),
      ),
      backgroundColor: PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(20),
    ),),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 15, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.075,
                          child: Image.asset(ImageAsset.PHOTO)),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            "Micheal",
                            style: TextStyle(
                                color: Color(0xFF0E0F12),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Michaelloptic@ttechnology.com",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xFF747474),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          Spacer()
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,color: Color(0xFFB5B5B5),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24,),
            InkWell(
              onTap: (){},
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 9),
                  child: Row(
                    children: [
                      Text("Notifications",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color(0xFFB5B5B5),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 9),
                  child: Row(
                    children: [
                      Text("Date & Time",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color(0xFFB5B5B5),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 9),
                  child: Row(
                    children: [
                      Text("Langauge",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Color(0xFFB5B5B5),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 60,),
            InkWell(
              onTap: (){},
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log Out",style: TextStyle(color: Color(0xFF555555),fontSize: 16),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
