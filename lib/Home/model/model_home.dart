import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workiom/utils/Images/Images.dart';

class FavoriteModel{
  IconData favIcon;
  String title;
  String cathegory;
  Color color;
  FavoriteModel({required this.title,required this.cathegory,required this.favIcon,required this.color});
}
List <FavoriteModel> favList =[
  FavoriteModel(title: "Activation", cathegory: "Sales MGT / Tasks   ", favIcon: Icons.calendar_month_sharp, color: Colors.red),
  FavoriteModel(title: "Current sprint", cathegory: "Progect MGT /Tasks", favIcon: Icons.equalizer, color: Colors.orange),
  FavoriteModel(title: "Leave request", cathegory: "People / Forms        ", favIcon: Icons.picture_as_pdf, color: Colors.green),
  FavoriteModel(title: "Sprints", cathegory: "People dev /Tasks   ", favIcon: Icons.menu_outlined, color: Colors.blue),
  FavoriteModel(title: "Active Bugs", cathegory: "Product.. / Reports ", favIcon: Icons.pie_chart, color: Colors.red),
];
class AppsRecentModel{
  Image img;
  String title;
  String text;

  AppsRecentModel({required this.title,required this.img,required this.text,});
}
List <AppsRecentModel> appsRecentList =[
  AppsRecentModel(title: "Product development",text: "There are numerous CRM tools available now",img: Image.asset("assets/images/Group 8509.png"),),
  AppsRecentModel(title: "Product Design",text: "There are numerous CRM tools available now",img: Image.asset("assets/images/Group 8510.png"),),
  AppsRecentModel(title: "Task Manager",text: "There are numerous CRM tools available now",img: Image.asset("assets/images/Group 8511.png"),),
  AppsRecentModel(title: "Product Status",text: "There are numerous CRM tools available now",img: Image.asset("assets/images/Group 8509.png"),),


];
class WorkSpaceModel{
  Image img;
  String title;
  String email;
  WorkSpaceModel({required this.email,required this.title,required this.img});
}
List<WorkSpaceModel> workSpaceList =[
  WorkSpaceModel(img:Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,) ,email: "info@t-technologie.com",title:"T-Technology" ),
  WorkSpaceModel(img:Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,) ,email: "info@t-technologie.com",title:"Tech-Deals" ),
  WorkSpaceModel(img:Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,) ,email: "info@t-technologie.com",title:"T-Technology" ),
  WorkSpaceModel(img:Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,) ,email: "info@t-technologie.com",title:"Activation" ),
  WorkSpaceModel(img:Image.asset(ImageAsset.WORKSPACE,fit: BoxFit.fill,) ,email: "info@t-technologie.com",title:"Activation" ),
];